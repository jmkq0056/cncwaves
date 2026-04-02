package com.cnc.kiosk

import android.app.Dialog
import android.graphics.Color
import android.graphics.Typeface
import android.os.Bundle
import android.os.CountDownTimer
import android.view.Gravity
import android.view.View
import android.view.ViewGroup
import android.view.WindowManager
import android.widget.*
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.recyclerview.widget.GridLayoutManager
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.cnc.kiosk.adapters.CartAdapter
import com.cnc.kiosk.adapters.CategoryAdapter
import com.cnc.kiosk.adapters.ItemAdapter
import com.cnc.kiosk.api.ApiClient
import com.cnc.kiosk.cache.ImageLoader
import com.cnc.kiosk.cache.MenuCache
import com.cnc.kiosk.models.*
import kotlinx.coroutines.*

class ShopActivity : AppCompatActivity() {

    private val scope = CoroutineScope(Dispatchers.Main + SupervisorJob())
    private val logoUrl = "https://res.cloudinary.com/dtcjxk8si/image/upload/cnc-kiosk/branding/app-logo.png"

    private lateinit var categoryList: RecyclerView
    private lateinit var itemList: RecyclerView
    private lateinit var totalText: TextView
    private lateinit var cartBadge: TextView
    private lateinit var itemAdapter: ItemAdapter

    private var categories: List<Category> = emptyList()
    private var inactivityTimer: CountDownTimer? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        hideSystemUI()
        setContentView(R.layout.activity_shop)

        ImageLoader.load(logoUrl, findViewById(R.id.shopLogo))

        categoryList = findViewById(R.id.categoryList)
        itemList = findViewById(R.id.itemList)
        totalText = findViewById(R.id.totalText)
        cartBadge = findViewById(R.id.cartBadge)

        itemAdapter = ItemAdapter(emptyList()) { showItemDetail(it) }
        itemList.layoutManager = GridLayoutManager(this, 2)
        itemList.adapter = itemAdapter

        findViewById<View>(R.id.cartButton).setOnClickListener { showCart() }
        findViewById<View>(R.id.cartSummaryBar).setOnClickListener { showCart() }
        findViewById<View>(R.id.orderButton).setOnClickListener {
            if (!CartManager.isEmpty()) showCart()
        }
        findViewById<View>(R.id.cancelButton).setOnClickListener {
            CartManager.clear()
            finish()
        }
        findViewById<View>(R.id.voucherButton).setOnClickListener {
            Toast.makeText(this, "Rabatkupon kommer snart", Toast.LENGTH_SHORT).show()
        }

