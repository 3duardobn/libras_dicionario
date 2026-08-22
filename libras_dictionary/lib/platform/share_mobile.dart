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
