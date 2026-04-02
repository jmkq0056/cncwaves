package com.example.digitalkiosk.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.Space;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.example.digitalkiosk.BindingAdaptersKt;
import com.example.digitalkiosk.R;
import com.example.digitalkiosk.models.KioskSetting;
import com.stripe.jvmcore.batchdispatcher.collectors.QueueFileCollector;
import okhttp3.internal.ws.RealWebSocket;

/* JADX INFO: loaded from: classes.dex */
public class CompleteOrderBindingImpl extends CompleteOrderBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    private final RelativeLayout mboundView0;
    private final LinearLayout mboundView1;
    private final Space mboundView11;
    private final TextView mboundView3;
    private final TextView mboundView4;
    private final LinearLayout mboundView5;
    private final Space mboundView8;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.to_pay, 13);
        sparseIntArray.put(R.id.order_items, 14);
        sparseIntArray.put(R.id.bag, 15);
        sparseIntArray.put(R.id.need_bag, 16);
        sparseIntArray.put(R.id.bag_ordering, 17);
        sparseIntArray.put(R.id.bag_yes, 18);
        sparseIntArray.put(R.id.bag_no, 19);
        sparseIntArray.put(R.id.cashpay, 20);
        sparseIntArray.put(R.id.back_button, 21);
    }

    public CompleteOrderBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 22, sIncludes, sViewsWithIds));
    }

    private CompleteOrderBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[2], (AppCompatButton) objArr[21], (LinearLayout) objArr[15], (RadioButton) objArr[19], (RadioGroup) objArr[17], (RadioButton) objArr[18], (LinearLayout) objArr[7], (LinearLayout) objArr[10], (LinearLayout) objArr[20], (AppCompatButton) objArr[12], (TextView) objArr[16], (RecyclerView) objArr[14], (LinearLayout) objArr[6], (LinearLayout) objArr[9], (TextView) objArr[13]);
        this.mDirtyFlags = -1L;
        this.appLogo.setTag(null);
        this.cardPay.setTag(null);
        this.cashWrap.setTag(null);
        this.confirmButton.setTag(null);
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.mboundView0 = relativeLayout;
        relativeLayout.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[1];
        this.mboundView1 = linearLayout;
        linearLayout.setTag(null);
        Space space = (Space) objArr[11];
        this.mboundView11 = space;
        space.setTag(null);
        TextView textView = (TextView) objArr[3];
        this.mboundView3 = textView;
        textView.setTag(null);
        TextView textView2 = (TextView) objArr[4];
        this.mboundView4 = textView2;
        textView2.setTag(null);
        LinearLayout linearLayout2 = (LinearLayout) objArr[5];
        this.mboundView5 = linearLayout2;
        linearLayout2.setTag(null);
        Space space2 = (Space) objArr[8];
        this.mboundView8 = space2;
        space2.setTag(null);
        this.paymentsWrap.setTag(null);
        this.paypal.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 16L;
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
        if (49 == i) {
            setTab((Integer) obj);
            return true;
        }
        if (48 == i) {
            setSubtitle((String) obj);
            return true;
        }
        if (29 == i) {
            setKiosksetting((KioskSetting) obj);
            return true;
        }
        if (55 != i) {
            return false;
        }
        setTitle((String) obj);
        return true;
    }

    @Override // com.example.digitalkiosk.databinding.CompleteOrderBinding
    public void setTab(Integer num) {
        this.mTab = num;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(49);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.CompleteOrderBinding
    public void setSubtitle(String str) {
        this.mSubtitle = str;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(48);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.CompleteOrderBinding
    public void setKiosksetting(KioskSetting kioskSetting) {
        this.mKiosksetting = kioskSetting;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(29);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.CompleteOrderBinding
    public void setTitle(String str) {
        this.mTitle = str;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(55);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        long j2;
        int i;
        int i2;
        int i3;
        String str;
        long j3;
        boolean paypal_enabled;
        int i4;
        int i5;
        int i6;
        boolean card_enabled;
        String app_logo;
        boolean cash_enabled;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        Integer num = this.mTab;
        String str2 = this.mSubtitle;
        KioskSetting kioskSetting = this.mKiosksetting;
        String str3 = this.mTitle;
        long j4 = j & 17;
        int i7 = 0;
        if (j4 != 0) {
            int iSafeUnbox = ViewDataBinding.safeUnbox(num);
            boolean z = iSafeUnbox == 1;
            j2 = 0;
            boolean z2 = iSafeUnbox == 2;
            boolean z3 = iSafeUnbox == 0;
            if (j4 != 0) {
                j |= z ? 256L : 128L;
            }
            if ((j & 17) != 0) {
                j |= z2 ? RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE : 512L;
            }
            if ((j & 17) != 0) {
                j |= z3 ? 64L : 32L;
            }
            i = z ? 0 : 8;
            i2 = z2 ? 0 : 8;
            i3 = z3 ? 8 : 0;
        } else {
            j2 = 0;
            i = 0;
            i2 = 0;
            i3 = 0;
        }
        long j5 = j & 20;
        if (j5 != j2) {
            if (kioskSetting != null) {
                cash_enabled = kioskSetting.getCash_enabled();
                app_logo = kioskSetting.getApp_logo();
                card_enabled = kioskSetting.getCard_enabled();
                paypal_enabled = kioskSetting.getPaypal_enabled();
            } else {
                paypal_enabled = false;
                card_enabled = false;
                app_logo = null;
                cash_enabled = false;
            }
            if (j5 != j2) {
                j |= cash_enabled ? 262144L : 131072L;
            }
            if ((j & 20) != j2) {
                j |= card_enabled ? 4096L : 2048L;
            }
            if ((j & 20) != j2) {
                j |= paypal_enabled ? 81920L : 40960L;
            }
            i5 = cash_enabled ? 0 : 8;
            int i8 = card_enabled ? 0 : 8;
            i6 = paypal_enabled ? 0 : 8;
            i4 = i8;
            str = app_logo;
            j3 = 17;
        } else {
            str = null;
            j3 = 17;
            paypal_enabled = false;
            i4 = 0;
            i5 = 0;
            i6 = 0;
            card_enabled = false;
        }
        long j6 = j & 20;
        if (j6 != j2) {
            if (!paypal_enabled) {
                card_enabled = false;
            }
            if (j6 != j2) {
                j |= card_enabled ? QueueFileCollector.Configuration.DEFAULT_MAX_ENTRY_BYTES : 524288L;
            }
            i7 = card_enabled ? 0 : 8;
        }
        if ((20 & j) != j2) {
            BindingAdaptersKt.bindImage(this.appLogo, str);
            this.cardPay.setVisibility(i4);
            this.cashWrap.setVisibility(i5);
            this.mboundView8.setVisibility(i7);
            this.paypal.setVisibility(i6);
        }
        if ((j & j3) != j2) {
            this.confirmButton.setVisibility(i);
            this.mboundView1.setVisibility(i3);
            this.mboundView11.setVisibility(i);
            this.mboundView5.setVisibility(i);
            this.paymentsWrap.setVisibility(i2);
        }
        if ((24 & j) != j2) {
            TextViewBindingAdapter.setText(this.mboundView3, str3);
        }
        if ((j & 18) != j2) {
            TextViewBindingAdapter.setText(this.mboundView4, str2);
        }
    }
}
