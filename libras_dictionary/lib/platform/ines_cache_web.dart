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
import 'dart:js_interop';

import 'package:web/web.dart' as web;

/// The INES word list is served as `var palavras = [...]`, so classic
/// `<script>` injection loads it without CORS restrictions and exposes
/// the array on `window`.
@JS('palavras')
external JSAny? _palavrasGlobal;

const _inesScriptUrl =
    'https://dicionario.ines.gov.br/public/site/js/palavras.js';

/// No persistent cache on the web: the injected script is reloaded each
/// session (memory caching happens in [api.loadInesData]).
Future<void> saveInesCache(String body) async {}

Future<List<dynamic>?> loadInesCache() async {
  final completer = Completer<void>();
  final script =
      web.document.createElement('script') as web.HTMLScriptElement
        ..src = _inesScriptUrl;
  script.addEventListener(
    'load',
    ((web.Event _) {
      if (!completer.isCompleted) completer.complete();
    }).toJS,
  );
  script.addEventListener(
    'error',
    ((web.Event _) {
      if (!completer.isCompleted) {
        completer.completeError(Exception('INES: script não carregou'));
      }
    }).toJS,
  );
  web.document.head?.appendChild(script);
  await completer.future.timeout(const Duration(seconds: 10));
  final data = _palavrasGlobal.dartify();
  if (data is List<dynamic>) return data;
  return null;
}
