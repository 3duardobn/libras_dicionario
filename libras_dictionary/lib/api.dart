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

import 'dart:async';

import 'package:diacritic/diacritic.dart' show removeDiacritics;
import 'package:flutter/foundation.dart' show kDebugMode;

import 'database.dart';
import 'models.dart';

void log(List<Object?> parts) {
  if (kDebugMode) {
    // ignore: avoid_print
    print(parts.join(' '));
  }
}

/// Normaliza uma string para busca e correspondência:
/// - Minúsculas e sem acentos diacríticos
/// - Arroba (@) normalizada para 'o' para neutralidade de gênero
String normalize(String s) {
  final stripped = removeDiacritics(s).toLowerCase();
  return stripped.replaceAll('@', 'o').trim();
}

/// Word-boundary match que aceita variantes numéricas.
RegExp wordBoundRegex(String query) =>
    RegExp('\\b${RegExp.escape(normalize(query))}\\d*\\b', unicode: true);

/// URL para busca externa no YouTube para o termo em Libras.
/// Aberto via url_launcher.
String youtubeSearchUrl(String query) =>
    'https://www.youtube.com/results?search_query='
    '${Uri.encodeQueryComponent('$query em libras')}';

/// Lista de todas as fontes disponíveis na base offline
const allDictionarySources = [
  'INES',
  'RedeSurdos',
  'UFV',
  'LibrasAcademicaUFF',
];

/// Executa busca 100% offline no banco local SQLite (FTS5 + exato).
/// Não faz chamadas HTTP à rede, tornando a pesquisa instantânea (<1ms).
Future<({List<DictItem> items, List<String> failed})> searchAll(
  String query, {
  List<String>? sources,
}) async {
  try {
    final items = await LibrasDatabase.instance.search(query, sources: sources);
    log(['Busca local SQLite:', items.length, 'itens para "$query"']);
    return (items: items, failed: <String>[]);
  } catch (e) {
    log(['Erro na busca SQLite:', e]);
    return (items: <DictItem>[], failed: <String>['SQLite']);
  }
}
