import 'dart:io';
import 'cljd-out/libras-dictionary/main.dart' as cljd_main;

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    print("MyHttpOverrides: Creating HttpClient...");
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port) {
        print("MyHttpOverrides: Bypassing bad certificate for host: $host");
        return true;
      };
  }
}

void main() {
  print("main.dart: Setting global HttpOverrides...");
  HttpOverrides.global = MyHttpOverrides();
  cljd_main.main();
}
