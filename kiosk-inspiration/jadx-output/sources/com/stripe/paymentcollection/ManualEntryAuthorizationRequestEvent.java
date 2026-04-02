package com.stripe.paymentcollection;

import com.stripe.paymentcollection.TippingState;
import com.stripe.paymentcollection.manualentry.ManualEntryResultModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionEvents.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, d2 = {"Lcom/stripe/paymentcollection/ManualEntryAuthorizationRequestEvent;", "Lcom/stripe/paymentcollection/NetworkEvent;", "data", "Lcom/stripe/paymentcollection/manualentry/ManualEntryResultModel;", "tipResult", "Lcom/stripe/paymentcollection/TippingState$EndState;", "(Lcom/stripe/paymentcollection/manualentry/ManualEntryResultModel;Lcom/stripe/paymentcollection/TippingState$EndState;)V", "getData", "()Lcom/stripe/paymentcollection/manualentry/ManualEntryResultModel;", "getTipResult", "()Lcom/stripe/paymentcollection/TippingState$EndState;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class ManualEntryAuthorizationRequestEvent extends NetworkEvent {
    private final ManualEntryResultModel data;
    private final TippingState.EndState tipResult;

    public static /* synthetic */ ManualEntryAuthorizationRequestEvent copy$default(ManualEntryAuthorizationRequestEvent manualEntryAuthorizationRequestEvent, ManualEntryResultModel manualEntryResultModel, TippingState.EndState endState, int i, Object obj) {
        if ((i & 1) != 0) {
            manualEntryResultModel = manualEntryAuthorizationRequestEvent.data;
        }
        if ((i & 2) != 0) {
            endState = manualEntryAuthorizationRequestEvent.tipResult;
        }
        return manualEntryAuthorizationRequestEvent.copy(manualEntryResultModel, endState);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final ManualEntryResultModel getData() {
        return this.data;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final TippingState.EndState getTipResult() {
        return this.tipResult;
    }

    public final ManualEntryAuthorizationRequestEvent copy(ManualEntryResultModel data, TippingState.EndState tipResult) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(tipResult, "tipResult");
        return new ManualEntryAuthorizationRequestEvent(data, tipResult);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ManualEntryAuthorizationRequestEvent)) {
            return false;
        }
        ManualEntryAuthorizationRequestEvent manualEntryAuthorizationRequestEvent = (ManualEntryAuthorizationRequestEvent) other;
        return Intrinsics.areEqual(this.data, manualEntryAuthorizationRequestEvent.data) && Intrinsics.areEqual(this.tipResult, manualEntryAuthorizationRequestEvent.tipResult);
    }

    public int hashCode() {
        return (this.data.hashCode() * 31) + this.tipResult.hashCode();
    }

    public String toString() {
        return "ManualEntryAuthorizationRequestEvent(data=" + this.data + ", tipResult=" + this.tipResult + ')';
    }

    public final ManualEntryResultModel getData() {
        return this.data;
    }

    public final TippingState.EndState getTipResult() {
        return this.tipResult;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ManualEntryAuthorizationRequestEvent(ManualEntryResultModel data, TippingState.EndState tipResult) {
        super(null);
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(tipResult, "tipResult");
        this.data = data;
        this.tipResult = tipResult;
    }
}
