package com.stripe.core.transaction;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TransactionRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\b\u0013\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0006HÆ\u0003J\u0015\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\bHÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0006HÆ\u0003JI\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u00032\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0006HÖ\u0001R\u001d\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\b¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000e¨\u0006\u001e"}, d2 = {"Lcom/stripe/core/transaction/ConfirmRefundParams;", "", "reverseTransfer", "", "refundApplicationFee", "reason", "", "metadata", "", "stripeAccountId", "(ZZLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V", "getMetadata", "()Ljava/util/Map;", "getReason", "()Ljava/lang/String;", "getRefundApplicationFee", "()Z", "getReverseTransfer", "getStripeAccountId", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "", "toString", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class ConfirmRefundParams {
    private final Map<String, String> metadata;
    private final String reason;
    private final boolean refundApplicationFee;
    private final boolean reverseTransfer;
    private final String stripeAccountId;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ConfirmRefundParams copy$default(ConfirmRefundParams confirmRefundParams, boolean z, boolean z2, String str, Map map, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = confirmRefundParams.reverseTransfer;
        }
        if ((i & 2) != 0) {
            z2 = confirmRefundParams.refundApplicationFee;
        }
        if ((i & 4) != 0) {
            str = confirmRefundParams.reason;
        }
        if ((i & 8) != 0) {
            map = confirmRefundParams.metadata;
        }
        if ((i & 16) != 0) {
            str2 = confirmRefundParams.stripeAccountId;
        }
        String str3 = str2;
        String str4 = str;
        return confirmRefundParams.copy(z, z2, str4, map, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getReverseTransfer() {
        return this.reverseTransfer;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getRefundApplicationFee() {
        return this.refundApplicationFee;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getReason() {
        return this.reason;
    }

    public final Map<String, String> component4() {
        return this.metadata;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getStripeAccountId() {
        return this.stripeAccountId;
    }

    public final ConfirmRefundParams copy(boolean reverseTransfer, boolean refundApplicationFee, String reason, Map<String, String> metadata, String stripeAccountId) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        return new ConfirmRefundParams(reverseTransfer, refundApplicationFee, reason, metadata, stripeAccountId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ConfirmRefundParams)) {
            return false;
        }
        ConfirmRefundParams confirmRefundParams = (ConfirmRefundParams) other;
        return this.reverseTransfer == confirmRefundParams.reverseTransfer && this.refundApplicationFee == confirmRefundParams.refundApplicationFee && Intrinsics.areEqual(this.reason, confirmRefundParams.reason) && Intrinsics.areEqual(this.metadata, confirmRefundParams.metadata) && Intrinsics.areEqual(this.stripeAccountId, confirmRefundParams.stripeAccountId);
    }

    public int hashCode() {
        int iHashCode = ((((((Boolean.hashCode(this.reverseTransfer) * 31) + Boolean.hashCode(this.refundApplicationFee)) * 31) + this.reason.hashCode()) * 31) + this.metadata.hashCode()) * 31;
        String str = this.stripeAccountId;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "ConfirmRefundParams(reverseTransfer=" + this.reverseTransfer + ", refundApplicationFee=" + this.refundApplicationFee + ", reason=" + this.reason + ", metadata=" + this.metadata + ", stripeAccountId=" + this.stripeAccountId + ')';
    }

    public ConfirmRefundParams(boolean z, boolean z2, String reason, Map<String, String> metadata, String str) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        this.reverseTransfer = z;
        this.refundApplicationFee = z2;
        this.reason = reason;
        this.metadata = metadata;
        this.stripeAccountId = str;
    }

    public final boolean getReverseTransfer() {
        return this.reverseTransfer;
    }

    public final boolean getRefundApplicationFee() {
        return this.refundApplicationFee;
    }

    public final String getReason() {
        return this.reason;
    }

    public final Map<String, String> getMetadata() {
        return this.metadata;
    }

    public final String getStripeAccountId() {
        return this.stripeAccountId;
    }
}
