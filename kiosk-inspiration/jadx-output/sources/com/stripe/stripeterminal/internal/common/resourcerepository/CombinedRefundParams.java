package com.stripe.stripeterminal.internal.common.resourcerepository;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CombinedRefundParams.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u001b\n\u0002\u0010\b\n\u0002\b\u0002\b\u0080\b\u0018\u00002\u00020\u0001BY\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0014\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u000eJ\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\u0017\u0010\u001f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\tHÆ\u0003J\t\u0010 \u001a\u00020\u000bHÆ\u0003J\t\u0010!\u001a\u00020\u000bHÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003Jm\u0010#\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00032\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010$\u001a\u00020\u000b2\b\u0010%\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010&\u001a\u00020'HÖ\u0001J\t\u0010(\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u001f\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0012R\u0011\u0010\f\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0018R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0012¨\u0006)"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/resourcerepository/CombinedRefundParams;", "", "paymentIntentId", "", "chargeId", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", FirebaseAnalytics.Param.CURRENCY, "metadata", "", "reverseTransfer", "", "refundApplicationFee", "stripeAccountId", "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;ZZLjava/lang/String;)V", "getAmount", "()J", "getChargeId", "()Ljava/lang/String;", "getCurrency", "getMetadata", "()Ljava/util/Map;", "getPaymentIntentId", "getRefundApplicationFee", "()Z", "getReverseTransfer", "getStripeAccountId", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "other", "hashCode", "", "toString", "resourcerepository_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class CombinedRefundParams {
    private final long amount;
    private final String chargeId;
    private final String currency;
    private final Map<String, String> metadata;
    private final String paymentIntentId;
    private final boolean refundApplicationFee;
    private final boolean reverseTransfer;
    private final String stripeAccountId;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CombinedRefundParams copy$default(CombinedRefundParams combinedRefundParams, String str, String str2, long j, String str3, Map map, boolean z, boolean z2, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = combinedRefundParams.paymentIntentId;
        }
        if ((i & 2) != 0) {
            str2 = combinedRefundParams.chargeId;
        }
        if ((i & 4) != 0) {
            j = combinedRefundParams.amount;
        }
        if ((i & 8) != 0) {
            str3 = combinedRefundParams.currency;
        }
        if ((i & 16) != 0) {
            map = combinedRefundParams.metadata;
        }
        if ((i & 32) != 0) {
            z = combinedRefundParams.reverseTransfer;
        }
        if ((i & 64) != 0) {
            z2 = combinedRefundParams.refundApplicationFee;
        }
        if ((i & 128) != 0) {
            str4 = combinedRefundParams.stripeAccountId;
        }
        String str5 = str4;
        boolean z3 = z;
        String str6 = str3;
        long j2 = j;
        return combinedRefundParams.copy(str, str2, j2, str6, map, z3, z2, str5);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getPaymentIntentId() {
        return this.paymentIntentId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getChargeId() {
        return this.chargeId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final long getAmount() {
        return this.amount;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getCurrency() {
        return this.currency;
    }

    public final Map<String, String> component5() {
        return this.metadata;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final boolean getReverseTransfer() {
        return this.reverseTransfer;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final boolean getRefundApplicationFee() {
        return this.refundApplicationFee;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getStripeAccountId() {
        return this.stripeAccountId;
    }

    public final CombinedRefundParams copy(String paymentIntentId, String chargeId, long amount, String currency, Map<String, String> metadata, boolean reverseTransfer, boolean refundApplicationFee, String stripeAccountId) {
        Intrinsics.checkNotNullParameter(currency, "currency");
        return new CombinedRefundParams(paymentIntentId, chargeId, amount, currency, metadata, reverseTransfer, refundApplicationFee, stripeAccountId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CombinedRefundParams)) {
            return false;
        }
        CombinedRefundParams combinedRefundParams = (CombinedRefundParams) other;
        return Intrinsics.areEqual(this.paymentIntentId, combinedRefundParams.paymentIntentId) && Intrinsics.areEqual(this.chargeId, combinedRefundParams.chargeId) && this.amount == combinedRefundParams.amount && Intrinsics.areEqual(this.currency, combinedRefundParams.currency) && Intrinsics.areEqual(this.metadata, combinedRefundParams.metadata) && this.reverseTransfer == combinedRefundParams.reverseTransfer && this.refundApplicationFee == combinedRefundParams.refundApplicationFee && Intrinsics.areEqual(this.stripeAccountId, combinedRefundParams.stripeAccountId);
    }

    public int hashCode() {
        String str = this.paymentIntentId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.chargeId;
        int iHashCode2 = (((((iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31) + Long.hashCode(this.amount)) * 31) + this.currency.hashCode()) * 31;
        Map<String, String> map = this.metadata;
        int iHashCode3 = (((((iHashCode2 + (map == null ? 0 : map.hashCode())) * 31) + Boolean.hashCode(this.reverseTransfer)) * 31) + Boolean.hashCode(this.refundApplicationFee)) * 31;
        String str3 = this.stripeAccountId;
        return iHashCode3 + (str3 != null ? str3.hashCode() : 0);
    }

    public String toString() {
        return "CombinedRefundParams(paymentIntentId=" + this.paymentIntentId + ", chargeId=" + this.chargeId + ", amount=" + this.amount + ", currency=" + this.currency + ", metadata=" + this.metadata + ", reverseTransfer=" + this.reverseTransfer + ", refundApplicationFee=" + this.refundApplicationFee + ", stripeAccountId=" + this.stripeAccountId + ')';
    }

    public CombinedRefundParams(String str, String str2, long j, String currency, Map<String, String> map, boolean z, boolean z2, String str3) {
        Intrinsics.checkNotNullParameter(currency, "currency");
        this.paymentIntentId = str;
        this.chargeId = str2;
        this.amount = j;
        this.currency = currency;
        this.metadata = map;
        this.reverseTransfer = z;
        this.refundApplicationFee = z2;
        this.stripeAccountId = str3;
    }

    public final String getPaymentIntentId() {
        return this.paymentIntentId;
    }

    public final String getChargeId() {
        return this.chargeId;
    }

    public final long getAmount() {
        return this.amount;
    }

    public final String getCurrency() {
        return this.currency;
    }

    public final Map<String, String> getMetadata() {
        return this.metadata;
    }

    public final boolean getReverseTransfer() {
        return this.reverseTransfer;
    }

    public final boolean getRefundApplicationFee() {
        return this.refundApplicationFee;
    }

    public final String getStripeAccountId() {
        return this.stripeAccountId;
    }
}
