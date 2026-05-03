import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:diacritic/diacritic.dart';
import 'models.dart';

class ApiService {
  final http.Client client;
  List<dynamic>? _cachedInesData;

  ApiService({http.Client? client}) : client = client ?? http.Client();

  Future<List<DictItem>> search(String query, {String source = 'Ambos'}) async {
    final List<Future<List<DictItem>>> futures = [];

    if (source == 'Ambos' || source == 'RedeSurdos') {
      futures.add(_fetchRedeSurdos(query).catchError((_) => <DictItem>[]));
    }
    if (source == 'Ambos' || source == 'INES') {
      futures.add(_fetchInes(query).catchError((_) => <DictItem>[]));
    }
    if (source == 'Ambos' || source == 'UFV') {
      futures.add(_fetchUFV(query).catchError((_) => <DictItem>[]));
    }
    if (source == 'Ambos' || source == 'LibrasAcademicaUFF') {
      futures.add(_fetchLibrasAcademicaUFF(query).catchError((_) => <DictItem>[]));
    }
    if (source == 'Ambos' || source == 'SpreadTheSign') {
      futures.add(_fetchSpreadTheSign(query).catchError((_) => <DictItem>[]));
    }

    final resultsList = await Future.wait(futures);
    final List<DictItem> results = [];
    for (var list in resultsList) {
      results.addAll(list);
    }

    return results;
  }

