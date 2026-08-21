import 'dart:convert';
import 'dart:io';

import 'package:diacritic/diacritic.dart' show removeDiacritics;
import 'package:flutter/foundation.dart' show kDebugMode, visibleForTesting;
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

import 'models.dart';

const requestTimeout = Duration(seconds: 10);

// --- Source URLs ---

const inesBaseUrl = 'https://dicionario.ines.gov.br';
const redesurdosSearchUrl =
    'https://redesurdosce.ufc.br/wp-json/wp/v2/posts?search=';
const uffSearchUrl = 'https://librasacademica.uff.br/wp-json/wp/v2/posts?search=';
const ufvSearchUrl = 'https://sistemas.cead.ufv.br/capes/dicionario/';
const spreadTheSignBaseUrl = 'https://www.spreadthesign.com';

/// Shared client. Tests swap this for a [http.MockClient].
http.Client httpClient = http.Client();

void log(List<Object?> parts) {
  if (kDebugMode) {
    // ignore: avoid_print
    print(parts.join(' '));
  }
}

String normalize(String s) => removeDiacritics(s).toLowerCase();

RegExp wordBoundRegex(String query) =>
    RegExp('\\b${RegExp.escape(normalize(query))}\\b', unicode: true);

/// GET `urlStr` with a request timeout. Returns the response body.
/// Throws on timeout or non-200 status.
Future<String> fetchUrl(String urlStr, {Map<String, String>? headers}) async {
  final url = Uri.parse(urlStr);
  final future = httpClient.get(url, headers: headers);
  final response = await future.timeout(requestTimeout);
  if (response.statusCode != 200) {
    throw Exception('HTTP ${response.statusCode} em $urlStr');
  }
  return response.body;
}

// --- INES ---

List<dynamic>? _inesCache;

List<dynamic>? parseInesBody(String body) {
  final start = body.indexOf('[');
  final end = body.lastIndexOf(']');
  if (start == -1 || end == -1) return null;
  return json.decode(body.substring(start, end + 1)) as List<dynamic>;
}

Future<File> _inesCacheFile() async {
  final dir = await getApplicationSupportDirectory();
  return File('${dir.path}/ines_palavras.json');
}

Future<void> _saveInesToDisk(String body) async {
  try {
    final f = await _inesCacheFile();
    await f.writeAsString(body);
  } catch (e) {
    log(['INES: could not persist cache:', e]);
  }
}

Future<List<dynamic>?> _loadInesFromDisk() async {
  try {
    final f = await _inesCacheFile();
    if (await f.exists()) {
      return parseInesBody(await f.readAsString());
    }
  } catch (e) {
    log(['INES: could not read disk cache:', e]);
  }
  return null;
}

/// INES word list: memory cache, else network (persisting to disk),
/// else disk cache (offline). Throws when all fail.
Future<List<dynamic>> loadInesData() async {
  final cached = _inesCache;
  if (cached != null) return cached;
  try {
    final body = await fetchUrl('$inesBaseUrl/public/site/js/palavras.js');
    final data = parseInesBody(body);
    if (data == null) {
      throw Exception('INES: resposta em formato inesperado');
    }
    _inesCache = data;
    _saveInesToDisk(body);
    return data;
  } catch (e) {
    log(['INES network fetch failed, trying disk cache:', e]);
    final disk = await _loadInesFromDisk();
    if (disk != null) {
      _inesCache = disk;
      return disk;
    }
    rethrow;
  }
}

/// All INES headwords currently cached (for autocomplete). Empty when
/// the list was never loaded.
List<String> inesWords() {
  final data = _inesCache;
  if (data == null) return [];
  return data
      .map((e) => (e as Map)['palavra'] as String?)
      .where((w) => w != null && w.isNotEmpty)
      .cast<String>()
      .toList();
}

