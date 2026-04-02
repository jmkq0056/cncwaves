package com.stripe.hardware.paymentcollection;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ManualEntryModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, d2 = {"Lcom/stripe/hardware/paymentcollection/ZipCodeEntryModel;", "Lcom/stripe/hardware/paymentcollection/ManualEntryModel;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", BbposDeviceControllerImpl.TRANSACTION_TYPE_PARAM_NAME, "Lcom/stripe/hardware/paymentcollection/TransactionType;", "(Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;)V", "getAmount", "()Lcom/stripe/currency/Amount;", "getTransactionType", "()Lcom/stripe/hardware/paymentcollection/TransactionType;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class ZipCodeEntryModel extends ManualEntryModel {
    private final Amount amount;
    private final TransactionType transactionType;

    public static /* synthetic */ ZipCodeEntryModel copy$default(ZipCodeEntryModel zipCodeEntryModel, Amount amount, TransactionType transactionType, int i, Object obj) {
        if ((i & 1) != 0) {
            amount = zipCodeEntryModel.amount;
        }
        if ((i & 2) != 0) {
            transactionType = zipCodeEntryModel.transactionType;
        }
        return zipCodeEntryModel.copy(amount, transactionType);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Amount getAmount() {
        return this.amount;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final TransactionType getTransactionType() {
        return this.transactionType;
    }

    public final ZipCodeEntryModel copy(Amount amount, TransactionType transactionType) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(transactionType, "transactionType");
        return new ZipCodeEntryModel(amount, transactionType);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ZipCodeEntryModel)) {
            return false;
        }
        ZipCodeEntryModel zipCodeEntryModel = (ZipCodeEntryModel) other;
        return Intrinsics.areEqual(this.amount, zipCodeEntryModel.amount) && this.transactionType == zipCodeEntryModel.transactionType;
    }

    public int hashCode() {
        return (this.amount.hashCode() * 31) + this.transactionType.hashCode();
    }

    public String toString() {
        return "ZipCodeEntryModel(amount=" + this.amount + ", transactionType=" + this.transactionType + ')';
    }

    public final Amount getAmount() {
        return this.amount;
    }

    public final TransactionType getTransactionType() {
        return this.transactionType;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ZipCodeEntryModel(Amount amount, TransactionType transactionType) {
        super(null);
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(transactionType, "transactionType");
        this.amount = amount;
        this.transactionType = transactionType;
    }
}
