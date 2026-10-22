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

import http.cookiejar
import json
import os
import re
import time
import urllib.parse
import urllib.request
from bs4 import BeautifulSoup

BASE_URL = "https://congregacaocristanobrasil.org.br/libras"
SERVICE_URL = "https://congregacaocristanobrasil.org.br/service/tss"

def scrape_ccb():
    print("--- Coletando Glossário de Sinais Religiosos (CCB) ---")
    cj = http.cookiejar.CookieJar()
    opener = urllib.request.build_opener(urllib.request.HTTPCookieProcessor(cj))

    headers = {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36",
        "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
        "Accept-Language": "pt-BR,pt;q=0.9"
    }

    # 1. Obter sessão inicial e categorias
    req = urllib.request.Request(BASE_URL, headers=headers)
    try:
        resp = opener.open(req, timeout=30)
    except Exception:
        resp = opener.open(req, timeout=30)

    html = resp.read().decode("utf-8")
    soup = BeautifulSoup(html, "html.parser")

    categories = []
    for a in soup.find_all("a", attrs={"data-cat": True}):
        cat_id = a["data-cat"]
        name = re.sub(r"\s*\(\d+\)\s*", "", a.get_text()).strip()
        categories.append((cat_id, name))

    print(f"CCB: Encontradas {len(categories)} categorias temáticas.")

    results = []
    seen = set()

    for cat_id, cat_name in categories:
        data = urllib.parse.urlencode({"a": "assuntos", "cat": cat_id, "b": ""}).encode("utf-8")
        req_post = urllib.request.Request(
            SERVICE_URL,
            data=data,
            headers={
                "User-Agent": headers["User-Agent"],
                "X-Requested-With": "XMLHttpRequest",
                "Referer": BASE_URL
            }
        )
        r = opener.open(req_post, timeout=20)
        s_soup = BeautifulSoup(r.read().decode("utf-8"), "html.parser")

        cat_items = 0
        for a in s_soup.find_all("a", attrs={"data-video": True}):
            title = a.get_text(strip=True)
            video_id = (a.get("data-video") or "").strip()
            if not title or not video_id:
                continue

            key = (title.lower(), video_id)
            if key in seen:
                continue
            seen.add(key)
            cat_items += 1

            results.append({
                "source": "CCB",
                "title": title,
                "description": f"Sinal religioso / bíblico - Tema: {cat_name} (CCB)",
                "exemplo": None,
                "libras": None,
                "video_url": None,
                "image_url": None,
                "youtube_id": video_id,
                "link": BASE_URL
            })

        print(f"  - {cat_name}: {cat_items} sinais coletados.")
        time.sleep(0.3)

    out_path = "tools/scraper/data/ccb.json"
    os.makedirs(os.path.dirname(out_path), exist_ok=True)
    with open(out_path, "w", encoding="utf-8") as f:
        json.dump(results, f, ensure_ascii=False, indent=2)

    print(f"CCB concluído: {len(results)} verbetes salvos em {out_path}.")
    return results

if __name__ == "__main__":
    scrape_ccb()
