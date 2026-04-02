package com.stripe.hardware.paymentcollection;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CollectionCompletedModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\fJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001a\u001a\u00020\tHÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u000bHÆ\u0003J=\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bHÆ\u0001J\u0013\u0010\u001d\u001a\u00020\t2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001f\u001a\u00020 HÖ\u0001J\t\u0010!\u001a\u00020\"HÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016¨\u0006#"}, d2 = {"Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;", "", BbposDeviceControllerImpl.TRANSACTION_TYPE_PARAM_NAME, "Lcom/stripe/hardware/paymentcollection/TransactionType;", "result", "Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "skipUiReset", "", "timeoutResultDetails", "Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;", "(Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;)V", "getAmount", "()Lcom/stripe/currency/Amount;", "getResult", "()Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;", "getSkipUiReset", "()Z", "getTimeoutResultDetails", "()Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;", "getTransactionType", "()Lcom/stripe/hardware/paymentcollection/TransactionType;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class CollectionCompletedModel {
    private final Amount amount;
    private final PaymentCollectionResultType result;
    private final boolean skipUiReset;
    private final PaymentCollectionTimeoutResultDetails timeoutResultDetails;
    private final TransactionType transactionType;

    public static /* synthetic */ CollectionCompletedModel copy$default(CollectionCompletedModel collectionCompletedModel, TransactionType transactionType, PaymentCollectionResultType paymentCollectionResultType, Amount amount, boolean z, PaymentCollectionTimeoutResultDetails paymentCollectionTimeoutResultDetails, int i, Object obj) {
        if ((i & 1) != 0) {
            transactionType = collectionCompletedModel.transactionType;
        }
        if ((i & 2) != 0) {
            paymentCollectionResultType = collectionCompletedModel.result;
        }
        if ((i & 4) != 0) {
            amount = collectionCompletedModel.amount;
        }
        if ((i & 8) != 0) {
            z = collectionCompletedModel.skipUiReset;
        }
        if ((i & 16) != 0) {
            paymentCollectionTimeoutResultDetails = collectionCompletedModel.timeoutResultDetails;
        }
        PaymentCollectionTimeoutResultDetails paymentCollectionTimeoutResultDetails2 = paymentCollectionTimeoutResultDetails;
        Amount amount2 = amount;
        return collectionCompletedModel.copy(transactionType, paymentCollectionResultType, amount2, z, paymentCollectionTimeoutResultDetails2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final TransactionType getTransactionType() {
        return this.transactionType;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final PaymentCollectionResultType getResult() {
        return this.result;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Amount getAmount() {
        return this.amount;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getSkipUiReset() {
        return this.skipUiReset;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final PaymentCollectionTimeoutResultDetails getTimeoutResultDetails() {
        return this.timeoutResultDetails;
    }

    public final CollectionCompletedModel copy(TransactionType transactionType, PaymentCollectionResultType result, Amount amount, boolean skipUiReset, PaymentCollectionTimeoutResultDetails timeoutResultDetails) {
        Intrinsics.checkNotNullParameter(transactionType, "transactionType");
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(amount, "amount");
        return new CollectionCompletedModel(transactionType, result, amount, skipUiReset, timeoutResultDetails);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CollectionCompletedModel)) {
            return false;
        }
        CollectionCompletedModel collectionCompletedModel = (CollectionCompletedModel) other;
        return this.transactionType == collectionCompletedModel.transactionType && this.result == collectionCompletedModel.result && Intrinsics.areEqual(this.amount, collectionCompletedModel.amount) && this.skipUiReset == collectionCompletedModel.skipUiReset && this.timeoutResultDetails == collectionCompletedModel.timeoutResultDetails;
    }

    public int hashCode() {
        int iHashCode = ((((((this.transactionType.hashCode() * 31) + this.result.hashCode()) * 31) + this.amount.hashCode()) * 31) + Boolean.hashCode(this.skipUiReset)) * 31;
        PaymentCollectionTimeoutResultDetails paymentCollectionTimeoutResultDetails = this.timeoutResultDetails;
        return iHashCode + (paymentCollectionTimeoutResultDetails == null ? 0 : paymentCollectionTimeoutResultDetails.hashCode());
    }

    public String toString() {
        return "CollectionCompletedModel(transactionType=" + this.transactionType + ", result=" + this.result + ", amount=" + this.amount + ", skipUiReset=" + this.skipUiReset + ", timeoutResultDetails=" + this.timeoutResultDetails + ')';
    }

    public CollectionCompletedModel(TransactionType transactionType, PaymentCollectionResultType result, Amount amount, boolean z, PaymentCollectionTimeoutResultDetails paymentCollectionTimeoutResultDetails) {
        Intrinsics.checkNotNullParameter(transactionType, "transactionType");
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(amount, "amount");
        this.transactionType = transactionType;
        this.result = result;
        this.amount = amount;
        this.skipUiReset = z;
        this.timeoutResultDetails = paymentCollectionTimeoutResultDetails;
    }

    public /* synthetic */ CollectionCompletedModel(TransactionType transactionType, PaymentCollectionResultType paymentCollectionResultType, Amount amount, boolean z, PaymentCollectionTimeoutResultDetails paymentCollectionTimeoutResultDetails, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(transactionType, paymentCollectionResultType, amount, (i & 8) != 0 ? false : z, (i & 16) != 0 ? null : paymentCollectionTimeoutResultDetails);
    }

    public final TransactionType getTransactionType() {
        return this.transactionType;
    }

    public final PaymentCollectionResultType getResult() {
        return this.result;
    }

    public final Amount getAmount() {
        return this.amount;
    }

    public final boolean getSkipUiReset() {
        return this.skipUiReset;
    }

    public final PaymentCollectionTimeoutResultDetails getTimeoutResultDetails() {
        return this.timeoutResultDetails;
    }
}
