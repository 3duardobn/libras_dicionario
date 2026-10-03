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

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import 'folder_ui.dart';
import 'models.dart';
import 'player.dart';
import 'state.dart' as st;
import 'strings.dart' as s;
import 'theme.dart';

Color getSourceColor(String source) => AppColors.forSource(source);

Widget _htmlSection(String label, String data, bool italic) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      const SizedBox(height: 4),
      Html(
        data: data,
        style: {
          'body': italic
              ? Style(
                  margin: Margins.zero,
                  padding: HtmlPaddings.zero,
                  fontSize: FontSize(16.0),
                  fontStyle: FontStyle.italic,
                )
              : Style(
                  margin: Margins.zero,
                  padding: HtmlPaddings.zero,
                  fontSize: FontSize(16.0),
                ),
        },
      ),
      const SizedBox(height: 12),
    ],
  );
}

/// Card de resultado em lista limpa: título grande, faixa lateral fina na
/// cor pastel da fonte como única marca colorida, e o corpo em uma folha
/// neutra ao expandir. Sem faixas full-bleed e sem códigos mono.
class DictionaryItemCard extends StatefulWidget {
  const DictionaryItemCard({
    super.key,
    required this.item,
    this.disambiguation,
    this.folderId,
    this.onRemoveFromFolder,
    this.onMoveToFolder,
  });

  final DictItem item;
  final DisambiguationInfo? disambiguation;

  /// Quando definido, o card aparece dentro de uma pasta e as ações
  /// passam a ser remover/mover em vez de salvar.
  final String? folderId;
  final VoidCallback? onRemoveFromFolder;
  final VoidCallback? onMoveToFolder;

  @override
  State<DictionaryItemCard> createState() => _DictionaryItemCardState();
}

class _DictionaryItemCardState extends State<DictionaryItemCard> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    final item = widget.item;
    final isSaved = widget.folderId != null || st.appState.isSaved(item);
    final description = item.description;
    final exemplo = item.exemplo;
    final libras = item.libras;
    final youtubeId = item.youtubeId;
    final imageUrl = item.imageUrl;
    final videoUrl = item.videoUrl;
    final sourceColor = getSourceColor(item.source ?? '');
    final scheme = Theme.of(context).colorScheme;
    final isHighContrast = st.appState.isHighContrast;

    final sourceName = item.source ?? '';
    final inFolder = widget.folderId != null;

    return Semantics(
      label: '${item.title}, $sourceName',
      hint: _expanded ? s.collapseHint : s.expandHint,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        elevation: 0,
        color: scheme.surfaceContainerHighest.withValues(alpha: 0.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.card),
          side: BorderSide(
            color: isHighContrast ? scheme.outline : Colors.transparent,
            width: isHighContrast ? 2 : 0,
          ),
        ),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () => setState(() => _expanded = !_expanded),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Faixa lateral fina na cor pastel da fonte.
                Container(width: 4, color: sourceColor),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 14, 8, 4),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                spacing: 8,
                                runSpacing: 4,
                                children: [
                                  Text(
                                    item.title ?? '',
                                    style: TextStyle(
                                      fontSize: isHighContrast ? 22 : 18,
                                      fontWeight: isHighContrast
                                          ? FontWeight.w900
                                          : FontWeight.w700,
                                      color: scheme.onSurface,
                                      height: 1.2,
                                    ),
                                  ),
                                  if (widget.disambiguation != null)
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8,
                                        vertical: 2,
                                      ),
                                      decoration: BoxDecoration(
                                        color: scheme.surfaceContainerHighest,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        s.variationBadge(
                                          widget.disambiguation!.index,
                                          widget.disambiguation!.total,
                                        ),
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w600,
                                          color: scheme.onSurfaceVariant,
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            if (inFolder) ...[
                              if (widget.onMoveToFolder != null)
                                IconButton(
                                  icon: const Icon(Icons.drive_file_move_outline),
                                  tooltip: s.moveToFolder,
                                  color: scheme.onSurfaceVariant,
                                  onPressed: widget.onMoveToFolder,
                                ),
                              IconButton(
                                icon: const Icon(Icons.folder_off_outlined),
                                tooltip: s.favoriteRemove,
                                color: scheme.onSurfaceVariant,
                                onPressed: widget.onRemoveFromFolder,
                              ),
                            ] else
                              IconButton(
                                icon: Icon(
                                  isSaved
                                      ? Icons.folder
                                      : Icons.folder_outlined,
                                  color: isSaved
                                      ? sourceColor
                                      : scheme.onSurfaceVariant,
                                ),
                                tooltip: s.favoriteAdd,
                                onPressed: () =>
                                    showSaveToFolderSheet(context, item),
                              ),
                            Icon(
                              _expanded
                                  ? Icons.expand_less
                                  : Icons.expand_more,
                              color: scheme.onSurfaceVariant,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
                        child: Text(
                          sourceName,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: scheme.onSurfaceVariant,
                          ),
                        ),
                      ),
                      if (!_expanded &&
                          description != null &&
                          description.trim().isNotEmpty)
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(16, 0, 16, 12),
                          child: Text(
                            description
                                .replaceAll(RegExp(r'<[^>]*>'), '')
                                .trim(),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 14,
                              fontStyle: FontStyle.italic,
                              color: scheme.onSurfaceVariant,
                            ),
                          ),
                        ),
                      if (_expanded)
                        Container(
                          color: scheme.surface,
                          padding: const EdgeInsets.fromLTRB(16, 14, 16, 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (description != null &&
                                  description.trim().isNotEmpty)
                                _htmlSection(
                                    s.descriptionLabel, description, false),
                              if (exemplo != null && exemplo.trim().isNotEmpty)
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: _htmlSection(
                                      s.exampleLabel, exemplo, true),
                                ),
                              if (libras != null &&
                                  libras.trim().isNotEmpty)
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        s.glosaLabel,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          color:
                                              scheme.surfaceContainerHighest,
                                          borderRadius: BorderRadius.circular(
                                              AppRadius.chip),
                                        ),
                                        child: Text(
                                          libras,
                                          style: TextStyle(
                                            fontFamily: 'monospace',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: scheme.onSurface,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 12),
                                    ],
                                  ),
                                ),
                              if (youtubeId != null &&
                                  youtubeId.trim().isNotEmpty)
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 12),
                                  child: YoutubePlayerWidget(youtubeId: youtubeId),
                                ),
                              if (imageUrl != null &&
                                  imageUrl.trim().isNotEmpty)
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 8, 0, 12),
                                  child: Image.network(
                                    imageUrl.startsWith(
                                            'https://dicionario.ines.gov.br')
                                        ? imageUrl.replaceFirst(
                                            'https://', 'http://')
                                        : imageUrl,
                                    fit: BoxFit.contain,
                                    loadingBuilder: (context, child, progress) =>
                                        progress == null
                                            ? child
                                            : const Padding(
                                                padding: EdgeInsets.all(24),
                                                child: Center(
                                                  child:
                                                      CircularProgressIndicator(),
                                                ),
                                              ),
                                    errorBuilder: (context, error, stackTrace) =>
                                        _ErrataSlip(message: s.imageError),
                                  ),
                                ),
                              if (videoUrl != null &&
                                  videoUrl.trim().isNotEmpty)
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 12),
                                  child: ChewieVideoWidget(videoUrl: videoUrl),
                                ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Marca de erro discreta: texto com ícone na cor de erro do tema.
class _ErrataSlip extends StatelessWidget {
  const _ErrataSlip({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error_outline, color: scheme.error, size: 20),
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              message,
              style: TextStyle(
                color: scheme.error,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}