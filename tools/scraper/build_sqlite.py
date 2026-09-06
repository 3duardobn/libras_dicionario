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

import sqlite3
import json
import os

def build_sqlite(json_path="tools/scraper/data/libras_unified.json", db_path="tools/scraper/data/libras.db"):
    print(f"Lendo dados de {json_path}...")
    with open(json_path, "r", encoding="utf-8") as f:
        data = json.load(f)

    if os.path.exists(db_path):
        os.remove(db_path)

    conn = sqlite3.connect(db_path)
    cur = conn.cursor()

    # Otimizações de gravação
    cur.execute("PRAGMA synchronous = OFF")
    cur.execute("PRAGMA journal_mode = MEMORY")

    cur.execute("""
    CREATE TABLE signs (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        norm_word TEXT NOT NULL,
        title TEXT NOT NULL,
        source TEXT NOT NULL,
        description TEXT,
        exemplo TEXT,
        libras TEXT,
        video_url TEXT,
        image_url TEXT,
        youtube_id TEXT,
        link TEXT
    )
    """)

    cur.execute("CREATE INDEX idx_signs_norm ON signs(norm_word)")

    rows = []
    for norm_key, items in data.items():
        for item in items:
            rows.append((
                norm_key,
                item.get("title") or "",
                item.get("source") or "",
                item.get("description"),
                item.get("exemplo"),
                item.get("libras"),
                item.get("video_url"),
                item.get("image_url"),
                item.get("youtube_id"),
                item.get("link")
            ))

    cur.executemany("""
    INSERT INTO signs (norm_word, title, source, description, exemplo, libras, video_url, image_url, youtube_id, link)
    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    """, rows)

    # Criação do índice FTS5
    cur.execute("""
    CREATE VIRTUAL TABLE signs_fts USING fts5(
        norm_word,
        title,
        content='signs',
        content_rowid='id'
    )
    """)
    cur.execute("INSERT INTO signs_fts(signs_fts) VALUES('rebuild')")

    conn.commit()
    conn.close()

    size_mb = os.path.getsize(db_path) / (1024 * 1024)
    print(f"Banco SQLite gerado com sucesso: {len(rows)} linhas! Tamanho: {size_mb:.2f} MB em {db_path}")

if __name__ == "__main__":
    build_sqlite()
