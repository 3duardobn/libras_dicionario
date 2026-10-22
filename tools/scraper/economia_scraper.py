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

RAW_HTML_URL = "https://raw.githubusercontent.com/glossariolibras/economia/master/index.html"

def scrape_economia():
    print("--- Coletando verbetes do Glossário de Economia ---")
    headers = {
        "User-Agent": "LibrasDicionarioApp/1.0 (Educational open-source scraper)"
    }
    req = urllib.request.Request(RAW_HTML_URL, headers=headers)
    html = urllib.request.urlopen(req, timeout=30).read().decode("utf-8")

    soup = BeautifulSoup(html, "html.parser")
    results = []

    for modal in soup.find_all("div", class_="modal-content"):
        title_el = modal.find(["h2", "h1", "h3"], class_="modal-title")
        if not title_el:
            continue
        title = title_el.get_text(strip=True)

        sinal_yt = None
        conceito_text = None
        contexto_text = None

        for row in modal.find_all("div", class_="row"):
            h3 = row.find("h3")
            if not h3:
                continue
            section_name = h3.get_text(strip=True).lower()
            ifr = row.find("iframe")
            yt_id = None
            if ifr and ifr.get("src"):
                m = re.search(r"embed/([a-zA-Z0-9_-]+)", ifr["src"])
                if m:
                    yt_id = m.group(1)

            p = row.find("p")
            txt = p.get_text(strip=True) if p else ""

            if "sinal" in section_name:
                sinal_yt = yt_id
            elif "conceito" in section_name:
                conceito_text = txt
            elif "contexto" in section_name:
                contexto_text = txt

        if title and sinal_yt:
            results.append({
                "source": "Economia",
                "title": title,
                "description": conceito_text,
                "exemplo": contexto_text,
                "libras": None,
                "video_url": None,
                "image_url": None,
                "youtube_id": sinal_yt,
                "link": f"https://glossariolibras.github.io/economia/index#{title}"
            })

    out_path = "tools/scraper/data/economia.json"
    os.makedirs(os.path.dirname(out_path), exist_ok=True)
    with open(out_path, "w", encoding="utf-8") as f:
        json.dump(results, f, ensure_ascii=False, indent=2)

    print(f"Glossário de Economia concluído: {len(results)} verbetes salvos em {out_path}.")
    return results

if __name__ == "__main__":
    scrape_economia()
