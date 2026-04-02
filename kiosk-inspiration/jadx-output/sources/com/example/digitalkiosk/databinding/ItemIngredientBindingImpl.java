package com.example.digitalkiosk.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.example.digitalkiosk.BindingAdaptersKt;
import com.example.digitalkiosk.R;
import com.example.digitalkiosk.models.Extra;

/* JADX INFO: loaded from: classes.dex */
public class ItemIngredientBindingImpl extends ItemIngredientBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    private final ImageView mboundView1;
    private final ImageView mboundView2;
    private final TextView mboundView3;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.remove, 4);
    }

    public ItemIngredientBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 5, sIncludes, sViewsWithIds));
    }

    private ItemIngredientBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (LinearLayout) objArr[0], (ImageButton) objArr[4]);
        this.mDirtyFlags = -1L;
        this.ingredientButton.setTag(null);
        ImageView imageView = (ImageView) objArr[1];
        this.mboundView1 = imageView;
        imageView.setTag(null);
        ImageView imageView2 = (ImageView) objArr[2];
        this.mboundView2 = imageView2;
        imageView2.setTag(null);
        TextView textView = (TextView) objArr[3];
        this.mboundView3 = textView;
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
        if (19 == i) {
            setExtra((Extra) obj);
            return true;
        }
        if (41 != i) {
            return false;
        }
        setSelected((Boolean) obj);
        return true;
    }

    @Override // com.example.digitalkiosk.databinding.ItemIngredientBinding
    public void setExtra(Extra extra) {
        this.mExtra = extra;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(19);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.ItemIngredientBinding
    public void setSelected(Boolean bool) {
        this.mSelected = bool;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(41);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        String name;
        String image;
        float f;
        int colorFromResource;
        TextView textView;
        int i;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        Extra extra = this.mExtra;
        Boolean bool = this.mSelected;
        if ((j & 5) == 0 || extra == null) {
            name = null;
            image = null;
        } else {
            name = extra.getName();
            image = extra.getImage();
        }
        long j2 = j & 6;
        if (j2 != 0) {
            boolean zSafeUnbox = ViewDataBinding.safeUnbox(bool);
            if (j2 != 0) {
                j |= zSafeUnbox ? 336L : 168L;
            }
            f = zSafeUnbox ? 0.4f : 1.0f;
            i = zSafeUnbox ? 0 : 8;
            if (zSafeUnbox) {
                textView = this.mboundView3;
                i = R.color.red;
            } else {
                textView = this.mboundView3;
                i = R.color.black;
            }
            colorFromResource = getColorFromResource(textView, i);
        } else {
            f = 0.0f;
            colorFromResource = 0;
        }
        if ((6 & j) != 0) {
            if (getBuildSdkInt() >= 11) {
                this.mboundView1.setAlpha(f);
            }
            this.mboundView2.setVisibility(i);
            this.mboundView3.setTextColor(colorFromResource);
        }
        if ((j & 5) != 0) {
            BindingAdaptersKt.bindImage(this.mboundView1, image);
            TextViewBindingAdapter.setText(this.mboundView3, name);
        }
    }
}
