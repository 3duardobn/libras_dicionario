class DictItem {
  final String title;
  final String? description;
  final String? videoUrl;
  final String? youtubeId;
  final String source; // 'INES' or 'RedeSurdos'

  DictItem({
    required this.title,
    this.description,
    this.videoUrl,
    this.youtubeId,
    required this.source,
  });
}
