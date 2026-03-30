package com.cnc.signage

import android.app.ActivityManager
import android.app.AlertDialog
import android.app.admin.DevicePolicyManager
import android.app.role.RoleManager
import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.content.pm.PackageManager
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.os.Build
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.text.InputType
import android.util.Log
import android.view.KeyEvent
import android.view.MotionEvent
import android.view.View
import android.view.WindowInsets
import android.view.WindowInsetsController
import android.view.WindowManager
import android.widget.EditText
import android.widget.ImageView
import android.widget.TextView
import android.widget.Toast
import androidx.activity.result.contract.ActivityResultContracts
import androidx.appcompat.app.AppCompatActivity
import android.net.Uri
import android.os.PowerManager
import android.provider.Settings
import java.io.File
import java.util.Calendar
import java.util.TimeZone

class MainActivity : AppCompatActivity() {
    private lateinit var imageView: ImageView
    private lateinit var imageViewNext: ImageView
    private lateinit var loadingText: TextView
    private lateinit var playlistManager: PlaylistManager
    private var currentIndex = 0
    private val handler = Handler(Looper.getMainLooper())
    private var rotationRunnable: Runnable? = null
    private var retryRunnable: Runnable? = null
    private var watcherRunnable: Runnable? = null
    private var immersiveRunnable: Runnable? = null
    private var scheduleRunnable: Runnable? = null
    private var isScreenOff = false
    private var tapCount = 0
    private var lastTapTime = 0L
    private var pauseRestartScheduled = false
    private var dialogShowing = false
    private var systemDialogShowing = false

    private val launcherRoleLauncher = registerForActivityResult(
        ActivityResultContracts.StartActivityForResult()
    ) { systemDialogShowing = false }

