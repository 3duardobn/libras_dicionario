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
import unicodedata
from collections import defaultdict

def strip_diacritics(text: str) -> str:
    text = unicodedata.normalize("NFD", text)
    return "".join(c for c in text if unicodedata.category(c) != "Mn")

def clean_display_title(raw_title: str) -> str:
    """
    Limpa o título para exibição na interface:
    Remove sufixos numéricos que o INES usa para variantes (ex: ALUNO1 -> ALUNO, ABERTO2 -> ABERTO).
    Também limpa numerais romanos comuns (ex: MUTILAR II -> MUTILAR).
    """
    if not raw_title:
        return ""
    # Remove sufixos numéricos no final da palavra (ex: "ABANDONAR1" -> "ABANDONAR")
    cleaned = re.sub(r"\d+$", "", raw_title.strip())
    # Remove sufixos numerais romanos isolados no final (ex: "SINAL II" -> "SINAL")
    cleaned = re.sub(r"\s+(?:I{1,3}|IV|V|VI{1,3}|IX|X)$", "", cleaned, flags=re.IGNORECASE)
    return cleaned.strip()

def normalize(text: str) -> str:
    """
    Normaliza a palavra para busca e indexação:
    - Minúsculas e sem acentos
    - Substitui '@' por 'o' (ex: amig@ -> amigo)
    - Remove numerais e caracteres pontuais
    """
    if not text:
        return ""
    text = text.lower()
    # Arroba como neutralizador de gênero (ex: amig@ -> amigo)
    text = text.replace("@", "o")
    text = strip_diacritics(text)
    # Remove numerais no final ou soltos
    text = re.sub(r"\d+", "", text)
    # Remove pontuações mantendo apenas letras, espaços e hifens
    text = re.sub(r"[^\w\s-]", " ", text)
    return re.sub(r"\s+", " ", text).strip()

def generate_index_keys(raw_title: str) -> set:
    """
    Gera todas as chaves de busca válidas para um verbete.
    Como em Libras não há distinção morfológica obrigatória de gênero para grande parte dos sinais,
    um sinal para 'amigo' deve responder para 'amiga', 'amigo', 'amig@', etc.
    """
    keys = set()
    
    # Se houver barras (ex: "AVÔ/AVÓ", "Sapiranga/Coité"), indexa cada parte
    parts = re.split(r"[/,;]", raw_title)
    
    for part in parts:
        norm = normalize(part)
        if not norm:
            continue
        keys.add(norm)
        
        # Mapeamento e expansão de gênero para termos terminados em 'o' ou 'a'
        # Ex: "amigo" -> também indexa "amiga" e "amig@"
        # Ex: "aluno" -> também indexa "aluna" e "alun@"
        # Ex: "professor" -> também indexa "professora"
        words = norm.split()
        if len(words) == 1:
            w = words[0]
            if len(w) >= 4:
                if w.endswith("o"):
                    stem = w[:-1]
                    keys.add(f"{stem}a")
                    keys.add(f"{stem}@")
                elif w.endswith("a"):
                    stem = w[:-1]
                    keys.add(f"{stem}o")
                    keys.add(f"{stem}@")
                elif w.endswith("or"):
                    keys.add(f"{w}a")
                elif w.endswith("ora"):
                    keys.add(w[:-1])
                elif w.endswith("es"):
                    keys.add(f"{w}a")
                elif w.endswith("esa"):
                    keys.add(w[:-1])

    return keys

def build_unified_dataset():
    data_dir = "tools/scraper/data"
    sources = ["ines.json", "librasacademicauff.json", "redesurdos.json", "ufv.json"]

    all_entries = []
    for src in sources:
        path = os.path.join(data_dir, src)
        if os.path.exists(path):
            with open(path, "r", encoding="utf-8") as f:
                entries = json.load(f)
                print(f"Carregado {src}: {len(entries)} verbetes.")
                all_entries.extend(entries)
        else:
            print(f"Aviso: {src} ainda não gerado.")

    print(f"Total bruto consolidado: {len(all_entries)} verbetes.")

    # Agrupamento multi-chave com títulos limpos (sem numerais do INES)
    grouped = defaultdict(list)
    total_indexed_entries = 0

    for entry in all_entries:
        raw_title = entry.get("title") or ""
        cleaned_title = clean_display_title(raw_title)
        if not cleaned_title:
            continue
        
        # Manter apenas itens com mídia válida
        if not entry.get("video_url") and not entry.get("youtube_id") and not entry.get("image_url"):
            continue

        item = dict(entry)
        item["title"] = cleaned_title  # Título sem '1', '2', etc.

        keys = generate_index_keys(raw_title)
        for k in keys:
            grouped[k].append(item)
        total_indexed_entries += 1

    print(f"Total de itens únicos indexados: {total_indexed_entries}")
    print(f"Total de chaves de busca únicas (com gênero expandido e @): {len(grouped)}")

    output_path = os.path.join(data_dir, "libras_unified.json")
    with open(output_path, "w", encoding="utf-8") as f:
        json.dump(grouped, f, ensure_ascii=False, indent=None, separators=(",", ":"))

    size_mb = os.path.getsize(output_path) / (1024 * 1024)
    print(f"Dicionário unificado gerado em {output_path} ({size_mb:.2f} MB)")

if __name__ == "__main__":
    build_unified_dataset()
