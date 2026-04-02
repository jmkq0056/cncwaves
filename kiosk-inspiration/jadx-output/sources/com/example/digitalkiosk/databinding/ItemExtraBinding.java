package com.example.digitalkiosk.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.example.digitalkiosk.R;
import com.example.digitalkiosk.models.Extra;
import com.example.digitalkiosk.models.Translation;

/* JADX INFO: loaded from: classes.dex */
public abstract class ItemExtraBinding extends ViewDataBinding {
    public final ImageButton addExtra;
    public final LinearLayout fullExtraButton;

    @Bindable
    protected String mAmount;

    @Bindable
    protected Extra mExtra;

    @Bindable
    protected Translation mExtraTerm;

    @Bindable
    protected String mQuantity;

    @Bindable
    protected Translation mSoldOutTranslation;
    public final ImageButton subtractExtra;

    public abstract void setAmount(String str);

    public abstract void setExtra(Extra extra);

    public abstract void setExtraTerm(Translation translation);

    public abstract void setQuantity(String str);

    public abstract void setSoldOutTranslation(Translation translation);

    protected ItemExtraBinding(Object obj, View view, int i, ImageButton imageButton, LinearLayout linearLayout, ImageButton imageButton2) {
        super(obj, view, i);
        this.addExtra = imageButton;
        this.fullExtraButton = linearLayout;
        this.subtractExtra = imageButton2;
    }

    public Extra getExtra() {
        return this.mExtra;
    }

    public Translation getExtraTerm() {
        return this.mExtraTerm;
    }

    public String getAmount() {
        return this.mAmount;
    }

    public String getQuantity() {
        return this.mQuantity;
    }

    public Translation getSoldOutTranslation() {
        return this.mSoldOutTranslation;
    }

    public static ItemExtraBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemExtraBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ItemExtraBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.item_extra, viewGroup, z, obj);
    }

    public static ItemExtraBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemExtraBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ItemExtraBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.item_extra, null, false, obj);
    }

    public static ItemExtraBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemExtraBinding bind(View view, Object obj) {
        return (ItemExtraBinding) bind(obj, view, R.layout.item_extra);
    }
}