  Future<List<DictItem>> _fetchRedeSurdos(String query) async {
    final encodedQuery = Uri.encodeQueryComponent(query);
    final normalizedQuery = removeDiacritics(query).toLowerCase();

    final url = Uri.parse(
      'https://redesurdosce.ufc.br/wp-json/wp/v2/posts?search=$encodedQuery',
    );
    final response = await client.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      final RegExp wordBound = RegExp(
        r'\b' + RegExp.escape(normalizedQuery) + r'\b',
        unicode: true,
      );
      final RegExp exp = RegExp(
        r'src="https:\/\/www\.youtube\.com\/embed\/([^"?]+)',
      );
      final RegExp expText = RegExp(
        r'https:\/\/www\.youtube\.com\/watch\?v=([^"&\s]+)',
      );

      final filteredData = data.where((item) {
        final title = item['title']['rendered'] as String?;
        final content = item['content']['rendered'] as String?;

        final normalizedTitle =
            title != null ? removeDiacritics(title).toLowerCase() : '';
        final normalizedContent =
            content != null ? removeDiacritics(content).toLowerCase() : '';

        return wordBound.hasMatch(normalizedTitle) ||
            wordBound.hasMatch(normalizedContent);
      }).toList();

      return filteredData.map((item) {
        final title = item['title']['rendered'];
        final content = item['content']['rendered'];
        final excerpt = item['excerpt']['rendered'];

        // Extract YouTube URL from iframe inside content
        String? youtubeId;
        final match = exp.firstMatch(content);
        if (match != null) {
          youtubeId = match.group(1);
        }

        // Sometimes the URL is plain text
        if (youtubeId == null) {
          final matchText = expText.firstMatch(content);
          if (matchText != null) {
            youtubeId = matchText.group(1);
          }
        }

        return DictItem(
          title: title,
          description: excerpt.isNotEmpty ? excerpt : content,
          youtubeId: youtubeId,
          source: 'RedeSurdos',
        );
      }).toList();
    }
    return [];
  }

  Future<List<DictItem>> _fetchInes(String query) async {
    if (_cachedInesData == null) {
      final url = Uri.parse(
        'https://dicionario.ines.gov.br/public/site/js/palavras.js',
      );
      final response = await client.get(url);
      if (response.statusCode == 200) {
        final String body = response.body;

        // The file starts with `var palavras = [{...}];`
        // We need to extract the JSON array string
        final int startIndex = body.indexOf('[');
        final int endIndex = body.lastIndexOf(']');

        if (startIndex != -1 && endIndex != -1) {
          final String jsonString = body.substring(startIndex, endIndex + 1);
          try {
            _cachedInesData = json.decode(jsonString);
          } catch (e) {
            // Ignored for now
          }
        }
      }
    }

    if (_cachedInesData != null) {
      final String normalizedQuery = removeDiacritics(query).toLowerCase();
      final RegExp wordBound = RegExp(
        r'\b' + RegExp.escape(normalizedQuery) + r'\b',
        unicode: true,
      );
      final List<DictItem> results = [];

      for (var item in _cachedInesData!) {
        final String? palavra = item['palavra'];
        final String? descricao = item['descricao'];

        final normalizedPalavra =
            palavra != null ? removeDiacritics(palavra).toLowerCase() : '';
        final normalizedDescricao =
            descricao != null ? removeDiacritics(descricao).toLowerCase() : '';

        // Check if the query is present anywhere in the word or description
        if (wordBound.hasMatch(normalizedPalavra) ||
            wordBound.hasMatch(normalizedDescricao)) {
          final String? videoFilename = item['video'];
          String? videoUrl;
          if (videoFilename != null && videoFilename.isNotEmpty) {
            videoUrl =
                'https://dicionario.ines.gov.br/public/media/palavras/videos/$videoFilename';
          }

          final String? imageFilename = item['image'];
          String? imageUrl;
          if (imageFilename != null && imageFilename.isNotEmpty) {
            imageUrl =
                'https://dicionario.ines.gov.br/public/media/palavras/images/$imageFilename';
          }

          results.add(DictItem(
            title: palavra ?? 'Sem título',
            description: item['descricao'],
            exemplo: item['exemplo'],
            libras: item['libras'],
            videoUrl: videoUrl,
            imageUrl: imageUrl,
            source: 'INES',
          ));
        }
      }
      return results;
    }

    return [];
  }

  Future<List<DictItem>> _fetchUFV(String query) async {
    final normalizedQuery = removeDiacritics(query).toLowerCase();
    final RegExp wordBound = RegExp(
      r'\b' + RegExp.escape(normalizedQuery) + r'\b',
      unicode: true,
    );
    final url = Uri.parse(
      'https://sistemas.cead.ufv.br/capes/dicionario/?s=' +
          Uri.encodeQueryComponent(query),
    );
    final response = await client.get(url);
    if (response.statusCode == 200) {
      final List<DictItem> results = [];
      final RegExp itemExp = RegExp(r'<a href="([^"]+)">(?:\s*)<h4>([^<]+)</h4>');
      final matches = itemExp.allMatches(response.body);

      final List<Future<DictItem?>> detailFutures = [];

      for (final match in matches) {
        final link = match.group(1);
        final title = match.group(2)?.trim();

        if (title != null && link != null) {
          // Exact match validation
          final normalizedTitle = removeDiacritics(title).toLowerCase();
          if (wordBound.hasMatch(normalizedTitle)) {
            detailFutures.add(_fetchUFVDetail(link, title));
          }
        }
      }

      final details = await Future.wait(detailFutures);
      for (final item in details) {
        if (item != null) {
          results.add(item);
        }
      }

      return results;
    }
    return [];
  }

  Future<DictItem?> _fetchUFVDetail(String urlStr, String title) async {
    try {
      final url = Uri.parse(urlStr);
      final response = await client.get(url);
      if (response.statusCode == 200) {
        final body = response.body;
        final RegExp videoExp = RegExp(
          r'<video[^>]+src=["' + "'" + r']([^"' + "'" + r']+)["' + "'" + r']',
        );
        final videoMatch = videoExp.firstMatch(body);
        if (videoMatch != null) {
          var videoUrl = videoMatch.group(1)?.trim();
          if (videoUrl != null && videoUrl.isNotEmpty) {
            return DictItem(title: title, videoUrl: videoUrl, source: 'UFV');
          }
        }
      }
    } catch (e) {
      print('Error fetching UFV detail: $e');
    }
    return null;
  }

  ({String? videoUrl, String? youtubeId}) _extractVideoAndYoutubeId(
      String content) {
    String? videoUrl;
    String? youtubeId;

    final RegExp videoExp = RegExp(
      r'<video[^>]+src=["' + "'" + r']([^"' + "'" + r']+)["' + "'" + r']',
    );
    final videoMatch = videoExp.firstMatch(content);
    if (videoMatch != null) {
      videoUrl = videoMatch.group(1);
    }

    if (videoUrl == null) {
      final RegExp ytExp = RegExp(
        r'src=["' +
            "'" +
            r']https:\/\/www\.youtube\.com\/embed\/([^"' +
            "'" +
            r'?]+)',
      );
      final ytMatch = ytExp.firstMatch(content);
      if (ytMatch != null) {
        youtubeId = ytMatch.group(1);
        return (videoUrl: videoUrl, youtubeId: youtubeId);
      }
    } else {
      return (videoUrl: videoUrl, youtubeId: youtubeId);
    }

    final RegExp ytTextExp = RegExp(
      r'https:\/\/www\.youtube\.com\/watch\?v=([^"&\s]+)',
    );
    final ytTextMatch = ytTextExp.firstMatch(content);
    if (ytTextMatch != null) {
      youtubeId = ytTextMatch.group(1);
      return (videoUrl: videoUrl, youtubeId: youtubeId);
    }

    final RegExp ytShortExp = RegExp(r'https:\/\/youtu\.be\/([^"&\s<]+)');
    final ytShortMatch = ytShortExp.firstMatch(content);
    if (ytShortMatch != null) {
      youtubeId = ytShortMatch.group(1);
      return (videoUrl: videoUrl, youtubeId: youtubeId);
    }

    if (videoUrl == null) {
      final RegExp pbVideo = RegExp(
        r'src=["' + "'" + r'](http[^"' + "'" + r']+?\.mp4)["' + "'" + r']',
      );
      final pbMatch = pbVideo.firstMatch(content);
      if (pbMatch != null) {
        videoUrl = pbMatch.group(1);
        return (videoUrl: videoUrl, youtubeId: youtubeId);
      }
    }

    final RegExp pbYoutube = RegExp(
      r'src=["' +
          "'" +
          r'](https:\/\/www\.youtube\.com\/watch\?v=[^"&]+)["' +
          "'" +
          r']',
    );
    final pbYtMatch = pbYoutube.firstMatch(content);
    if (pbYtMatch != null) {
      final String ytSrc = pbYtMatch.group(1)!;
      final RegExp pbExt = RegExp(r'watch\?v=([^"&\s]+)');
      final extMatch = pbExt.firstMatch(ytSrc);
      if (extMatch != null) {
        youtubeId = extMatch.group(1);
        return (videoUrl: videoUrl, youtubeId: youtubeId);
      }
    }

    return (videoUrl: videoUrl, youtubeId: youtubeId);
  }

  Future<List<DictItem>> _fetchLibrasAcademicaUFF(String query) async {
    final normalizedQuery = removeDiacritics(query).toLowerCase();
    final RegExp wordBound = RegExp(
      r'\b' + RegExp.escape(normalizedQuery) + r'\b',
      unicode: true,
    );
    final url = Uri.parse(
      'https://librasacademica.uff.br/wp-json/wp/v2/posts?search=' +
          Uri.encodeQueryComponent(query),
    );
    final response = await client.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      final List<DictItem> results = [];

      for (final item in data) {
        final title = item['title']?['rendered'] as String?;
        final content = item['content']?['rendered'] as String?;

        if (title != null && content != null) {
          final normalizedTitle = removeDiacritics(title).toLowerCase();
          final normalizedContent = removeDiacritics(content).toLowerCase();

          if (wordBound.hasMatch(normalizedTitle) ||
              wordBound.hasMatch(normalizedContent)) {
            final extraction = _extractVideoAndYoutubeId(content);

            results.add(DictItem(
              title: title,
              description: item['excerpt']?['rendered'] ?? '',
              videoUrl: extraction.videoUrl,
              youtubeId: extraction.youtubeId,
              source: 'LibrasAcademicaUFF',
            ));
          }
        }
      }
      return results;
    }
    return [];
  }

  Future<List<DictItem>> _fetchSpreadTheSign(String query) async {
    final normalizedQuery = removeDiacritics(query).toLowerCase();
    final RegExp wordBound = RegExp(
      r'\b' + RegExp.escape(normalizedQuery) + r'\b',
      unicode: true,
    );
    final RegExp videoExp = RegExp(
      r'<video[^>]*src=["' +
          "'" +
          r'](https:\/\/media\.spreadthesign\.com\/video\/mp4\/[^"' +
          "'" +
          r']+)["' +
          "'" +
          r']',
    );
    final url = Uri.parse(
      'https://www.spreadthesign.com/pt.br/search/?q=' +
          Uri.encodeQueryComponent(query),
    );
    final response = await client.get(url, headers: {'User-Agent': 'Mozilla/5.0'});
    if (response.statusCode == 200) {
      final body = response.body;
      final List<DictItem> results = [];

      final videoMatch = videoExp.firstMatch(body);
      if (videoMatch != null) {
        final videoUrl = videoMatch.group(1);

        final RegExp titleExp = RegExp(
          r'<span class="flag-icon flag-icon-br bordered"><\/span>\s*([^<\n]+)',
        );
        final titleMatch = titleExp.firstMatch(body);

        if (titleMatch != null) {
          final title = titleMatch.group(1)?.trim();
          if (title != null) {
            final normalizedTitle = removeDiacritics(title).toLowerCase();
            if (wordBound.hasMatch(normalizedTitle)) {
              results.add(DictItem(
                title: title,
                videoUrl: videoUrl,
                source: 'SpreadTheSign',
              ));
            }
          }
        }
      }

      final RegExp resultExp = RegExp(
        r'<div class="search-result-title">\s*<a href="(\/pt\.br\/word\/[^"]+)"[^>]*>\s*([^<\n]+)',
      );
      final matches = resultExp.allMatches(body);
      final List<Future<DictItem?>> detailFutures = [];

      for (final match in matches) {
        final link = match.group(1);
        final title = match.group(2)?.trim();

        if (link != null && title != null) {
          final normalizedTitle = removeDiacritics(title).toLowerCase();
          if (wordBound.hasMatch(normalizedTitle)) {
            detailFutures.add(
              _fetchSpreadTheSignDetail(
                'https://www.spreadthesign.com' + link,
                title,
              ),
            );
          }
        }
      }

      final details = await Future.wait(detailFutures);
      for (final item in details) {
        if (item != null) {
          if (!results.any((r) => r.videoUrl == item.videoUrl)) {
            results.add(item);
          }
        }
      }

      return results;
    }
    return [];
  }

  Future<DictItem?> _fetchSpreadTheSignDetail(
      String urlStr, String title) async {
    try {
      final url = Uri.parse(urlStr);
      final response = await client.get(url, headers: {'User-Agent': 'Mozilla/5.0'});
      if (response.statusCode == 200) {
        final body = response.body;
        final RegExp videoExp = RegExp(
          r'<video[^>]*src=["' +
              "'" +
              r'](https:\/\/media\.spreadthesign\.com\/video\/mp4\/[^"' +
              "'" +
              r']+)["' +
              "'" +
              r']',
        );
        final videoMatch = videoExp.firstMatch(body);
        if (videoMatch != null) {
          return DictItem(
            title: title,
            videoUrl: videoMatch.group(1),
            source: 'SpreadTheSign',
          );
        }
      }
    } catch (e) {
      print('Error fetching SpreadTheSign detail: $e');
    }
    return null;
  }
}