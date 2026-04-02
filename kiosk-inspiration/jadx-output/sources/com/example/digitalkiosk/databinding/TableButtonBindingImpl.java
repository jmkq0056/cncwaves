package com.example.digitalkiosk.databinding;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.ImageViewBindingAdapter;
import androidx.databinding.adapters.ViewBindingAdapter;
import com.example.digitalkiosk.R;

/* JADX INFO: loaded from: classes.dex */
public class TableButtonBindingImpl extends TableButtonBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    private final ImageView mboundView1;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.table_number, 2);
    }

    public TableButtonBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 3, sIncludes, sViewsWithIds));
    }

    private TableButtonBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (LinearLayout) objArr[0], (TextView) objArr[2]);
        this.mDirtyFlags = -1L;
        this.button.setTag(null);
        ImageView imageView = (ImageView) objArr[1];
        this.mboundView1 = imageView;
        imageView.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 2L;
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
        if (41 != i) {
            return false;
        }
        setSelected((Boolean) obj);
        return true;
    }

    @Override // com.example.digitalkiosk.databinding.TableButtonBinding
    public void setSelected(Boolean bool) {
        this.mSelected = bool;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(41);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        Drawable drawable;
        Drawable drawable2;
        Context context;
        int i;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        Boolean bool = this.mSelected;
        long j2 = j & 3;
        if (j2 != 0) {
            boolean zSafeUnbox = ViewDataBinding.safeUnbox(bool);
            if (j2 != 0) {
                j |= zSafeUnbox ? 40L : 20L;
            }
            drawable = AppCompatResources.getDrawable(this.button.getContext(), zSafeUnbox ? R.drawable.table_button_selected : R.drawable.table_button);
            if (zSafeUnbox) {
                context = this.mboundView1.getContext();
                i = R.drawable.table_symbol_selected;
            } else {
                context = this.mboundView1.getContext();
                i = R.drawable.table_symbol;
            }
            drawable2 = AppCompatResources.getDrawable(context, i);
        } else {
            drawable = null;
            drawable2 = null;
        }
        if ((j & 3) != 0) {
            ViewBindingAdapter.setBackground(this.button, drawable);
            ImageViewBindingAdapter.setImageDrawable(this.mboundView1, drawable2);
        }
    }
}
