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
