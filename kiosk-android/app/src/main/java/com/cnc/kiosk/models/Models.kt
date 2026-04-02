package com.cnc.kiosk.models

data class Category(
    val _id: String,
    val name: String,
    val slug: String,
    val description: String,
    val image: String,
    val sortOrder: Int
)

data class Item(
    val _id: String,
    val name: String,
    val description: String,
    val price: Double,
    val image: String,
    val category: String,
    val categorySlug: String,
    val soldOut: Boolean,
    val sortOrder: Int,
    val addons: List<Addon> = emptyList()
)

data class Addon(
    val name: String,
    val description: String,
    val selection: String, // "one", "multiple", "custom"
    val min: Int,
    val max: Int,
    val required: Boolean,
    val options: List<AddonOption>
)

data class AddonOption(
    val name: String,
    val description: String,
    val price: Double,
    val image: String,
    var selected: Boolean = false,
    var quantity: Int = 0
)

data class CartItem(
    val id: String = System.currentTimeMillis().toString(36),
    val itemId: String,
    val name: String,
    val basePrice: Double,
    val image: String,
    var quantity: Int = 1,
    val selectedAddons: List<SelectedAddon> = emptyList()
) {
    val totalPrice: Double
        get() = (basePrice + selectedAddons.sumOf { it.price * it.quantity }) * quantity
}

data class SelectedAddon(
    val name: String,
    val price: Double,
    val quantity: Int = 1
)
