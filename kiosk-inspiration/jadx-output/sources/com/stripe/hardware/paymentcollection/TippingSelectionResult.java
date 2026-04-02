package com.stripe.hardware.paymentcollection;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import com.stripe.hardware.tipping.TippingSelectionFailureReason;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TippingSelectionType.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0007HÆ\u0003J)\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/stripe/hardware/paymentcollection/TippingSelectionResult;", "", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "tippingType", "Lcom/stripe/hardware/paymentcollection/TippingSelectionType;", "tipSelectionFailure", "Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;", "(Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TippingSelectionType;Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;)V", "getAmount", "()Lcom/stripe/currency/Amount;", "getTipSelectionFailure", "()Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;", "getTippingType", "()Lcom/stripe/hardware/paymentcollection/TippingSelectionType;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class TippingSelectionResult {
    private final Amount amount;
    private final TippingSelectionFailureReason tipSelectionFailure;
    private final TippingSelectionType tippingType;

    public static /* synthetic */ TippingSelectionResult copy$default(TippingSelectionResult tippingSelectionResult, Amount amount, TippingSelectionType tippingSelectionType, TippingSelectionFailureReason tippingSelectionFailureReason, int i, Object obj) {
        if ((i & 1) != 0) {
            amount = tippingSelectionResult.amount;
        }
        if ((i & 2) != 0) {
            tippingSelectionType = tippingSelectionResult.tippingType;
        }
        if ((i & 4) != 0) {
            tippingSelectionFailureReason = tippingSelectionResult.tipSelectionFailure;
        }
        return tippingSelectionResult.copy(amount, tippingSelectionType, tippingSelectionFailureReason);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Amount getAmount() {
        return this.amount;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final TippingSelectionType getTippingType() {
        return this.tippingType;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final TippingSelectionFailureReason getTipSelectionFailure() {
        return this.tipSelectionFailure;
    }

    public final TippingSelectionResult copy(Amount amount, TippingSelectionType tippingType, TippingSelectionFailureReason tipSelectionFailure) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(tippingType, "tippingType");
        return new TippingSelectionResult(amount, tippingType, tipSelectionFailure);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TippingSelectionResult)) {
            return false;
        }
        TippingSelectionResult tippingSelectionResult = (TippingSelectionResult) other;
        return Intrinsics.areEqual(this.amount, tippingSelectionResult.amount) && this.tippingType == tippingSelectionResult.tippingType && this.tipSelectionFailure == tippingSelectionResult.tipSelectionFailure;
    }

    public int hashCode() {
        int iHashCode = ((this.amount.hashCode() * 31) + this.tippingType.hashCode()) * 31;
        TippingSelectionFailureReason tippingSelectionFailureReason = this.tipSelectionFailure;
        return iHashCode + (tippingSelectionFailureReason == null ? 0 : tippingSelectionFailureReason.hashCode());
    }

    public String toString() {
        return "TippingSelectionResult(amount=" + this.amount + ", tippingType=" + this.tippingType + ", tipSelectionFailure=" + this.tipSelectionFailure + ')';
    }

    public TippingSelectionResult(Amount amount, TippingSelectionType tippingType, TippingSelectionFailureReason tippingSelectionFailureReason) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(tippingType, "tippingType");
        this.amount = amount;
        this.tippingType = tippingType;
        this.tipSelectionFailure = tippingSelectionFailureReason;
    }

    public /* synthetic */ TippingSelectionResult(Amount amount, TippingSelectionType tippingSelectionType, TippingSelectionFailureReason tippingSelectionFailureReason, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(amount, tippingSelectionType, (i & 4) != 0 ? null : tippingSelectionFailureReason);
    }

    public final Amount getAmount() {
        return this.amount;
    }

    public final TippingSelectionType getTippingType() {
        return this.tippingType;
    }

    public final TippingSelectionFailureReason getTipSelectionFailure() {
        return this.tipSelectionFailure;
    }
}
