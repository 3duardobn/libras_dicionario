import 'package:flutter/services.dart';

import '../api.dart' as api;

/// Native share sheet via the platform channel declared in MainActivity.
const _shareChannel = MethodChannel('dev.edbn.libras_dictionary/share');

Future<void> shareText(String text, String subject) async {
  try {
    await _shareChannel
        .invokeMethod('share', {'text': text, 'subject': subject});
  } on PlatformException catch (e) {
    api.log(['Failed to share:', e.message]);
  }
}
