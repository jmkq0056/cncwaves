package com.example.digitalkiosk.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.example.digitalkiosk.R;
import com.example.digitalkiosk.models.KioskSetting;

/* JADX INFO: loaded from: classes.dex */
public abstract class CompleteOrderBinding extends ViewDataBinding {
    public final ImageView appLogo;
    public final AppCompatButton backButton;
    public final LinearLayout bag;
    public final RadioButton bagNo;
    public final RadioGroup bagOrdering;
    public final RadioButton bagYes;
    public final LinearLayout cardPay;
    public final LinearLayout cashWrap;
    public final LinearLayout cashpay;
    public final AppCompatButton confirmButton;

    @Bindable
    protected KioskSetting mKiosksetting;

    @Bindable
    protected String mSubtitle;

    @Bindable
    protected Integer mTab;

    @Bindable
    protected String mTitle;
    public final TextView needBag;
    public final RecyclerView orderItems;
    public final LinearLayout paymentsWrap;
    public final LinearLayout paypal;
    public final TextView toPay;

    public abstract void setKiosksetting(KioskSetting kioskSetting);

    public abstract void setSubtitle(String str);

    public abstract void setTab(Integer num);

    public abstract void setTitle(String str);

    protected CompleteOrderBinding(Object obj, View view, int i, ImageView imageView, AppCompatButton appCompatButton, LinearLayout linearLayout, RadioButton radioButton, RadioGroup radioGroup, RadioButton radioButton2, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, AppCompatButton appCompatButton2, TextView textView, RecyclerView recyclerView, LinearLayout linearLayout5, LinearLayout linearLayout6, TextView textView2) {
        super(obj, view, i);
        this.appLogo = imageView;
        this.backButton = appCompatButton;
        this.bag = linearLayout;
        this.bagNo = radioButton;
        this.bagOrdering = radioGroup;
        this.bagYes = radioButton2;
        this.cardPay = linearLayout2;
        this.cashWrap = linearLayout3;
        this.cashpay = linearLayout4;
        this.confirmButton = appCompatButton2;
        this.needBag = textView;
        this.orderItems = recyclerView;
        this.paymentsWrap = linearLayout5;
        this.paypal = linearLayout6;
        this.toPay = textView2;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public String getSubtitle() {
        return this.mSubtitle;
    }

    public Integer getTab() {
        return this.mTab;
    }

    public KioskSetting getKiosksetting() {
        return this.mKiosksetting;
    }

    public static CompleteOrderBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static CompleteOrderBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (CompleteOrderBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.complete_order, viewGroup, z, obj);
    }

    public static CompleteOrderBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static CompleteOrderBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (CompleteOrderBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.complete_order, null, false, obj);
    }

    public static CompleteOrderBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static CompleteOrderBinding bind(View view, Object obj) {
        return (CompleteOrderBinding) bind(obj, view, R.layout.complete_order);
    }
}