    // Bitmap cache: keeps decoded images in memory for instant rotation
    // Capped at MAX_CACHED_BITMAPS to prevent OOM on cheap 1GB boxes
    // Beyond the limit, images are decoded from disk on each rotation tick
    private val bitmapCache = mutableMapOf<String, Bitmap>()
    private var cachedImagePaths = listOf<String>()
    private companion object {
        const val MAX_CACHED_BITMAPS = 8 // ~8MB each at 1080p ARGB = ~64MB max
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        val config = Config(this)
        if (!config.isConfigured()) {
            startActivity(Intent(this, SetupActivity::class.java))
            finish()
            return
        }

        lockdownWindow()
        setContentView(R.layout.activity_main)
        hideSystemUI()
        imageView = findViewById(R.id.imageView)
        imageViewNext = findViewById(R.id.imageViewNext)
        loadingText = findViewById(R.id.loadingText)

        playlistManager = PlaylistManager(this)

        // Check schedule before showing anything (on boot after reboot, just dim)
        if (!isWithinSchedule()) {
            isScreenOff = true
            imageView.visibility = View.GONE
            imageViewNext.visibility = View.GONE
            loadingText.visibility = View.GONE
            setScreenBrightness(0f)
            Log.i("MainActivity", "Boot during off hours — screen dimmed")
        } else {
            val images = playlistManager.getImageFiles()
            if (images.isEmpty()) {
                loadingText.visibility = View.VISIBLE
                loadingText.text = "Connecting..."
                startRetryLoop()
            } else {
                preloadBitmaps(images)
                showCurrentImage()
                startRotation()
            }
        }

        requestDefaultLauncher()
        requestOverlayPermission()

        SyncWorker.schedule(this)
        SyncWorker.triggerImmediate(this)
        startPlaylistWatcher()
        startImmersiveEnforcer()
        startScheduleChecker()

        try {
            val intent = Intent(this, WatchdogService::class.java)
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                startForegroundService(intent)
            } else {
                startService(intent)
            }
        } catch (e: Exception) {
            Log.w("MainActivity", "Watchdog start failed: ${e.message}")
        }
    }

    // === DEFAULT LAUNCHER PROMPT (once per install) ===
    private fun requestDefaultLauncher() {
        if (isDefaultLauncher()) return

        val prefs = getSharedPreferences("cnc_signage", MODE_PRIVATE)
        if (prefs.getBoolean("launcher_prompted", false)) return
        prefs.edit().putBoolean("launcher_prompted", true).apply()

        systemDialogShowing = true
        try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                val roleManager = getSystemService(Context.ROLE_SERVICE) as RoleManager
                if (roleManager.isRoleAvailable(RoleManager.ROLE_HOME) &&
                    !roleManager.isRoleHeld(RoleManager.ROLE_HOME)) {
                    launcherRoleLauncher.launch(roleManager.createRequestRoleIntent(RoleManager.ROLE_HOME))
                } else {
                    systemDialogShowing = false
                }
            } else {
                val intent = Intent(Intent.ACTION_MAIN).apply {
                    addCategory(Intent.CATEGORY_HOME)
                    flags = Intent.FLAG_ACTIVITY_NEW_TASK
                }
                startActivity(intent)
                // Can't track when chooser returns on pre-Q, clear after delay
                handler.postDelayed({ systemDialogShowing = false }, 10000)
            }
        } catch (e: Exception) {
            systemDialogShowing = false
            Log.w("MainActivity", "Could not request default launcher: ${e.message}")
        }
    }

    private fun isDefaultLauncher(): Boolean {
        val intent = Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_HOME)
        val resolveInfo = packageManager.resolveActivity(intent, PackageManager.MATCH_DEFAULT_ONLY)
        return resolveInfo?.activityInfo?.packageName == packageName
    }

    // === OVERLAY PERMISSION (needed for boot auto-launch on Android 10+) ===
    private fun requestOverlayPermission() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M && !Settings.canDrawOverlays(this)) {
            try {
                Config(this).setAdminNavigating(true)
                dialogShowing = true
                systemDialogShowing = true
                val intent = Intent(
                    Settings.ACTION_MANAGE_OVERLAY_PERMISSION,
                    Uri.parse("package:$packageName")
                )
                startActivity(intent)
            } catch (e: Exception) {
                dialogShowing = false
                systemDialogShowing = false
                Config(this).setAdminNavigating(false)
                Log.w("MainActivity", "Could not request overlay permission: ${e.message}")
            }
        }
    }

    // === BITMAP CACHE: pre-decode all images into memory ===
    private fun preloadBitmaps(imageFiles: List<File>) {
        val newPaths = imageFiles.map { it.absolutePath }

        // Skip if same set of files already cached
        if (newPaths == cachedImagePaths && bitmapCache.isNotEmpty()) return

        // Recycle old bitmaps that are no longer needed
        val oldKeys = bitmapCache.keys.toSet()
        val newKeys = newPaths.toSet()
        for (key in oldKeys - newKeys) {
            bitmapCache.remove(key)?.recycle()
        }

        // Decode new images (capped to prevent OOM on low-RAM boxes)
        for (file in imageFiles) {
            if (bitmapCache.size >= MAX_CACHED_BITMAPS) break
            if (bitmapCache.containsKey(file.absolutePath)) continue
            try {
                val options = BitmapFactory.Options().apply {
                    inPreferredConfig = Bitmap.Config.ARGB_8888
                    inScaled = false
                }
                val bitmap = BitmapFactory.decodeFile(file.absolutePath, options)
                if (bitmap != null) {
                    bitmapCache[file.absolutePath] = bitmap
                }
            } catch (e: OutOfMemoryError) {
                Log.w("MainActivity", "OOM preloading ${file.name}, using reduced quality")
                try {
                    System.gc()
                    val options = BitmapFactory.Options().apply {
                        inSampleSize = 2
                        inPreferredConfig = Bitmap.Config.RGB_565
                    }
                    val bitmap = BitmapFactory.decodeFile(file.absolutePath, options)
                    if (bitmap != null) {
                        bitmapCache[file.absolutePath] = bitmap
                    }
                } catch (_: Exception) {}
            } catch (e: Exception) {
                Log.w("MainActivity", "Failed to preload ${file.name}: ${e.message}")
            }
        }

        cachedImagePaths = newPaths
    }

    // === KIOSK LOCKDOWN ===
    private fun lockdownWindow() {
        window.addFlags(
            WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON
                or WindowManager.LayoutParams.FLAG_DISMISS_KEYGUARD
                or WindowManager.LayoutParams.FLAG_SHOW_WHEN_LOCKED
                or WindowManager.LayoutParams.FLAG_TURN_SCREEN_ON
        )

        // Only pin if device owner — otherwise startLockTask() shows a system
        // confirmation dialog which triggers onPause() → restart → infinite loop
        if (isDeviceOwner()) {
            try {
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
                    startLockTask()
                }
            } catch (e: Exception) {
                Log.w("MainActivity", "Lock task not available: ${e.message}")
            }
        }
    }

    private fun isDeviceOwner(): Boolean {
        val dpm = getSystemService(Context.DEVICE_POLICY_SERVICE) as DevicePolicyManager
        return dpm.isDeviceOwnerApp(packageName)
    }

    @Suppress("DEPRECATION")
    override fun onBackPressed() {
        // Consumed. No back.
    }

    override fun onKeyDown(keyCode: Int, event: KeyEvent?): Boolean {
        return when (keyCode) {
            KeyEvent.KEYCODE_BACK,
            KeyEvent.KEYCODE_HOME,
            KeyEvent.KEYCODE_APP_SWITCH,
            KeyEvent.KEYCODE_MENU,
            KeyEvent.KEYCODE_SEARCH,
            KeyEvent.KEYCODE_SETTINGS,
            KeyEvent.KEYCODE_ASSIST,
            KeyEvent.KEYCODE_VOICE_ASSIST,
            KeyEvent.KEYCODE_EXPLORER,
            KeyEvent.KEYCODE_ENVELOPE -> true
            else -> super.onKeyDown(keyCode, event)
        }
    }

    override fun onKeyUp(keyCode: Int, event: KeyEvent?): Boolean {
        return when (keyCode) {
            KeyEvent.KEYCODE_BACK,
            KeyEvent.KEYCODE_HOME,
            KeyEvent.KEYCODE_APP_SWITCH,
            KeyEvent.KEYCODE_MENU,
            KeyEvent.KEYCODE_SEARCH,
            KeyEvent.KEYCODE_SETTINGS,
            KeyEvent.KEYCODE_ASSIST,
            KeyEvent.KEYCODE_VOICE_ASSIST,
            KeyEvent.KEYCODE_EXPLORER,
            KeyEvent.KEYCODE_ENVELOPE -> true
            else -> super.onKeyUp(keyCode, event)
        }
    }

    override fun onWindowFocusChanged(hasFocus: Boolean) {
        super.onWindowFocusChanged(hasFocus)
        if (hasFocus) {
            hideSystemUI()
        } else if (!dialogShowing && !systemDialogShowing && !Config(this).isAdminNavigating()) {
            handler.postDelayed({
                if (!isFinishing && !isDestroyed && !dialogShowing && !systemDialogShowing && !Config(this).isAdminNavigating()) {
                    hideSystemUI()
                    bringToFront()
                }
            }, 500)
        }
    }

    // Don't restart while any dialog (PIN, system, launcher) is showing
    override fun onPause() {
        super.onPause()
        val config = Config(this)
        if (!pauseRestartScheduled && !dialogShowing && !systemDialogShowing && !config.isAdminNavigating()) {
            pauseRestartScheduled = true
            handler.postDelayed({
                pauseRestartScheduled = false
                if (!isFinishing && !isDestroyed && !dialogShowing && !systemDialogShowing && !Config(this).isAdminNavigating()) {
                    val intent = Intent(this, MainActivity::class.java).apply {
                        addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                        addFlags(Intent.FLAG_ACTIVITY_SINGLE_TOP)
                    }
                    startActivity(intent)
                }
            }, 1500)
        }
    }

    override fun onResume() {
        super.onResume()
        pauseRestartScheduled = false
        systemDialogShowing = false
        Config(this).setAdminNavigating(false)
        hideSystemUI()
    }

    private fun startImmersiveEnforcer() {
        immersiveRunnable = object : Runnable {
            override fun run() {
                if (isFinishing || isDestroyed) return
                hideSystemUI()
                handler.postDelayed(this, 5000)
            }
        }
        handler.postDelayed(immersiveRunnable!!, 5000)
    }

    // === SCHEDULE: check if screen should be on/off (Copenhagen timezone) ===
    private fun isWithinSchedule(): Boolean {
        val config = Config(this)
        val onTime = config.getScreenOnTime()
        val offTime = config.getScreenOffTime()
        if (onTime.isEmpty() || offTime.isEmpty()) return true // no schedule = always on

        val tz = TimeZone.getTimeZone("Europe/Copenhagen")
        val now = Calendar.getInstance(tz)
        val currentMinutes = now.get(Calendar.HOUR_OF_DAY) * 60 + now.get(Calendar.MINUTE)

        val onParts = onTime.split(":")
        val offParts = offTime.split(":")
        if (onParts.size != 2 || offParts.size != 2) return true

        val onMinutes = onParts[0].toIntOrNull()?.times(60)?.plus(onParts[1].toIntOrNull() ?: 0) ?: return true
        val offMinutes = offParts[0].toIntOrNull()?.times(60)?.plus(offParts[1].toIntOrNull() ?: 0) ?: return true

        return if (onMinutes <= offMinutes) {
            // Normal: e.g. 08:00 - 22:00
            currentMinutes in onMinutes until offMinutes
        } else {
            // Overnight: e.g. 22:00 - 06:00 (ON outside the off window)
            currentMinutes >= onMinutes || currentMinutes < offMinutes
        }
    }

    private fun setScreenBrightness(brightness: Float) {
        val lp = window.attributes
        lp.screenBrightness = brightness
        window.attributes = lp
    }

    private fun triggerReboot() {
        Log.i("MainActivity", "Schedule: rebooting device")
        try {
            // Try runtime reboot (works on rooted or system apps)
            Runtime.getRuntime().exec(arrayOf("su", "-c", "reboot"))
        } catch (e: Exception) {
            Log.w("MainActivity", "su reboot failed, trying PowerManager")
            try {
                val pm = getSystemService(Context.POWER_SERVICE) as PowerManager
                pm.reboot("schedule")
            } catch (e2: Exception) {
                Log.w("MainActivity", "PowerManager reboot failed, dimming instead")
                // Fallback: dim if reboot not possible
                setScreenBrightness(0f)
            }
        }
    }

    private fun startScheduleChecker() {
        scheduleRunnable = object : Runnable {
            override fun run() {
                if (isFinishing || isDestroyed) return
                val config = Config(this@MainActivity)
                val shouldBeOn = isWithinSchedule()
                val offMode = config.getScreenOffMode()

                if (!shouldBeOn && !isScreenOff) {
                    isScreenOff = true
                    if (offMode == "reboot") {
                        triggerReboot()
                    } else {
                        // Dim mode: brightness 0, hide content
                        imageView.visibility = View.GONE
                        imageViewNext.visibility = View.GONE
                        loadingText.visibility = View.GONE
                        rotationRunnable?.let { handler.removeCallbacks(it) }
                        setScreenBrightness(0f)
                        Log.i("MainActivity", "Schedule: screen OFF (dimmed)")
                    }
                } else if (shouldBeOn && isScreenOff) {
                    // Turn back on
                    isScreenOff = false
                    setScreenBrightness(-1f)
                    imageView.visibility = View.VISIBLE
                    val images = playlistManager.getImageFiles()
                    if (images.isNotEmpty()) {
                        preloadBitmaps(images)
                        showCurrentImage()
                        startRotation()
                    }
                    Log.i("MainActivity", "Schedule: screen ON")
                }
                handler.postDelayed(this, 30000)
            }
        }
        handler.postDelayed(scheduleRunnable!!, 5000)
    }

    // === IMAGE DISPLAY: uses bitmap cache, no disk I/O ===
    private fun showCurrentImage() {
        val images = playlistManager.getImageFiles()
        if (images.isEmpty()) return

        loadingText.visibility = View.GONE
        currentIndex = currentIndex.coerceIn(0, images.size - 1)

        val path = images[currentIndex].absolutePath
        val cached = bitmapCache[path]

        if (cached != null && !cached.isRecycled) {
            imageView.setImageBitmap(cached)
        } else {
            // Fallback: decode from disk (for images beyond cache limit)
            try {
                val options = BitmapFactory.Options().apply {
                    inPreferredConfig = Bitmap.Config.ARGB_8888
                    inScaled = false
                }
                val bitmap = BitmapFactory.decodeFile(path, options)
                if (bitmap != null) {
                    // Only cache if under limit
                    if (bitmapCache.size < MAX_CACHED_BITMAPS) {
                        bitmapCache[path] = bitmap
                    }
                    imageView.setImageBitmap(bitmap)
                }
            } catch (e: OutOfMemoryError) {
                Log.w("MainActivity", "OOM fallback to reduced quality")
                try {
                    System.gc()
                    val opts = BitmapFactory.Options().apply {
                        inSampleSize = 2
                        inPreferredConfig = Bitmap.Config.RGB_565
                    }
                    val bitmap = BitmapFactory.decodeFile(path, opts)
                    if (bitmap != null) imageView.setImageBitmap(bitmap)
                } catch (_: Throwable) {}
            } catch (e: Exception) {
                Log.e("MainActivity", "Error loading image", e)
            }
        }
    }

    private fun loadNextImage() {
        val images = playlistManager.getImageFiles()
        if (images.isEmpty()) return
        val idx = currentIndex.coerceIn(0, images.size - 1)
        val path = images[idx].absolutePath
        val cached = bitmapCache[path]
        if (cached != null && !cached.isRecycled) {
            imageViewNext.setImageBitmap(cached)
        } else {
            try {
                val options = BitmapFactory.Options().apply {
                    inPreferredConfig = Bitmap.Config.ARGB_8888
                    inScaled = false
                }
                val bitmap = BitmapFactory.decodeFile(path, options)
                if (bitmap != null) {
                    if (bitmapCache.size < MAX_CACHED_BITMAPS) {
                        bitmapCache[path] = bitmap
                    }
                    imageViewNext.setImageBitmap(bitmap)
                }
            } catch (e: OutOfMemoryError) {
                try {
                    System.gc()
                    val opts = BitmapFactory.Options().apply { inSampleSize = 2; inPreferredConfig = Bitmap.Config.RGB_565 }
                    val bitmap = BitmapFactory.decodeFile(path, opts)
                    if (bitmap != null) imageViewNext.setImageBitmap(bitmap)
                } catch (_: Throwable) {}
            } catch (_: Exception) {}
        }
    }

    private fun startRotation() {
        rotationRunnable?.let { handler.removeCallbacks(it) }

        val images = playlistManager.getImageFiles()
        if (images.size <= 1) return

        val interval = playlistManager.getRotationInterval()
        if (interval <= 0) return

        rotationRunnable = object : Runnable {
            override fun run() {
                if (isFinishing || isDestroyed) return

                val imgs = playlistManager.getImageFiles()
                if (imgs.size <= 1) return

                currentIndex = (currentIndex + 1) % imgs.size

                // Swipe right transition: next image slides in from left
                val width = imageView.width.toFloat()
                if (width <= 0) {
                    showCurrentImage()
                    return
                }

                // Prepare next image off-screen to the left
                imageViewNext.visibility = View.VISIBLE
                imageViewNext.translationX = -width
                imageViewNext.alpha = 1f
                loadNextImage()

                // Slide current image out to the right, next image in from left
                imageView.animate()
                    .translationX(width)
                    .setDuration(400)
                    .start()

                imageViewNext.animate()
                    .translationX(0f)
                    .setDuration(400)
                    .withEndAction {
                        if (!isFinishing && !isDestroyed) {
                            // Swap: put the next image into the main imageView
                            imageView.setImageDrawable(imageViewNext.drawable)
                            imageView.translationX = 0f
                            imageViewNext.visibility = View.GONE
                        }
                    }.start()

                handler.postDelayed(this, interval)
            }
        }
        handler.postDelayed(rotationRunnable!!, interval)
    }

    private fun startRetryLoop() {
        retryRunnable = object : Runnable {
            override fun run() {
                if (isFinishing || isDestroyed) return

                val images = playlistManager.getImageFiles()
                if (images.isNotEmpty()) {
                    loadingText.visibility = View.GONE
                    preloadBitmaps(images)
                    showCurrentImage()
                    startRotation()
                } else {
                    SyncWorker.triggerImmediate(this@MainActivity)
                    handler.postDelayed(this, 10000)
                }
            }
        }
        handler.postDelayed(retryRunnable!!, 10000)
    }

    private fun startPlaylistWatcher() {
        var lastHash = Config(this).getPlaylistHash()
        var lastInterval = Config(this).getRotationInterval()

        watcherRunnable = object : Runnable {
            override fun run() {
                if (isFinishing || isDestroyed) return

                // Sync with server every 30s
                SyncWorker.triggerImmediate(this@MainActivity)

                val config = Config(this@MainActivity)
                val currentHash = config.getPlaylistHash()
                val currentInterval = config.getRotationInterval()

                // Detect image/playlist changes
                if (currentHash != lastHash && currentHash.isNotEmpty()) {
                    lastHash = currentHash
                    currentIndex = 0
                    val newImages = playlistManager.getImageFiles()
                    preloadBitmaps(newImages)
                    showCurrentImage()
                    rotationRunnable?.let { handler.removeCallbacks(it) }
                    startRotation()
                }

                // Detect interval change (restart rotation with new timing)
                if (currentInterval != lastInterval) {
                    lastInterval = currentInterval
                    rotationRunnable?.let { handler.removeCallbacks(it) }
                    startRotation()
                }

                handler.postDelayed(this, 30000)
            }
        }
        handler.postDelayed(watcherRunnable!!, 10000) // first check 10s after launch
    }

    // === SECRET ADMIN ACCESS ===
    override fun onTouchEvent(event: MotionEvent?): Boolean {
        if (event?.action == MotionEvent.ACTION_DOWN) {
            val now = System.currentTimeMillis()
            if (now - lastTapTime > 2000) tapCount = 0
            tapCount++
            lastTapTime = now

            if (tapCount >= 5) {
                tapCount = 0
                showAdminMenu()
            }
        }
        return super.onTouchEvent(event)
    }

    private fun showPinDialog() {
        if (dialogShowing) return
        dialogShowing = true

        val input = EditText(this).apply {
            inputType = InputType.TYPE_CLASS_NUMBER
            hint = "Enter PIN"
        }

        val dialog = AlertDialog.Builder(this)
            .setTitle("Admin Access")
            .setView(input)
            .setPositiveButton("OK") { _, _ ->
                dialogShowing = false
                if (input.text.toString() == Config(this).getPin()) {
                    showAdminMenu()
                } else {
                    Toast.makeText(this, "Incorrect PIN", Toast.LENGTH_SHORT).show()
                }
            }
            .setNegativeButton("Cancel") { _, _ ->
                dialogShowing = false
            }
            .setOnDismissListener {
                dialogShowing = false
            }
            .setCancelable(true)
            .show()

        handler.postDelayed({
            try {
                if (dialog.isShowing) {
                    dialog.dismiss()
                    dialogShowing = false
                }
            } catch (_: Exception) {
                dialogShowing = false
            }
        }, 30000)
    }

    private fun showAdminMenu() {
        if (isDeviceOwner()) {
            try {
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
                    stopLockTask()
                }
            } catch (_: Exception) {}
        }

        dialogShowing = true
        val options = arrayOf(
            "App Setup (Screen #, URL)",
            "WiFi Settings",
            "Ethernet Settings",
            "System Settings",
            "Force Sync Now",
            "Cancel"
        )

        AlertDialog.Builder(this)
            .setTitle("CNC Admin Menu")
            .setItems(options) { _, which ->
                dialogShowing = false
                when (which) {
                    0 -> {
                        Config(this).setAdminNavigating(true)
                        startActivity(Intent(this, SetupActivity::class.java))
                    }
                    1 -> { Config(this).setAdminNavigating(true); openSettings(android.provider.Settings.ACTION_WIFI_SETTINGS) }
                    2 -> { Config(this).setAdminNavigating(true); openSettings("android.settings.ETHERNET_SETTINGS") }
                    3 -> { Config(this).setAdminNavigating(true); openSettings(android.provider.Settings.ACTION_SETTINGS) }
                    4 -> {
                        SyncWorker.triggerImmediate(this)
                        Toast.makeText(this, "Sync triggered", Toast.LENGTH_SHORT).show()
                    }
                    else -> {} // Cancel
                }
            }
            .setOnDismissListener { dialogShowing = false }
            .setCancelable(true)
            .show()
    }

    private fun openSettings(action: String) {
        try {
            startActivity(Intent(action))
        } catch (e: Exception) {
            // Fallback: some TV boxes use non-standard intents
            try {
                startActivity(Intent(android.provider.Settings.ACTION_SETTINGS))
            } catch (e2: Exception) {
                Toast.makeText(this, "Cannot open settings on this device", Toast.LENGTH_LONG).show()
            }
        }
    }

    private fun hideSystemUI() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            window.insetsController?.let {
                it.hide(WindowInsets.Type.systemBars() or WindowInsets.Type.navigationBars())
                it.systemBarsBehavior =
                    WindowInsetsController.BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE
            }
            window.setDecorFitsSystemWindows(false)
        } else {
            @Suppress("DEPRECATION")
            window.decorView.systemUiVisibility = (
                View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
                    or View.SYSTEM_UI_FLAG_FULLSCREEN
                    or View.SYSTEM_UI_FLAG_HIDE_NAVIGATION
                    or View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN
                    or View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION
                    or View.SYSTEM_UI_FLAG_LAYOUT_STABLE
                )
        }
    }

    private fun bringToFront() {
        try {
            val am = getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager
            am.moveTaskToFront(taskId, ActivityManager.MOVE_TASK_WITH_HOME)
        } catch (e: SecurityException) {
            Log.w("MainActivity", "REORDER_TASKS denied: ${e.message}")
        } catch (e: Exception) {
            Log.w("MainActivity", "Could not bring to front: ${e.message}")
        }
    }

    override fun onDestroy() {
        super.onDestroy()
        handler.removeCallbacksAndMessages(null)
        // Recycle all cached bitmaps
        for (bitmap in bitmapCache.values) {
            if (!bitmap.isRecycled) bitmap.recycle()
        }
        bitmapCache.clear()
        cachedImagePaths = emptyList()
    }
}
