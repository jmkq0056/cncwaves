package com.example.digitalkiosk.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.example.digitalkiosk.R;
import com.example.digitalkiosk.models.ItemDetails;
import com.example.digitalkiosk.models.Size;

/* JADX INFO: loaded from: classes.dex */
public abstract class SizeButtonBinding extends ViewDataBinding {
    public final LinearLayout button;
    public final TextView itemName;

    @Bindable
    protected Boolean mDoubleSize;

    @Bindable
    protected Boolean mHandicapOn;

    @Bindable
    protected Boolean mIsLarge;

    @Bindable
    protected Boolean mIsMedium;

    @Bindable
    protected Boolean mIsXl;

    @Bindable
    protected ItemDetails mItem;

    @Bindable
    protected Size mSize;

    @Bindable
    protected Boolean mTrippleSize;
    public final TextView sizeName;
    public final TextView sizePrice;

    public abstract void setDoubleSize(Boolean bool);

    public abstract void setHandicapOn(Boolean bool);

    public abstract void setIsLarge(Boolean bool);

    public abstract void setIsMedium(Boolean bool);

    public abstract void setIsXl(Boolean bool);

    public abstract void setItem(ItemDetails itemDetails);

    public abstract void setSize(Size size);

    public abstract void setTrippleSize(Boolean bool);

    protected SizeButtonBinding(Object obj, View view, int i, LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3) {
        super(obj, view, i);
        this.button = linearLayout;
        this.itemName = textView;
        this.sizeName = textView2;
        this.sizePrice = textView3;
    }

    public ItemDetails getItem() {
        return this.mItem;
    }

    public Size getSize() {
        return this.mSize;
    }

    public Boolean getIsXl() {
        return this.mIsXl;
    }

    public Boolean getIsLarge() {
        return this.mIsLarge;
    }

    public Boolean getIsMedium() {
        return this.mIsMedium;
    }

    public Boolean getDoubleSize() {
        return this.mDoubleSize;
    }

    public Boolean getTrippleSize() {
        return this.mTrippleSize;
    }

    public Boolean getHandicapOn() {
        return this.mHandicapOn;
    }

    public static SizeButtonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static SizeButtonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (SizeButtonBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.size_button, viewGroup, z, obj);
    }

    public static SizeButtonBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static SizeButtonBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (SizeButtonBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.size_button, null, false, obj);
    }

    public static SizeButtonBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static SizeButtonBinding bind(View view, Object obj) {
        return (SizeButtonBinding) bind(obj, view, R.layout.size_button);
    }
}
