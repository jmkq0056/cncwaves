package com.cnc.kiosk

import android.content.Intent
import android.os.Bundle
import android.view.View
import android.view.WindowManager
import android.widget.ImageView
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import com.cnc.kiosk.cache.ImageLoader
import com.cnc.kiosk.cache.MenuCache
import com.cnc.kiosk.api.ApiClient
import kotlinx.coroutines.*

class HomeActivity : AppCompatActivity() {

    private val scope = CoroutineScope(Dispatchers.Main + SupervisorJob())
    private val logoUrl = "https://res.cloudinary.com/dtcjxk8si/image/upload/cnc-kiosk/branding/app-logo.png"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        hideSystemUI()
        setContentView(R.layout.activity_home)

        val logo = findViewById<ImageView>(R.id.logoImage)
        ImageLoader.load(logoUrl, logo)

        findViewById<View>(R.id.startButton).setOnClickListener {
            startActivity(Intent(this, OptionActivity::class.java))
        }

        // Also tap anywhere
        findViewById<View>(android.R.id.content).setOnClickListener {
            startActivity(Intent(this, OptionActivity::class.java))
        }

        // Pre-fetch menu data in background
        scope.launch {
            try {
                val categories = ApiClient.getCategories()
                MenuCache.saveCategories(this@HomeActivity, categories)
                // Pre-fetch first category items
                if (categories.isNotEmpty()) {
                    val items = ApiClient.getItems(categories[0]._id)
                    MenuCache.saveItems(this@HomeActivity, categories[0]._id, items)
                }
            } catch (_: Exception) {}
        }
    }

    override fun onResume() {
        super.onResume()
        hideSystemUI()
        CartManager.clear()
    }

    private fun hideSystemUI() {
        window.addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)
        window.decorView.systemUiVisibility = (
            View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
            or View.SYSTEM_UI_FLAG_FULLSCREEN
            or View.SYSTEM_UI_FLAG_HIDE_NAVIGATION
            or View.SYSTEM_UI_FLAG_LAYOUT_STABLE
            or View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION
            or View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN
        )
    }

    override fun onDestroy() {
        super.onDestroy()
        scope.cancel()
    }
}
