package com.cnc.kiosk

import com.cnc.kiosk.models.CartItem

object CartManager {
    private val items = mutableListOf<CartItem>()
    var orderType: String = "take-away"
    var tableNumber: Int? = null
    var pickupPhone: String? = null

    fun getItems(): List<CartItem> = items.toList()
    fun itemCount(): Int = items.sumOf { it.quantity }
    fun total(): Double = items.sumOf { it.totalPrice }

    fun add(item: CartItem) { items.add(item) }
    fun remove(id: String) { items.removeAll { it.id == id } }

    fun clear() {
        items.clear()
        orderType = "take-away"
        tableNumber = null
        pickupPhone = null
    }

    fun isEmpty() = items.isEmpty()
}
