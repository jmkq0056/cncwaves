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

/* JADX INFO: loaded from: classes.dex */
public abstract class TableButtonBinding extends ViewDataBinding {
    public final LinearLayout button;

    @Bindable
    protected Boolean mSelected;
    public final TextView tableNumber;

    public abstract void setSelected(Boolean bool);

    protected TableButtonBinding(Object obj, View view, int i, LinearLayout linearLayout, TextView textView) {
        super(obj, view, i);
        this.button = linearLayout;
        this.tableNumber = textView;
    }

    public Boolean getSelected() {
        return this.mSelected;
    }

    public static TableButtonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static TableButtonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (TableButtonBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.table_button, viewGroup, z, obj);
    }

    public static TableButtonBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static TableButtonBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (TableButtonBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.table_button, null, false, obj);
    }

    public static TableButtonBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static TableButtonBinding bind(View view, Object obj) {
        return (TableButtonBinding) bind(obj, view, R.layout.table_button);
    }
}
