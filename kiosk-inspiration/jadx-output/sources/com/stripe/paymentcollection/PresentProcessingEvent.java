package com.stripe.paymentcollection;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import com.stripe.hardware.paymentcollection.TransactionType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionEvents.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0007HÆ\u0003J)\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0007HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/stripe/paymentcollection/PresentProcessingEvent;", "Lcom/stripe/paymentcollection/UserInteractionEvent;", BbposDeviceControllerImpl.TRANSACTION_TYPE_PARAM_NAME, "Lcom/stripe/hardware/paymentcollection/TransactionType;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "language", "", "(Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Ljava/lang/String;)V", "getAmount", "()Lcom/stripe/currency/Amount;", "getLanguage", "()Ljava/lang/String;", "getTransactionType", "()Lcom/stripe/hardware/paymentcollection/TransactionType;", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class PresentProcessingEvent extends UserInteractionEvent {
    private final Amount amount;
    private final String language;
    private final TransactionType transactionType;

    public static /* synthetic */ PresentProcessingEvent copy$default(PresentProcessingEvent presentProcessingEvent, TransactionType transactionType, Amount amount, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            transactionType = presentProcessingEvent.transactionType;
        }
        if ((i & 2) != 0) {
            amount = presentProcessingEvent.amount;
        }
        if ((i & 4) != 0) {
            str = presentProcessingEvent.language;
        }
        return presentProcessingEvent.copy(transactionType, amount, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final TransactionType getTransactionType() {
        return this.transactionType;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Amount getAmount() {
        return this.amount;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getLanguage() {
        return this.language;
    }

    public final PresentProcessingEvent copy(TransactionType transactionType, Amount amount, String language) {
        Intrinsics.checkNotNullParameter(transactionType, "transactionType");
        Intrinsics.checkNotNullParameter(amount, "amount");
        return new PresentProcessingEvent(transactionType, amount, language);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PresentProcessingEvent)) {
            return false;
        }
        PresentProcessingEvent presentProcessingEvent = (PresentProcessingEvent) other;
        return this.transactionType == presentProcessingEvent.transactionType && Intrinsics.areEqual(this.amount, presentProcessingEvent.amount) && Intrinsics.areEqual(this.language, presentProcessingEvent.language);
    }

    public int hashCode() {
        int iHashCode = ((this.transactionType.hashCode() * 31) + this.amount.hashCode()) * 31;
        String str = this.language;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "PresentProcessingEvent(transactionType=" + this.transactionType + ", amount=" + this.amount + ", language=" + this.language + ')';
    }

    public final TransactionType getTransactionType() {
        return this.transactionType;
    }

    public final Amount getAmount() {
        return this.amount;
    }

    public final String getLanguage() {
        return this.language;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PresentProcessingEvent(TransactionType transactionType, Amount amount, String str) {
        super(null);
        Intrinsics.checkNotNullParameter(transactionType, "transactionType");
        Intrinsics.checkNotNullParameter(amount, "amount");
        this.transactionType = transactionType;
        this.amount = amount;
        this.language = str;
    }
}
