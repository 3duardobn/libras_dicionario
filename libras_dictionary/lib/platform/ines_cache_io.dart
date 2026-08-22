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
