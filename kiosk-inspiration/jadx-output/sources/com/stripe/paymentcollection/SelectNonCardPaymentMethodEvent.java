package com.stripe.paymentcollection;

import com.stripe.stripeterminal.external.models.PaymentMethodType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionEvents.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/paymentcollection/SelectNonCardPaymentMethodEvent;", "Lcom/stripe/paymentcollection/UserInteractionEvent;", "paymentMethodType", "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;)V", "getPaymentMethodType", "()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class SelectNonCardPaymentMethodEvent extends UserInteractionEvent {
    private final PaymentMethodType paymentMethodType;

    public static /* synthetic */ SelectNonCardPaymentMethodEvent copy$default(SelectNonCardPaymentMethodEvent selectNonCardPaymentMethodEvent, PaymentMethodType paymentMethodType, int i, Object obj) {
        if ((i & 1) != 0) {
            paymentMethodType = selectNonCardPaymentMethodEvent.paymentMethodType;
        }
        return selectNonCardPaymentMethodEvent.copy(paymentMethodType);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final PaymentMethodType getPaymentMethodType() {
        return this.paymentMethodType;
    }

    public final SelectNonCardPaymentMethodEvent copy(PaymentMethodType paymentMethodType) {
        Intrinsics.checkNotNullParameter(paymentMethodType, "paymentMethodType");
        return new SelectNonCardPaymentMethodEvent(paymentMethodType);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof SelectNonCardPaymentMethodEvent) && this.paymentMethodType == ((SelectNonCardPaymentMethodEvent) other).paymentMethodType;
    }

    public int hashCode() {
        return this.paymentMethodType.hashCode();
    }

    public String toString() {
        return "SelectNonCardPaymentMethodEvent(paymentMethodType=" + this.paymentMethodType + ')';
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectNonCardPaymentMethodEvent(PaymentMethodType paymentMethodType) {
        super(null);
        Intrinsics.checkNotNullParameter(paymentMethodType, "paymentMethodType");
        this.paymentMethodType = paymentMethodType;
    }

    public final PaymentMethodType getPaymentMethodType() {
        return this.paymentMethodType;
    }
}
