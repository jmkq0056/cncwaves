package com.stripe.hardware.paymentcollection;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TippingSelectionModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0006HÆ\u0003J'\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00062\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0017"}, d2 = {"Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;", "", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "eligibleAmount", "enableCustomerCancellation", "", "(Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Z)V", "getAmount", "()Lcom/stripe/currency/Amount;", "getEligibleAmount", "getEnableCustomerCancellation", "()Z", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class TippingSelectionModel {
    private final Amount amount;
    private final Amount eligibleAmount;
    private final boolean enableCustomerCancellation;

    public static /* synthetic */ TippingSelectionModel copy$default(TippingSelectionModel tippingSelectionModel, Amount amount, Amount amount2, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            amount = tippingSelectionModel.amount;
        }
        if ((i & 2) != 0) {
            amount2 = tippingSelectionModel.eligibleAmount;
        }
        if ((i & 4) != 0) {
            z = tippingSelectionModel.enableCustomerCancellation;
        }
        return tippingSelectionModel.copy(amount, amount2, z);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Amount getAmount() {
        return this.amount;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Amount getEligibleAmount() {
        return this.eligibleAmount;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getEnableCustomerCancellation() {
        return this.enableCustomerCancellation;
    }

    public final TippingSelectionModel copy(Amount amount, Amount eligibleAmount, boolean enableCustomerCancellation) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(eligibleAmount, "eligibleAmount");
        return new TippingSelectionModel(amount, eligibleAmount, enableCustomerCancellation);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TippingSelectionModel)) {
            return false;
        }
        TippingSelectionModel tippingSelectionModel = (TippingSelectionModel) other;
        return Intrinsics.areEqual(this.amount, tippingSelectionModel.amount) && Intrinsics.areEqual(this.eligibleAmount, tippingSelectionModel.eligibleAmount) && this.enableCustomerCancellation == tippingSelectionModel.enableCustomerCancellation;
    }

    public int hashCode() {
        return (((this.amount.hashCode() * 31) + this.eligibleAmount.hashCode()) * 31) + Boolean.hashCode(this.enableCustomerCancellation);
    }

    public String toString() {
        return "TippingSelectionModel(amount=" + this.amount + ", eligibleAmount=" + this.eligibleAmount + ", enableCustomerCancellation=" + this.enableCustomerCancellation + ')';
    }

    public TippingSelectionModel(Amount amount, Amount eligibleAmount, boolean z) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(eligibleAmount, "eligibleAmount");
        this.amount = amount;
        this.eligibleAmount = eligibleAmount;
        this.enableCustomerCancellation = z;
    }

    public final Amount getAmount() {
        return this.amount;
    }

    public final Amount getEligibleAmount() {
        return this.eligibleAmount;
    }

    public final boolean getEnableCustomerCancellation() {
        return this.enableCustomerCancellation;
    }
}
