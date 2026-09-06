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

import re

VIDEO_SRC_EXP = re.compile(r"""<video[^>]*src\s*=\s*["']([^"']+)["']""", re.IGNORECASE)
YT_EMBED_EXP = re.compile(r"""src\s*=\s*["']https?://(?:www\.)?youtube\.com/embed/([^"'?]+)""", re.IGNORECASE)
YT_WATCH_EXP = re.compile(r"""https?://(?:www\.)?youtube\.com/watch\?v=([^"&\s<]+)""", re.IGNORECASE)
YT_SHORT_EXP = re.compile(r"""https?://youtu\.be/([^"&\s<]+)""", re.IGNORECASE)
PB_VIDEO_EXP = re.compile(r"""src\s*=\s*["'](https?://[^"']+?\.mp4)""", re.IGNORECASE)
PB_YT_EXP = re.compile(r"""src\s*=\s*["'](https?://(?:www\.)?youtube\.com/watch\?v=[^"&]+)""", re.IGNORECASE)

def extract_video_and_youtube_id(html_content: str):
    if not html_content:
        return None, None
    
    # 1. Direct <video src="...">
    m = VIDEO_SRC_EXP.search(html_content)
    if m:
        return m.group(1).strip(), None

    # 2. YouTube Embed
    m = YT_EMBED_EXP.search(html_content)
    if m:
        return None, m.group(1).strip()

    # 3. YouTube Watch link
    m = YT_WATCH_EXP.search(html_content)
    if m:
        return None, m.group(1).strip()

    # 4. YouTube short link (youtu.be)
    m = YT_SHORT_EXP.search(html_content)
    if m:
        return None, m.group(1).strip()

    # 5. Playbuzz / generic mp4
    m = PB_VIDEO_EXP.search(html_content)
    if m:
        return m.group(1).strip(), None

    # 6. Playbuzz youtube link
    m = PB_YT_EXP.search(html_content)
    if m:
        watch_url = m.group(1)
        sub_m = re.search(r"watch\?v=([^\"&\s]+)", watch_url)
        if sub_m:
            return None, sub_m.group(1).strip()

    return None, None
