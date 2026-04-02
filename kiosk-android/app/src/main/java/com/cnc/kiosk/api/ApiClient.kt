package com.cnc.kiosk.api

import com.cnc.kiosk.BuildConfig
import com.cnc.kiosk.models.*
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import org.json.JSONArray
import org.json.JSONObject
import java.net.HttpURLConnection
import java.net.URL

object ApiClient {
    private var baseUrl = BuildConfig.API_BASE_URL

    fun setBaseUrl(url: String) { baseUrl = url.trimEnd('/') }

    suspend fun getCategories(): List<Category> = withContext(Dispatchers.IO) {
        val json = fetch("$baseUrl/categories")
        val arr = JSONArray(json)
        (0 until arr.length()).map { parseCategory(arr.getJSONObject(it)) }
    }

    suspend fun getItems(categoryId: String): List<Item> = withContext(Dispatchers.IO) {
        val json = fetch("$baseUrl/items?category=$categoryId")
        val arr = JSONArray(json)
        (0 until arr.length()).map { parseItem(arr.getJSONObject(it)) }
    }

    suspend fun getItemDetail(itemId: String): Item = withContext(Dispatchers.IO) {
        val json = fetch("$baseUrl/item/$itemId")
        parseItem(JSONObject(json), full = true)
    }

    suspend fun createOrder(items: List<CartItem>, type: String, tableNumber: Int?): JSONObject = withContext(Dispatchers.IO) {
        val body = JSONObject().apply {
            put("type", type)
            if (tableNumber != null) put("tableNumber", tableNumber)
            val arr = JSONArray()
            for (ci in items) {
                arr.put(JSONObject().apply {
                    put("itemId", ci.itemId)
                    put("name", ci.name)
                    put("price", ci.totalPrice / ci.quantity)
                    put("quantity", ci.quantity)
                    put("image", ci.image)
                    val addonsArr = JSONArray()
                    for (a in ci.selectedAddons) {
                        addonsArr.put(JSONObject().apply {
                            put("name", a.name)
                            put("price", a.price)
                        })
                    }
                    put("addons", addonsArr)
                })
            }
            put("items", arr)
        }
        val json = post("$baseUrl/order", body.toString())
        JSONObject(json)
    }

    private fun fetch(url: String): String {
        val conn = URL(url).openConnection() as HttpURLConnection
        conn.connectTimeout = 15000
        conn.readTimeout = 15000
        conn.setRequestProperty("Accept", "application/json")
        return conn.inputStream.bufferedReader().readText()
    }

    private fun post(url: String, body: String): String {
        val conn = URL(url).openConnection() as HttpURLConnection
        conn.requestMethod = "POST"
        conn.connectTimeout = 15000
        conn.readTimeout = 15000
        conn.setRequestProperty("Content-Type", "application/json")
        conn.setRequestProperty("Accept", "application/json")
        conn.doOutput = true
        conn.outputStream.write(body.toByteArray())
        return conn.inputStream.bufferedReader().readText()
    }

    private fun parseCategory(o: JSONObject) = Category(
        _id = o.getString("_id"),
        name = o.optString("name", ""),
        slug = o.optString("slug", ""),
        description = o.optString("description", ""),
        image = o.optString("image", ""),
        sortOrder = o.optInt("sortOrder", 0)
    )

    private fun parseItem(o: JSONObject, full: Boolean = false): Item {
        val addons = if (full && o.has("addons")) {
            val arr = o.getJSONArray("addons")
            (0 until arr.length()).map { parseAddon(arr.getJSONObject(it)) }
        } else emptyList()

        return Item(
            _id = o.getString("_id"),
            name = o.optString("name", ""),
            description = o.optString("description", ""),
            price = o.optDouble("price", 0.0),
            image = o.optString("image", ""),
            category = o.optString("category", ""),
            categorySlug = o.optString("categorySlug", ""),
            soldOut = o.optBoolean("soldOut", false),
            sortOrder = o.optInt("sortOrder", 0),
            addons = addons
        )
    }

    private fun parseAddon(o: JSONObject): Addon {
        val opts = o.getJSONArray("options")
        return Addon(
            name = o.optString("name", ""),
            description = o.optString("description", ""),
            selection = o.optString("selection", "multiple"),
            min = o.optInt("min", 0),
            max = o.optInt("max", 0),
            required = o.optBoolean("required", false),
            options = (0 until opts.length()).map {
                val op = opts.getJSONObject(it)
                AddonOption(
                    name = op.optString("name", ""),
                    description = op.optString("description", ""),
                    price = op.optDouble("price", 0.0),
                    image = op.optString("image", "")
                )
            }
        )
    }
}
