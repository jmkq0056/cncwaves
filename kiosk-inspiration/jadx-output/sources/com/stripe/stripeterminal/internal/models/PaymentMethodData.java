package com.stripe.stripeterminal.internal.models;

import com.stripe.hardware.emv.TlvMap;
import com.stripe.hardware.magstripe.MagStripeReadSuccess;
import com.stripe.proto.api.rest.RequestedPaymentMethod;
import com.stripe.proto.model.rest.PaymentIntentExpandedMethod;
import com.stripe.proto.model.rest.ReaderCollectedData;
import com.stripe.proto.model.sdk.PaymentMethod;
import com.sun.jna.platform.win32.WinUser;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentMethodData.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B{\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012¢\u0006\u0002\u0010\u0013J\u000b\u0010?\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0012HÆ\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\u0005HÂ\u0003J\t\u0010B\u001a\u00020\u0007HÆ\u0003J\u000b\u0010C\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010D\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010F\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u0010G\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010H\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\u007f\u0010I\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÆ\u0001J\u0013\u0010J\u001a\u00020'2\b\u0010K\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010L\u001a\u00020MHÖ\u0001J\t\u0010N\u001a\u00020\u0003HÖ\u0001R\u001e\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u0019¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u001e\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001c\u0010\u0015\u001a\u0004\b\u001d\u0010\u0017R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0013\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u0011\u0010&\u001a\u00020'¢\u0006\b\n\u0000\u001a\u0004\b&\u0010(R\u0011\u0010)\u001a\u00020'¢\u0006\b\n\u0000\u001a\u0004\b)\u0010(R\u001e\u0010*\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b+\u0010\u0015\u001a\u0004\b,\u0010\u0017R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b-\u0010%R\u001e\u0010.\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b/\u0010\u0015\u001a\u0004\b0\u0010\u0017R\u001e\u00101\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b2\u0010\u0015\u001a\u0004\b3\u0010\u0017R\u0011\u00104\u001a\u000205¢\u0006\b\n\u0000\u001a\u0004\b6\u00107R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b8\u00109R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b:\u0010\u0015\u001a\u0004\b;\u0010\u0017R\u001e\u0010<\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b=\u0010\u0015\u001a\u0004\b>\u0010\u0017¨\u0006O"}, d2 = {"Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "", "tlv", "", "magStripeReadResult", "Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;", "swipeReason", "Lcom/stripe/stripeterminal/internal/models/SwipeReason;", "encryptedTrack2", "cryptogram", "ipPaymentMethod", "Lcom/stripe/proto/model/sdk/PaymentMethod;", "ipPaymentIntent", "Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;", "nonCardPaymentMethod", "ipCollectedData", "Lcom/stripe/proto/model/rest/ReaderCollectedData;", "encryptionType", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;", "(Ljava/lang/String;Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/stripeterminal/internal/models/SwipeReason;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/ReaderCollectedData;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;)V", "getCryptogram$annotations", "()V", "getCryptogram", "()Ljava/lang/String;", "decodedTlv", "Lcom/stripe/hardware/emv/TlvMap;", "getDecodedTlv", "()Lcom/stripe/hardware/emv/TlvMap;", "getEncryptedTrack2$annotations", "getEncryptedTrack2", "getEncryptionType", "()Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;", "getIpCollectedData", "()Lcom/stripe/proto/model/rest/ReaderCollectedData;", "getIpPaymentIntent", "()Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;", "getIpPaymentMethod", "()Lcom/stripe/proto/model/sdk/PaymentMethod;", "isInterac", "", "()Z", "isNonCardPaymentMethod", "ksn", "getKsn$annotations", "getKsn", "getNonCardPaymentMethod", "pinBlock", "getPinBlock$annotations", "getPinBlock", "pinBlockKsn", "getPinBlockKsn$annotations", "getPinBlockKsn", "readMethod", "Lcom/stripe/stripeterminal/internal/models/ReadMethod;", "getReadMethod", "()Lcom/stripe/stripeterminal/internal/models/ReadMethod;", "getSwipeReason", "()Lcom/stripe/stripeterminal/internal/models/SwipeReason;", "getTlv$annotations", "getTlv", "track2", "getTrack2$annotations", "getTrack2", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class PaymentMethodData {
    private final String cryptogram;
    private final TlvMap decodedTlv;
    private final String encryptedTrack2;
    private final RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType encryptionType;
    private final ReaderCollectedData ipCollectedData;
    private final PaymentIntentExpandedMethod ipPaymentIntent;
    private final PaymentMethod ipPaymentMethod;
    private final boolean isInterac;
    private final boolean isNonCardPaymentMethod;
    private final String ksn;
    private final MagStripeReadSuccess magStripeReadResult;
    private final PaymentMethod nonCardPaymentMethod;
    private final String pinBlock;
    private final String pinBlockKsn;
    private final /* synthetic */ ReadMethod readMethod;
    private final SwipeReason swipeReason;
    private final String tlv;
    private final String track2;

    public PaymentMethodData() {
        this(null, null, null, null, null, null, null, null, null, null, WinUser.CF_GDIOBJLAST, null);
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    private final MagStripeReadSuccess getMagStripeReadResult() {
        return this.magStripeReadResult;
    }

    public static /* synthetic */ PaymentMethodData copy$default(PaymentMethodData paymentMethodData, String str, MagStripeReadSuccess magStripeReadSuccess, SwipeReason swipeReason, String str2, String str3, PaymentMethod paymentMethod, PaymentIntentExpandedMethod paymentIntentExpandedMethod, PaymentMethod paymentMethod2, ReaderCollectedData readerCollectedData, RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType standardEncryptionType, int i, Object obj) {
        if ((i & 1) != 0) {
            str = paymentMethodData.tlv;
        }
        if ((i & 2) != 0) {
            magStripeReadSuccess = paymentMethodData.magStripeReadResult;
        }
        if ((i & 4) != 0) {
            swipeReason = paymentMethodData.swipeReason;
        }
        if ((i & 8) != 0) {
            str2 = paymentMethodData.encryptedTrack2;
        }
        if ((i & 16) != 0) {
            str3 = paymentMethodData.cryptogram;
        }
        if ((i & 32) != 0) {
            paymentMethod = paymentMethodData.ipPaymentMethod;
        }
        if ((i & 64) != 0) {
            paymentIntentExpandedMethod = paymentMethodData.ipPaymentIntent;
        }
        if ((i & 128) != 0) {
            paymentMethod2 = paymentMethodData.nonCardPaymentMethod;
        }
        if ((i & 256) != 0) {
            readerCollectedData = paymentMethodData.ipCollectedData;
        }
        if ((i & 512) != 0) {
            standardEncryptionType = paymentMethodData.encryptionType;
        }
        ReaderCollectedData readerCollectedData2 = readerCollectedData;
        RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType standardEncryptionType2 = standardEncryptionType;
        PaymentIntentExpandedMethod paymentIntentExpandedMethod2 = paymentIntentExpandedMethod;
        PaymentMethod paymentMethod3 = paymentMethod2;
        String str4 = str3;
        PaymentMethod paymentMethod4 = paymentMethod;
        return paymentMethodData.copy(str, magStripeReadSuccess, swipeReason, str2, str4, paymentMethod4, paymentIntentExpandedMethod2, paymentMethod3, readerCollectedData2, standardEncryptionType2);
    }

    public static /* synthetic */ void getCryptogram$annotations() {
    }

    public static /* synthetic */ void getEncryptedTrack2$annotations() {
    }

    public static /* synthetic */ void getKsn$annotations() {
    }

    public static /* synthetic */ void getPinBlock$annotations() {
    }

    public static /* synthetic */ void getPinBlockKsn$annotations() {
    }

    public static /* synthetic */ void getTlv$annotations() {
    }

    public static /* synthetic */ void getTrack2$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTlv() {
        return this.tlv;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType getEncryptionType() {
        return this.encryptionType;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final SwipeReason getSwipeReason() {
        return this.swipeReason;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getEncryptedTrack2() {
        return this.encryptedTrack2;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getCryptogram() {
        return this.cryptogram;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final PaymentMethod getIpPaymentMethod() {
        return this.ipPaymentMethod;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final PaymentIntentExpandedMethod getIpPaymentIntent() {
        return this.ipPaymentIntent;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final PaymentMethod getNonCardPaymentMethod() {
        return this.nonCardPaymentMethod;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final ReaderCollectedData getIpCollectedData() {
        return this.ipCollectedData;
    }

    public final PaymentMethodData copy(String tlv, MagStripeReadSuccess magStripeReadResult, SwipeReason swipeReason, String encryptedTrack2, String cryptogram, PaymentMethod ipPaymentMethod, PaymentIntentExpandedMethod ipPaymentIntent, PaymentMethod nonCardPaymentMethod, ReaderCollectedData ipCollectedData, RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType encryptionType) {
        Intrinsics.checkNotNullParameter(swipeReason, "swipeReason");
        return new PaymentMethodData(tlv, magStripeReadResult, swipeReason, encryptedTrack2, cryptogram, ipPaymentMethod, ipPaymentIntent, nonCardPaymentMethod, ipCollectedData, encryptionType);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PaymentMethodData)) {
            return false;
        }
        PaymentMethodData paymentMethodData = (PaymentMethodData) other;
        return Intrinsics.areEqual(this.tlv, paymentMethodData.tlv) && Intrinsics.areEqual(this.magStripeReadResult, paymentMethodData.magStripeReadResult) && this.swipeReason == paymentMethodData.swipeReason && Intrinsics.areEqual(this.encryptedTrack2, paymentMethodData.encryptedTrack2) && Intrinsics.areEqual(this.cryptogram, paymentMethodData.cryptogram) && Intrinsics.areEqual(this.ipPaymentMethod, paymentMethodData.ipPaymentMethod) && Intrinsics.areEqual(this.ipPaymentIntent, paymentMethodData.ipPaymentIntent) && Intrinsics.areEqual(this.nonCardPaymentMethod, paymentMethodData.nonCardPaymentMethod) && Intrinsics.areEqual(this.ipCollectedData, paymentMethodData.ipCollectedData) && Intrinsics.areEqual(this.encryptionType, paymentMethodData.encryptionType);
    }

    public int hashCode() {
        String str = this.tlv;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        MagStripeReadSuccess magStripeReadSuccess = this.magStripeReadResult;
        int iHashCode2 = (((iHashCode + (magStripeReadSuccess == null ? 0 : magStripeReadSuccess.hashCode())) * 31) + this.swipeReason.hashCode()) * 31;
        String str2 = this.encryptedTrack2;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.cryptogram;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        PaymentMethod paymentMethod = this.ipPaymentMethod;
        int iHashCode5 = (iHashCode4 + (paymentMethod == null ? 0 : paymentMethod.hashCode())) * 31;
        PaymentIntentExpandedMethod paymentIntentExpandedMethod = this.ipPaymentIntent;
        int iHashCode6 = (iHashCode5 + (paymentIntentExpandedMethod == null ? 0 : paymentIntentExpandedMethod.hashCode())) * 31;
        PaymentMethod paymentMethod2 = this.nonCardPaymentMethod;
        int iHashCode7 = (iHashCode6 + (paymentMethod2 == null ? 0 : paymentMethod2.hashCode())) * 31;
        ReaderCollectedData readerCollectedData = this.ipCollectedData;
        int iHashCode8 = (iHashCode7 + (readerCollectedData == null ? 0 : readerCollectedData.hashCode())) * 31;
        RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType standardEncryptionType = this.encryptionType;
        return iHashCode8 + (standardEncryptionType != null ? standardEncryptionType.hashCode() : 0);
    }

    public String toString() {
        return "PaymentMethodData(tlv=██, magStripeReadResult=" + this.magStripeReadResult + ", swipeReason=" + this.swipeReason + ", encryptedTrack2=██, cryptogram=██, ipPaymentMethod=" + this.ipPaymentMethod + ", ipPaymentIntent=" + this.ipPaymentIntent + ", nonCardPaymentMethod=" + this.nonCardPaymentMethod + ", ipCollectedData=" + this.ipCollectedData + ", encryptionType=" + this.encryptionType + ')';
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x004d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public PaymentMethodData(java.lang.String r2, com.stripe.hardware.magstripe.MagStripeReadSuccess r3, com.stripe.stripeterminal.internal.models.SwipeReason r4, java.lang.String r5, java.lang.String r6, com.stripe.proto.model.sdk.PaymentMethod r7, com.stripe.proto.model.rest.PaymentIntentExpandedMethod r8, com.stripe.proto.model.sdk.PaymentMethod r9, com.stripe.proto.model.rest.ReaderCollectedData r10, com.stripe.proto.api.rest.RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType r11) {
        /*
            r1 = this;
            java.lang.String r0 = "swipeReason"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            r1.<init>()
            r1.tlv = r2
            r1.magStripeReadResult = r3
            r1.swipeReason = r4
            r1.encryptedTrack2 = r5
            r1.cryptogram = r6
            r1.ipPaymentMethod = r7
            r1.ipPaymentIntent = r8
            r1.nonCardPaymentMethod = r9
            r1.ipCollectedData = r10
            r1.encryptionType = r11
            r4 = 0
            if (r2 == 0) goto L24
            com.stripe.hardware.emv.TlvMap r2 = com.stripe.stripeterminal.internal.models.TlvDecoder_androidKt.decodeTlvMap(r2)
            goto L25
        L24:
            r2 = r4
        L25:
            r1.decodedTlv = r2
            if (r2 == 0) goto L4d
            java.lang.String r5 = "9F39"
            java.lang.String r5 = r2.get(r5)
            if (r5 == 0) goto L39
            com.stripe.stripeterminal.internal.models.ReadMethod$Companion r6 = com.stripe.stripeterminal.internal.models.ReadMethod.INSTANCE
            com.stripe.stripeterminal.internal.models.ReadMethod r5 = r6.fromPosEntryMode$public_release(r5)
            if (r5 != 0) goto L42
        L39:
            r5 = r1
            com.stripe.stripeterminal.internal.models.PaymentMethodData r5 = (com.stripe.stripeterminal.internal.models.PaymentMethodData) r5
            java.lang.String r5 = r1.cryptogram
            if (r5 == 0) goto L45
            com.stripe.stripeterminal.internal.models.ReadMethod r5 = com.stripe.stripeterminal.internal.models.ReadMethod.CONTACTLESS_EMV
        L42:
            if (r5 != 0) goto L4f
            goto L4d
        L45:
            java.lang.RuntimeException r2 = new java.lang.RuntimeException
            java.lang.String r3 = "Failed to parse reader method from TLV data"
            r2.<init>(r3)
            throw r2
        L4d:
            com.stripe.stripeterminal.internal.models.ReadMethod r5 = com.stripe.stripeterminal.internal.models.ReadMethod.MAGNETIC_STRIPE_TRACK_2
        L4f:
            r1.readMethod = r5
            if (r3 == 0) goto L58
            java.lang.String r5 = r3.getEncryptedTrack2()
            goto L59
        L58:
            r5 = r4
        L59:
            r1.track2 = r5
            if (r3 == 0) goto L62
            java.lang.String r5 = r3.getKsn()
            goto L63
        L62:
            r5 = r4
        L63:
            r1.ksn = r5
            if (r3 == 0) goto L6c
            java.lang.String r5 = r3.getEpb()
            goto L6d
        L6c:
            r5 = r4
        L6d:
            r1.pinBlock = r5
            if (r3 == 0) goto L76
            java.lang.String r3 = r3.getEpbKsn()
            goto L77
        L76:
            r3 = r4
        L77:
            r1.pinBlockKsn = r3
            if (r2 == 0) goto L7f
            com.stripe.hardware.emv.ApplicationId r4 = r2.getApplicationId()
        L7f:
            com.stripe.hardware.emv.ApplicationId r2 = com.stripe.hardware.emv.ApplicationId.INTERAC
            r3 = 1
            r5 = 0
            if (r4 != r2) goto L87
            r2 = r3
            goto L88
        L87:
            r2 = r5
        L88:
            r1.isInterac = r2
            if (r9 == 0) goto L8d
            goto L8e
        L8d:
            r3 = r5
        L8e:
            r1.isNonCardPaymentMethod = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.models.PaymentMethodData.<init>(java.lang.String, com.stripe.hardware.magstripe.MagStripeReadSuccess, com.stripe.stripeterminal.internal.models.SwipeReason, java.lang.String, java.lang.String, com.stripe.proto.model.sdk.PaymentMethod, com.stripe.proto.model.rest.PaymentIntentExpandedMethod, com.stripe.proto.model.sdk.PaymentMethod, com.stripe.proto.model.rest.ReaderCollectedData, com.stripe.proto.api.rest.RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType):void");
    }

    public final String getTlv() {
        return this.tlv;
    }

    public /* synthetic */ PaymentMethodData(String str, MagStripeReadSuccess magStripeReadSuccess, SwipeReason swipeReason, String str2, String str3, PaymentMethod paymentMethod, PaymentIntentExpandedMethod paymentIntentExpandedMethod, PaymentMethod paymentMethod2, ReaderCollectedData readerCollectedData, RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType standardEncryptionType, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : magStripeReadSuccess, (i & 4) != 0 ? SwipeReason.CHIP_ERROR : swipeReason, (i & 8) != 0 ? null : str2, (i & 16) != 0 ? null : str3, (i & 32) != 0 ? null : paymentMethod, (i & 64) != 0 ? null : paymentIntentExpandedMethod, (i & 128) != 0 ? null : paymentMethod2, (i & 256) != 0 ? null : readerCollectedData, (i & 512) != 0 ? null : standardEncryptionType);
    }

    public final SwipeReason getSwipeReason() {
        return this.swipeReason;
    }

    public final String getEncryptedTrack2() {
        return this.encryptedTrack2;
    }

    public final String getCryptogram() {
        return this.cryptogram;
    }

    public final PaymentMethod getIpPaymentMethod() {
        return this.ipPaymentMethod;
    }

    public final PaymentIntentExpandedMethod getIpPaymentIntent() {
        return this.ipPaymentIntent;
    }

    public final PaymentMethod getNonCardPaymentMethod() {
        return this.nonCardPaymentMethod;
    }

    public final ReaderCollectedData getIpCollectedData() {
        return this.ipCollectedData;
    }

    public final RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType getEncryptionType() {
        return this.encryptionType;
    }

    public final TlvMap getDecodedTlv() {
        return this.decodedTlv;
    }

    public final ReadMethod getReadMethod() {
        return this.readMethod;
    }

    public final String getTrack2() {
        return this.track2;
    }

    public final String getKsn() {
        return this.ksn;
    }

    public final String getPinBlock() {
        return this.pinBlock;
    }

    public final String getPinBlockKsn() {
        return this.pinBlockKsn;
    }

    /* JADX INFO: renamed from: isInterac, reason: from getter */
    public final boolean getIsInterac() {
        return this.isInterac;
    }

    /* JADX INFO: renamed from: isNonCardPaymentMethod, reason: from getter */
    public final boolean getIsNonCardPaymentMethod() {
        return this.isNonCardPaymentMethod;
    }
}
