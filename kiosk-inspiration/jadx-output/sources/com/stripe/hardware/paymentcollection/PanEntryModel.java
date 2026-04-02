package com.stripe.hardware.paymentcollection;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ManualEntryModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001c\u001a\u00020\tHÆ\u0003J\t\u0010\u001d\u001a\u00020\u000bHÆ\u0003J=\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000bHÆ\u0001J\u0013\u0010\u001f\u001a\u00020\t2\b\u0010 \u001a\u0004\u0018\u00010!HÖ\u0003J\t\u0010\"\u001a\u00020\u0007HÖ\u0001J\t\u0010#\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006$"}, d2 = {"Lcom/stripe/hardware/paymentcollection/PanEntryModel;", "Lcom/stripe/hardware/paymentcollection/ManualEntryModel;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "unmaskedDigits", "", "asteriskCount", "", "showError", "", BbposDeviceControllerImpl.TRANSACTION_TYPE_PARAM_NAME, "Lcom/stripe/hardware/paymentcollection/TransactionType;", "(Lcom/stripe/currency/Amount;Ljava/lang/String;IZLcom/stripe/hardware/paymentcollection/TransactionType;)V", "getAmount", "()Lcom/stripe/currency/Amount;", "getAsteriskCount", "()I", "getShowError", "()Z", "getTransactionType", "()Lcom/stripe/hardware/paymentcollection/TransactionType;", "getUnmaskedDigits$annotations", "()V", "getUnmaskedDigits", "()Ljava/lang/String;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "", "hashCode", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class PanEntryModel extends ManualEntryModel {
    private final Amount amount;
    private final int asteriskCount;
    private final boolean showError;
    private final TransactionType transactionType;
    private final String unmaskedDigits;

    public static /* synthetic */ PanEntryModel copy$default(PanEntryModel panEntryModel, Amount amount, String str, int i, boolean z, TransactionType transactionType, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            amount = panEntryModel.amount;
        }
        if ((i2 & 2) != 0) {
            str = panEntryModel.unmaskedDigits;
        }
        if ((i2 & 4) != 0) {
            i = panEntryModel.asteriskCount;
        }
        if ((i2 & 8) != 0) {
            z = panEntryModel.showError;
        }
        if ((i2 & 16) != 0) {
            transactionType = panEntryModel.transactionType;
        }
        TransactionType transactionType2 = transactionType;
        int i3 = i;
        return panEntryModel.copy(amount, str, i3, z, transactionType2);
    }

    public static /* synthetic */ void getUnmaskedDigits$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Amount getAmount() {
        return this.amount;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getUnmaskedDigits() {
        return this.unmaskedDigits;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getAsteriskCount() {
        return this.asteriskCount;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getShowError() {
        return this.showError;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final TransactionType getTransactionType() {
        return this.transactionType;
    }

    public final PanEntryModel copy(Amount amount, String unmaskedDigits, int asteriskCount, boolean showError, TransactionType transactionType) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(transactionType, "transactionType");
        return new PanEntryModel(amount, unmaskedDigits, asteriskCount, showError, transactionType);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PanEntryModel)) {
            return false;
        }
        PanEntryModel panEntryModel = (PanEntryModel) other;
        return Intrinsics.areEqual(this.amount, panEntryModel.amount) && Intrinsics.areEqual(this.unmaskedDigits, panEntryModel.unmaskedDigits) && this.asteriskCount == panEntryModel.asteriskCount && this.showError == panEntryModel.showError && this.transactionType == panEntryModel.transactionType;
    }

    public int hashCode() {
        int iHashCode = this.amount.hashCode() * 31;
        String str = this.unmaskedDigits;
        return ((((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + Integer.hashCode(this.asteriskCount)) * 31) + Boolean.hashCode(this.showError)) * 31) + this.transactionType.hashCode();
    }

    public String toString() {
        return "PanEntryModel(amount=" + this.amount + ", unmaskedDigits=██, asteriskCount=" + this.asteriskCount + ", showError=" + this.showError + ", transactionType=" + this.transactionType + ')';
    }

    public final Amount getAmount() {
        return this.amount;
    }

    public final String getUnmaskedDigits() {
        return this.unmaskedDigits;
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
    public PanEntryModel(Amount amount, String str, int i, boolean z, TransactionType transactionType) {
        super(null);
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(transactionType, "transactionType");
        this.amount = amount;
        this.unmaskedDigits = str;
        this.asteriskCount = i;
        this.showError = z;
        this.transactionType = transactionType;
    }
}
