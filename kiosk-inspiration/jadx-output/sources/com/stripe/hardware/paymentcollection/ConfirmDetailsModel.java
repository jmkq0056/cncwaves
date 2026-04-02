package com.stripe.hardware.paymentcollection;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ManualEntryModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001f\u001a\u00020\u000bHÆ\u0003JE\u0010 \u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u000bHÆ\u0001J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$HÖ\u0003J\t\u0010%\u001a\u00020\u0007HÖ\u0001J\t\u0010&\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001c\u0010\b\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0015\u0010\u0012\u001a\u0004\b\u0016\u0010\u0014R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0011\u0010\t\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0014¨\u0006'"}, d2 = {"Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;", "Lcom/stripe/hardware/paymentcollection/ManualEntryModel;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "maskedPan", "", "cvvAsteriskCount", "", "enteredExpiryDate", "zipCode", BbposDeviceControllerImpl.TRANSACTION_TYPE_PARAM_NAME, "Lcom/stripe/hardware/paymentcollection/TransactionType;", "(Lcom/stripe/currency/Amount;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/stripe/hardware/paymentcollection/TransactionType;)V", "getAmount", "()Lcom/stripe/currency/Amount;", "getCvvAsteriskCount", "()I", "getEnteredExpiryDate$annotations", "()V", "getEnteredExpiryDate", "()Ljava/lang/String;", "getMaskedPan$annotations", "getMaskedPan", "getTransactionType", "()Lcom/stripe/hardware/paymentcollection/TransactionType;", "getZipCode", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "", "hashCode", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class ConfirmDetailsModel extends ManualEntryModel {
    private final Amount amount;
    private final int cvvAsteriskCount;
    private final String enteredExpiryDate;
    private final String maskedPan;
    private final TransactionType transactionType;
    private final String zipCode;

    public static /* synthetic */ ConfirmDetailsModel copy$default(ConfirmDetailsModel confirmDetailsModel, Amount amount, String str, int i, String str2, String str3, TransactionType transactionType, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            amount = confirmDetailsModel.amount;
        }
        if ((i2 & 2) != 0) {
            str = confirmDetailsModel.maskedPan;
        }
        if ((i2 & 4) != 0) {
            i = confirmDetailsModel.cvvAsteriskCount;
        }
        if ((i2 & 8) != 0) {
            str2 = confirmDetailsModel.enteredExpiryDate;
        }
        if ((i2 & 16) != 0) {
            str3 = confirmDetailsModel.zipCode;
        }
        if ((i2 & 32) != 0) {
            transactionType = confirmDetailsModel.transactionType;
        }
        String str4 = str3;
        TransactionType transactionType2 = transactionType;
        return confirmDetailsModel.copy(amount, str, i, str2, str4, transactionType2);
    }

    public static /* synthetic */ void getEnteredExpiryDate$annotations() {
    }

    public static /* synthetic */ void getMaskedPan$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Amount getAmount() {
        return this.amount;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getMaskedPan() {
        return this.maskedPan;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getCvvAsteriskCount() {
        return this.cvvAsteriskCount;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getEnteredExpiryDate() {
        return this.enteredExpiryDate;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getZipCode() {
        return this.zipCode;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final TransactionType getTransactionType() {
        return this.transactionType;
    }

    public final ConfirmDetailsModel copy(Amount amount, String maskedPan, int cvvAsteriskCount, String enteredExpiryDate, String zipCode, TransactionType transactionType) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(maskedPan, "maskedPan");
        Intrinsics.checkNotNullParameter(enteredExpiryDate, "enteredExpiryDate");
        Intrinsics.checkNotNullParameter(zipCode, "zipCode");
        Intrinsics.checkNotNullParameter(transactionType, "transactionType");
        return new ConfirmDetailsModel(amount, maskedPan, cvvAsteriskCount, enteredExpiryDate, zipCode, transactionType);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ConfirmDetailsModel)) {
            return false;
        }
        ConfirmDetailsModel confirmDetailsModel = (ConfirmDetailsModel) other;
        return Intrinsics.areEqual(this.amount, confirmDetailsModel.amount) && Intrinsics.areEqual(this.maskedPan, confirmDetailsModel.maskedPan) && this.cvvAsteriskCount == confirmDetailsModel.cvvAsteriskCount && Intrinsics.areEqual(this.enteredExpiryDate, confirmDetailsModel.enteredExpiryDate) && Intrinsics.areEqual(this.zipCode, confirmDetailsModel.zipCode) && this.transactionType == confirmDetailsModel.transactionType;
    }

    public int hashCode() {
        return (((((((((this.amount.hashCode() * 31) + this.maskedPan.hashCode()) * 31) + Integer.hashCode(this.cvvAsteriskCount)) * 31) + this.enteredExpiryDate.hashCode()) * 31) + this.zipCode.hashCode()) * 31) + this.transactionType.hashCode();
    }

    public String toString() {
        return "ConfirmDetailsModel(amount=" + this.amount + ", maskedPan=██, cvvAsteriskCount=" + this.cvvAsteriskCount + ", enteredExpiryDate=██, zipCode=" + this.zipCode + ", transactionType=" + this.transactionType + ')';
    }

    public final Amount getAmount() {
        return this.amount;
    }

    public final String getMaskedPan() {
        return this.maskedPan;
    }

    public final int getCvvAsteriskCount() {
        return this.cvvAsteriskCount;
    }

    public final String getEnteredExpiryDate() {
        return this.enteredExpiryDate;
    }

    public final String getZipCode() {
        return this.zipCode;
    }

    public final TransactionType getTransactionType() {
        return this.transactionType;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConfirmDetailsModel(Amount amount, String maskedPan, int i, String enteredExpiryDate, String zipCode, TransactionType transactionType) {
        super(null);
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(maskedPan, "maskedPan");
        Intrinsics.checkNotNullParameter(enteredExpiryDate, "enteredExpiryDate");
        Intrinsics.checkNotNullParameter(zipCode, "zipCode");
        Intrinsics.checkNotNullParameter(transactionType, "transactionType");
        this.amount = amount;
        this.maskedPan = maskedPan;
        this.cvvAsteriskCount = i;
        this.enteredExpiryDate = enteredExpiryDate;
        this.zipCode = zipCode;
        this.transactionType = transactionType;
    }
}
