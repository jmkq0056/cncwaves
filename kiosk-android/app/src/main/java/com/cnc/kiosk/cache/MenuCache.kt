package com.cnc.kiosk.cache

import android.content.Context
import com.cnc.kiosk.models.Category
import com.cnc.kiosk.models.Item
import org.json.JSONArray
import org.json.JSONObject
import java.io.File

object MenuCache {
    private const val CATEGORIES_FILE = "categories.json"
    private const val ITEMS_PREFIX = "items_"

    fun saveCategories(ctx: Context, categories: List<Category>) {
        val arr = JSONArray()
        for (c in categories) {
            arr.put(JSONObject().apply {
                put("_id", c._id); put("name", c.name); put("slug", c.slug)
                put("description", c.description); put("image", c.image); put("sortOrder", c.sortOrder)
            })
        }
        File(ctx.filesDir, CATEGORIES_FILE).writeText(arr.toString())
    }

    fun loadCategories(ctx: Context): List<Category>? {
        val f = File(ctx.filesDir, CATEGORIES_FILE)
        if (!f.exists()) return null
        val arr = JSONArray(f.readText())
        return (0 until arr.length()).map {
            val o = arr.getJSONObject(it)
            Category(o.getString("_id"), o.getString("name"), o.getString("slug"),
                o.optString("description", ""), o.optString("image", ""), o.optInt("sortOrder", 0))
        }
    }

    fun saveItems(ctx: Context, categoryId: String, items: List<Item>) {
        val arr = JSONArray()
        for (i in items) {
            arr.put(JSONObject().apply {
                put("_id", i._id); put("name", i.name); put("description", i.description)
                put("price", i.price); put("image", i.image); put("category", i.category)
                put("categorySlug", i.categorySlug); put("soldOut", i.soldOut); put("sortOrder", i.sortOrder)
            })
        }
        File(ctx.filesDir, "$ITEMS_PREFIX$categoryId.json").writeText(arr.toString())
    }

    fun loadItems(ctx: Context, categoryId: String): List<Item>? {
        val f = File(ctx.filesDir, "$ITEMS_PREFIX$categoryId.json")
        if (!f.exists()) return null
        val arr = JSONArray(f.readText())
        return (0 until arr.length()).map {
            val o = arr.getJSONObject(it)
            Item(o.getString("_id"), o.getString("name"), o.optString("description", ""),
                o.getDouble("price"), o.optString("image", ""), o.optString("category", ""),
                o.optString("categorySlug", ""), o.optBoolean("soldOut", false), o.optInt("sortOrder", 0))
        }
    }
}
