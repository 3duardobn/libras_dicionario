# Copyright (C) 2026 Eduardo Barroso Nunes
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

import json
import os
import re
import time
from typing import Dict, List, Optional, Set
from rate_limiter import RateLimitedSession

BASE_URL = "https://www.spreadthesign.com"
CATEGORIES_URL = f"{BASE_URL}/pt.br/search/by-category/"
DATA_DIR = "tools/scraper/data"
CATALOG_FILE = os.path.join(DATA_DIR, "sts_catalog.json")
PROGRESS_FILE = os.path.join(DATA_DIR, "sts_progress.json")
FINAL_OUTPUT_FILE = os.path.join(DATA_DIR, "spreadthesign.json")

HEADERS = {
    "User-Agent": "Mozilla/5.0 (X11; Linux x86_64; rv:128.0) Gecko/20100101 Firefox/128.0",
    "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
    "Accept-Language": "pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7",
}

AJAX_HEADERS = {
    **HEADERS,
    "X-Requested-With": "XMLHttpRequest",
}

def get_session() -> RateLimitedSession:
    # 2.0 requisições por segundo com exponential backoff e tratamento de HTTP 429
    session = RateLimitedSession(requests_per_second=2.0, max_retries=5, backoff_factor=2.0)
    session.set_headers(HEADERS)
    # Inicializa os cookies de sessão visitando a home
    try:
        session.get(f"{BASE_URL}/pt.br/search/")
    except Exception as e:
        print(f"[Aviso] Falha ao obter cookies iniciais: {e}")
    return session

def step1_collect_catalog(session: RateLimitedSession) -> List[Dict[str, str]]:
    """
    Fase 1: Mapeia todas as palavras das 167 categorias de Libras no SpreadTheSign.
    Salva em sts_catalog.json para reutilização sem re-requisitar páginas de categoria.
    """
    if os.path.exists(CATALOG_FILE):
        print(f"[SpreadTheSign] Catálogo de palavras já existente em {CATALOG_FILE}. Carregando...")
        with open(CATALOG_FILE, "r", encoding="utf-8") as f:
            return json.load(f)

    print(f"[SpreadTheSign] Obtendo lista de categorias de {CATEGORIES_URL}...")
    resp = session.get(CATEGORIES_URL)
    if resp.status_code != 200:
        raise Exception(f"Falha ao acessar categorias: {resp.status_code}")

    categories = re.findall(r'<a href=\"(/pt\.br/search/by-category/(\d+)/([^/]+)/)\">([^<]+)</a>', resp.text)
    print(f"[SpreadTheSign] {len(categories)} categorias encontradas.")

    words_by_id: Dict[str, Dict[str, str]] = {}

    for idx, (cat_rel_url, cat_id, cat_slug, cat_name) in enumerate(categories, 1):
        cat_url = f"{BASE_URL}{cat_rel_url}"
        print(f"[{idx}/{len(categories)}] Categoria {cat_id} ({cat_name.strip()})...", end=" ", flush=True)

        current_url = cat_url
        cat_words_count = 0

        while True:
            c_resp = session.get(current_url)
            if c_resp.status_code != 200:
                print(f"[Erro HTTP {c_resp.status_code}]", end=" ")
                break

            # Extrai links de palavras: /pt.br/word/<word_id>/<slug>/<sub_id>/?q=...
            matches = re.findall(r'<a href=\"(/pt\.br/word/(\d+)/([^/]+)/(\d+)/[^\"]*)\"[^>]*>', c_resp.text)
            for link, wid, slug, subid in matches:
                if wid not in words_by_id:
                    words_by_id[wid] = {
                        "id": wid,
                        "slug": slug,
                        "subid": subid,
                        "relative_url": link,
                        "category": cat_name.strip(),
                    }
                    cat_words_count += 1

            # Checa paginação ("Próxima página")
            next_p = re.findall(r'<a href=\"\?q=&(?:amp;)?p=(\d+)\">Próxima página</a>', c_resp.text)
            if next_p:
                page = int(next_p[0])
                current_url = f"{cat_url}?p={page}"
            else:
                break

        print(f"+{cat_words_count} novas palavras (total único acumulado: {len(words_by_id)})")

    catalog_list = list(words_by_id.values())
    os.makedirs(DATA_DIR, exist_ok=True)
    with open(CATALOG_FILE, "w", encoding="utf-8") as f:
        json.dump(catalog_list, f, ensure_ascii=False, indent=2)

    print(f"[SpreadTheSign] Catálogo final salvo com {len(catalog_list)} palavras em {CATALOG_FILE}.")
    return catalog_list

