package com.nahrdev.broker

import android.os.Bundle
import androidx.activity.enableEdgeToEdge
import io.flutter.embedding.android.FlutterActivity

class MainActivity : FlutterActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        
        // ✅ Enables Android 15 edge-to-edge support (safe replacement for deprecated APIs)
        enableEdgeToEdge()
    }
}
