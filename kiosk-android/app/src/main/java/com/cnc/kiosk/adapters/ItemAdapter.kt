package com.cnc.kiosk.adapters

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.FrameLayout
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.cnc.kiosk.R
import com.cnc.kiosk.cache.ImageLoader
import com.cnc.kiosk.models.Item

class ItemAdapter(
    private var items: List<Item>,
    private val onClick: (Item) -> Unit
) : RecyclerView.Adapter<ItemAdapter.VH>() {

    inner class VH(v: View) : RecyclerView.ViewHolder(v) {
        val image: ImageView = v.findViewById(R.id.itemImage)
        val name: TextView = v.findViewById(R.id.itemName)
        val price: TextView = v.findViewById(R.id.itemPrice)
        val soldOutOverlay: FrameLayout = v.findViewById(R.id.soldOutOverlay)
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int) =
        VH(LayoutInflater.from(parent.context).inflate(R.layout.item_menu, parent, false))

    override fun getItemCount() = items.size

    override fun onBindViewHolder(holder: VH, position: Int) {
        val item = items[position]
        holder.name.text = item.name
        holder.price.text = "DKK ${item.price.toInt()}"
        ImageLoader.load(item.image, holder.image)

        if (item.soldOut) {
            holder.soldOutOverlay.visibility = View.VISIBLE
            holder.itemView.setOnClickListener(null)
        } else {
            holder.soldOutOverlay.visibility = View.GONE
            holder.itemView.setOnClickListener { onClick(item) }
        }
    }

    fun updateItems(newItems: List<Item>) {
        items = newItems
        notifyDataSetChanged()
    }
}
