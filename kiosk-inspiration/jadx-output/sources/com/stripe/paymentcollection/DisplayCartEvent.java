package com.stripe.paymentcollection;

import com.stripe.hardware.paymentcollection.DisplayCartModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionEvents.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/paymentcollection/DisplayCartEvent;", "Lcom/stripe/paymentcollection/UserInteractionEvent;", "model", "Lcom/stripe/hardware/paymentcollection/DisplayCartModel;", "(Lcom/stripe/hardware/paymentcollection/DisplayCartModel;)V", "getModel", "()Lcom/stripe/hardware/paymentcollection/DisplayCartModel;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class DisplayCartEvent extends UserInteractionEvent {
    private final DisplayCartModel model;

    public static /* synthetic */ DisplayCartEvent copy$default(DisplayCartEvent displayCartEvent, DisplayCartModel displayCartModel, int i, Object obj) {
        if ((i & 1) != 0) {
            displayCartModel = displayCartEvent.model;
        }
        return displayCartEvent.copy(displayCartModel);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final DisplayCartModel getModel() {
        return this.model;
    }

    public final DisplayCartEvent copy(DisplayCartModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        return new DisplayCartEvent(model);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof DisplayCartEvent) && Intrinsics.areEqual(this.model, ((DisplayCartEvent) other).model);
    }

    public int hashCode() {
        return this.model.hashCode();
    }

    public String toString() {
        return "DisplayCartEvent(model=" + this.model + ')';
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DisplayCartEvent(DisplayCartModel model) {
        super(null);
        Intrinsics.checkNotNullParameter(model, "model");
        this.model = model;
    }

    public final DisplayCartModel getModel() {
        return this.model;
    }
}
