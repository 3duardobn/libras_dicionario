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

/// Result card for one dictionary entry.
class DictionaryItemCard extends StatefulWidget {
  const DictionaryItemCard({super.key, required this.item});

  final DictItem item;

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

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      clipBehavior: Clip.antiAlias,
      child: Semantics(
        label: '${item.title}, ${item.source}',
        hint: _expanded ? s.collapseHint : s.expandHint,
        child: InkWell(
          onTap: () => setState(() => _expanded = !_expanded),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                color: getSourceColor(item.source ?? ''),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        '${item.title} (${item.source})',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
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
              if (_expanded)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (description != null && description.trim().isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                        child: _htmlSection(s.descriptionLabel, description, false),
                      ),
                    if (exemplo != null && exemplo.trim().isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                        child: _htmlSection(s.exampleLabel, exemplo, true),
                      ),
                    if (libras != null && libras.trim().isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
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
                                color: Colors.grey.shade100,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Colors.grey.shade300,
                                ),
                              ),
                              child: Text(
                                libras,
                                style: const TextStyle(
                                  fontFamily: 'monospace',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
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
                        padding: const EdgeInsets.fromLTRB(8, 8, 8, 12),
                        child: Image.network(
                          imageUrl,
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
                          errorBuilder: (context, error, stackTrace) => Padding(
                            padding: const EdgeInsets.all(12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.broken_image_outlined,
                                    color: Colors.grey.shade600),
                                const SizedBox(width: 8),
                                Flexible(
                                  child: Text(
                                    s.imageError,
                                    style: TextStyle(
                                        color: Colors.grey.shade600),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    if (videoUrl != null && videoUrl.trim().isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: ChewieVideoWidget(videoUrl: videoUrl),
                      ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}