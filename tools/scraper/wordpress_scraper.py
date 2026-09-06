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
import time
from bs4 import BeautifulSoup
from extract_video import extract_video_and_youtube_id
from rate_limiter import RateLimitedSession

SOURCES = {
    "RedeSurdos": {
        "url": "https://redesurdosce.ufc.br/wp-json/wp/v2/posts",
        "name": "RedeSurdos",
        "description_field": "prefer_excerpt",
        "req_per_sec": 1.5  # Máximo de 1.5 req/s para a UFC
    },
    "LibrasAcademicaUFF": {
        "url": "https://librasacademica.uff.br/wp-json/wp/v2/posts",
        "name": "LibrasAcademicaUFF",
        "description_field": "excerpt",
        "req_per_sec": 1.5  # Máximo de 1.5 req/s para a UFF
    }
}

HEADERS = {
    "User-Agent": "LibrasDicionarioApp/1.0 (Educational open-source scraper; respect rate-limits)"
}

def clean_html(raw_html: str) -> str:
    if not raw_html:
        return ""
    soup = BeautifulSoup(raw_html, "html.parser")
    return soup.get_text(separator=" ", strip=True)

def scrape_wordpress(source_key: str):
    cfg = SOURCES[source_key]
    base_url = cfg["url"]
    source_name = cfg["name"]

    print(f"\n--- Iniciando coleta polida: {source_name} (Rate limit: {cfg['req_per_sec']} req/s) ---")
    session = RateLimitedSession(requests_per_second=cfg["req_per_sec"], max_retries=5)
    session.set_headers(HEADERS)

    # 1. Obter número total de páginas
    r = session.get(f"{base_url}?per_page=100&page=1", timeout=20)
    r.raise_for_status()
    total_pages = int(r.headers.get("X-WP-TotalPages", 1))
    total_posts = int(r.headers.get("X-WP-Total", 0))
    print(f"{source_name}: {total_posts} posts distribuídos em {total_pages} páginas.")

    all_items = []

    def process_posts(posts):
        for post in posts:
            title_rendered = (post.get("title") or {}).get("rendered", "")
            title = clean_html(title_rendered).strip()
            if not title:
                continue

            content_rendered = (post.get("content") or {}).get("rendered", "")
            excerpt_rendered = (post.get("excerpt") or {}).get("rendered", "")

            # Descrição
            if cfg["description_field"] == "prefer_excerpt":
                desc_html = excerpt_rendered if excerpt_rendered else content_rendered
            else:
                desc_html = excerpt_rendered

            description = clean_html(desc_html).strip() or None

            # Extração de mídia (vídeo / youtube)
            video_url, youtube_id = extract_video_and_youtube_id(content_rendered)
            if not video_url and not youtube_id and excerpt_rendered:
                video_url, youtube_id = extract_video_and_youtube_id(excerpt_rendered)

            link = post.get("link")

            all_items.append({
                "source": source_name,
                "title": title,
                "description": description,
                "exemplo": None,
                "libras": None,
                "video_url": video_url,
                "image_url": None,
                "youtube_id": youtube_id,
                "link": link
            })

    process_posts(r.json())

    for page in range(2, total_pages + 1):
        print(f"[{source_name}] Coletando página {page}/{total_pages}...", end="\r")
        try:
            resp = session.get(f"{base_url}?per_page=100&page={page}", timeout=25)
            if resp.status_code == 200:
                process_posts(resp.json())
        except Exception as e:
            print(f"\nErro na página {page} de {source_name}: {e}")

    print(f"\n{source_name}: Coletados {len(all_items)} verbetes com sucesso e baixo impacto no servidor.")
    return all_items

if __name__ == "__main__":
    import sys
    source_to_run = sys.argv[1] if len(sys.argv) > 1 else None
    sources = [source_to_run] if source_to_run else ["LibrasAcademicaUFF", "RedeSurdos"]

    for src in sources:
        items = scrape_wordpress(src)
        filename = f"tools/scraper/data/{src.lower()}.json"
        with open(filename, "w", encoding="utf-8") as f:
            json.dump(items, f, ensure_ascii=False, indent=2)
        print(f"Arquivo salvo: {filename}")
