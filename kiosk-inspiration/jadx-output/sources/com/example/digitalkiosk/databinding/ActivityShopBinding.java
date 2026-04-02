package com.example.digitalkiosk.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.Space;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.example.digitalkiosk.R;
import com.example.digitalkiosk.models.KioskSetting;
import com.example.digitalkiosk.models.Translation;
import me.relex.circleindicator.CircleIndicator3;

/* JADX INFO: loaded from: classes.dex */
public abstract class ActivityShopBinding extends ViewDataBinding {
    public final AppCompatButton acceptOrder;
    public final ImageView arrowDown;
    public final ImageView arrowUp;
    public final AppCompatButton backButton;
    public final LinearLayout bottomNav;
    public final AppCompatButton cancelOrder;
    public final RecyclerView cart;
    public final ImageView cartIcon;
    public final TextView cartYourOrder;
    public final RecyclerView categoriesButtons;
    public final LinearLayout expandCart;
    public final RelativeLayout expandCartIcon;
    public final ViewPager2 handicapBanner;
    public final ImageButton handicapButton;
    public final CircleIndicator3 handicapIndicators;
    public final LinearLayout header;
    public final ViewPager2 innerBanner;
    public final CircleIndicator3 innerIndicators;
    public final RecyclerView itemsButtons;

    @Bindable
    protected Boolean mHandicapOn;

    @Bindable
    protected Translation mItemsTitle;

    @Bindable
    protected KioskSetting mKiosksetting;
    public final Space navSpace;
    public final TextView orderTotal;
    public final RelativeLayout shopRoot;
    public final RecyclerView subCatButtons;
    public final LinearLayout testMode;
    public final AppCompatButton voucherButton;

    public abstract void setHandicapOn(Boolean bool);

    public abstract void setItemsTitle(Translation translation);

    public abstract void setKiosksetting(KioskSetting kioskSetting);

    protected ActivityShopBinding(Object obj, View view, int i, AppCompatButton appCompatButton, ImageView imageView, ImageView imageView2, AppCompatButton appCompatButton2, LinearLayout linearLayout, AppCompatButton appCompatButton3, RecyclerView recyclerView, ImageView imageView3, TextView textView, RecyclerView recyclerView2, LinearLayout linearLayout2, RelativeLayout relativeLayout, ViewPager2 viewPager2, ImageButton imageButton, CircleIndicator3 circleIndicator3, LinearLayout linearLayout3, ViewPager2 viewPager22, CircleIndicator3 circleIndicator32, RecyclerView recyclerView3, Space space, TextView textView2, RelativeLayout relativeLayout2, RecyclerView recyclerView4, LinearLayout linearLayout4, AppCompatButton appCompatButton4) {
        super(obj, view, i);
        this.acceptOrder = appCompatButton;
        this.arrowDown = imageView;
        this.arrowUp = imageView2;
        this.backButton = appCompatButton2;
        this.bottomNav = linearLayout;
        this.cancelOrder = appCompatButton3;
        this.cart = recyclerView;
        this.cartIcon = imageView3;
        this.cartYourOrder = textView;
        this.categoriesButtons = recyclerView2;
        this.expandCart = linearLayout2;
        this.expandCartIcon = relativeLayout;
        this.handicapBanner = viewPager2;
        this.handicapButton = imageButton;
        this.handicapIndicators = circleIndicator3;
        this.header = linearLayout3;
        this.innerBanner = viewPager22;
        this.innerIndicators = circleIndicator32;
        this.itemsButtons = recyclerView3;
        this.navSpace = space;
        this.orderTotal = textView2;
        this.shopRoot = relativeLayout2;
        this.subCatButtons = recyclerView4;
        this.testMode = linearLayout4;
        this.voucherButton = appCompatButton4;
    }

    public KioskSetting getKiosksetting() {
        return this.mKiosksetting;
    }

    public Translation getItemsTitle() {
        return this.mItemsTitle;
    }

    public Boolean getHandicapOn() {
        return this.mHandicapOn;
    }

    public static ActivityShopBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityShopBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ActivityShopBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.activity_shop, viewGroup, z, obj);
    }

    public static ActivityShopBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityShopBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ActivityShopBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.activity_shop, null, false, obj);
    }

    public static ActivityShopBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityShopBinding bind(View view, Object obj) {
        return (ActivityShopBinding) bind(obj, view, R.layout.activity_shop);
    }
}
