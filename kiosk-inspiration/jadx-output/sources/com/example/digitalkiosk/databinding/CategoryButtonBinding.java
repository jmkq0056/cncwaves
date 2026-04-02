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
import com.example.digitalkiosk.models.Category;

/* JADX INFO: loaded from: classes.dex */
public abstract class CategoryButtonBinding extends ViewDataBinding {
    public final LinearLayout button;
    public final TextView categoryName;

    @Bindable
    protected Category mCategory;

    @Bindable
    protected Boolean mHandicapOn;

    @Bindable
    protected Boolean mSelectedCategory;

    public abstract void setCategory(Category category);

    public abstract void setHandicapOn(Boolean bool);

    public abstract void setSelectedCategory(Boolean bool);

    protected CategoryButtonBinding(Object obj, View view, int i, LinearLayout linearLayout, TextView textView) {
        super(obj, view, i);
        this.button = linearLayout;
        this.categoryName = textView;
    }

    public Category getCategory() {
        return this.mCategory;
    }

    public Boolean getSelectedCategory() {
        return this.mSelectedCategory;
    }

    public Boolean getHandicapOn() {
        return this.mHandicapOn;
    }

    public static CategoryButtonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static CategoryButtonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (CategoryButtonBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.category_button, viewGroup, z, obj);
    }

    public static CategoryButtonBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static CategoryButtonBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (CategoryButtonBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.category_button, null, false, obj);
    }

    public static CategoryButtonBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static CategoryButtonBinding bind(View view, Object obj) {
        return (CategoryButtonBinding) bind(obj, view, R.layout.category_button);
    }
}