Future<List<DictItem>> fetchInes(String query) async {
  final data = await loadInesData();
  final regex = wordBoundRegex(query);
  final items = <DictItem>[];
  for (final item in data) {
    final map = item as Map;
    final palavra = (map['palavra'] ?? '') as String;
    if (!regex.hasMatch(normalize(palavra))) continue;
    final video = (map['video'] ?? '') as String;
    final image = (map['image'] ?? '') as String;
    items.add(DictItem(
      title: palavra.isEmpty ? 'Sem título' : palavra,
      description: map['descricao'] as String?,
      exemplo: map['exemplo'] as String?,
      libras: map['libras'] as String?,
      videoUrl: video.isEmpty
          ? null
          : '$inesBaseUrl/public/media/palavras/videos/$video',
      imageUrl: image.isEmpty
          ? null
          : '$inesBaseUrl/public/media/palavras/images/$image',
      link:
          '$inesBaseUrl/pt/search?word=${Uri.encodeComponent(palavra)}',
      source: 'INES',
    ));
  }
  return items;
}

// --- Video / YouTube extraction ---

/// Matches the `src` of any `<video>` tag.
final RegExp videoSrcExp =
    RegExp("<video[^>]*src\\s*=\\s*[\"']([^\"']+)[\"']");

/// Same, restricted to SpreadTheSign's media CDN.
final RegExp _stsVideoSrcExp = RegExp(
    "<video[^>]*src\\s*=\\s*[\"'](https:\\/\\/media\\.spreadthesign\\.com\\/video\\/mp4\\/[^\"']+)[\"']");

class VideoExtraction {
  const VideoExtraction({this.videoUrl, this.youtubeId});

  final String? videoUrl;
  final String? youtubeId;
}

VideoExtraction extractVideoAndYoutubeId(String content) {
  final ytEmbedExp = RegExp("src\\s*=\\s*[\"']https:\\/\\/www\\.youtube\\.com\\/embed\\/([^\"'?]+)");
  final ytWatchExp = RegExp("https:\\/\\/www\\.youtube\\.com\\/watch\\?v=([^\"&\\s]+)");
  final ytShortExp = RegExp("https:\\/\\/youtu\\.be\\/([^\"&\\s<]+)");
  final pbVideoExp = RegExp("src\\s*=\\s*[\"'](http[^\"']+?\\.mp4)[\"']");
  final pbYtExp = RegExp("src\\s*=\\s*[\"'](https:\\/\\/www\\.youtube\\.com\\/watch\\?v=[^\"&]+)[\"']");

  final videoMatch = videoSrcExp.firstMatch(content);
  if (videoMatch != null) {
    return VideoExtraction(videoUrl: videoMatch.group(1));
  }
  final ytMatch = ytEmbedExp.firstMatch(content);
  if (ytMatch != null) {
    return VideoExtraction(youtubeId: ytMatch.group(1));
  }
  final ytWatchMatch = ytWatchExp.firstMatch(content);
  if (ytWatchMatch != null) {
    return VideoExtraction(youtubeId: ytWatchMatch.group(1));
  }
  final ytShortMatch = ytShortExp.firstMatch(content);
  if (ytShortMatch != null) {
    return VideoExtraction(youtubeId: ytShortMatch.group(1));
  }
  final pbVideoMatch = pbVideoExp.firstMatch(content);
  if (pbVideoMatch != null) {
    return VideoExtraction(videoUrl: pbVideoMatch.group(1));
  }
  final pbYtMatch = pbYtExp.firstMatch(content);
  if (pbYtMatch != null) {
    final idMatch = RegExp('watch\\?v=([^"&\\s]+)').firstMatch(pbYtMatch.group(1) ?? '');
    return VideoExtraction(youtubeId: idMatch?.group(1));
  }
  return const VideoExtraction();
}

/// URL for an external YouTube search for signs of `query` in Libras.
/// Opened via url_launcher; in-app YouTube search was removed for
/// YouTube ToS compliance.
String youtubeSearchUrl(String query) =>
    'https://www.youtube.com/results?search_query='
    '${Uri.encodeQueryComponent('$query em libras')}';

