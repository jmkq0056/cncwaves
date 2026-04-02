package com.cnc.kiosk

import android.content.SharedPreferences
import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.cnc.kiosk.api.ApiClient

class SetupActivity : AppCompatActivity() {

    private lateinit var prefs: SharedPreferences

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        prefs = getSharedPreferences("cnc_kiosk", MODE_PRIVATE)

        val layout = android.widget.LinearLayout(this).apply {
            orientation = android.widget.LinearLayout.VERTICAL
            setPadding(48, 48, 48, 48)
            gravity = android.view.Gravity.CENTER
        }

        val title = android.widget.TextView(this).apply {
            text = "CNC Kiosk Setup"
            textSize = 24f
            setTypeface(null, android.graphics.Typeface.BOLD)
        }
        layout.addView(title)

        val urlInput = EditText(this).apply {
            hint = "Server URL (e.g., http://192.168.1.100:3001/api)"
            setText(prefs.getString("server_url", BuildConfig.API_BASE_URL))
            textSize = 16f
            val p = android.widget.LinearLayout.LayoutParams(
                android.widget.LinearLayout.LayoutParams.MATCH_PARENT,
                android.widget.LinearLayout.LayoutParams.WRAP_CONTENT
            )
            p.topMargin = 48
            layoutParams = p
        }
        layout.addView(urlInput)

        val saveBtn = Button(this).apply {
            text = "SAVE & START"
            textSize = 18f
            val p = android.widget.LinearLayout.LayoutParams(
                android.widget.LinearLayout.LayoutParams.MATCH_PARENT,
                android.widget.LinearLayout.LayoutParams.WRAP_CONTENT
            )
            p.topMargin = 32
            layoutParams = p
        }
        saveBtn.setOnClickListener {
            val url = urlInput.text.toString().trim()
            if (url.isNotBlank()) {
                prefs.edit().putString("server_url", url).apply()
                ApiClient.setBaseUrl(url)
                Toast.makeText(this, "Saved", Toast.LENGTH_SHORT).show()
                finish()
            }
        }
        layout.addView(saveBtn)

        setContentView(layout)
    }
}
