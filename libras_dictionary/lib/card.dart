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

/// Source code in the manual's machine voice: monospace, one size, weight
/// and case do the ranking.
class SourceCode extends StatelessWidget {
  const SourceCode(this.label, {super.key, this.color});

  final String label;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      label,
      style: TextStyle(
        fontFamily: 'monospace',
        fontSize: 11,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.5,
        color: color ?? theme.colorScheme.onSurfaceVariant,
      ),
    );
  }
}

/// Result leaf for one dictionary entry: a full-strength source divider
/// board at the head and a milky acetate leaf for the opened body. State
/// is carried by marks (the punch hole of the favourite star, the errata
/// slip of an error), never by colour alone.
class DictionaryItemCard extends StatefulWidget {
  const DictionaryItemCard({
    super.key,
    required this.item,
    this.disambiguation,
    this.folio,
  });

  final DictItem item;
  final DisambiguationInfo? disambiguation;

  /// Position in the result list, printed in mono like a catalogue entry.
  final int? folio;

  @override
  State<DictionaryItemCard> createState() => _DictionaryItemCardState();
}

class _DictionaryItemCardState extends State<DictionaryItemCard> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    final item = widget.item;
    final isFavorite = st.appState.isFavorite(item);
    final description = item.description;
    final exemplo = item.exemplo;
    final libras = item.libras;
    final youtubeId = item.youtubeId;
    final imageUrl = item.imageUrl;
    final videoUrl = item.videoUrl;
    final sourceColor = getSourceColor(item.source ?? '');
    final scheme = Theme.of(context).colorScheme;
    final isHighContrast = st.appState.isHighContrast;

    final dividerHeight = isHighContrast ? 56.0 : 48.0;

    return Semantics(
      label: '${item.title}, ${item.source}',
      hint: _expanded ? s.collapseHint : s.expandHint,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
          border: Border.all(
            color: isHighContrast ? scheme.outline : Colors.transparent,
            width: isHighContrast ? 2 : 0,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InkWell(
              onTap: () => setState(() => _expanded = !_expanded),
              child: Container(
                height: dividerHeight,
                color: sourceColor,
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                child: Row(
                  children: [
                    if (widget.folio != null) ...[
                      SourceCode(
                        widget.folio.toString().padLeft(2, '0'),
                        color: Colors.white.withValues(alpha: 0.9),
                      ),
                      const SizedBox(width: 10),
                    ],
                    Expanded(
                      child: Text(
                        item.title ?? '',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight:
                              isHighContrast ? FontWeight.w900 : FontWeight.w800,
                          fontSize: isHighContrast ? 20 : 17,
                          color: Colors.white,
                          letterSpacing: 0.2,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    SourceCode(
                      (item.source ?? '').toUpperCase(),
                      color: Colors.white.withValues(alpha: 0.85),
                    ),
                    if (widget.disambiguation != null)
                      Container(
                        margin: const EdgeInsets.only(left: 6),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.22),
                          border: Border.all(
                            color: Colors.white.withValues(alpha: 0.6),
                            width: 1,
                          ),
                        ),
                        child: Text(
                          s.variationBadge(
                            widget.disambiguation!.index,
                            widget.disambiguation!.total,
                          ),
                          style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    IconButton(
                      icon: Icon(
                        isFavorite ? Icons.star : Icons.star_border,
                        color: Colors.white,
                      ),
                      tooltip: isFavorite ? s.favoriteRemove : s.favoriteAdd,
                      onPressed: () => st.appState.toggleFavorite(item),
                    ),
                    if (item.link != null)
                      IconButton(
                        icon: const Icon(Icons.share, color: Colors.white),
                        tooltip: s.shareSign,
                        onPressed: () => st.appState.shareItem(item),
                      ),
                    Icon(
                      _expanded ? Icons.expand_less : Icons.expand_more,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            if (!_expanded &&
                description != null &&
                description.trim().isNotEmpty)
              Container(
                color: scheme.surface,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      margin: const EdgeInsets.only(top: 5, right: 10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: scheme.onSurfaceVariant,
                          width: 1.5,
                        ),
                      ),
                    ),
                    Expanded(
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
                  ],
                ),
              ),
            if (_expanded)
              Container(
                color: isHighContrast
                    ? scheme.surface
                    : Color.alphaBlend(
                        sourceColor.withValues(alpha: 0.08),
                        scheme.surface,
                      ),
                padding: const EdgeInsets.fromLTRB(16, 14, 16, 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (description != null && description.trim().isNotEmpty)
                      _htmlSection(s.descriptionLabel, description, false),
                    if (exemplo != null && exemplo.trim().isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child:
                            _htmlSection(s.exampleLabel, exemplo, true),
                      ),
                    if (libras != null && libras.trim().isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                color: scheme.surfaceContainerHighest,
                                border: Border.all(
                                  color: scheme.outline,
                                  width: isHighContrast ? 2 : 1,
                                ),
                              ),
                              child: Text(
                                libras,
                                style: TextStyle(
                                  fontFamily: 'monospace',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: scheme.onSurface,
                                ),
                              ),
                            ),
                            const SizedBox(height: 12),
                          ],
                        ),
                      ),
                    if (youtubeId != null && youtubeId.trim().isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: YoutubePlayerWidget(youtubeId: youtubeId),
                      ),
                    if (imageUrl != null && imageUrl.trim().isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8, 0, 12),
                        child: Image.network(
                          imageUrl.startsWith('https://dicionario.ines.gov.br')
                              ? imageUrl.replaceFirst('https://', 'http://')
                              : imageUrl,
                          fit: BoxFit.contain,
                          loadingBuilder: (context, child, progress) =>
                              progress == null
                                  ? child
                                  : const Padding(
                                      padding: EdgeInsets.all(24),
                                      child: Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                    ),
                          errorBuilder: (context, error, stackTrace) =>
                              const _ErrataSlip(message: s.imageError),
                        ),
                      ),
                    if (videoUrl != null && videoUrl.trim().isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: ChewieVideoWidget(videoUrl: videoUrl),
                      ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

/// Vermilion errata slip: the error mark of the manual, in every theme.
class _ErrataSlip extends StatelessWidget {
  const _ErrataSlip({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: AppColors.errata, width: 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline, color: AppColors.errata, size: 20),
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              message,
              style: const TextStyle(
                color: AppColors.errata,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}