// Copyright (C) 2026 Eduardo Barroso Nunes
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

class DictItem {
  final String title;
  final String? description;
  final String? exemplo;
  final String? libras;
  final String? videoUrl;
  final String? imageUrl;
  final String? youtubeId;
  final String source; // 'INES' or 'RedeSurdos'

  DictItem({
    required this.title,
    this.description,
    this.exemplo,
    this.libras,
    this.videoUrl,
    this.imageUrl,
    this.youtubeId,
    required this.source,
  });
}
