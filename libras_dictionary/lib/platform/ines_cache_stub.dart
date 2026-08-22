/// Fallback for platforms with neither `dart:io` nor JS interop.
/// Never used today; keeps the conditional import total.
Future<void> saveInesCache(String body) async {}

Future<List<dynamic>?> loadInesCache() async => null;
