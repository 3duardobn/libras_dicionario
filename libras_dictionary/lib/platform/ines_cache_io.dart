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

import 'dart:io';

import 'package:path_provider/path_provider.dart';

import '../api.dart' as api;

Future<File> _inesCacheFile() async {
  final dir = await getApplicationSupportDirectory();
  return File('${dir.path}/ines_palavras.json');
}

Future<void> saveInesCache(String body) async {
  try {
    final f = await _inesCacheFile();
    await f.writeAsString(body);
  } catch (e) {
    api.log(['INES: could not persist cache:', e]);
  }
}

Future<List<dynamic>?> loadInesCache() async {
  try {
    final f = await _inesCacheFile();
    if (await f.exists()) {
      return api.parseInesBody(await f.readAsString());
    }
  } catch (e) {
    api.log(['INES: could not read disk cache:', e]);
  }
  return null;
}
