package com.example.digitalkiosk.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.example.digitalkiosk.R;

/* JADX INFO: loaded from: classes.dex */
public abstract class InnerBannerBinding extends ViewDataBinding {
    public final RelativeLayout imageContainer;

    @Bindable
    protected String mImage;

    public abstract void setImage(String str);

    protected InnerBannerBinding(Object obj, View view, int i, RelativeLayout relativeLayout) {
        super(obj, view, i);
        this.imageContainer = relativeLayout;
    }

    public String getImage() {
        return this.mImage;
    }

    public static InnerBannerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static InnerBannerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (InnerBannerBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.inner_banner, viewGroup, z, obj);
    }

    public static InnerBannerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static InnerBannerBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (InnerBannerBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.inner_banner, null, false, obj);
    }

    public static InnerBannerBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static InnerBannerBinding bind(View view, Object obj) {
        return (InnerBannerBinding) bind(obj, view, R.layout.inner_banner);
    }
}
