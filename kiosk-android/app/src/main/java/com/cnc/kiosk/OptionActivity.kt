package com.cnc.kiosk

import android.app.AlertDialog
import android.content.Intent
import android.os.Bundle
import android.text.InputType
import android.view.View
import android.view.WindowManager
import android.widget.EditText
import android.widget.ImageView
import android.widget.LinearLayout
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.cnc.kiosk.cache.ImageLoader

class OptionActivity : AppCompatActivity() {

    private val logoUrl = "https://res.cloudinary.com/dtcjxk8si/image/upload/cnc-kiosk/branding/app-logo.png"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        hideSystemUI()
        setContentView(R.layout.activity_option)

        ImageLoader.load(logoUrl, findViewById(R.id.optionLogo))

        findViewById<View>(R.id.btnTakeAway).setOnClickListener {
            CartManager.orderType = "take-away"
            goToShop()
        }

        findViewById<View>(R.id.btnDineIn).setOnClickListener {
            CartManager.orderType = "dine-in"
            goToShop()
        }

        findViewById<View>(R.id.btnPickupLater).setOnClickListener {
            showPhoneNumberDialog()
        }

        findViewById<ImageView>(R.id.handicapButton).setOnClickListener {
            Toast.makeText(this, "Handicap tilstand kommer snart", Toast.LENGTH_SHORT).show()
        }
    }

    private fun showPhoneNumberDialog() {
        val input = EditText(this).apply {
            hint = "Indtast dit telefonnummer"
            inputType = InputType.TYPE_CLASS_PHONE
            textSize = 20f
            setPadding(48, 32, 48, 32)
        }

        val container = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(48, 24, 48, 0)
            addView(input)

            val note = android.widget.TextView(context).apply {
                text = "Dit nummer vil ikke blive brugt til markedsføringsformål.\nDen vil kun blive brugt til at udføre ordren."
                textSize = 12f
                setTextColor(getColor(R.color.cnc_text_light))
                setPadding(0, 16, 0, 0)
            }
            addView(note)
        }

        AlertDialog.Builder(this)
            .setTitle("Afhentning senere")
            .setMessage("Indtast dit telefonnummer så vi kan kontakte dig")
            .setView(container)
            .setPositiveButton("Bekræft") { _, _ ->
                val phone = input.text.toString().trim()
                if (phone.length >= 8) {
                    CartManager.orderType = "pickup"
                    CartManager.pickupPhone = phone
                    goToShop()
                } else {
                    Toast.makeText(this, "Indtast et gyldigt telefonnummer", Toast.LENGTH_SHORT).show()
                }
            }
            .setNegativeButton("Annuller", null)
            .show()
    }

    private fun goToShop() {
        startActivity(Intent(this, ShopActivity::class.java))
    }

    override fun onResume() {
        super.onResume()
        hideSystemUI()
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
}
