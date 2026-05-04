package com.example.libras_dictionary

import android.content.Intent
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    private val CHANNEL = "com.example.libras_dictionary/share"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            if (call.method == "share") {
                val text = call.argument<String>("text")
                val subject = call.argument<String>("subject")
                if (text != null) {
                    shareText(text, subject)
                    result.success(null)
                } else {
                    result.error("INVALID_ARGUMENT", "Text is null", null)
                }
            } else {
                result.notImplemented()
            }
        }
    }

    private fun shareText(text: String, subject: String?) {
        val sendIntent = Intent().apply {
            action = Intent.ACTION_SEND
            putExtra(Intent.EXTRA_TEXT, text)
            if (subject != null) {
                putExtra(Intent.EXTRA_SUBJECT, subject)
            }
            type = "text/plain"
        }
        val shareIntent = Intent.createChooser(sendIntent, null)
        startActivity(shareIntent)
    }
}
