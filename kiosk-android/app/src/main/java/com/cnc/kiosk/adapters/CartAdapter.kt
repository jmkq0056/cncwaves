package com.cnc.kiosk.adapters

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.cnc.kiosk.R
import com.cnc.kiosk.cache.ImageLoader
import com.cnc.kiosk.models.CartItem

class CartAdapter(
    private var items: List<CartItem>,
    private val onRemove: (String) -> Unit
) : RecyclerView.Adapter<CartAdapter.VH>() {

    inner class VH(v: View) : RecyclerView.ViewHolder(v) {
        val image: ImageView = v.findViewById(R.id.cartItemImage)
        val name: TextView = v.findViewById(R.id.cartItemName)
        val addons: TextView = v.findViewById(R.id.cartItemAddons)
        val price: TextView = v.findViewById(R.id.cartItemPrice)
        val remove: TextView = v.findViewById(R.id.cartItemRemove)
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int) =
        VH(LayoutInflater.from(parent.context).inflate(R.layout.item_cart, parent, false))

    override fun getItemCount() = items.size

    override fun onBindViewHolder(holder: VH, position: Int) {
        val ci = items[position]
        holder.name.text = "${ci.quantity}x ${ci.name}"
        holder.price.text = "%.2f DKK".format(ci.totalPrice)
        ImageLoader.load(ci.image, holder.image)

        val addonText = ci.selectedAddons.joinToString(", ") { it.name }
        if (addonText.isNotBlank()) {
            holder.addons.text = addonText
            holder.addons.visibility = View.VISIBLE
        } else {
            holder.addons.visibility = View.GONE
        }

        holder.remove.setOnClickListener { onRemove(ci.id) }
    }

    fun update(newItems: List<CartItem>) {
        items = newItems
        notifyDataSetChanged()
    }
}