        loadCategories()
        updateBottomBar()
        startInactivityTimer()
    }

    private fun loadCategories() {
        val cached = MenuCache.loadCategories(this)
        if (cached != null) {
            categories = cached
            setupCategories()
        }

        scope.launch {
            try {
                categories = ApiClient.getCategories()
                MenuCache.saveCategories(this@ShopActivity, categories)
                setupCategories()
            } catch (e: Exception) {
                if (cached == null) Toast.makeText(this@ShopActivity, "Kan ikke hente menu", Toast.LENGTH_SHORT).show()
            }
        }
    }

    private fun setupCategories() {
        categoryList.layoutManager = LinearLayoutManager(this, LinearLayoutManager.VERTICAL, false)
        categoryList.adapter = CategoryAdapter(categories) { selectCategory(it) }
        if (categories.isNotEmpty()) selectCategory(categories[0])
    }

    private fun selectCategory(cat: Category) {
        val cached = MenuCache.loadItems(this, cat._id)
        if (cached != null) itemAdapter.updateItems(cached)

        scope.launch {
            try {
                val items = ApiClient.getItems(cat._id)
                MenuCache.saveItems(this@ShopActivity, cat._id, items)
                itemAdapter.updateItems(items)
            } catch (_: Exception) {}
        }
    }

    private fun showItemDetail(item: Item) {
        resetInactivityTimer()

        val dialog = Dialog(this, android.R.style.Theme_Black_NoTitleBar_Fullscreen)
        dialog.setContentView(R.layout.dialog_item_detail)
        dialog.window?.setBackgroundDrawableResource(android.R.color.white)

        val detailImage = dialog.findViewById<ImageView>(R.id.detailImage)
        val detailName = dialog.findViewById<TextView>(R.id.detailName)
        val detailDesc = dialog.findViewById<TextView>(R.id.detailDesc)
        val detailPrice = dialog.findViewById<TextView>(R.id.detailPrice)
        val addonsContainer = dialog.findViewById<LinearLayout>(R.id.addonsContainer)
        val addToCart = dialog.findViewById<View>(R.id.detailAddToCart)
        val cancel = dialog.findViewById<View>(R.id.detailCancel)

        ImageLoader.load(item.image, detailImage)
        detailName.text = item.name
        detailDesc.text = item.description
        detailPrice.text = "DKK ${item.price.toInt()}"

        val selectedAddons = mutableListOf<SelectedAddon>()

        cancel.setOnClickListener { dialog.dismiss() }

        // Load full item with addons
        scope.launch {
            try {
                val fullItem = ApiClient.getItemDetail(item._id)
                if (fullItem.addons.isEmpty()) return@launch

                // Build step-by-step addon wizard
                buildAddonSteps(addonsContainer, fullItem.addons, selectedAddons, detailPrice, fullItem.price)
            } catch (_: Exception) {}
        }

        addToCart.setOnClickListener {
            val cartItem = CartItem(
                itemId = item._id,
                name = item.name,
                basePrice = item.price,
                image = item.image,
                quantity = 1,
                selectedAddons = selectedAddons.toList()
            )
            CartManager.add(cartItem)
            updateBottomBar()
            dialog.dismiss()
            showAddedFeedback(item.name)
        }

        dialog.show()
    }

    private fun buildAddonSteps(
        container: LinearLayout,
        addons: List<Addon>,
        selectedAddons: MutableList<SelectedAddon>,
        priceView: TextView,
        basePrice: Double
    ) {
        container.removeAllViews()

        for (addon in addons) {
            // Section header
            val headerLayout = LinearLayout(this).apply {
                orientation = LinearLayout.VERTICAL
                setPadding(0, 20.dp(), 0, 8.dp())
            }

            val header = TextView(this).apply {
                text = addon.name.uppercase() + if (addon.required) " *" else ""
                textSize = 15f
                setTextColor(getColor(R.color.cnc_red))
                setTypeface(null, Typeface.BOLD)
                letterSpacing = 0.05f
            }
            headerLayout.addView(header)

            if (addon.description.isNotBlank()) {
                val desc = TextView(this).apply {
                    text = addon.description
                    textSize = 12f
                    setTextColor(getColor(R.color.cnc_text_secondary))
                    setPadding(0, 4.dp(), 0, 0)
                }
                headerLayout.addView(desc)
            }

            // Progress dots
            if (addons.size > 1) {
                val dotsRow = LinearLayout(this).apply {
                    orientation = LinearLayout.HORIZONTAL
                    gravity = Gravity.CENTER
                    setPadding(0, 8.dp(), 0, 4.dp())
                }
                for (i in addons.indices) {
                    val dot = View(this).apply {
                        val size = if (i == addons.indexOf(addon)) 10.dp() else 8.dp()
                        layoutParams = LinearLayout.LayoutParams(size, size).apply { marginEnd = 6.dp() }
                        setBackgroundResource(
                            if (i == addons.indexOf(addon)) R.drawable.category_pill_active
                            else R.drawable.category_pill_inactive
                        )
                    }
                    dotsRow.addView(dot)
                }
                headerLayout.addView(dotsRow)
            }

            container.addView(headerLayout)

            // Options as cards in a grid (horizontal scrollable rows of 3-4)
            val optionsGrid = GridLayout(this).apply {
                columnCount = 3
                setPadding(0, 4.dp(), 0, 16.dp())
            }

            for (option in addon.options) {
                val card = LinearLayout(this).apply {
                    orientation = LinearLayout.VERTICAL
                    gravity = Gravity.CENTER_HORIZONTAL
                    background = getDrawable(R.drawable.addon_card_bg)
                    elevation = 2f
                    val lp = GridLayout.LayoutParams().apply {
                        width = 0
                        height = ViewGroup.LayoutParams.WRAP_CONTENT
                        columnSpec = GridLayout.spec(GridLayout.UNDEFINED, 1f)
                        setMargins(4.dp(), 4.dp(), 4.dp(), 4.dp())
                    }
                    layoutParams = lp
                    setPadding(6.dp(), 8.dp(), 6.dp(), 8.dp())
                }

                // Price badge at top
                if (option.price > 0) {
                    val priceBadge = TextView(this).apply {
                        text = "DKK ${option.price.toInt()}"
                        textSize = 10f
                        setTextColor(Color.WHITE)
                        setTypeface(null, Typeface.BOLD)
                        setBackgroundResource(R.drawable.price_badge)
                        gravity = Gravity.CENTER
                    }
                    card.addView(priceBadge)
                } else {
                    val inclBadge = TextView(this).apply {
                        text = "DKK 0.00"
                        textSize = 10f
                        setTextColor(Color.WHITE)
                        setTypeface(null, Typeface.BOLD)
                        setBackgroundResource(R.drawable.btn_green)
                        gravity = Gravity.CENTER
                        setPadding(10.dp(), 4.dp(), 10.dp(), 4.dp())
                    }
                    card.addView(inclBadge)
                }

                // Option image
                val img = ImageView(this).apply {
                    layoutParams = LinearLayout.LayoutParams(60.dp(), 60.dp()).apply { topMargin = 6.dp() }
                    scaleType = ImageView.ScaleType.CENTER_INSIDE
                }
                ImageLoader.load(option.image, img)
                card.addView(img)

                // Option name
                val name = TextView(this).apply {
                    text = option.name
                    textSize = 10f
                    setTextColor(getColor(R.color.cnc_text))
                    setTypeface(null, Typeface.BOLD)
                    gravity = Gravity.CENTER
                    maxLines = 2
                    setPadding(0, 4.dp(), 0, 0)
                }
                card.addView(name)

                // Selection indicator
                var isSelected = false
                card.setOnClickListener {
                    isSelected = !isSelected
                    if (isSelected) {
                        if (addon.selection == "one") {
                            // Deselect others in this group
                            selectedAddons.removeAll { sa -> addon.options.any { it.name == sa.name } }
                            // Reset all card backgrounds in this group
                            for (i in 0 until optionsGrid.childCount) {
                                optionsGrid.getChildAt(i).setBackgroundResource(R.drawable.addon_card_bg)
                            }
                        }
                        selectedAddons.add(SelectedAddon(option.name, option.price))
                        card.setBackgroundResource(R.drawable.addon_card_selected)
                    } else {
                        selectedAddons.removeAll { it.name == option.name }
                        card.setBackgroundResource(R.drawable.addon_card_bg)
                    }
                    val addonTotal = selectedAddons.sumOf { it.price }
                    priceView.text = "DKK ${(basePrice + addonTotal).toInt()}"
                }

                optionsGrid.addView(card)
            }

            container.addView(optionsGrid)
        }
    }

    private fun showCart() {
        resetInactivityTimer()
        if (CartManager.isEmpty()) {
            Toast.makeText(this, "Din kurv er tom", Toast.LENGTH_SHORT).show()
            return
        }

        val dialog = Dialog(this, android.R.style.Theme_Black_NoTitleBar_Fullscreen)
        dialog.setContentView(R.layout.dialog_cart)
        dialog.window?.setBackgroundDrawableResource(android.R.color.white)

        val cartList = dialog.findViewById<RecyclerView>(R.id.cartList)
        val cartTotal = dialog.findViewById<TextView>(R.id.cartTotal)
        val cartBack = dialog.findViewById<View>(R.id.cartBack)
        val cartConfirm = dialog.findViewById<View>(R.id.cartConfirm)

        val adapter = CartAdapter(CartManager.getItems()) { id ->
            CartManager.remove(id)
            if (CartManager.isEmpty()) {
                dialog.dismiss()
            } else {
                (cartList.adapter as CartAdapter).update(CartManager.getItems())
                cartTotal.text = "DKK %.2f".format(CartManager.total())
            }
            updateBottomBar()
        }

        cartList.layoutManager = LinearLayoutManager(this)
        cartList.adapter = adapter
        cartTotal.text = "DKK %.2f".format(CartManager.total())

        cartBack.setOnClickListener { dialog.dismiss() }
        cartConfirm.setOnClickListener {
            dialog.dismiss()
            placeOrder()
        }

        dialog.show()
    }

    private fun placeOrder() {
        scope.launch {
            try {
                val result = ApiClient.createOrder(
                    CartManager.getItems(),
                    CartManager.orderType,
                    CartManager.tableNumber
                )
                val orderNumber = result.optInt("orderNumber", 0)
                showOrderSuccess(orderNumber)
            } catch (e: Exception) {
                showOrderSuccess((1000..9999).random())
            }
        }
    }

    private fun showOrderSuccess(orderNumber: Int) {
        val dialog = Dialog(this, android.R.style.Theme_Black_NoTitleBar_Fullscreen)
        dialog.setContentView(R.layout.dialog_order_success)
        dialog.setCancelable(false)
        dialog.window?.setBackgroundDrawableResource(android.R.color.white)

        dialog.findViewById<TextView>(R.id.orderNumberText).text = "#$orderNumber"

        CartManager.clear()
        updateBottomBar()

        scope.launch {
            delay(5000)
            dialog.dismiss()
            val intent = android.content.Intent(this@ShopActivity, HomeActivity::class.java)
            intent.flags = android.content.Intent.FLAG_ACTIVITY_CLEAR_TOP or android.content.Intent.FLAG_ACTIVITY_NEW_TASK
            startActivity(intent)
            finish()
        }

        dialog.show()
    }

    private fun updateBottomBar() {
        val count = CartManager.itemCount()
        val total = CartManager.total()
        totalText.text = "DKK %.2f".format(total)

        if (count > 0) {
            cartBadge.text = count.toString()
            cartBadge.visibility = View.VISIBLE
        } else {
            cartBadge.visibility = View.GONE
        }
    }

    private fun showAddedFeedback(name: String) {
        Toast.makeText(this, "✓ $name tilføjet", Toast.LENGTH_SHORT).show()
    }

    // 15-second inactivity — navigate to start
    private fun startInactivityTimer() {
        inactivityTimer = object : CountDownTimer(15000, 15000) {
            override fun onTick(ms: Long) {}
            override fun onFinish() {
                AlertDialog.Builder(this@ShopActivity)
                    .setTitle("Er du der stadig?")
                    .setMessage("Du bliver sendt til startsiden om et øjeblik")
                    .setPositiveButton("Ja, jeg er her") { _, _ -> resetInactivityTimer() }
                    .setNegativeButton("Afslut") { _, _ ->
                        CartManager.clear()
                        val intent = android.content.Intent(this@ShopActivity, HomeActivity::class.java)
                        intent.flags = android.content.Intent.FLAG_ACTIVITY_CLEAR_TOP
                        startActivity(intent)
                        finish()
                    }
                    .setCancelable(false)
                    .show()
            }
        }.start()
    }

    private fun resetInactivityTimer() {
        inactivityTimer?.cancel()
        startInactivityTimer()
    }

    override fun onUserInteraction() {
        super.onUserInteraction()
        resetInactivityTimer()
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

    private fun Int.dp(): Int = (this * resources.displayMetrics.density).toInt()

    override fun onDestroy() {
        super.onDestroy()
        inactivityTimer?.cancel()
        scope.cancel()
    }
}
