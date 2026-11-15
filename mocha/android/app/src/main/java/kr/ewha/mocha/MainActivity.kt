package kr.ewha.mocha

import android.app.Activity
import android.os.Bundle
import android.webkit.WebView

class MainActivity : Activity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val screen = WebView(this)
        screen.settings.javaScriptEnabled = true
        screen.settings.domStorageEnabled = true
        screen.settings.blockNetworkLoads = true
        setContentView(screen)
        screen.loadUrl("file:///android_asset/index.html")
    }
}
