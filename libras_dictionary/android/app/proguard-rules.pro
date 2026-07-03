# Flutter embedding + plugins (video_player, webview used by youtube_player_flutter)
-keep class io.flutter.** { *; }
-keep class io.flutter.plugins.** { *; }
-dontwarn io.flutter.embedding.**

# Keep the share MethodChannel host activity
-keep class dev.edbn.libras_dictionary.MainActivity { *; }
