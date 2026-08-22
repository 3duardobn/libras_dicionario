import 'dart:js_interop';
import 'dart:js_interop_unsafe';

import 'package:flutter/material.dart';
import 'package:web/web.dart' as web;

import '../api.dart' as api;
import '../state.dart' show appNavigatorKey;
import '../strings.dart' as s;

bool get _shareAvailable => !(web.window.navigator as JSObject)
    .getProperty('share'.toJS)
    .isUndefinedOrNull;

/// Web Share API when present (mobile browsers), clipboard + snackbar
/// otherwise (desktop browsers). Secure context required for both.
Future<void> shareText(String text, String subject) async {
  if (_shareAvailable) {
    try {
      await web.window.navigator
          .share(web.ShareData(title: subject, text: text))
          .toDart;
      return;
    } catch (e) {
      api.log(['Web Share failed, falling back to clipboard:', e]);
    }
  }
  try {
    await web.window.navigator.clipboard.writeText(text).toDart;
    final context = appNavigatorKey.currentContext;
    if (context != null && context.mounted) {
      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
        SnackBar(content: Text(s.linkCopied)),
      );
    }
  } catch (e) {
    api.log(['Clipboard write failed:', e]);
  }
}