// --- WordPress-based sources (RedeSurdos, LibrasAcademicaUFF) ---

/// Searches a WordPress REST API and maps matching posts through
/// [itemToDict]. Throws on network/HTTP failure.
Future<List<DictItem>> _fetchWordpress(
  String searchUrl,
  String query,
  DictItem Function(Map item) itemToDict,
) async {
  // per_page=100: the default of 10 hides exact-title posts that rank
  // below content-only matches in WP's full-text relevance order.
  final body = await fetchUrl(
    '$searchUrl${Uri.encodeQueryComponent(query)}&per_page=100',
  );
  final data = json.decode(body) as List<dynamic>;
  final regex = wordBoundRegex(query);
  final items = <DictItem>[];
  for (final item in data) {
    final map = item as Map;
    final title = ((map['title'] as Map?)?['rendered'] ?? '') as String;
    if (!regex.hasMatch(normalize(title))) continue;
    items.add(itemToDict(map));
  }
  return items;
}

/// Builds a [DictItem] from a WordPress post, extracting video/YouTube
/// from the rendered content. `description` lets callers choose between
/// excerpt and full content.
DictItem _wordpressItem(Map item, String source, String? description) {
  final content = ((item['content'] as Map?)?['rendered'] ?? '') as String;
  final extraction = extractVideoAndYoutubeId(content);
  return DictItem(
    title: ((item['title'] as Map?)?['rendered']) as String?,
    description: description,
    videoUrl: extraction.videoUrl,
    youtubeId: extraction.youtubeId,
    link: item['link'] as String?,
    source: source,
  );
}

Future<List<DictItem>> fetchRedeSurdos(String query) {
  return _fetchWordpress(
    redesurdosSearchUrl,
    query,
    (item) {
      final content = ((item['content'] as Map?)?['rendered'] ?? '') as String;
      final excerpt = ((item['excerpt'] as Map?)?['rendered'] ?? '') as String;
      return _wordpressItem(
        item,
        'RedeSurdos',
        excerpt.isEmpty ? content : excerpt,
      );
    },
  );
}

Future<List<DictItem>> fetchLibrasAcademicaUff(String query) {
  return _fetchWordpress(
    uffSearchUrl,
    query,
    (item) => _wordpressItem(
      item,
      'LibrasAcademicaUFF',
      ((item['excerpt'] as Map?)?['rendered']) as String?,
    ),
  );
}

// --- UFV ---

/// Detail page fetch; returns null on failure so one broken page does
/// not sink the whole result set.
Future<DictItem?> fetchUfvDetail(String urlStr, String title) async {
  try {
    final body = await fetchUrl(urlStr);
    final videoMatch = videoSrcExp.firstMatch(body);
    if (videoMatch != null) {
      final videoUrl = videoMatch.group(1)?.trim() ?? '';
      if (videoUrl.isNotEmpty) {
        return DictItem(
          title: title,
          videoUrl: videoUrl,
          link: urlStr,
          source: 'UFV',
        );
      }
    }
  } catch (e) {
    log(['Error fetching UFV detail:', e]);
  }
  return null;
}

Future<List<DictItem>> fetchUfv(String query) async {
  final body = await fetchUrl(
    '$ufvSearchUrl?s=${Uri.encodeQueryComponent(query)}',
  );
  final regex = wordBoundRegex(query);
  final itemExp = RegExp('<a href="([^"]+)">(?:\\s*)<h4>([^<]+)</h4>');
  final futures = <Future<DictItem?>>[];
  for (final match in itemExp.allMatches(body)) {
    final link = match.group(1);
    final title = match.group(2)?.trim();
    if (link != null && title != null && regex.hasMatch(normalize(title))) {
      futures.add(fetchUfvDetail(link, title));
    }
  }
  final details = await Future.wait(futures);
  return details.whereType<DictItem>().toList();
}

// --- SpreadTheSign ---

const _stsHeaders = {'User-Agent': 'Mozilla/5.0'};

