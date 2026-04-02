package com.stripe.transaction.payment;

import com.stripe.proto.model.sdk.CardEntryMethod;
import com.stripe.proto.model.sdk.CardPaymentMethod;
import com.stripe.proto.model.sdk.PaymentMethod;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ManualEntryPayment.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003¢\u0006\u0002\u0010\nJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003JO\u0010 \u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u0003HÆ\u0001J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$HÖ\u0003J\t\u0010%\u001a\u00020&HÖ\u0001J\b\u0010'\u001a\u00020\"H\u0016J\t\u0010(\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000f\u0010\f\u001a\u0004\b\u0010\u0010\u000eR\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0011\u0010\f\u001a\u0004\b\u0012\u0010\u000eR\u001c\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0013\u0010\f\u001a\u0004\b\u0014\u0010\u000eR\u001c\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0015\u0010\f\u001a\u0004\b\u0016\u0010\u000eR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000eR\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u000e¨\u0006)"}, d2 = {"Lcom/stripe/transaction/payment/ManualEntryPayment;", "Lcom/stripe/transaction/payment/Payment;", "encPAN", "", "expiryDate", "encCVV", "maskedPan", "ksn", "posEntryMode", "zipCode", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getEncCVV$annotations", "()V", "getEncCVV", "()Ljava/lang/String;", "getEncPAN$annotations", "getEncPAN", "getExpiryDate$annotations", "getExpiryDate", "getKsn$annotations", "getKsn", "getMaskedPan$annotations", "getMaskedPan", "getPosEntryMode", "getZipCode", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", "other", "", "hashCode", "", "supportsSca", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class ManualEntryPayment extends Payment {
    private final String encCVV;
    private final String encPAN;
    private final String expiryDate;
    private final String ksn;
    private final String maskedPan;
    private final String posEntryMode;
    private final String zipCode;

    public static /* synthetic */ ManualEntryPayment copy$default(ManualEntryPayment manualEntryPayment, String str, String str2, String str3, String str4, String str5, String str6, String str7, int i, Object obj) {
        if ((i & 1) != 0) {
            str = manualEntryPayment.encPAN;
        }
        if ((i & 2) != 0) {
            str2 = manualEntryPayment.expiryDate;
        }
        if ((i & 4) != 0) {
            str3 = manualEntryPayment.encCVV;
        }
        if ((i & 8) != 0) {
            str4 = manualEntryPayment.maskedPan;
        }
        if ((i & 16) != 0) {
            str5 = manualEntryPayment.ksn;
        }
        if ((i & 32) != 0) {
            str6 = manualEntryPayment.posEntryMode;
        }
        if ((i & 64) != 0) {
            str7 = manualEntryPayment.zipCode;
        }
        String str8 = str6;
        String str9 = str7;
        String str10 = str5;
        String str11 = str3;
        return manualEntryPayment.copy(str, str2, str11, str4, str10, str8, str9);
    }

    public static /* synthetic */ void getEncCVV$annotations() {
    }

    public static /* synthetic */ void getEncPAN$annotations() {
    }

    public static /* synthetic */ void getExpiryDate$annotations() {
    }

    public static /* synthetic */ void getKsn$annotations() {
    }

    public static /* synthetic */ void getMaskedPan$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getEncPAN() {
        return this.encPAN;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getExpiryDate() {
        return this.expiryDate;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getEncCVV() {
        return this.encCVV;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getMaskedPan() {
        return this.maskedPan;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getKsn() {
        return this.ksn;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getPosEntryMode() {
        return this.posEntryMode;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getZipCode() {
        return this.zipCode;
    }

    public final ManualEntryPayment copy(String encPAN, String expiryDate, String encCVV, String maskedPan, String ksn, String posEntryMode, String zipCode) {
        Intrinsics.checkNotNullParameter(encPAN, "encPAN");
        Intrinsics.checkNotNullParameter(expiryDate, "expiryDate");
        Intrinsics.checkNotNullParameter(encCVV, "encCVV");
        Intrinsics.checkNotNullParameter(maskedPan, "maskedPan");
        Intrinsics.checkNotNullParameter(ksn, "ksn");
        Intrinsics.checkNotNullParameter(posEntryMode, "posEntryMode");
        Intrinsics.checkNotNullParameter(zipCode, "zipCode");
        return new ManualEntryPayment(encPAN, expiryDate, encCVV, maskedPan, ksn, posEntryMode, zipCode);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ManualEntryPayment)) {
            return false;
        }
        ManualEntryPayment manualEntryPayment = (ManualEntryPayment) other;
        return Intrinsics.areEqual(this.encPAN, manualEntryPayment.encPAN) && Intrinsics.areEqual(this.expiryDate, manualEntryPayment.expiryDate) && Intrinsics.areEqual(this.encCVV, manualEntryPayment.encCVV) && Intrinsics.areEqual(this.maskedPan, manualEntryPayment.maskedPan) && Intrinsics.areEqual(this.ksn, manualEntryPayment.ksn) && Intrinsics.areEqual(this.posEntryMode, manualEntryPayment.posEntryMode) && Intrinsics.areEqual(this.zipCode, manualEntryPayment.zipCode);
    }

    public int hashCode() {
        return (((((((((((this.encPAN.hashCode() * 31) + this.expiryDate.hashCode()) * 31) + this.encCVV.hashCode()) * 31) + this.maskedPan.hashCode()) * 31) + this.ksn.hashCode()) * 31) + this.posEntryMode.hashCode()) * 31) + this.zipCode.hashCode();
    }

    @Override // com.stripe.transaction.payment.Payment
    public boolean supportsSca() {
        return false;
    }

    public String toString() {
        return "ManualEntryPayment(encPAN=██, expiryDate=██, encCVV=██, maskedPan=██, ksn=██, posEntryMode=" + this.posEntryMode + ", zipCode=" + this.zipCode + ')';
    }

    public final String getEncPAN() {
        return this.encPAN;
    }

    public final String getExpiryDate() {
        return this.expiryDate;
    }

    public final String getEncCVV() {
        return this.encCVV;
    }

    public final String getMaskedPan() {
        return this.maskedPan;
    }

    public final String getKsn() {
        return this.ksn;
    }

    public final String getPosEntryMode() {
        return this.posEntryMode;
    }

    public final String getZipCode() {
        return this.zipCode;
    }

    public ManualEntryPayment(String encPAN, String expiryDate, String encCVV, String maskedPan, String ksn, String posEntryMode, String zipCode) {
        Intrinsics.checkNotNullParameter(encPAN, "encPAN");
        Intrinsics.checkNotNullParameter(expiryDate, "expiryDate");
        Intrinsics.checkNotNullParameter(encCVV, "encCVV");
        Intrinsics.checkNotNullParameter(maskedPan, "maskedPan");
        Intrinsics.checkNotNullParameter(ksn, "ksn");
        Intrinsics.checkNotNullParameter(posEntryMode, "posEntryMode");
        Intrinsics.checkNotNullParameter(zipCode, "zipCode");
        this.encPAN = encPAN;
        this.expiryDate = expiryDate;
        this.encCVV = encCVV;
        this.maskedPan = maskedPan;
        this.ksn = ksn;
        this.posEntryMode = posEntryMode;
        this.zipCode = zipCode;
        setSdkSource(new PaymentMethod(new CardPaymentMethod(maskedPan, expiryDate, null, CardEntryMethod.KEYED, null, 20, null), null, null, null, 14, null));
    }
}
