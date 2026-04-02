package com.cnc.kiosk.adapters

import android.graphics.Typeface
import android.view.LayoutInflater
import android.view.ViewGroup
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.cnc.kiosk.R
import com.cnc.kiosk.models.Category

class CategoryAdapter(
    private val items: List<Category>,
    private val onClick: (Category) -> Unit
) : RecyclerView.Adapter<CategoryAdapter.VH>() {

    private var selectedPos = 0

    inner class VH(val tv: TextView) : RecyclerView.ViewHolder(tv)

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): VH {
        val tv = LayoutInflater.from(parent.context)
            .inflate(R.layout.item_category, parent, false) as TextView
        return VH(tv)
    }

    override fun getItemCount() = items.size

    override fun onBindViewHolder(holder: VH, position: Int) {
        val cat = items[position]
        holder.tv.text = cat.name.uppercase()

        val ctx = holder.tv.context
        if (position == selectedPos) {
            holder.tv.setBackgroundColor(ctx.getColor(R.color.cnc_bg_warm))
            holder.tv.setTextColor(ctx.getColor(R.color.cnc_red))
            holder.tv.setTypeface(null, Typeface.BOLD)
            holder.tv.setCompoundDrawablesRelativeWithIntrinsicBounds(
                R.drawable.sidebar_indicator, 0, 0, 0
            )
            holder.tv.compoundDrawablePadding = 8
        } else {
            holder.tv.setBackgroundColor(ctx.getColor(android.R.color.white))
            holder.tv.setTextColor(ctx.getColor(R.color.cnc_text))
            holder.tv.setTypeface(null, Typeface.NORMAL)
            holder.tv.setCompoundDrawablesRelativeWithIntrinsicBounds(0, 0, 0, 0)
        }

        holder.tv.setOnClickListener {
            val old = selectedPos
            selectedPos = holder.adapterPosition
            notifyItemChanged(old)
            notifyItemChanged(selectedPos)
            onClick(cat)
        }
    }
}
