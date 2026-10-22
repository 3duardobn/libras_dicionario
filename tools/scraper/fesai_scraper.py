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
import urllib.request

GRAPHQL_URL = "https://5wlf3cebpnd2zn52osshpmxhdm.appsync-api.us-east-1.amazonaws.com/graphql"
API_KEY = "da2-phnxzizsgnaxrigu3nugbjmmle"

QUERY = """
query ListSinals {
  listSinals(limit: 1000) {
    items {
      id
      name
      videos
      avatar
    }
  }
}
"""

def scrape_fesai():
    print("--- Coletando sinais do FESAI (Tecnologia e Informática) ---")
    headers = {
        "Content-Type": "application/json",
        "x-api-key": API_KEY,
        "User-Agent": "LibrasDicionarioApp/1.0 (Educational open-source scraper)"
    }
    req = urllib.request.Request(
        GRAPHQL_URL,
        data=json.dumps({"query": QUERY}).encode("utf-8"),
        headers=headers
    )
    with urllib.request.urlopen(req, timeout=30) as resp:
        data = json.loads(resp.read().decode("utf-8"))

    items = data.get("data", {}).get("listSinals", {}).get("items", [])
    print(f"FESAI: {len(items)} sinais brutos encontrados.")

    results = []
    for item in items:
        name = (item.get("name") or "").strip()
        if not name:
            continue

        videos = item.get("videos") or []
        video_url = videos[0] if videos else None
        avatar = item.get("avatar")

        results.append({
            "source": "FESAI",
            "title": name,
            "description": "Termo técnico de Tecnologia e Desenvolvimento (FESAI)",
            "exemplo": None,
            "libras": None,
            "video_url": video_url,
            "image_url": avatar,
            "youtube_id": None,
            "link": "https://www.fesai.com.br/"
        })

    out_path = "tools/scraper/data/fesai.json"
    os.makedirs(os.path.dirname(out_path), exist_ok=True)
    with open(out_path, "w", encoding="utf-8") as f:
        json.dump(results, f, ensure_ascii=False, indent=2)

    print(f"FESAI concluído: {len(results)} verbetes salvos em {out_path}.")
    return results

if __name__ == "__main__":
    scrape_fesai()
