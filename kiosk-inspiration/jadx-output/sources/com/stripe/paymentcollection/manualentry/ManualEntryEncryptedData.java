package com.stripe.paymentcollection.manualentry;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ManualEntryCollectionResult.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003¢\u0006\u0002\u0010\tJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003JE\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\"HÖ\u0001J\t\u0010#\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000e\u0010\u000b\u001a\u0004\b\u000f\u0010\rR\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0010\u0010\u000b\u001a\u0004\b\u0011\u0010\rR\u001c\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0012\u0010\u000b\u001a\u0004\b\u0013\u0010\rR\u001c\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0014\u0010\u000b\u001a\u0004\b\u0015\u0010\rR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\r¨\u0006$"}, d2 = {"Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;", "", "encPAN", "", "expiryDate", "encCVV", "maskedPan", "ksn", "posEntryMode", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getEncCVV$annotations", "()V", "getEncCVV", "()Ljava/lang/String;", "getEncPAN$annotations", "getEncPAN", "getExpiryDate$annotations", "getExpiryDate", "getKsn$annotations", "getKsn", "getMaskedPan$annotations", "getMaskedPan", "getPosEntryMode", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class ManualEntryEncryptedData {
    private final String encCVV;
    private final String encPAN;
    private final String expiryDate;
    private final String ksn;
    private final String maskedPan;
    private final String posEntryMode;

    public static /* synthetic */ ManualEntryEncryptedData copy$default(ManualEntryEncryptedData manualEntryEncryptedData, String str, String str2, String str3, String str4, String str5, String str6, int i, Object obj) {
        if ((i & 1) != 0) {
            str = manualEntryEncryptedData.encPAN;
        }
        if ((i & 2) != 0) {
            str2 = manualEntryEncryptedData.expiryDate;
        }
        if ((i & 4) != 0) {
            str3 = manualEntryEncryptedData.encCVV;
        }
        if ((i & 8) != 0) {
            str4 = manualEntryEncryptedData.maskedPan;
        }
        if ((i & 16) != 0) {
            str5 = manualEntryEncryptedData.ksn;
        }
        if ((i & 32) != 0) {
            str6 = manualEntryEncryptedData.posEntryMode;
        }
        String str7 = str5;
        String str8 = str6;
        return manualEntryEncryptedData.copy(str, str2, str3, str4, str7, str8);
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

    public final ManualEntryEncryptedData copy(String encPAN, String expiryDate, String encCVV, String maskedPan, String ksn, String posEntryMode) {
        Intrinsics.checkNotNullParameter(encPAN, "encPAN");
        Intrinsics.checkNotNullParameter(expiryDate, "expiryDate");
        Intrinsics.checkNotNullParameter(encCVV, "encCVV");
        Intrinsics.checkNotNullParameter(maskedPan, "maskedPan");
        Intrinsics.checkNotNullParameter(ksn, "ksn");
        Intrinsics.checkNotNullParameter(posEntryMode, "posEntryMode");
        return new ManualEntryEncryptedData(encPAN, expiryDate, encCVV, maskedPan, ksn, posEntryMode);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ManualEntryEncryptedData)) {
            return false;
        }
        ManualEntryEncryptedData manualEntryEncryptedData = (ManualEntryEncryptedData) other;
        return Intrinsics.areEqual(this.encPAN, manualEntryEncryptedData.encPAN) && Intrinsics.areEqual(this.expiryDate, manualEntryEncryptedData.expiryDate) && Intrinsics.areEqual(this.encCVV, manualEntryEncryptedData.encCVV) && Intrinsics.areEqual(this.maskedPan, manualEntryEncryptedData.maskedPan) && Intrinsics.areEqual(this.ksn, manualEntryEncryptedData.ksn) && Intrinsics.areEqual(this.posEntryMode, manualEntryEncryptedData.posEntryMode);
    }

    public int hashCode() {
        return (((((((((this.encPAN.hashCode() * 31) + this.expiryDate.hashCode()) * 31) + this.encCVV.hashCode()) * 31) + this.maskedPan.hashCode()) * 31) + this.ksn.hashCode()) * 31) + this.posEntryMode.hashCode();
    }

    public String toString() {
        return "ManualEntryEncryptedData(encPAN=██, expiryDate=██, encCVV=██, maskedPan=██, ksn=██, posEntryMode=" + this.posEntryMode + ')';
    }

    public ManualEntryEncryptedData(String encPAN, String expiryDate, String encCVV, String maskedPan, String ksn, String posEntryMode) {
        Intrinsics.checkNotNullParameter(encPAN, "encPAN");
        Intrinsics.checkNotNullParameter(expiryDate, "expiryDate");
        Intrinsics.checkNotNullParameter(encCVV, "encCVV");
        Intrinsics.checkNotNullParameter(maskedPan, "maskedPan");
        Intrinsics.checkNotNullParameter(ksn, "ksn");
        Intrinsics.checkNotNullParameter(posEntryMode, "posEntryMode");
        this.encPAN = encPAN;
        this.expiryDate = expiryDate;
        this.encCVV = encCVV;
        this.maskedPan = maskedPan;
        this.ksn = ksn;
        this.posEntryMode = posEntryMode;
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
}
