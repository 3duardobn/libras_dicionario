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
