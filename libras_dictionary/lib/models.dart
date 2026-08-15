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