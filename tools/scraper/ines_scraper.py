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
import requests

INES_URL = "https://dicionario.ines.gov.br/public/site/js/palavras.js"
INES_BASE = "https://dicionario.ines.gov.br"

def scrape_ines():
    print("Baixando dados do INES...")
    r = requests.get(INES_URL, timeout=30)
    r.raise_for_status()
    body = r.text

    start = body.find("[")
    end = body.rfind("]")
    if start == -1 or end == -1:
        raise ValueError("Não foi possível encontrar o array JSON no arquivo do INES")

    raw_data = json.loads(body[start:end + 1])
    print(f"INES: {len(raw_data)} verbetes brutos encontrados.")

    results = []
    for item in raw_data:
        palavra = (item.get("palavra") or "").strip()
        if not palavra:
            continue

        video = (item.get("video") or "").strip()
        image = (item.get("image") or "").strip()
        desc = (item.get("descricao") or "").strip() or None
        exemplo = (item.get("exemplo") or "").strip() or None
        libras = (item.get("libras") or "").strip() or None

        video_url = f"{INES_BASE}/public/media/palavras/videos/{video}" if video else None
        image_url = f"{INES_BASE}/public/media/palavras/images/{image}" if image else None
        link = f"{INES_BASE}/pt/search?word={palavra}"

        results.append({
            "source": "INES",
            "title": palavra,
            "description": desc,
            "exemplo": exemplo,
            "libras": libras,
            "video_url": video_url,
            "image_url": image_url,
            "youtube_id": None,
            "link": link
        })

    return results

if __name__ == "__main__":
    items = scrape_ines()
    print(f"Sucesso! {len(items)} verbetes processados.")
    with open("tools/scraper/data/ines.json", "w", encoding="utf-8") as f:
        json.dump(items, f, ensure_ascii=False, indent=2)
    print("Salvo em tools/scraper/data/ines.json")
