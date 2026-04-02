package com.example.digitalkiosk.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.example.digitalkiosk.BindingAdaptersKt;
import com.example.digitalkiosk.R;
import com.example.digitalkiosk.models.Extra;
import com.example.digitalkiosk.models.Translation;
import okhttp3.internal.ws.RealWebSocket;

/* JADX INFO: loaded from: classes.dex */
public class ItemExtraBindingImpl extends ItemExtraBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    private final RelativeLayout mboundView0;
    private final LinearLayout mboundView1;
    private final TextView mboundView2;
    private final TextView mboundView3;
    private final ImageView mboundView5;
    private final TextView mboundView6;
    private final TextView mboundView7;
    private final TextView mboundView9;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.subtract_extra, 10);
    }

    public ItemExtraBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 11, sIncludes, sViewsWithIds));
    }

    private ItemExtraBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageButton) objArr[8], (LinearLayout) objArr[4], (ImageButton) objArr[10]);
        this.mDirtyFlags = -1L;
        this.addExtra.setTag(null);
        this.fullExtraButton.setTag(null);
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.mboundView0 = relativeLayout;
        relativeLayout.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[1];
        this.mboundView1 = linearLayout;
        linearLayout.setTag(null);
        TextView textView = (TextView) objArr[2];
        this.mboundView2 = textView;
        textView.setTag(null);
        TextView textView2 = (TextView) objArr[3];
        this.mboundView3 = textView2;
        textView2.setTag(null);
        ImageView imageView = (ImageView) objArr[5];
        this.mboundView5 = imageView;
        imageView.setTag(null);
        TextView textView3 = (TextView) objArr[6];
        this.mboundView6 = textView3;
        textView3.setTag(null);
        TextView textView4 = (TextView) objArr[7];
        this.mboundView7 = textView4;
        textView4.setTag(null);
        TextView textView5 = (TextView) objArr[9];
        this.mboundView9 = textView5;
        textView5.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 32L;
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
        if (20 == i) {
            setExtraTerm((Translation) obj);
            return true;
        }
        if (2 == i) {
            setAmount((String) obj);
            return true;
        }
        if (19 == i) {
            setExtra((Extra) obj);
            return true;
        }
        if (38 == i) {
            setQuantity((String) obj);
            return true;
        }
        if (47 != i) {
            return false;
        }
        setSoldOutTranslation((Translation) obj);
        return true;
    }

    @Override // com.example.digitalkiosk.databinding.ItemExtraBinding
    public void setExtraTerm(Translation translation) {
        this.mExtraTerm = translation;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(20);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.ItemExtraBinding
    public void setAmount(String str) {
        this.mAmount = str;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(2);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.ItemExtraBinding
    public void setExtra(Extra extra) {
        this.mExtra = extra;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(19);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.ItemExtraBinding
    public void setQuantity(String str) {
        this.mQuantity = str;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(38);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.ItemExtraBinding
    public void setSoldOutTranslation(Translation translation) {
        this.mSoldOutTranslation = translation;
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        notifyPropertyChanged(47);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        boolean z;
        float f;
        long j2;
        long j3;
        int i;
        boolean z2;
        String str;
        String image;
        boolean sold_out;
        String name;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        Translation translation = this.mExtraTerm;
        String str2 = this.mAmount;
        Extra extra = this.mExtra;
        String str3 = this.mQuantity;
        Translation translation2 = this.mSoldOutTranslation;
        long j4 = j & 33;
        boolean z3 = false;
        if (j4 != 0) {
            z = translation != null;
            if (j4 != 0) {
                j = z ? j | 2048 : j | RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE;
            }
        } else {
            z = false;
        }
        long j5 = j & 36;
        String str4 = null;
        if (j5 != 0) {
            if (extra != null) {
                sold_out = extra.getSold_out();
                name = extra.getName();
                image = extra.getImage();
            } else {
                sold_out = false;
                image = null;
                name = null;
            }
            if (j5 != 0) {
                j |= sold_out ? 8704L : 4352L;
            }
            z2 = !sold_out;
            i = sold_out ? 0 : 8;
            j3 = 33;
            f = sold_out ? 0.6f : 1.0f;
            str = name;
            j2 = 0;
        } else {
            f = 0.0f;
            j2 = 0;
            j3 = 33;
            i = 0;
            z2 = false;
            str = null;
            image = null;
        }
        long j6 = j & 48;
        if (j6 != j2) {
            boolean z4 = translation2 != null;
            if (j6 != j2) {
                j = z4 ? j | 128 : j | 64;
            }
            z3 = z4;
        }
        String translation3 = ((j & 128) == j2 || translation2 == null) ? null : translation2.getTranslation();
        String translation4 = ((2048 & j) == j2 || translation == null) ? null : translation.getTranslation();
        long j7 = j & 48;
        if (j7 == j2) {
            translation3 = null;
        } else if (!z3) {
            translation3 = this.mboundView9.getResources().getString(R.string.sold_out);
        }
        long j8 = j & j3;
        if (j8 != j2) {
            if (!z) {
                translation4 = this.mboundView2.getResources().getString(R.string.extra);
            }
            str4 = translation4;
        }
        String str5 = str4;
        if ((j & 36) != j2) {
            this.addExtra.setClickable(z2);
            this.addExtra.setFocusable(z2);
            this.fullExtraButton.setClickable(z2);
            this.fullExtraButton.setFocusable(z2);
            BindingAdaptersKt.bindImage(this.mboundView5, image);
            TextViewBindingAdapter.setText(this.mboundView6, str);
            this.mboundView9.setVisibility(i);
            if (getBuildSdkInt() >= 11) {
                this.mboundView1.setAlpha(f);
            }
        }
        if (j8 != j2) {
            TextViewBindingAdapter.setText(this.mboundView2, str5);
        }
        if ((34 & j) != j2) {
            TextViewBindingAdapter.setText(this.mboundView3, str2);
        }
        if ((j & 40) != j2) {
            TextViewBindingAdapter.setText(this.mboundView7, str3);
        }
        if (j7 != j2) {
            TextViewBindingAdapter.setText(this.mboundView9, translation3);
        }
    }
}
