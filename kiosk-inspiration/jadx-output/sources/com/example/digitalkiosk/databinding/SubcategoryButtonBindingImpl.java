package com.example.digitalkiosk.databinding;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.databinding.adapters.ViewBindingAdapter;
import com.example.digitalkiosk.R;
import com.example.digitalkiosk.models.Category;

/* JADX INFO: loaded from: classes.dex */
public class SubcategoryButtonBindingImpl extends SubcategoryButtonBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    private long mDirtyFlags;
    private final LinearLayout mboundView0;
    private final TextView mboundView1;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    public SubcategoryButtonBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 2, sIncludes, sViewsWithIds));
    }

    private SubcategoryButtonBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0);
        this.mDirtyFlags = -1L;
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.mboundView0 = linearLayout;
        linearLayout.setTag(null);
        TextView textView = (TextView) objArr[1];
        this.mboundView1 = textView;
        textView.setTag(null);
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
        if (42 == i) {
            setSelectedCategory((Boolean) obj);
            return true;
        }
        if (5 != i) {
            return false;
        }
        setCategory((Category) obj);
        return true;
    }

    @Override // com.example.digitalkiosk.databinding.SubcategoryButtonBinding
    public void setSelectedCategory(Boolean bool) {
        this.mSelectedCategory = bool;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(42);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.SubcategoryButtonBinding
    public void setCategory(Category category) {
        this.mCategory = category;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(5);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        int colorFromResource;
        boolean zSafeUnbox;
        Drawable drawable;
        Context context;
        int i;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        Boolean bool = this.mSelectedCategory;
        Category category = this.mCategory;
        long j2 = j & 5;
        String name = null;
        if (j2 != 0) {
            boolean zSafeUnbox2 = ViewDataBinding.safeUnbox(bool);
            if (j2 != 0) {
                j |= zSafeUnbox2 ? 80L : 40L;
            }
            colorFromResource = getColorFromResource(this.mboundView1, zSafeUnbox2 ? R.color.white : R.color.black);
            boolean z = !zSafeUnbox2;
            if (zSafeUnbox2) {
                context = this.mboundView0.getContext();
                i = R.drawable.subcat_button_selected;
            } else {
                context = this.mboundView0.getContext();
                i = R.drawable.subcat_button;
            }
            drawable = AppCompatResources.getDrawable(context, i);
            zSafeUnbox = ViewDataBinding.safeUnbox(Boolean.valueOf(z));
        } else {
            colorFromResource = 0;
            zSafeUnbox = false;
            drawable = null;
        }
        long j3 = 6 & j;
        if (j3 != 0 && category != null) {
            name = category.getName();
        }
        if ((j & 5) != 0) {
            this.mboundView0.setClickable(zSafeUnbox);
            this.mboundView0.setFocusable(zSafeUnbox);
            ViewBindingAdapter.setBackground(this.mboundView0, drawable);
            this.mboundView1.setTextColor(colorFromResource);
        }
        if (j3 != 0) {
            TextViewBindingAdapter.setText(this.mboundView1, name);
        }
    }
}
