package com.example.digitalkiosk.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.example.digitalkiosk.R;
import com.example.digitalkiosk.models.Item;
import com.example.digitalkiosk.models.Translation;

/* JADX INFO: loaded from: classes.dex */
public abstract class ItemButtonBinding extends ViewDataBinding {
    public final RelativeLayout button;
    public final TextView categoryName;
    public final ImageView itemImage;

    @Bindable
    protected String mAmount;

    @Bindable
    protected Integer mCount;

    @Bindable
    protected Boolean mDarkshade;

    @Bindable
    protected Item mItem;

    @Bindable
    protected Boolean mSelected;

    @Bindable
    protected Translation mSoldOutTranslation;

    public abstract void setAmount(String str);

    public abstract void setCount(Integer num);

    public abstract void setDarkshade(Boolean bool);

    public abstract void setItem(Item item);

    public abstract void setSelected(Boolean bool);

    public abstract void setSoldOutTranslation(Translation translation);

    protected ItemButtonBinding(Object obj, View view, int i, RelativeLayout relativeLayout, TextView textView, ImageView imageView) {
        super(obj, view, i);
        this.button = relativeLayout;
        this.categoryName = textView;
        this.itemImage = imageView;
    }

    public Item getItem() {
        return this.mItem;
    }

    public Boolean getDarkshade() {
        return this.mDarkshade;
    }

    public Boolean getSelected() {
        return this.mSelected;
    }

    public Integer getCount() {
        return this.mCount;
    }

    public String getAmount() {
        return this.mAmount;
    }

    public Translation getSoldOutTranslation() {
        return this.mSoldOutTranslation;
    }

    public static ItemButtonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemButtonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ItemButtonBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.item_button, viewGroup, z, obj);
    }

    public static ItemButtonBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemButtonBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ItemButtonBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.item_button, null, false, obj);
    }

    public static ItemButtonBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemButtonBinding bind(View view, Object obj) {
        return (ItemButtonBinding) bind(obj, view, R.layout.item_button);
    }
}
