package com.stripe.paymentcollection;

import com.stripe.hardware.emv.TransactionResult;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionEvents.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/paymentcollection/TransactionCompletedEvent;", "Lcom/stripe/paymentcollection/HardwareListenerEvent;", "result", "Lcom/stripe/hardware/emv/TransactionResult$Result;", "(Lcom/stripe/hardware/emv/TransactionResult$Result;)V", "getResult", "()Lcom/stripe/hardware/emv/TransactionResult$Result;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class TransactionCompletedEvent extends HardwareListenerEvent {
    private final TransactionResult.Result result;

    public static /* synthetic */ TransactionCompletedEvent copy$default(TransactionCompletedEvent transactionCompletedEvent, TransactionResult.Result result, int i, Object obj) {
        if ((i & 1) != 0) {
            result = transactionCompletedEvent.result;
        }
        return transactionCompletedEvent.copy(result);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final TransactionResult.Result getResult() {
        return this.result;
    }

    public final TransactionCompletedEvent copy(TransactionResult.Result result) {
        Intrinsics.checkNotNullParameter(result, "result");
        return new TransactionCompletedEvent(result);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof TransactionCompletedEvent) && this.result == ((TransactionCompletedEvent) other).result;
    }

    public int hashCode() {
        return this.result.hashCode();
    }

    public String toString() {
        return "TransactionCompletedEvent(result=" + this.result + ')';
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransactionCompletedEvent(TransactionResult.Result result) {
        super(null);
        Intrinsics.checkNotNullParameter(result, "result");
        this.result = result;
    }

    public final TransactionResult.Result getResult() {
        return this.result;
    }
}
