package com.example.digitalkiosk.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.example.digitalkiosk.R;

/* JADX INFO: loaded from: classes.dex */
public abstract class ItemConfigurationStepBinding extends ViewDataBinding {

    @Bindable
    protected Boolean mActive;

    @Bindable
    protected Boolean mCompleted;

    @Bindable
    protected Boolean mFirst;

    @Bindable
    protected Boolean mLast;

    @Bindable
    protected String mTitle;

    public abstract void setActive(Boolean bool);

    public abstract void setCompleted(Boolean bool);

    public abstract void setFirst(Boolean bool);

    public abstract void setLast(Boolean bool);

    public abstract void setTitle(String str);

    protected ItemConfigurationStepBinding(Object obj, View view, int i) {
        super(obj, view, i);
    }

    public String getTitle() {
        return this.mTitle;
    }

    public Boolean getFirst() {
        return this.mFirst;
    }

    public Boolean getLast() {
        return this.mLast;
    }

    public Boolean getActive() {
        return this.mActive;
    }

    public Boolean getCompleted() {
        return this.mCompleted;
    }

    public static ItemConfigurationStepBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemConfigurationStepBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ItemConfigurationStepBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.item_configuration_step, viewGroup, z, obj);
    }

    public static ItemConfigurationStepBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemConfigurationStepBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ItemConfigurationStepBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.item_configuration_step, null, false, obj);
    }

    public static ItemConfigurationStepBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemConfigurationStepBinding bind(View view, Object obj) {
        return (ItemConfigurationStepBinding) bind(obj, view, R.layout.item_configuration_step);
    }
}
