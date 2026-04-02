package com.example.digitalkiosk.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.Space;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.example.digitalkiosk.BindingAdaptersKt;
import com.example.digitalkiosk.R;
import com.example.digitalkiosk.models.KioskSetting;
import com.example.digitalkiosk.models.Translation;
import me.relex.circleindicator.CircleIndicator3;

/* JADX INFO: loaded from: classes.dex */
public class ActivityShopBindingImpl extends ActivityShopBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    private final ImageView mboundView2;
    private final FrameLayout mboundView3;
    private final TextView mboundView4;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.test_mode, 5);
        sparseIntArray.put(R.id.inner_banner, 6);
        sparseIntArray.put(R.id.inner_indicators, 7);
        sparseIntArray.put(R.id.handicap_banner, 8);
        sparseIntArray.put(R.id.handicap_indicators, 9);
        sparseIntArray.put(R.id.categoriesButtons, 10);
        sparseIntArray.put(R.id.subCatButtons, 11);
        sparseIntArray.put(R.id.itemsButtons, 12);
        sparseIntArray.put(R.id.nav_space, 13);
        sparseIntArray.put(R.id.bottom_nav, 14);
        sparseIntArray.put(R.id.expand_cart_icon, 15);
        sparseIntArray.put(R.id.arrow_up, 16);
        sparseIntArray.put(R.id.arrow_down, 17);
        sparseIntArray.put(R.id.expand_cart, 18);
        sparseIntArray.put(R.id.cart_your_order, 19);
        sparseIntArray.put(R.id.order_total, 20);
        sparseIntArray.put(R.id.cart, 21);
        sparseIntArray.put(R.id.back_button, 22);
        sparseIntArray.put(R.id.handicap_button, 23);
        sparseIntArray.put(R.id.voucher_button, 24);
        sparseIntArray.put(R.id.cancel_order, 25);
        sparseIntArray.put(R.id.accept_order, 26);
        sparseIntArray.put(R.id.cart_icon, 27);
    }

    public ActivityShopBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 28, sIncludes, sViewsWithIds));
    }

    private ActivityShopBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (AppCompatButton) objArr[26], (ImageView) objArr[17], (ImageView) objArr[16], (AppCompatButton) objArr[22], (LinearLayout) objArr[14], (AppCompatButton) objArr[25], (RecyclerView) objArr[21], (ImageView) objArr[27], (TextView) objArr[19], (RecyclerView) objArr[10], (LinearLayout) objArr[18], (RelativeLayout) objArr[15], (ViewPager2) objArr[8], (ImageButton) objArr[23], (CircleIndicator3) objArr[9], (LinearLayout) objArr[1], (ViewPager2) objArr[6], (CircleIndicator3) objArr[7], (RecyclerView) objArr[12], (Space) objArr[13], (TextView) objArr[20], (RelativeLayout) objArr[0], (RecyclerView) objArr[11], (LinearLayout) objArr[5], (AppCompatButton) objArr[24]);
        this.mDirtyFlags = -1L;
        this.header.setTag(null);
        ImageView imageView = (ImageView) objArr[2];
        this.mboundView2 = imageView;
        imageView.setTag(null);
        FrameLayout frameLayout = (FrameLayout) objArr[3];
        this.mboundView3 = frameLayout;
        frameLayout.setTag(null);
        TextView textView = (TextView) objArr[4];
        this.mboundView4 = textView;
        textView.setTag(null);
        this.shopRoot.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 8L;
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
        if (28 == i) {
            setItemsTitle((Translation) obj);
            return true;
        }
        if (29 == i) {
            setKiosksetting((KioskSetting) obj);
            return true;
        }
        if (22 != i) {
            return false;
        }
        setHandicapOn((Boolean) obj);
        return true;
    }

    @Override // com.example.digitalkiosk.databinding.ActivityShopBinding
    public void setItemsTitle(Translation translation) {
        this.mItemsTitle = translation;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(28);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.ActivityShopBinding
    public void setKiosksetting(KioskSetting kioskSetting) {
        this.mKiosksetting = kioskSetting;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(29);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.ActivityShopBinding
    public void setHandicapOn(Boolean bool) {
        this.mHandicapOn = bool;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(22);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        boolean z;
        int i;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        Translation translation = this.mItemsTitle;
        KioskSetting kioskSetting = this.mKiosksetting;
        Boolean bool = this.mHandicapOn;
        long j2 = j & 9;
        if (j2 != 0) {
            z = translation != null;
            if (j2 != 0) {
                j = z ? j | 512 : j | 256;
            }
        } else {
            z = false;
        }
        String str = null;
        String app_logo = ((j & 10) == 0 || kioskSetting == null) ? null : kioskSetting.getApp_logo();
        long j3 = j & 12;
        if (j3 != 0) {
            boolean zSafeUnbox = ViewDataBinding.safeUnbox(bool);
            if (j3 != 0) {
                j |= zSafeUnbox ? 160L : 80L;
            }
            int i2 = zSafeUnbox ? 0 : 8;
            i = zSafeUnbox ? 8 : 0;
            i = i2;
        } else {
            i = 0;
        }
        String translation2 = ((j & 512) == 0 || translation == null) ? null : translation.getTranslation();
        long j4 = 9 & j;
        if (j4 != 0) {
            if (!z) {
                translation2 = this.mboundView4.getResources().getString(R.string.most_selling);
            }
            str = translation2;
        }
        String str2 = str;
        if ((j & 12) != 0) {
            this.header.setVisibility(i);
            this.mboundView3.setVisibility(i);
        }
        if ((j & 10) != 0) {
            BindingAdaptersKt.bindImage(this.mboundView2, app_logo);
        }
        if (j4 != 0) {
            TextViewBindingAdapter.setText(this.mboundView4, str2);
        }
    }
}
