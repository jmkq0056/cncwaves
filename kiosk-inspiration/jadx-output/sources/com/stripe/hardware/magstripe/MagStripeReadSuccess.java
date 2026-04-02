package com.stripe.hardware.magstripe;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MagStripeReadResult.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0012\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BI\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\nJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÀ\u0003¢\u0006\u0002\b\u001eJ\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003JU\u0010!\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\"\u001a\u00020\u00112\b\u0010#\u001a\u0004\u0018\u00010$HÖ\u0003J\t\u0010%\u001a\u00020&HÖ\u0001J\t\u0010'\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\fR\u0011\u0010\u0010\u001a\u00020\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\fR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\fR\u0011\u0010\u0016\u001a\u00020\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0013R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\f¨\u0006("}, d2 = {"Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;", "Lcom/stripe/hardware/magstripe/MagStripeReadResult;", "encryptedTrack2", "", "ksn", "maskedPan", "expiryDate", "serviceCode", "epb", "epbKsn", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getEncryptedTrack2", "()Ljava/lang/String;", "getEpb", "getEpbKsn", "getExpiryDate", "iccCapable", "", "getIccCapable", "()Z", "getKsn", "getMaskedPan", "needMagStripePin", "getNeedMagStripePin", "getServiceCode$public_release", "component1", "component2", "component3", "component4", "component5", "component5$public_release", "component6", "component7", "copy", "equals", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class MagStripeReadSuccess extends MagStripeReadResult {
    private final String encryptedTrack2;
    private final String epb;
    private final String epbKsn;
    private final String expiryDate;
    private final boolean iccCapable;
    private final String ksn;
    private final String maskedPan;
    private final boolean needMagStripePin;
    private final String serviceCode;

    public static /* synthetic */ MagStripeReadSuccess copy$default(MagStripeReadSuccess magStripeReadSuccess, String str, String str2, String str3, String str4, String str5, String str6, String str7, int i, Object obj) {
        if ((i & 1) != 0) {
            str = magStripeReadSuccess.encryptedTrack2;
        }
        if ((i & 2) != 0) {
            str2 = magStripeReadSuccess.ksn;
        }
        if ((i & 4) != 0) {
            str3 = magStripeReadSuccess.maskedPan;
        }
        if ((i & 8) != 0) {
            str4 = magStripeReadSuccess.expiryDate;
        }
        if ((i & 16) != 0) {
            str5 = magStripeReadSuccess.serviceCode;
        }
        if ((i & 32) != 0) {
            str6 = magStripeReadSuccess.epb;
        }
        if ((i & 64) != 0) {
            str7 = magStripeReadSuccess.epbKsn;
        }
        String str8 = str6;
        String str9 = str7;
        String str10 = str5;
        String str11 = str3;
        return magStripeReadSuccess.copy(str, str2, str11, str4, str10, str8, str9);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getEncryptedTrack2() {
        return this.encryptedTrack2;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getKsn() {
        return this.ksn;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getMaskedPan() {
        return this.maskedPan;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getExpiryDate() {
        return this.expiryDate;
    }

    /* JADX INFO: renamed from: component5$public_release, reason: from getter */
    public final String getServiceCode() {
        return this.serviceCode;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getEpb() {
        return this.epb;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getEpbKsn() {
        return this.epbKsn;
    }

    public final MagStripeReadSuccess copy(String encryptedTrack2, String ksn, String maskedPan, String expiryDate, String serviceCode, String epb, String epbKsn) {
        Intrinsics.checkNotNullParameter(encryptedTrack2, "encryptedTrack2");
        Intrinsics.checkNotNullParameter(ksn, "ksn");
        Intrinsics.checkNotNullParameter(maskedPan, "maskedPan");
        Intrinsics.checkNotNullParameter(expiryDate, "expiryDate");
        return new MagStripeReadSuccess(encryptedTrack2, ksn, maskedPan, expiryDate, serviceCode, epb, epbKsn);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MagStripeReadSuccess)) {
            return false;
        }
        MagStripeReadSuccess magStripeReadSuccess = (MagStripeReadSuccess) other;
        return Intrinsics.areEqual(this.encryptedTrack2, magStripeReadSuccess.encryptedTrack2) && Intrinsics.areEqual(this.ksn, magStripeReadSuccess.ksn) && Intrinsics.areEqual(this.maskedPan, magStripeReadSuccess.maskedPan) && Intrinsics.areEqual(this.expiryDate, magStripeReadSuccess.expiryDate) && Intrinsics.areEqual(this.serviceCode, magStripeReadSuccess.serviceCode) && Intrinsics.areEqual(this.epb, magStripeReadSuccess.epb) && Intrinsics.areEqual(this.epbKsn, magStripeReadSuccess.epbKsn);
    }

    public int hashCode() {
        int iHashCode = ((((((this.encryptedTrack2.hashCode() * 31) + this.ksn.hashCode()) * 31) + this.maskedPan.hashCode()) * 31) + this.expiryDate.hashCode()) * 31;
        String str = this.serviceCode;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.epb;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.epbKsn;
        return iHashCode3 + (str3 != null ? str3.hashCode() : 0);
    }

    public String toString() {
        return "MagStripeReadSuccess(██)";
    }

    public /* synthetic */ MagStripeReadSuccess(String str, String str2, String str3, String str4, String str5, String str6, String str7, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, (i & 16) != 0 ? null : str5, (i & 32) != 0 ? null : str6, (i & 64) != 0 ? null : str7);
    }

    public final String getEncryptedTrack2() {
        return this.encryptedTrack2;
    }

    public final String getKsn() {
        return this.ksn;
    }

    public final String getMaskedPan() {
        return this.maskedPan;
    }

    public final String getExpiryDate() {
        return this.expiryDate;
    }

    public final String getServiceCode$public_release() {
        return this.serviceCode;
    }

    public final String getEpb() {
        return this.epb;
    }

    public final String getEpbKsn() {
        return this.epbKsn;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0051  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MagStripeReadSuccess(java.lang.String r2, java.lang.String r3, java.lang.String r4, java.lang.String r5, java.lang.String r6, java.lang.String r7, java.lang.String r8) {
        /*
            r1 = this;
            java.lang.String r0 = "encryptedTrack2"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            java.lang.String r0 = "ksn"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.String r0 = "maskedPan"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            java.lang.String r0 = "expiryDate"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            r0 = 0
            r1.<init>(r0)
            r1.encryptedTrack2 = r2
            r1.ksn = r3
            r1.maskedPan = r4
            r1.expiryDate = r5
            r1.serviceCode = r6
            r1.epb = r7
            r1.epbKsn = r8
            r2 = 2
            r3 = 1
            r4 = 0
            if (r6 == 0) goto L51
            r5 = r6
            java.lang.CharSequence r5 = (java.lang.CharSequence) r5
            int r5 = r5.length()
            if (r5 <= 0) goto L36
            r5 = r6
            goto L37
        L36:
            r5 = r0
        L37:
            if (r5 == 0) goto L51
            java.lang.String[] r7 = new java.lang.String[r2]
            java.lang.String r8 = "2"
            r7[r4] = r8
            java.lang.String r8 = "6"
            r7[r3] = r8
            java.lang.String r5 = r5.substring(r4, r3)
            java.lang.String r8 = "substring(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r8)
            boolean r5 = kotlin.collections.ArraysKt.contains(r7, r5)
            goto L52
        L51:
            r5 = r4
        L52:
            r1.iccCapable = r5
            if (r6 == 0) goto L83
            r5 = r6
            java.lang.CharSequence r5 = (java.lang.CharSequence) r5
            int r5 = r5.length()
            if (r5 <= 0) goto L60
            goto L61
        L60:
            r6 = r0
        L61:
            if (r6 == 0) goto L83
            java.lang.Character[] r2 = new java.lang.Character[r2]
            r5 = 48
            java.lang.Character r5 = java.lang.Character.valueOf(r5)
            r2[r4] = r5
            r4 = 54
            java.lang.Character r4 = java.lang.Character.valueOf(r4)
            r2[r3] = r4
            java.lang.CharSequence r6 = (java.lang.CharSequence) r6
            char r3 = kotlin.text.StringsKt.last(r6)
            java.lang.Character r3 = java.lang.Character.valueOf(r3)
            boolean r4 = kotlin.collections.ArraysKt.contains(r2, r3)
        L83:
            r1.needMagStripePin = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.hardware.magstripe.MagStripeReadSuccess.<init>(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String):void");
    }

    public final boolean getIccCapable() {
        return this.iccCapable;
    }

    public final boolean getNeedMagStripePin() {
        return this.needMagStripePin;
    }
}
