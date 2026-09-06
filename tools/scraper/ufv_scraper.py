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
import re
from bs4 import BeautifulSoup
from extract_video import VIDEO_SRC_EXP
from rate_limiter import RateLimitedSession

BASE_URL = "https://sistemas.cead.ufv.br/capes/dicionario/"
HEADERS = {
    "User-Agent": "LibrasDicionarioApp/1.0 (Educational open-source scraper; respect rate-limits)"
}

def clean_title(title_raw: str) -> str:
    # "Águia | Dicionário de Libras" -> "Águia"
    return title_raw.split("|")[0].strip()

def scrape_ufv():
    print("--- Coletando links da UFV através dos temas (com rate-limit e cortesia) ---")
    # Limita a no máximo 3 requisições por segundo para não sobrecarregar o Cead UFV
    session = RateLimitedSession(requests_per_second=3.0, max_retries=4)
    session.set_headers(HEADERS)

    # 1. Pega página inicial para descobrir todos os temas
    r = session.get(BASE_URL, timeout=15)
    soup = BeautifulSoup(r.text, "html.parser")
    
    tema_urls = set()
    for a in soup.find_all("a", href=True):
        href = a["href"]
        if "temas=" in href:
            tema_urls.add(href)

    print(f"UFV: Encontrados {len(tema_urls)} temas para varredura.")

    # 2. Descobrir todos os verbetes visitando os temas
    word_urls = set()
    for tema_url in tema_urls:
        try:
            resp = session.get(tema_url, timeout=15)
            t_soup = BeautifulSoup(resp.text, "html.parser")
            for a in t_soup.find_all("a", href=True):
                href = a["href"]
                if "cadastros=" in href:
                    word_urls.add(href)
        except Exception as e:
            print(f"Erro no tema {tema_url}: {e}")

    print(f"UFV: {len(word_urls)} verbetes únicos encontrados. Coletando detalhes e vídeos com espaçamento...")

    # 3. Visitar cada verbete e extrair o vídeo e título de forma gentil
    results = []
    for idx, word_url in enumerate(word_urls, 1):
        if idx % 50 == 0 or idx == len(word_urls):
            print(f"UFV progresso: {idx}/{len(word_urls)}...", end="\r")
        try:
            w_resp = session.get(word_url, timeout=10)
            if w_resp.status_code != 200:
                continue
            w_soup = BeautifulSoup(w_resp.text, "html.parser")
            
            raw_title = w_soup.title.text if w_soup.title else ""
            title = clean_title(raw_title)
            
            video_tag = w_soup.find("video")
            video_url = video_tag.get("src").strip() if video_tag and video_tag.get("src") else None
            
            if not video_url:
                m = VIDEO_SRC_EXP.search(w_resp.text)
                if m:
                    video_url = m.group(1).strip()

            results.append({
                "source": "UFV",
                "title": title,
                "description": None,
                "exemplo": None,
                "libras": None,
                "video_url": video_url,
                "image_url": None,
                "youtube_id": None,
                "link": word_url
            })
        except Exception:
            pass

    print(f"\nUFV: Concluído! {len(results)} verbetes extraídos sem sobrecarga.")
    return results

if __name__ == "__main__":
    items = scrape_ufv()
    with open("tools/scraper/data/ufv.json", "w", encoding="utf-8") as f:
        json.dump(items, f, ensure_ascii=False, indent=2)
    print("Salvo em tools/scraper/data/ufv.json")
