package com.stripe.hardware.paymentcollection;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ManualEntryModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0018\u001a\u00020\tHÆ\u0003J3\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u00072\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cHÖ\u0003J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001J\t\u0010\u001f\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006 "}, d2 = {"Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;", "Lcom/stripe/hardware/paymentcollection/ManualEntryModel;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "enteredExpiryDate", "", "showError", "", BbposDeviceControllerImpl.TRANSACTION_TYPE_PARAM_NAME, "Lcom/stripe/hardware/paymentcollection/TransactionType;", "(Lcom/stripe/currency/Amount;Ljava/lang/String;ZLcom/stripe/hardware/paymentcollection/TransactionType;)V", "getAmount", "()Lcom/stripe/currency/Amount;", "getEnteredExpiryDate$annotations", "()V", "getEnteredExpiryDate", "()Ljava/lang/String;", "getShowError", "()Z", "getTransactionType", "()Lcom/stripe/hardware/paymentcollection/TransactionType;", "component1", "component2", "component3", "component4", "copy", "equals", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class ExpiryDateModel extends ManualEntryModel {
    private final Amount amount;
    private final String enteredExpiryDate;
    private final boolean showError;
    private final TransactionType transactionType;

    public static /* synthetic */ ExpiryDateModel copy$default(ExpiryDateModel expiryDateModel, Amount amount, String str, boolean z, TransactionType transactionType, int i, Object obj) {
        if ((i & 1) != 0) {
            amount = expiryDateModel.amount;
        }
        if ((i & 2) != 0) {
            str = expiryDateModel.enteredExpiryDate;
        }
        if ((i & 4) != 0) {
            z = expiryDateModel.showError;
        }
        if ((i & 8) != 0) {
            transactionType = expiryDateModel.transactionType;
        }
        return expiryDateModel.copy(amount, str, z, transactionType);
    }

    public static /* synthetic */ void getEnteredExpiryDate$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Amount getAmount() {
        return this.amount;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getEnteredExpiryDate() {
        return this.enteredExpiryDate;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getShowError() {
        return this.showError;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final TransactionType getTransactionType() {
        return this.transactionType;
    }

    public final ExpiryDateModel copy(Amount amount, String enteredExpiryDate, boolean showError, TransactionType transactionType) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(transactionType, "transactionType");
        return new ExpiryDateModel(amount, enteredExpiryDate, showError, transactionType);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ExpiryDateModel)) {
            return false;
        }
        ExpiryDateModel expiryDateModel = (ExpiryDateModel) other;
        return Intrinsics.areEqual(this.amount, expiryDateModel.amount) && Intrinsics.areEqual(this.enteredExpiryDate, expiryDateModel.enteredExpiryDate) && this.showError == expiryDateModel.showError && this.transactionType == expiryDateModel.transactionType;
    }

    public int hashCode() {
        int iHashCode = this.amount.hashCode() * 31;
        String str = this.enteredExpiryDate;
        return ((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + Boolean.hashCode(this.showError)) * 31) + this.transactionType.hashCode();
    }

    public String toString() {
        return "ExpiryDateModel(amount=" + this.amount + ", enteredExpiryDate=██, showError=" + this.showError + ", transactionType=" + this.transactionType + ')';
    }

    public final Amount getAmount() {
        return this.amount;
    }

    public final String getEnteredExpiryDate() {
        return this.enteredExpiryDate;
    }

    public final boolean getShowError() {
        return this.showError;
    }

    public final TransactionType getTransactionType() {
        return this.transactionType;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExpiryDateModel(Amount amount, String str, boolean z, TransactionType transactionType) {
        super(null);
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(transactionType, "transactionType");
        this.amount = amount;
        this.enteredExpiryDate = str;
        this.showError = z;
        this.transactionType = transactionType;
    }
}
