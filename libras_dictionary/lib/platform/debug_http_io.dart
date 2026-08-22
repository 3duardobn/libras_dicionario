import 'dart:io';

/// Accepts self-signed certificates in debug runs against dev servers.
void applyDebugHttpOverrides() {
  HttpOverrides.global = _DebugHttpOverrides();
}

class _DebugHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (cert, host, port) => true;
  }
}
