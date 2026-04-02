package com.example.digitalkiosk.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.example.digitalkiosk.R;
import com.example.digitalkiosk.models.ItemDetails;
import com.example.digitalkiosk.models.Size;

/* JADX INFO: loaded from: classes.dex */
public class SizeButtonBindingImpl extends SizeButtonBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    private final RelativeLayout mboundView0;
    private final ImageView mboundView1;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.button, 5);
    }

    public SizeButtonBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 6, sIncludes, sViewsWithIds));
    }

    private SizeButtonBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (LinearLayout) objArr[5], (TextView) objArr[3], (TextView) objArr[2], (TextView) objArr[4]);
        this.mDirtyFlags = -1L;
        this.itemName.setTag(null);
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.mboundView0 = relativeLayout;
        relativeLayout.setTag(null);
        ImageView imageView = (ImageView) objArr[1];
        this.mboundView1 = imageView;
        imageView.setTag(null);
        this.sizeName.setTag(null);
        this.sizePrice.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 256L;
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
            setItem((ItemDetails) obj);
            return true;
        }
        if (25 == i) {
            setIsMedium((Boolean) obj);
            return true;
        }
        if (16 == i) {
            setDoubleSize((Boolean) obj);
            return true;
        }
        if (24 == i) {
            setIsLarge((Boolean) obj);
            return true;
        }
        if (56 == i) {
            setTrippleSize((Boolean) obj);
            return true;
        }
        if (26 == i) {
            setIsXl((Boolean) obj);
            return true;
        }
        if (22 == i) {
            setHandicapOn((Boolean) obj);
            return true;
        }
        if (45 != i) {
            return false;
        }
        setSize((Size) obj);
        return true;
    }

    @Override // com.example.digitalkiosk.databinding.SizeButtonBinding
    public void setItem(ItemDetails itemDetails) {
        this.mItem = itemDetails;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(27);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.SizeButtonBinding
    public void setIsMedium(Boolean bool) {
        this.mIsMedium = bool;
    }

    @Override // com.example.digitalkiosk.databinding.SizeButtonBinding
    public void setDoubleSize(Boolean bool) {
        this.mDoubleSize = bool;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(16);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.SizeButtonBinding
    public void setIsLarge(Boolean bool) {
        this.mIsLarge = bool;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.SizeButtonBinding
    public void setTrippleSize(Boolean bool) {
        this.mTrippleSize = bool;
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        notifyPropertyChanged(56);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.SizeButtonBinding
    public void setIsXl(Boolean bool) {
        this.mIsXl = bool;
        synchronized (this) {
            this.mDirtyFlags |= 32;
        }
        notifyPropertyChanged(26);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.SizeButtonBinding
    public void setHandicapOn(Boolean bool) {
        this.mHandicapOn = bool;
        synchronized (this) {
            this.mDirtyFlags |= 64;
        }
        notifyPropertyChanged(22);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.SizeButtonBinding
    public void setSize(Size size) {
        this.mSize = size;
        synchronized (this) {
            this.mDirtyFlags |= 128;
        }
        notifyPropertyChanged(45);
        super.requestRebind();
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:116:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0158  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void executeBindings() {
        /*
            Method dump skipped, instruction units count: 412
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.example.digitalkiosk.databinding.SizeButtonBindingImpl.executeBindings():void");
    }
}
