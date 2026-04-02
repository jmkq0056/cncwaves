package com.stripe.hardware.paymentcollection;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ManualEntryModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0016\u001a\u00020\tHÆ\u0003J1\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00072\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001e"}, d2 = {"Lcom/stripe/hardware/paymentcollection/CvvModel;", "Lcom/stripe/hardware/paymentcollection/ManualEntryModel;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "asteriskCount", "", "showError", "", BbposDeviceControllerImpl.TRANSACTION_TYPE_PARAM_NAME, "Lcom/stripe/hardware/paymentcollection/TransactionType;", "(Lcom/stripe/currency/Amount;IZLcom/stripe/hardware/paymentcollection/TransactionType;)V", "getAmount", "()Lcom/stripe/currency/Amount;", "getAsteriskCount", "()I", "getShowError", "()Z", "getTransactionType", "()Lcom/stripe/hardware/paymentcollection/TransactionType;", "component1", "component2", "component3", "component4", "copy", "equals", "other", "", "hashCode", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class CvvModel extends ManualEntryModel {
    private final Amount amount;
    private final int asteriskCount;
    private final boolean showError;
    private final TransactionType transactionType;

    public static /* synthetic */ CvvModel copy$default(CvvModel cvvModel, Amount amount, int i, boolean z, TransactionType transactionType, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            amount = cvvModel.amount;
        }
        if ((i2 & 2) != 0) {
            i = cvvModel.asteriskCount;
        }
        if ((i2 & 4) != 0) {
            z = cvvModel.showError;
        }
        if ((i2 & 8) != 0) {
            transactionType = cvvModel.transactionType;
        }
        return cvvModel.copy(amount, i, z, transactionType);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Amount getAmount() {
        return this.amount;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getAsteriskCount() {
        return this.asteriskCount;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getShowError() {
        return this.showError;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final TransactionType getTransactionType() {
        return this.transactionType;
    }

    public final CvvModel copy(Amount amount, int asteriskCount, boolean showError, TransactionType transactionType) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(transactionType, "transactionType");
        return new CvvModel(amount, asteriskCount, showError, transactionType);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CvvModel)) {
            return false;
        }
        CvvModel cvvModel = (CvvModel) other;
        return Intrinsics.areEqual(this.amount, cvvModel.amount) && this.asteriskCount == cvvModel.asteriskCount && this.showError == cvvModel.showError && this.transactionType == cvvModel.transactionType;
    }

    public int hashCode() {
        return (((((this.amount.hashCode() * 31) + Integer.hashCode(this.asteriskCount)) * 31) + Boolean.hashCode(this.showError)) * 31) + this.transactionType.hashCode();
    }

    public String toString() {
        return "CvvModel(amount=" + this.amount + ", asteriskCount=" + this.asteriskCount + ", showError=" + this.showError + ", transactionType=" + this.transactionType + ')';
    }

    public final Amount getAmount() {
        return this.amount;
    }

    public final int getAsteriskCount() {
        return this.asteriskCount;
    }

    public final boolean getShowError() {
        return this.showError;
    }

    public final TransactionType getTransactionType() {
        return this.transactionType;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CvvModel(Amount amount, int i, boolean z, TransactionType transactionType) {
        super(null);
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(transactionType, "transactionType");
        this.amount = amount;
        this.asteriskCount = i;
        this.showError = z;
        this.transactionType = transactionType;
    }
}