def step2_scrape_details(session: RateLimitedSession, catalog: List[Dict[str, str]]):
    """
    Fase 2: Percorre cada palavra do catálogo, requisita a página detalhada (AJAX)
    e extrai o título oficial em Libras e a URL do vídeo MP4.
    Salva progresso incrementalmente a cada 50 itens.
    """
    scraped_data: Dict[str, Dict] = {}
    if os.path.exists(PROGRESS_FILE):
        print(f"[SpreadTheSign] Carregando progresso anterior de {PROGRESS_FILE}...")
        try:
            with open(PROGRESS_FILE, "r", encoding="utf-8") as f:
                scraped_data = json.load(f)
            print(f"[SpreadTheSign] {len(scraped_data)} sinais já coletados.")
        except Exception as e:
            print(f"[Aviso] Falha ao carregar checkpoint: {e}")

    total = len(catalog)
    start_time = time.time()
    processed_this_session = 0

    video_re = re.compile(r'<video[^>]*src=[\"\'](https://media\.spreadthesign\.com/video/mp4/[^\"\']+)[\"\']')
    poster_re = re.compile(r'<video[^>]*poster=[\"\'](https://media\.spreadthesign\.com/video/jpg/[^\"\']+)[\"\']')
    title_re = re.compile(r'<span class=[\"\']flag-icon flag-icon-br bordered[\"\']></span>\s*([^<\n]+)')
    desc_re = re.compile(r'<div class=[\"\']search-result-description[^\"]*[\"\']>(.*?)</div>', re.DOTALL)

    for idx, item in enumerate(catalog, 1):
        wid = item["id"]
        if wid in scraped_data and scraped_data[wid].get("video_url"):
            continue

        detail_url = f"{BASE_URL}{item['relative_url']}"
        try:
            resp = session.get(detail_url, headers=AJAX_HEADERS)
            
            # Se a sessão expirar ou der 403, re-autentica com visita à home
            if resp.status_code == 403:
                time.sleep(2.0)
                session.get(f"{BASE_URL}/pt.br/search/")
                resp = session.get(detail_url, headers=AJAX_HEADERS)

            if resp.status_code == 404:
                continue
            if resp.status_code != 200:
                print(f"[Erro {resp.status_code} na palavra {wid}]")
                continue

            html = resp.text
            v_match = video_re.search(html)
            p_match = poster_re.search(html)
            t_match = title_re.search(html)
            d_match = desc_re.search(html)

            title = t_match.group(1).strip() if t_match else item["slug"].replace("-", " ")
            video_url = v_match.group(1).strip() if v_match else None
            poster_url = p_match.group(1).strip() if p_match else None
            description = d_match.group(1).strip() if d_match else None

            if video_url:
                scraped_data[wid] = {
                    "id": wid,
                    "title": title,
                    "video_url": video_url,
                    "image_url": poster_url,
                    "description": description,
                    "link": f"{BASE_URL}/pt.br/word/{wid}/{item['slug']}/{item.get('subid', '0')}/",
                    "category": item.get("category"),
                    "source": "SpreadTheSign"
                }

            processed_this_session += 1

            if processed_this_session % 50 == 0:
                with open(PROGRESS_FILE, "w", encoding="utf-8") as f:
                    json.dump(scraped_data, f, ensure_ascii=False)
                elapsed = time.time() - start_time
                rate = processed_this_session / elapsed if elapsed > 0 else 0
                remaining = (total - idx) / rate if rate > 0 else 0
                print(f"Progresso: {idx}/{total} ({idx/total*100:.1f}%) | {len(scraped_data)} com vídeo | {rate:.1f} req/s | Restante est.: {remaining/60:.1f} min", flush=True)

        except KeyboardInterrupt:
            print("\n[SpreadTheSign] Interrompido pelo usuário. Salvando checkpoint...")
            break
        except Exception as e:
            print(f"[Erro em {wid}]: {e}")

    # Salva estado final
    with open(PROGRESS_FILE, "w", encoding="utf-8") as f:
        json.dump(scraped_data, f, ensure_ascii=False)

    # Converte para a lista final padronizada compatível com o pipeline
    final_list = list(scraped_data.values())
    with open(FINAL_OUTPUT_FILE, "w", encoding="utf-8") as f:
        json.dump(final_list, f, ensure_ascii=False, indent=2)

    print(f"\n[SpreadTheSign] Raspagem concluída! {len(final_list)} sinais salvos em {FINAL_OUTPUT_FILE}")

def main():
    os.makedirs(DATA_DIR, exist_ok=True)
    session = get_session()

    print("=== SPREADTHESIGN (LIBRAS PT-BR) SCRAPER ===")
    catalog = step1_collect_catalog(session)
    step2_scrape_details(session, catalog)

if __name__ == "__main__":
    main()
