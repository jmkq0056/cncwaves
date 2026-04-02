package com.example.digitalkiosk.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.example.digitalkiosk.R;

/* JADX INFO: loaded from: classes.dex */
public abstract class VoucherBinding extends ViewDataBinding {
    public final AppCompatButton applyButton;
    public final AppCompatButton backspaceButton;
    public final AppCompatButton cancelButton;
    public final AppCompatButton capslockButton;
    public final AppCompatButton continueButton;
    public final TextView couponAppliedText;

    @Bindable
    protected Boolean mCapslock;

    @Bindable
    protected String mCode;

    @Bindable
    protected Boolean mVoucherApplied;
    public final AppCompatButton removeCoupon;
    public final TextView voucherCodeText;
    public final TextView voucherDisplay;
    public final AppCompatButton voucherKey0;
    public final AppCompatButton voucherKey1;
    public final AppCompatButton voucherKey2;
    public final AppCompatButton voucherKey3;
    public final AppCompatButton voucherKey4;
    public final AppCompatButton voucherKey5;
    public final AppCompatButton voucherKey6;
    public final AppCompatButton voucherKey7;
    public final AppCompatButton voucherKey8;
    public final AppCompatButton voucherKey9;
    public final AppCompatButton voucherKeyA;
    public final AppCompatButton voucherKeyB;
    public final AppCompatButton voucherKeyC;
    public final AppCompatButton voucherKeyD;
    public final AppCompatButton voucherKeyE;
    public final AppCompatButton voucherKeyF;
    public final AppCompatButton voucherKeyG;
    public final AppCompatButton voucherKeyH;
    public final AppCompatButton voucherKeyI;
    public final AppCompatButton voucherKeyJ;
    public final AppCompatButton voucherKeyK;
    public final AppCompatButton voucherKeyL;
    public final AppCompatButton voucherKeyM;
    public final AppCompatButton voucherKeyN;
    public final AppCompatButton voucherKeyO;
    public final AppCompatButton voucherKeyP;
    public final AppCompatButton voucherKeyQ;
    public final AppCompatButton voucherKeyR;
    public final AppCompatButton voucherKeyS;
    public final AppCompatButton voucherKeyT;
    public final AppCompatButton voucherKeyU;
    public final AppCompatButton voucherKeyV;
    public final AppCompatButton voucherKeyW;
    public final AppCompatButton voucherKeyX;
    public final AppCompatButton voucherKeyY;
    public final AppCompatButton voucherKeyZ;
    public final LinearLayout voucherKeyboard;
    public final RelativeLayout voucherWarning;
    public final TextView warningSelect;

    public abstract void setCapslock(Boolean bool);

    public abstract void setCode(String str);

    public abstract void setVoucherApplied(Boolean bool);

    protected VoucherBinding(Object obj, View view, int i, AppCompatButton appCompatButton, AppCompatButton appCompatButton2, AppCompatButton appCompatButton3, AppCompatButton appCompatButton4, AppCompatButton appCompatButton5, TextView textView, AppCompatButton appCompatButton6, TextView textView2, TextView textView3, AppCompatButton appCompatButton7, AppCompatButton appCompatButton8, AppCompatButton appCompatButton9, AppCompatButton appCompatButton10, AppCompatButton appCompatButton11, AppCompatButton appCompatButton12, AppCompatButton appCompatButton13, AppCompatButton appCompatButton14, AppCompatButton appCompatButton15, AppCompatButton appCompatButton16, AppCompatButton appCompatButton17, AppCompatButton appCompatButton18, AppCompatButton appCompatButton19, AppCompatButton appCompatButton20, AppCompatButton appCompatButton21, AppCompatButton appCompatButton22, AppCompatButton appCompatButton23, AppCompatButton appCompatButton24, AppCompatButton appCompatButton25, AppCompatButton appCompatButton26, AppCompatButton appCompatButton27, AppCompatButton appCompatButton28, AppCompatButton appCompatButton29, AppCompatButton appCompatButton30, AppCompatButton appCompatButton31, AppCompatButton appCompatButton32, AppCompatButton appCompatButton33, AppCompatButton appCompatButton34, AppCompatButton appCompatButton35, AppCompatButton appCompatButton36, AppCompatButton appCompatButton37, AppCompatButton appCompatButton38, AppCompatButton appCompatButton39, AppCompatButton appCompatButton40, AppCompatButton appCompatButton41, AppCompatButton appCompatButton42, LinearLayout linearLayout, RelativeLayout relativeLayout, TextView textView4) {
        super(obj, view, i);
        this.applyButton = appCompatButton;
        this.backspaceButton = appCompatButton2;
        this.cancelButton = appCompatButton3;
        this.capslockButton = appCompatButton4;
        this.continueButton = appCompatButton5;
        this.couponAppliedText = textView;
        this.removeCoupon = appCompatButton6;
        this.voucherCodeText = textView2;
        this.voucherDisplay = textView3;
        this.voucherKey0 = appCompatButton7;
        this.voucherKey1 = appCompatButton8;
        this.voucherKey2 = appCompatButton9;
        this.voucherKey3 = appCompatButton10;
        this.voucherKey4 = appCompatButton11;
        this.voucherKey5 = appCompatButton12;
        this.voucherKey6 = appCompatButton13;
        this.voucherKey7 = appCompatButton14;
        this.voucherKey8 = appCompatButton15;
        this.voucherKey9 = appCompatButton16;
        this.voucherKeyA = appCompatButton17;
        this.voucherKeyB = appCompatButton18;
        this.voucherKeyC = appCompatButton19;
        this.voucherKeyD = appCompatButton20;
        this.voucherKeyE = appCompatButton21;
        this.voucherKeyF = appCompatButton22;
        this.voucherKeyG = appCompatButton23;
        this.voucherKeyH = appCompatButton24;
        this.voucherKeyI = appCompatButton25;
        this.voucherKeyJ = appCompatButton26;
        this.voucherKeyK = appCompatButton27;
        this.voucherKeyL = appCompatButton28;
        this.voucherKeyM = appCompatButton29;
        this.voucherKeyN = appCompatButton30;
        this.voucherKeyO = appCompatButton31;
        this.voucherKeyP = appCompatButton32;
        this.voucherKeyQ = appCompatButton33;
        this.voucherKeyR = appCompatButton34;
        this.voucherKeyS = appCompatButton35;
        this.voucherKeyT = appCompatButton36;
        this.voucherKeyU = appCompatButton37;
        this.voucherKeyV = appCompatButton38;
        this.voucherKeyW = appCompatButton39;
        this.voucherKeyX = appCompatButton40;
        this.voucherKeyY = appCompatButton41;
        this.voucherKeyZ = appCompatButton42;
        this.voucherKeyboard = linearLayout;
        this.voucherWarning = relativeLayout;
        this.warningSelect = textView4;
    }

    public Boolean getCapslock() {
        return this.mCapslock;
    }

    public String getCode() {
        return this.mCode;
    }

    public Boolean getVoucherApplied() {
        return this.mVoucherApplied;
    }

    public static VoucherBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static VoucherBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (VoucherBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.voucher, viewGroup, z, obj);
    }

    public static VoucherBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static VoucherBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (VoucherBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.voucher, null, false, obj);
    }

    public static VoucherBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static VoucherBinding bind(View view, Object obj) {
        return (VoucherBinding) bind(obj, view, R.layout.voucher);
    }
}
