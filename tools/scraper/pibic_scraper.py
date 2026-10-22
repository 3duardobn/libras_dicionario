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
import urllib.request
from bs4 import BeautifulSoup

PAGES = [
    ("design", "Design"),
    ("animacao", "Animação"),
    ("fotografia", "Fotografia"),
]

BASE_URL = "https://glossariolibras.wixsite.com/projetopibic"

def scrape_pibic():
    print("--- Coletando verbetes do Projeto PIBIC (Design, Animação e Fotografia) ---")
    headers = {
        "User-Agent": "LibrasDicionarioApp/1.0 (Educational open-source scraper; respect rate-limits)"
    }

    results = []
    seen = set()

    for slug, category in PAGES:
        url = f"{BASE_URL}/{slug}"
        print(f"PIBIC: Acessando {category} ({url})...")
        req = urllib.request.Request(url, headers=headers)
        html = urllib.request.urlopen(req, timeout=30).read().decode("utf-8")
        soup = BeautifulSoup(html, "html.parser")

        for section in soup.find_all("section"):
            ifr = section.find("iframe")
            if not ifr or not ifr.get("src"):
                continue
            m = re.search(r"embed/([a-zA-Z0-9_-]+)", ifr["src"])
            if not m:
                continue
            yt_id = m.group(1)

            h2 = section.find(["h2", "h1", "h3"])
            title = h2.get_text(strip=True) if h2 else ""
            title = re.sub(r"[\u200b\u200e\ufeff]", "", title).strip()

            p = section.find("p")
            desc = p.get_text(strip=True) if p else ""
            desc = re.sub(r"[\u200b\u200e\ufeff]", "", desc).strip()

            if title and yt_id:
                key = (title.lower(), yt_id)
                if key in seen:
                    continue
                seen.add(key)

                full_desc = f"[{category}] {desc}" if desc else f"Termo técnico de {category} (PIBIC)"

                results.append({
                    "source": "PIBIC",
                    "title": title,
                    "description": full_desc,
                    "exemplo": None,
                    "libras": None,
                    "video_url": None,
                    "image_url": None,
                    "youtube_id": yt_id,
                    "link": url
                })

    out_path = "tools/scraper/data/pibic.json"
    os.makedirs(os.path.dirname(out_path), exist_ok=True)
    with open(out_path, "w", encoding="utf-8") as f:
        json.dump(results, f, ensure_ascii=False, indent=2)

    print(f"PIBIC concluído: {len(results)} verbetes salvos em {out_path}.")
    return results

if __name__ == "__main__":
    scrape_pibic()
