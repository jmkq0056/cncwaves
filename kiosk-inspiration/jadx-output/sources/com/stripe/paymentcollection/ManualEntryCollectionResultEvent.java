package com.stripe.paymentcollection;

import com.stripe.paymentcollection.manualentry.ManualEntryCollectionResult;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionEvents.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/paymentcollection/ManualEntryCollectionResultEvent;", "Lcom/stripe/paymentcollection/AutomationEvent;", "result", "Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;", "(Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;)V", "getResult", "()Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class ManualEntryCollectionResultEvent extends AutomationEvent {
    private final ManualEntryCollectionResult result;

    public static /* synthetic */ ManualEntryCollectionResultEvent copy$default(ManualEntryCollectionResultEvent manualEntryCollectionResultEvent, ManualEntryCollectionResult manualEntryCollectionResult, int i, Object obj) {
        if ((i & 1) != 0) {
            manualEntryCollectionResult = manualEntryCollectionResultEvent.result;
        }
        return manualEntryCollectionResultEvent.copy(manualEntryCollectionResult);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final ManualEntryCollectionResult getResult() {
        return this.result;
    }

    public final ManualEntryCollectionResultEvent copy(ManualEntryCollectionResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        return new ManualEntryCollectionResultEvent(result);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof ManualEntryCollectionResultEvent) && Intrinsics.areEqual(this.result, ((ManualEntryCollectionResultEvent) other).result);
    }

    public int hashCode() {
        return this.result.hashCode();
    }

    public String toString() {
        return "ManualEntryCollectionResultEvent(result=" + this.result + ')';
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ManualEntryCollectionResultEvent(ManualEntryCollectionResult result) {
        super(null);
        Intrinsics.checkNotNullParameter(result, "result");
        this.result = result;
    }

    public final ManualEntryCollectionResult getResult() {
        return this.result;
    }
}
