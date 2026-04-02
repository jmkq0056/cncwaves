package com.example.digitalkiosk.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.example.digitalkiosk.models.Item;
import com.example.digitalkiosk.models.Translation;

/* JADX INFO: loaded from: classes.dex */
public class ItemButtonBindingImpl extends ItemButtonBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    private long mDirtyFlags;
    private final LinearLayout mboundView1;
    private final TextView mboundView2;
    private final TextView mboundView3;
    private final TextView mboundView6;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    public ItemButtonBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 7, sIncludes, sViewsWithIds));
    }

    private ItemButtonBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (RelativeLayout) objArr[0], (TextView) objArr[5], (ImageView) objArr[4]);
        this.mDirtyFlags = -1L;
        this.button.setTag(null);
        this.categoryName.setTag(null);
        this.itemImage.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[1];
        this.mboundView1 = linearLayout;
        linearLayout.setTag(null);
        TextView textView = (TextView) objArr[2];
        this.mboundView2 = textView;
        textView.setTag(null);
        TextView textView2 = (TextView) objArr[3];
        this.mboundView3 = textView2;
        textView2.setTag(null);
        TextView textView3 = (TextView) objArr[6];
        this.mboundView6 = textView3;
        textView3.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 64L;
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
        if (27 == i) {
            setItem((Item) obj);
            return true;
        }
        if (2 == i) {
            setAmount((String) obj);
            return true;
        }
        if (11 == i) {
            setCount((Integer) obj);
            return true;
        }
        if (12 == i) {
            setDarkshade((Boolean) obj);
            return true;
        }
        if (41 == i) {
            setSelected((Boolean) obj);
            return true;
        }
        if (47 != i) {
            return false;
        }
        setSoldOutTranslation((Translation) obj);
        return true;
    }

    @Override // com.example.digitalkiosk.databinding.ItemButtonBinding
    public void setItem(Item item) {
        this.mItem = item;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(27);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.ItemButtonBinding
    public void setAmount(String str) {
        this.mAmount = str;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(2);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.ItemButtonBinding
    public void setCount(Integer num) {
        this.mCount = num;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(11);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.ItemButtonBinding
    public void setDarkshade(Boolean bool) {
        this.mDarkshade = bool;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(12);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.ItemButtonBinding
    public void setSelected(Boolean bool) {
        this.mSelected = bool;
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        notifyPropertyChanged(41);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.ItemButtonBinding
    public void setSoldOutTranslation(Translation translation) {
        this.mSoldOutTranslation = translation;
        synchronized (this) {
            this.mDirtyFlags |= 32;
        }
        notifyPropertyChanged(47);
        super.requestRebind();
    }

    /* JADX WARN: Removed duplicated region for block: B:82:0x0122 A[PHI: r2
      0x0122: PHI (r2v6 long) = (r2v5 long), (r2v12 long) binds: [B:72:0x010a, B:81:0x0120] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void executeBindings() {
        /*
            Method dump skipped, instruction units count: 484
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.example.digitalkiosk.databinding.ItemButtonBindingImpl.executeBindings():void");
    }
}
