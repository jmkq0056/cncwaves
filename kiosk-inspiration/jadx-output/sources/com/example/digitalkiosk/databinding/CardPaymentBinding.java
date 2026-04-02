package com.example.digitalkiosk.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.example.digitalkiosk.R;
import com.example.digitalkiosk.models.KioskSetting;

/* JADX INFO: loaded from: classes.dex */
public abstract class CardPaymentBinding extends ViewDataBinding {
    public final ImageView appLogo;
    public final ImageView appLogo2;
    public final AppCompatButton backButton;
    public final LinearLayout backHome;
    public final AppCompatButton backHomeButton;
    public final TextView counterTime;
    public final TextView errorMessage;
    public final LinearLayout failedLayout;
    public final TextView followInstructionsText;

    @Bindable
    protected KioskSetting mKiosksetting;

    @Bindable
    protected Integer mTimerCount;
    public final TextView payAmountText;
    public final ImageView paymentFailedLogo;
    public final TextView paymentFailedText;
    public final LinearLayout processingLayout;
    public final LinearLayout retry;
    public final AppCompatButton retryNo;
    public final AppCompatButton retryYes;

    public abstract void setKiosksetting(KioskSetting kioskSetting);

    public abstract void setTimerCount(Integer num);

    protected CardPaymentBinding(Object obj, View view, int i, ImageView imageView, ImageView imageView2, AppCompatButton appCompatButton, LinearLayout linearLayout, AppCompatButton appCompatButton2, TextView textView, TextView textView2, LinearLayout linearLayout2, TextView textView3, TextView textView4, ImageView imageView3, TextView textView5, LinearLayout linearLayout3, LinearLayout linearLayout4, AppCompatButton appCompatButton3, AppCompatButton appCompatButton4) {
        super(obj, view, i);
        this.appLogo = imageView;
        this.appLogo2 = imageView2;
        this.backButton = appCompatButton;
        this.backHome = linearLayout;
        this.backHomeButton = appCompatButton2;
        this.counterTime = textView;
        this.errorMessage = textView2;
        this.failedLayout = linearLayout2;
        this.followInstructionsText = textView3;
        this.payAmountText = textView4;
        this.paymentFailedLogo = imageView3;
        this.paymentFailedText = textView5;
        this.processingLayout = linearLayout3;
        this.retry = linearLayout4;
        this.retryNo = appCompatButton3;
        this.retryYes = appCompatButton4;
    }

    public Integer getTimerCount() {
        return this.mTimerCount;
    }

    public KioskSetting getKiosksetting() {
        return this.mKiosksetting;
    }

    public static CardPaymentBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static CardPaymentBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (CardPaymentBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.card_payment, viewGroup, z, obj);
    }

    public static CardPaymentBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static CardPaymentBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (CardPaymentBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.card_payment, null, false, obj);
    }

    public static CardPaymentBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static CardPaymentBinding bind(View view, Object obj) {
        return (CardPaymentBinding) bind(obj, view, R.layout.card_payment);
    }
}
