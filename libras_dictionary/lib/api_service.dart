import 'dart:convert';
import 'package:http/http.dart' as http;
import 'models.dart';

class ApiService {
  List<dynamic>? _cachedInesData;

  Future<List<DictItem>> search(String query) async {
    final List<DictItem> results = [];

    // Fetch from RedeSurdos
    try {
      final redeSurdosResults = await _fetchRedeSurdos(query);
      results.addAll(redeSurdosResults);
    } catch (e) {
      // Ignored for now
    }

    // Fetch from INES
    try {
      final inesResults = await _fetchInes(query);
      results.addAll(inesResults);
    } catch (e) {
      // Ignored for now
    }

    return results;
  }

  Future<List<DictItem>> _fetchRedeSurdos(String query) async {
    final encodedQuery = Uri.encodeQueryComponent(query);
    final url = Uri.parse('https://redesurdosce.ufc.br/wp-json/wp/v2/posts?search=$encodedQuery');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((item) {
        final title = item['title']['rendered'];
        final content = item['content']['rendered'];
        final excerpt = item['excerpt']['rendered'];

        // Extract YouTube URL from iframe inside content
        String? youtubeId;
        final RegExp exp = RegExp(r'src="https:\/\/www\.youtube\.com\/embed\/([^"?]+)');
        final match = exp.firstMatch(content);
        if (match != null) {
          youtubeId = match.group(1);
        }

        // Sometimes the URL is plain text
        if (youtubeId == null) {
          final RegExp expText = RegExp(r'https:\/\/www\.youtube\.com\/watch\?v=([^"&\s]+)');
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
      final url = Uri.parse('https://dicionario.ines.gov.br/public/site/js/palavras.js');
      final response = await http.get(url);
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
      final String lowerQuery = query.toLowerCase();
      final List<DictItem> results = [];

      for (var item in _cachedInesData!) {
        final String? palavra = item['palavra'];
        if (palavra != null && palavra.toLowerCase().contains(lowerQuery)) {
          final String? videoFilename = item['video'];
          String? videoUrl;
          if (videoFilename != null && videoFilename.isNotEmpty) {
            videoUrl = 'https://dicionario.ines.gov.br/public/media/palavras/videos/$videoFilename';
          }

          results.add(DictItem(
            title: palavra,
            description: item['descricao'],
            exemplo: item['exemplo'],
            libras: item['libras'],
            videoUrl: videoUrl,
            source: 'INES',
          ));
        }
      }
      return results;
    }

    return [];
  }
}
