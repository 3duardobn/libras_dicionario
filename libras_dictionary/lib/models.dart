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

/// One dictionary entry, produced by any of the sources.
class DictItem {
  const DictItem({
    this.title,
    this.description,
    this.exemplo,
    this.libras,
    this.videoUrl,
    this.imageUrl,
    this.youtubeId,
    this.link,
    this.source,
  });

  final String? title;
  final String? description;
  final String? exemplo;
  final String? libras;
  final String? videoUrl;
  final String? imageUrl;
  final String? youtubeId;
  final String? link;
  final String? source;
}

/// Metadata when multiple entries share the same title and source
class DisambiguationInfo {
  const DisambiguationInfo({
    required this.index,
    required this.total,
  });

  final int index;
  final int total;
}

/// Agrupa e calcula as desambiguações para sinais com mesmo título e fonte
Map<int, DisambiguationInfo> computeDisambiguations(List<DictItem> items) {
  final counts = <String, int>{};
  for (final item in items) {
    final key = '${item.source?.toUpperCase()}_${item.title?.toUpperCase()}';
    counts[key] = (counts[key] ?? 0) + 1;
  }

  final currentIndices = <String, int>{};
  final result = <int, DisambiguationInfo>{};
  for (var i = 0; i < items.length; i++) {
    final item = items[i];
    final key = '${item.source?.toUpperCase()}_${item.title?.toUpperCase()}';
    final total = counts[key] ?? 1;
    if (total > 1) {
      final cur = (currentIndices[key] ?? 0) + 1;
      currentIndices[key] = cur;
      result[i] = DisambiguationInfo(index: cur, total: total);
    }
  }
  return result;
}