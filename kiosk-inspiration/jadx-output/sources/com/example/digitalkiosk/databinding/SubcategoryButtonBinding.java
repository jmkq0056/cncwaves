package com.example.digitalkiosk.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.example.digitalkiosk.R;
import com.example.digitalkiosk.models.Category;

/* JADX INFO: loaded from: classes.dex */
public abstract class SubcategoryButtonBinding extends ViewDataBinding {

    @Bindable
    protected Category mCategory;

    @Bindable
    protected Boolean mSelectedCategory;

    public abstract void setCategory(Category category);

    public abstract void setSelectedCategory(Boolean bool);

    protected SubcategoryButtonBinding(Object obj, View view, int i) {
        super(obj, view, i);
    }

    public Category getCategory() {
        return this.mCategory;
    }

    public Boolean getSelectedCategory() {
        return this.mSelectedCategory;
    }

    public static SubcategoryButtonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static SubcategoryButtonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (SubcategoryButtonBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.subcategory_button, viewGroup, z, obj);
    }

    public static SubcategoryButtonBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static SubcategoryButtonBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (SubcategoryButtonBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.subcategory_button, null, false, obj);
    }

    public static SubcategoryButtonBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static SubcategoryButtonBinding bind(View view, Object obj) {
        return (SubcategoryButtonBinding) bind(obj, view, R.layout.subcategory_button);
    }
}
