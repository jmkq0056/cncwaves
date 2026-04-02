package com.example.digitalkiosk.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.example.digitalkiosk.BindingAdaptersKt;
import com.example.digitalkiosk.R;
import com.example.digitalkiosk.models.Language;
import com.google.android.material.imageview.ShapeableImageView;

/* JADX INFO: loaded from: classes.dex */
public class LanguageButtonBindingImpl extends LanguageButtonBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    private final RelativeLayout mboundView0;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.button, 2);
    }

    public LanguageButtonBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 3, sIncludes, sViewsWithIds));
    }

    private LanguageButtonBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (RelativeLayout) objArr[2], (ShapeableImageView) objArr[1]);
        this.mDirtyFlags = -1L;
        this.image.setTag(null);
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.mboundView0 = relativeLayout;
        relativeLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 4L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.mDirtyFlags != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, Object obj) {
        if (30 == i) {
            setLanguage((Language) obj);
            return true;
        }
        if (35 != i) {
            return false;
        }
        setOpacity((Float) obj);
        return true;
    }

    @Override // com.example.digitalkiosk.databinding.LanguageButtonBinding
    public void setLanguage(Language language) {
        this.mLanguage = language;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(30);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.LanguageButtonBinding
    public void setOpacity(Float f) {
        this.mOpacity = f;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(35);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        Language language = this.mLanguage;
        Float f = this.mOpacity;
        long j2 = 5 & j;
        String logo = (j2 == 0 || language == null) ? null : language.getLogo();
        long j3 = j & 6;
        float fSafeUnbox = j3 != 0 ? ViewDataBinding.safeUnbox(f) : 0.0f;
        if (j2 != 0) {
            BindingAdaptersKt.bindImage(this.image, logo);
        }
        if (j3 == 0 || getBuildSdkInt() < 11) {
            return;
        }
        this.image.setAlpha(fSafeUnbox);
    }
}
