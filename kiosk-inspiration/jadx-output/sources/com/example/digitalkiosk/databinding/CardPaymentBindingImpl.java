package com.example.digitalkiosk.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.example.digitalkiosk.BindingAdaptersKt;
import com.example.digitalkiosk.R;
import com.example.digitalkiosk.models.KioskSetting;

/* JADX INFO: loaded from: classes.dex */
public class CardPaymentBindingImpl extends CardPaymentBinding {
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
        sparseIntArray.put(R.id.processing_layout, 4);
        sparseIntArray.put(R.id.pay_amount_text, 5);
        sparseIntArray.put(R.id.follow_instructions_text, 6);
        sparseIntArray.put(R.id.back_button, 7);
        sparseIntArray.put(R.id.failed_layout, 8);
        sparseIntArray.put(R.id.payment_failed_text, 9);
        sparseIntArray.put(R.id.payment_failed_logo, 10);
        sparseIntArray.put(R.id.error_message, 11);
        sparseIntArray.put(R.id.retry, 12);
        sparseIntArray.put(R.id.retry_no, 13);
        sparseIntArray.put(R.id.retry_yes, 14);
        sparseIntArray.put(R.id.back_home, 15);
        sparseIntArray.put(R.id.back_home_button, 16);
    }

    public CardPaymentBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 17, sIncludes, sViewsWithIds));
    }

    private CardPaymentBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[1], (ImageView) objArr[2], (AppCompatButton) objArr[7], (LinearLayout) objArr[15], (AppCompatButton) objArr[16], (TextView) objArr[3], (TextView) objArr[11], (LinearLayout) objArr[8], (TextView) objArr[6], (TextView) objArr[5], (ImageView) objArr[10], (TextView) objArr[9], (LinearLayout) objArr[4], (LinearLayout) objArr[12], (AppCompatButton) objArr[13], (AppCompatButton) objArr[14]);
        this.mDirtyFlags = -1L;
        this.appLogo.setTag(null);
        this.appLogo2.setTag(null);
        this.counterTime.setTag(null);
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
        if (54 == i) {
            setTimerCount((Integer) obj);
            return true;
        }
        if (29 != i) {
            return false;
        }
        setKiosksetting((KioskSetting) obj);
        return true;
    }

    @Override // com.example.digitalkiosk.databinding.CardPaymentBinding
    public void setTimerCount(Integer num) {
        this.mTimerCount = num;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(54);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.CardPaymentBinding
    public void setKiosksetting(KioskSetting kioskSetting) {
        this.mKiosksetting = kioskSetting;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(29);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        Integer num = this.mTimerCount;
        KioskSetting kioskSetting = this.mKiosksetting;
        long j2 = 5 & j;
        String app_logo = null;
        String string = (j2 == 0 || num == null) ? null : num.toString();
        long j3 = j & 6;
        if (j3 != 0 && kioskSetting != null) {
            app_logo = kioskSetting.getApp_logo();
        }
        if (j3 != 0) {
            BindingAdaptersKt.bindImage(this.appLogo, app_logo);
            BindingAdaptersKt.bindImage(this.appLogo2, app_logo);
        }
        if (j2 != 0) {
            TextViewBindingAdapter.setText(this.counterTime, string);
        }
    }
}
