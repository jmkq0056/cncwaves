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

/* JADX INFO: loaded from: classes.dex */
public abstract class ItemIngredientBinding extends ViewDataBinding {
    public final LinearLayout ingredientButton;

    @Bindable
    protected Extra mExtra;

    @Bindable
    protected Boolean mSelected;
    public final ImageButton remove;

    public abstract void setExtra(Extra extra);

    public abstract void setSelected(Boolean bool);

    protected ItemIngredientBinding(Object obj, View view, int i, LinearLayout linearLayout, ImageButton imageButton) {
        super(obj, view, i);
        this.ingredientButton = linearLayout;
        this.remove = imageButton;
    }

    public Extra getExtra() {
        return this.mExtra;
    }

    public Boolean getSelected() {
        return this.mSelected;
    }

    public static ItemIngredientBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemIngredientBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ItemIngredientBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.item_ingredient, viewGroup, z, obj);
    }

    public static ItemIngredientBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemIngredientBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ItemIngredientBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.item_ingredient, null, false, obj);
    }

    public static ItemIngredientBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemIngredientBinding bind(View view, Object obj) {
        return (ItemIngredientBinding) bind(obj, view, R.layout.item_ingredient);
    }
}
