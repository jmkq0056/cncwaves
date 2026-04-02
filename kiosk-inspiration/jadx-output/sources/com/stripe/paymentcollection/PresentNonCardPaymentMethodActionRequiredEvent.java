package com.stripe.paymentcollection;

import com.stripe.hardware.paymentcollection.NonCardPaymentMethodActionRequiredModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionEvents.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/paymentcollection/PresentNonCardPaymentMethodActionRequiredEvent;", "Lcom/stripe/paymentcollection/UserInteractionEvent;", "model", "Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;", "(Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;)V", "getModel", "()Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class PresentNonCardPaymentMethodActionRequiredEvent extends UserInteractionEvent {
    private final NonCardPaymentMethodActionRequiredModel model;

    public static /* synthetic */ PresentNonCardPaymentMethodActionRequiredEvent copy$default(PresentNonCardPaymentMethodActionRequiredEvent presentNonCardPaymentMethodActionRequiredEvent, NonCardPaymentMethodActionRequiredModel nonCardPaymentMethodActionRequiredModel, int i, Object obj) {
        if ((i & 1) != 0) {
            nonCardPaymentMethodActionRequiredModel = presentNonCardPaymentMethodActionRequiredEvent.model;
        }
        return presentNonCardPaymentMethodActionRequiredEvent.copy(nonCardPaymentMethodActionRequiredModel);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final NonCardPaymentMethodActionRequiredModel getModel() {
        return this.model;
    }

    public final PresentNonCardPaymentMethodActionRequiredEvent copy(NonCardPaymentMethodActionRequiredModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        return new PresentNonCardPaymentMethodActionRequiredEvent(model);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof PresentNonCardPaymentMethodActionRequiredEvent) && Intrinsics.areEqual(this.model, ((PresentNonCardPaymentMethodActionRequiredEvent) other).model);
    }

    public int hashCode() {
        return this.model.hashCode();
    }

    public String toString() {
        return "PresentNonCardPaymentMethodActionRequiredEvent(model=" + this.model + ')';
    }

    public final NonCardPaymentMethodActionRequiredModel getModel() {
        return this.model;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PresentNonCardPaymentMethodActionRequiredEvent(NonCardPaymentMethodActionRequiredModel model) {
        super(null);
        Intrinsics.checkNotNullParameter(model, "model");
        this.model = model;
    }
}
