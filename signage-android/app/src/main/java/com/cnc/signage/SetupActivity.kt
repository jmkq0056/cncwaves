package com.cnc.signage

import android.content.Intent
import android.graphics.Color
import android.os.Bundle
import android.provider.Settings
import android.view.View
import android.widget.Button
import android.widget.EditText
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import java.net.URL

class SetupActivity : AppCompatActivity() {

    private var selectedScreen = -1
    private val screenButtons = mutableListOf<Button>()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_setup)

        val selectedText = findViewById<TextView>(R.id.selectedText)
        val serverUrlInput = findViewById<EditText>(R.id.serverUrlInput)
        val startButton = findViewById<Button>(R.id.startButton)
        val changeServerButton = findViewById<Button>(R.id.changeServerButton)
        val wifiButton = findViewById<Button>(R.id.wifiButton)
        val ethernetButton = findViewById<Button>(R.id.ethernetButton)
        val systemSettingsButton = findViewById<Button>(R.id.systemSettingsButton)

        val config = Config(this)
        serverUrlInput.setText(config.getServerUrl())

        // Pre-select current screen if configured
        if (config.isConfigured()) {
            selectedScreen = config.getScreenNumber()
        }

        // Set up screen number buttons (1-20)
        val buttonIds = listOf(
            R.id.btn1, R.id.btn2, R.id.btn3, R.id.btn4, R.id.btn5,
            R.id.btn6, R.id.btn7, R.id.btn8, R.id.btn9, R.id.btn10,
            R.id.btn11, R.id.btn12, R.id.btn13, R.id.btn14, R.id.btn15,
            R.id.btn16, R.id.btn17, R.id.btn18, R.id.btn19, R.id.btn20
        )

        for ((index, id) in buttonIds.withIndex()) {
            val btn = findViewById<Button>(id)
            screenButtons.add(btn)
            val screenNum = index + 1

            btn.setOnClickListener {
                selectedScreen = screenNum
                updateButtonStyles()
                selectedText.text = "Screen $screenNum"
                selectedText.setTextColor(Color.parseColor("#FF6600"))
            }
        }

        // Highlight pre-selected button
        if (selectedScreen in 1..20) {
            updateButtonStyles()
            selectedText.text = "Screen $selectedScreen"
            selectedText.setTextColor(Color.parseColor("#FF6600"))
        }

        // Toggle server URL visibility
        changeServerButton.setOnClickListener {
            if (serverUrlInput.visibility == View.GONE) {
                serverUrlInput.visibility = View.VISIBLE
                changeServerButton.text = "Hide Server URL"
            } else {
                serverUrlInput.visibility = View.GONE
                changeServerButton.text = "Change Server URL"
            }
        }

        // START — just click a number and go
        startButton.setOnClickListener {
            if (selectedScreen < 1 || selectedScreen > 20) {
                Toast.makeText(this, "Select a screen number first", Toast.LENGTH_SHORT).show()
                return@setOnClickListener
            }

            val serverUrl = serverUrlInput.text.toString().trim().trimEnd('/')
            if (serverUrl.isEmpty()) {
                Toast.makeText(this, "Server URL is required", Toast.LENGTH_SHORT).show()
                return@setOnClickListener
            }

            if (!serverUrl.startsWith("http://") && !serverUrl.startsWith("https://")) {
                Toast.makeText(this, "URL must start with http:// or https://", Toast.LENGTH_SHORT).show()
                return@setOnClickListener
            }

            try {
                URL(serverUrl).toURI()
            } catch (e: Exception) {
                Toast.makeText(this, "Invalid URL format", Toast.LENGTH_SHORT).show()
                return@setOnClickListener
            }

            config.setScreenNumber(selectedScreen)
            config.setServerUrl(serverUrl)

            val intent = Intent(this, MainActivity::class.java).apply {
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK)
            }
            startActivity(intent)
            finish()
        }

        // Network settings
        wifiButton.setOnClickListener {
            try {
                startActivity(Intent(Settings.ACTION_WIFI_SETTINGS))
            } catch (e: Exception) {
                try {
                    startActivity(Intent(Settings.ACTION_WIRELESS_SETTINGS))
                } catch (e2: Exception) {
                    Toast.makeText(this, "Cannot open WiFi settings", Toast.LENGTH_LONG).show()
                }
            }
        }

        ethernetButton.setOnClickListener {
            try {
                startActivity(Intent("android.settings.ETHERNET_SETTINGS"))
            } catch (e: Exception) {
                try {
                    startActivity(Intent(Settings.ACTION_WIRELESS_SETTINGS))
                } catch (e2: Exception) {
                    Toast.makeText(this, "No ethernet settings available", Toast.LENGTH_LONG).show()
                }
            }
        }

        systemSettingsButton.setOnClickListener {
            try {
                startActivity(Intent(Settings.ACTION_SETTINGS))
            } catch (e: Exception) {
                Toast.makeText(this, "Cannot open settings", Toast.LENGTH_LONG).show()
            }
        }
    }

    private fun updateButtonStyles() {
        for ((index, btn) in screenButtons.withIndex()) {
            val screenNum = index + 1
            if (screenNum == selectedScreen) {
                btn.setBackgroundColor(Color.parseColor("#FF6600"))
                btn.setTextColor(Color.WHITE)
            } else {
                btn.setBackgroundColor(Color.parseColor("#333333"))
                btn.setTextColor(Color.WHITE)
            }
        }
    }
}
