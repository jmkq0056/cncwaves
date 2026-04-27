package com.cnc.signage

import android.os.Handler
import android.os.Looper
import android.os.SystemClock
import android.util.Log
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.Response
import okhttp3.WebSocket
import okhttp3.WebSocketListener
import okio.ByteString
import org.json.JSONObject
import java.util.concurrent.TimeUnit
import kotlin.math.abs

/**
 * Persistent WebSocket client that keeps the device in sync with the Hetzner
 * signage-server. Delivers up to 3 independent burst sessions per screen,
 * each with its own interval, duration, and image. Burst events arrive
 * tagged with a burst_id (1..3) so the activity can keep per-burst
 * preloaded drawables.
 *
 * Key details:
 *   - NTP-style ping/pong measures server-clock offset. The lowest-RTT
 *     ping wins (least network-induced bias).
 *   - `fire_at` is wall-clock UTC ms. We translate to
 *     SystemClock.uptimeMillis() before posting because wall clock can jump
 *     (NTP / user-set time), but uptimeMillis is monotonic.
 *   - Auto-reconnect with exponential backoff capped at 30s.
 *   - Backward compatible with the v1.0 server protocol (single `burst{}`
 *     object instead of `bursts[]`); legacy events surface as burst_id=1.
 */
class BurstWsClient(
    private val screenId: Int,
    private val wsUrl: String,
    private val listener: Listener,
) {
    /** One burst session description, mirrored from the server config. */
    data class Config(
        val id: Int,
        val enabled: Boolean,
        val imageUrl: String,
        val intervalMin: Int,
        val durationS: Int,
    )

    interface Listener {
        /**
         * Full snapshot of the screen's burst configs. Replaces any previous
         * snapshot; missing ids should be cleared (their preloaded image
         * forgotten). Always called on the main thread.
         */
        fun onBurstConfigs(configs: List<Config>)

        /**
         * A specific burst is scheduled to fire at `fireAtUptime`. Pass the
         * Runnable to Handler.postAtTime(). Always called on the main thread.
         */
        fun onBurstFire(burstId: Int, fireAtUptime: Long, durationMs: Int, imageUrl: String)
    }

    companion object {
        private const val TAG = "BurstWsClient"
        private const val PING_BURST_COUNT = 5
        private const val PING_PERIODIC_MS = 30_000L
        private const val RECONNECT_MIN_MS = 1_000L
        private const val RECONNECT_MAX_MS = 30_000L
    }

    private val main = Handler(Looper.getMainLooper())
    private val client = OkHttpClient.Builder()
        .pingInterval(20, TimeUnit.SECONDS)
        .readTimeout(0, TimeUnit.MILLISECONDS)
        .build()

    private var ws: WebSocket? = null
    private var reconnectDelay = RECONNECT_MIN_MS
    private var closed = false

    @Volatile private var clockOffsetMs: Double = 0.0
    @Volatile private var bestRttMs: Long = Long.MAX_VALUE
    @Volatile var isOpen: Boolean = false
        private set

    fun start() {
        closed = false
        connect()
    }

    fun stop() {
        closed = true
        try { ws?.close(1000, "bye") } catch (_: Exception) {}
        ws = null
        isOpen = false
        main.removeCallbacksAndMessages(null)
    }

    private fun connect() {
        if (closed) return
        Log.i(TAG, "Connecting to $wsUrl for screen $screenId")
        val req = Request.Builder().url(wsUrl).build()
        ws = client.newWebSocket(req, socketListener)
    }

    private val socketListener = object : WebSocketListener() {
        override fun onOpen(webSocket: WebSocket, response: Response) {
            Log.i(TAG, "WS open")
            isOpen = true
            reconnectDelay = RECONNECT_MIN_MS
            bestRttMs = Long.MAX_VALUE
            send(webSocket, JSONObject().apply {
                put("type", "hello")
                put("screen_id", screenId)
            })
            for (i in 0 until PING_BURST_COUNT) {
                main.postDelayed({ sendPing() }, i * 200L)
            }
            schedulePeriodicPing()
        }

        override fun onMessage(webSocket: WebSocket, text: String) = handleMessage(text)
        override fun onMessage(webSocket: WebSocket, bytes: ByteString) = handleMessage(bytes.utf8())

        override fun onClosing(webSocket: WebSocket, code: Int, reason: String) {
            isOpen = false
            webSocket.close(1000, null)
        }

        override fun onClosed(webSocket: WebSocket, code: Int, reason: String) {
            Log.i(TAG, "WS closed code=$code reason=$reason")
            isOpen = false
            scheduleReconnect()
        }

        override fun onFailure(webSocket: WebSocket, t: Throwable, response: Response?) {
            Log.w(TAG, "WS failure: ${t.message}")
            isOpen = false
            scheduleReconnect()
        }
    }

    private fun scheduleReconnect() {
        if (closed) return
        val delay = reconnectDelay
        reconnectDelay = (reconnectDelay * 2).coerceAtMost(RECONNECT_MAX_MS)
        main.postDelayed({ connect() }, delay)
    }

    private fun schedulePeriodicPing() {
        main.postDelayed({
            if (!closed && isOpen) {
                sendPing()
                schedulePeriodicPing()
            }
        }, PING_PERIODIC_MS)
    }

    private fun sendPing() {
        val sock = ws ?: return
        val t1 = System.currentTimeMillis()
        send(sock, JSONObject().apply {
            put("type", "ping")
            put("t1", t1)
        })
    }

    private fun send(sock: WebSocket, obj: JSONObject) {
        try { sock.send(obj.toString()) } catch (e: Exception) {
            Log.w(TAG, "send failed: ${e.message}")
        }
    }

    /** Parse the new `bursts[]` array, falling back to legacy `burst{}` if missing. */
    private fun parseConfigs(payload: JSONObject?): List<Config> {
        if (payload == null) return emptyList()
        val arr = payload.optJSONArray("bursts")
        if (arr != null) {
            val out = ArrayList<Config>(arr.length())
            for (i in 0 until arr.length()) {
                val b = arr.optJSONObject(i) ?: continue
                out.add(
                    Config(
                        id = b.optInt("id", i + 1),
                        enabled = b.optBoolean("enabled", false),
                        imageUrl = b.optString("image_url", ""),
                        intervalMin = b.optInt("interval_min", 2),
                        durationS = b.optInt("duration_s", 10),
                    )
                )
            }
            return out
        }
        // Legacy single-burst fallback. Keep id=1 so the activity preloads
        // it under the same key the new protocol uses.
        val legacy = payload.optJSONObject("burst") ?: return emptyList()
        return listOf(
            Config(
                id = 1,
                enabled = legacy.optBoolean("enabled", false),
                imageUrl = legacy.optString("image_url", ""),
                intervalMin = legacy.optInt("interval_min", 3),
                durationS = legacy.optInt("duration_s", 10),
            )
        )
    }

    private fun handleMessage(raw: String) {
        val msg = try { JSONObject(raw) } catch (_: Exception) { return }
        when (msg.optString("type")) {
            "hello_ack" -> {
                val configs = parseConfigs(msg.optJSONObject("config"))
                if (configs.isNotEmpty()) {
                    main.post { listener.onBurstConfigs(configs) }
                }
            }
            "pong" -> {
                val t1 = msg.optLong("t1")
                val t2 = msg.optLong("t2")
                val t3 = msg.optLong("t3")
                val t4 = System.currentTimeMillis()
                val rtt = (t4 - t1) - (t3 - t2)
                val offset = ((t2 - t1) + (t3 - t4)) / 2.0
                if (rtt in 0..bestRttMs) {
                    bestRttMs = rtt
                    clockOffsetMs = offset
                    Log.d(TAG, "clock sync: rtt=${rtt}ms offset=${"%.1f".format(offset)}ms")
                }
            }
            "config" -> {
                val configs = parseConfigs(msg)
                main.post { listener.onBurstConfigs(configs) }
            }
            "burst" -> {
                val burstId = msg.optInt("burst_id", 1)
                val fireAtWall = msg.optLong("fire_at")
                val durationMs = msg.optInt("duration_ms", 10_000)
                val imageUrl = msg.optString("image_url", "")
                val wallNow = System.currentTimeMillis()
                val uptimeNow = SystemClock.uptimeMillis()
                val correctedNow = wallNow + clockOffsetMs
                val delayMs = (fireAtWall - correctedNow).toLong()
                val fireAtUptime = uptimeNow + delayMs
                Log.i(
                    TAG,
                    "burst received id=$burstId fire_at=$fireAtWall in ${delayMs}ms " +
                            "(offset=${"%.1f".format(clockOffsetMs)}ms rtt=${bestRttMs}ms)"
                )
                if (abs(delayMs) > 60_000) {
                    Log.w(TAG, "burst fire_at wildly off (${delayMs}ms) — ignoring")
                    return
                }
                main.post {
                    listener.onBurstFire(burstId, fireAtUptime, durationMs, imageUrl)
                }
            }
        }
    }
}
