package com.example.digitalkiosk.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.example.digitalkiosk.R;
import com.example.digitalkiosk.models.Language;
import com.google.android.material.imageview.ShapeableImageView;

/* JADX INFO: loaded from: classes.dex */
public abstract class LanguageButtonBinding extends ViewDataBinding {
    public final RelativeLayout button;
    public final ShapeableImageView image;

    @Bindable
    protected Language mLanguage;

    @Bindable
    protected Float mOpacity;

    public abstract void setLanguage(Language language);

    public abstract void setOpacity(Float f);

    protected LanguageButtonBinding(Object obj, View view, int i, RelativeLayout relativeLayout, ShapeableImageView shapeableImageView) {
        super(obj, view, i);
        this.button = relativeLayout;
        this.image = shapeableImageView;
    }

    public Language getLanguage() {
        return this.mLanguage;
    }

    public Float getOpacity() {
        return this.mOpacity;
    }

    public static LanguageButtonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LanguageButtonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (LanguageButtonBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.language_button, viewGroup, z, obj);
    }

    public static LanguageButtonBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LanguageButtonBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (LanguageButtonBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.language_button, null, false, obj);
    }

    public static LanguageButtonBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LanguageButtonBinding bind(View view, Object obj) {
        return (LanguageButtonBinding) bind(obj, view, R.layout.language_button);
    }
}
