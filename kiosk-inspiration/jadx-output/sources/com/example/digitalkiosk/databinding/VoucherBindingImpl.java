package com.example.digitalkiosk.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.example.digitalkiosk.R;

/* JADX INFO: loaded from: classes.dex */
public class VoucherBindingImpl extends VoucherBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    private final ConstraintLayout mboundView0;
    private final LinearLayout mboundView2;
    private final LinearLayout mboundView30;
    private final LinearLayout mboundView31;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.voucher_code_text, 32);
        sparseIntArray.put(R.id.coupon_applied_text, 33);
        sparseIntArray.put(R.id.remove_coupon, 34);
        sparseIntArray.put(R.id.voucher_key_1, 35);
        sparseIntArray.put(R.id.voucher_key_2, 36);
        sparseIntArray.put(R.id.voucher_key_3, 37);
        sparseIntArray.put(R.id.voucher_key_4, 38);
        sparseIntArray.put(R.id.voucher_key_5, 39);
        sparseIntArray.put(R.id.voucher_key_6, 40);
        sparseIntArray.put(R.id.voucher_key_7, 41);
        sparseIntArray.put(R.id.voucher_key_8, 42);
        sparseIntArray.put(R.id.voucher_key_9, 43);
        sparseIntArray.put(R.id.voucher_key_0, 44);
        sparseIntArray.put(R.id.capslock_button, 45);
        sparseIntArray.put(R.id.backspace_button, 46);
        sparseIntArray.put(R.id.voucher_warning, 47);
        sparseIntArray.put(R.id.warning_select, 48);
        sparseIntArray.put(R.id.cancel_button, 49);
        sparseIntArray.put(R.id.apply_button, 50);
        sparseIntArray.put(R.id.continue_button, 51);
    }

    public VoucherBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 52, sIncludes, sViewsWithIds));
    }

    private VoucherBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (AppCompatButton) objArr[50], (AppCompatButton) objArr[46], (AppCompatButton) objArr[49], (AppCompatButton) objArr[45], (AppCompatButton) objArr[51], (TextView) objArr[33], (AppCompatButton) objArr[34], (TextView) objArr[32], (TextView) objArr[1], (AppCompatButton) objArr[44], (AppCompatButton) objArr[35], (AppCompatButton) objArr[36], (AppCompatButton) objArr[37], (AppCompatButton) objArr[38], (AppCompatButton) objArr[39], (AppCompatButton) objArr[40], (AppCompatButton) objArr[41], (AppCompatButton) objArr[42], (AppCompatButton) objArr[43], (AppCompatButton) objArr[14], (AppCompatButton) objArr[27], (AppCompatButton) objArr[25], (AppCompatButton) objArr[16], (AppCompatButton) objArr[6], (AppCompatButton) objArr[17], (AppCompatButton) objArr[18], (AppCompatButton) objArr[19], (AppCompatButton) objArr[11], (AppCompatButton) objArr[20], (AppCompatButton) objArr[21], (AppCompatButton) objArr[22], (AppCompatButton) objArr[29], (AppCompatButton) objArr[28], (AppCompatButton) objArr[12], (AppCompatButton) objArr[13], (AppCompatButton) objArr[4], (AppCompatButton) objArr[7], (AppCompatButton) objArr[15], (AppCompatButton) objArr[8], (AppCompatButton) objArr[10], (AppCompatButton) objArr[26], (AppCompatButton) objArr[5], (AppCompatButton) objArr[24], (AppCompatButton) objArr[9], (AppCompatButton) objArr[23], (LinearLayout) objArr[3], (RelativeLayout) objArr[47], (TextView) objArr[48]);
        this.mDirtyFlags = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.mboundView0 = constraintLayout;
        constraintLayout.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[2];
        this.mboundView2 = linearLayout;
        linearLayout.setTag(null);
        LinearLayout linearLayout2 = (LinearLayout) objArr[30];
        this.mboundView30 = linearLayout2;
        linearLayout2.setTag(null);
        LinearLayout linearLayout3 = (LinearLayout) objArr[31];
        this.mboundView31 = linearLayout3;
        linearLayout3.setTag(null);
        this.voucherDisplay.setTag(null);
        this.voucherKeyA.setTag(null);
        this.voucherKeyB.setTag(null);
        this.voucherKeyC.setTag(null);
        this.voucherKeyD.setTag(null);
        this.voucherKeyE.setTag(null);
        this.voucherKeyF.setTag(null);
        this.voucherKeyG.setTag(null);
        this.voucherKeyH.setTag(null);
        this.voucherKeyI.setTag(null);
        this.voucherKeyJ.setTag(null);
        this.voucherKeyK.setTag(null);
        this.voucherKeyL.setTag(null);
        this.voucherKeyM.setTag(null);
        this.voucherKeyN.setTag(null);
        this.voucherKeyO.setTag(null);
        this.voucherKeyP.setTag(null);
        this.voucherKeyQ.setTag(null);
        this.voucherKeyR.setTag(null);
        this.voucherKeyS.setTag(null);
        this.voucherKeyT.setTag(null);
        this.voucherKeyU.setTag(null);
        this.voucherKeyV.setTag(null);
        this.voucherKeyW.setTag(null);
        this.voucherKeyX.setTag(null);
        this.voucherKeyY.setTag(null);
        this.voucherKeyZ.setTag(null);
        this.voucherKeyboard.setTag(null);
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
        if (8 == i) {
            setCode((String) obj);
            return true;
        }
        if (57 == i) {
            setVoucherApplied((Boolean) obj);
            return true;
        }
        if (4 != i) {
            return false;
        }
        setCapslock((Boolean) obj);
        return true;
    }

    @Override // com.example.digitalkiosk.databinding.VoucherBinding
    public void setCode(String str) {
        this.mCode = str;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.VoucherBinding
    public void setVoucherApplied(Boolean bool) {
        this.mVoucherApplied = bool;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(57);
        super.requestRebind();
    }

    @Override // com.example.digitalkiosk.databinding.VoucherBinding
    public void setCapslock(Boolean bool) {
        this.mCapslock = bool;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(4);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        int i;
        String str;
        long j2;
        long j3;
        long j4;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        String str13;
        String str14;
        String str15;
        String str16;
        String str17;
        String str18;
        String str19;
        String str20;
        String str21;
        String str22;
        String str23;
        String str24;
        long j5;
        String str25;
        String str26;
        String str27;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        String str28 = this.mCode;
        Boolean bool = this.mVoucherApplied;
        Boolean bool2 = this.mCapslock;
        long j6 = j & 10;
        if (j6 != 0) {
            boolean zSafeUnbox = ViewDataBinding.safeUnbox(bool);
            if (j6 != 0) {
                j |= zSafeUnbox ? 140737488355840L : 70368744177920L;
            }
            int i2 = zSafeUnbox ? 0 : 8;
            i = zSafeUnbox ? 8 : 0;
            i = i2;
        } else {
            i = 0;
        }
        long j7 = j & 12;
        if (j7 != 0) {
            boolean zSafeUnbox2 = ViewDataBinding.safeUnbox(bool2);
            if (j7 != 0) {
                j |= zSafeUnbox2 ? 768473598916208800L : 384236799458104400L;
            }
            str = zSafeUnbox2 ? "E" : "e";
            String str29 = zSafeUnbox2 ? "W" : "w";
            String str30 = zSafeUnbox2 ? "M" : "m";
            String str31 = zSafeUnbox2 ? "T" : "t";
            String str32 = zSafeUnbox2 ? PrinterTextParser.TAGS_ALIGN_CENTER : "c";
            String str33 = zSafeUnbox2 ? "J" : "j";
            String str34 = zSafeUnbox2 ? "G" : "g";
            String str35 = zSafeUnbox2 ? "B" : PrinterTextParser.TAGS_FORMAT_TEXT_BOLD;
            String str36 = zSafeUnbox2 ? "U" : PrinterTextParser.TAGS_FORMAT_TEXT_UNDERLINE;
            String str37 = zSafeUnbox2 ? "P" : "p";
            String str38 = zSafeUnbox2 ? "A" : "a";
            String str39 = zSafeUnbox2 ? "H" : "h";
            String str40 = zSafeUnbox2 ? "O" : "o";
            String str41 = zSafeUnbox2 ? "V" : "v";
            String str42 = zSafeUnbox2 ? "X" : "x";
            str15 = zSafeUnbox2 ? "S" : "s";
            String str43 = zSafeUnbox2 ? "N" : "n";
            String str44 = zSafeUnbox2 ? "I" : "i";
            String str45 = zSafeUnbox2 ? "D" : "d";
            String str46 = zSafeUnbox2 ? "F" : "f";
            String str47 = zSafeUnbox2 ? "Q" : "q";
            String str48 = zSafeUnbox2 ? PrinterTextParser.TAGS_ALIGN_LEFT : "l";
            String str49 = zSafeUnbox2 ? "Z" : "z";
            String str50 = zSafeUnbox2 ? "K" : "k";
            String str51 = zSafeUnbox2 ? PrinterTextParser.TAGS_ALIGN_RIGHT : "r";
            String str52 = str39;
            str11 = zSafeUnbox2 ? "Y" : "y";
            str6 = str52;
            str20 = str41;
            str21 = str42;
            str22 = str47;
            str23 = str49;
            str24 = str51;
            str14 = str31;
            str13 = str36;
            String str53 = str40;
            str12 = str29;
            str9 = str46;
            str19 = str30;
            str10 = str50;
            str5 = str32;
            j3 = 0;
            str4 = str48;
            str7 = str33;
            str8 = str34;
            j4 = 10;
            str25 = str35;
            j5 = 12;
            str26 = str44;
            str17 = str53;
            String str54 = str43;
            str16 = str37;
            str3 = str38;
            j2 = j;
            str2 = str45;
            str18 = str54;
        } else {
            str = null;
            j2 = j;
            j3 = 0;
            j4 = 10;
            str2 = null;
            str3 = null;
            str4 = null;
            str5 = null;
            str6 = null;
            str7 = null;
            str8 = null;
            str9 = null;
            str10 = null;
            str11 = null;
            str12 = null;
            str13 = null;
            str14 = null;
            str15 = null;
            str16 = null;
            str17 = null;
            str18 = null;
            str19 = null;
            str20 = null;
            str21 = null;
            str22 = null;
            str23 = null;
            str24 = null;
            j5 = 12;
            str25 = null;
            str26 = null;
        }
        if ((j2 & j4) != j3) {
            str27 = str4;
            this.mboundView2.setVisibility(i);
            this.mboundView30.setVisibility(i);
            this.mboundView31.setVisibility(i);
            this.voucherKeyboard.setVisibility(i);
        } else {
            str27 = str4;
        }
        if ((j2 & 9) != j3) {
            TextViewBindingAdapter.setText(this.voucherDisplay, str28);
        }
        if ((j2 & j5) != j3) {
            TextViewBindingAdapter.setText(this.voucherKeyA, str3);
            TextViewBindingAdapter.setText(this.voucherKeyB, str25);
            TextViewBindingAdapter.setText(this.voucherKeyC, str5);
            TextViewBindingAdapter.setText(this.voucherKeyD, str2);
            TextViewBindingAdapter.setText(this.voucherKeyE, str);
            TextViewBindingAdapter.setText(this.voucherKeyF, str9);
            TextViewBindingAdapter.setText(this.voucherKeyG, str8);
            TextViewBindingAdapter.setText(this.voucherKeyH, str6);
            TextViewBindingAdapter.setText(this.voucherKeyI, str26);
            TextViewBindingAdapter.setText(this.voucherKeyJ, str7);
            TextViewBindingAdapter.setText(this.voucherKeyK, str10);
            TextViewBindingAdapter.setText(this.voucherKeyL, str27);
            TextViewBindingAdapter.setText(this.voucherKeyM, str19);
            TextViewBindingAdapter.setText(this.voucherKeyN, str18);
            TextViewBindingAdapter.setText(this.voucherKeyO, str17);
            TextViewBindingAdapter.setText(this.voucherKeyP, str16);
            TextViewBindingAdapter.setText(this.voucherKeyQ, str22);
            TextViewBindingAdapter.setText(this.voucherKeyR, str24);
            TextViewBindingAdapter.setText(this.voucherKeyS, str15);
            TextViewBindingAdapter.setText(this.voucherKeyT, str14);
            TextViewBindingAdapter.setText(this.voucherKeyU, str13);
            TextViewBindingAdapter.setText(this.voucherKeyV, str20);
            TextViewBindingAdapter.setText(this.voucherKeyW, str12);
            TextViewBindingAdapter.setText(this.voucherKeyX, str21);
            TextViewBindingAdapter.setText(this.voucherKeyY, str11);
            TextViewBindingAdapter.setText(this.voucherKeyZ, str23);
        }
    }
}