/// Detail page fetch; returns null on failure (partial results OK).
Future<DictItem?> fetchSpreadTheSignDetail(String urlStr, String title) async {
  try {
    final body = await fetchUrl(urlStr, headers: _stsHeaders);
    final videoMatch = _stsVideoSrcExp.firstMatch(body);
    if (videoMatch != null) {
      return DictItem(
        title: title,
        videoUrl: videoMatch.group(1),
        link: urlStr,
        source: 'SpreadTheSign',
      );
    }
  } catch (e) {
    log(['Error fetching SpreadTheSign detail:', e]);
  }
  return null;
}

Future<List<DictItem>> fetchSpreadTheSign(String query) async {
  final urlStr =
      '$spreadTheSignBaseUrl/pt.br/search/?q=${Uri.encodeQueryComponent(query)}';
  final body = await fetchUrl(urlStr, headers: _stsHeaders);
  final regex = wordBoundRegex(query);
  final results = <DictItem>[];

  final videoMatch = _stsVideoSrcExp.firstMatch(body);
  if (videoMatch != null) {
    final videoUrl = videoMatch.group(1)!;
    final titleExp = RegExp('<span class="flag-icon flag-icon-br bordered"><\\/span>\\s*([^<\\n]+)');
    final titleMatch = titleExp.firstMatch(body);
    if (titleMatch != null) {
      final title = titleMatch.group(1)!.trim();
      if (regex.hasMatch(normalize(title))) {
        results.add(DictItem(
          title: title,
          videoUrl: videoUrl,
          link: urlStr,
          source: 'SpreadTheSign',
        ));
      }
    }
  }

  final resultExp = RegExp(
      '<div class="search-result-title">\\s*<a href="(\\/pt\\.br\\/word\\/[^"]+)"[^>]*>\\s*([^<\\n]+)');
  final futures = <Future<DictItem?>>[];
  for (final match in resultExp.allMatches(body)) {
    final link = match.group(1);
    final title = match.group(2)?.trim();
    if (link != null && title != null && regex.hasMatch(normalize(title))) {
      futures.add(fetchSpreadTheSignDetail('$spreadTheSignBaseUrl$link', title));
    }
  }
  final details = await Future.wait(futures);
  for (final item in details.whereType<DictItem>()) {
    if (!results.any((r) => r.videoUrl == item.videoUrl)) {
      results.add(item);
    }
  }
  return results;
}

// --- Orchestration ---

final Map<String, Future<List<DictItem>> Function(String)> sourceFetchers = {
  'INES': fetchInes,
  'RedeSurdos': fetchRedeSurdos,
  'UFV': fetchUfv,
  'LibrasAcademicaUFF': fetchLibrasAcademicaUff,
  'SpreadTheSign': fetchSpreadTheSign,
};

/// Runs all enabled fetchers in parallel. Returns the collected items
/// plus the names of the sources that failed — a failed source never
/// sinks the others' results.
Future<({List<DictItem> items, List<String> failed})> searchAll(
  String query, {
  List<String>? sources,
}) async {
  final wanted = sources ?? sourceFetchers.keys.toList();
  final futures = <Future<({List<DictItem> items, String? failed})>>[];
  for (final sourceName in wanted) {
    final fetcher = sourceFetchers[sourceName];
    if (fetcher == null) continue;
    futures.add(() async {
      try {
        final items = await fetcher(query);
        log(['search:', sourceName, '->', items.length, 'items']);
        return (items: items, failed: null);
      } catch (e) {
        log(['!!! search failed for', sourceName, ':', e]);
        return (items: <DictItem>[], failed: sourceName);
      }
    }());
  }
  final results = await Future.wait(futures);
  final items = <DictItem>[];
  final failed = <String>[];
  for (final r in results) {
    items.addAll(r.items);
    if (r.failed != null) failed.add(r.failed!);
  }
  return (items: items, failed: failed);
}

@visibleForTesting
void setInesCacheForTest(List<dynamic>? data) {
  _inesCache = data;
}