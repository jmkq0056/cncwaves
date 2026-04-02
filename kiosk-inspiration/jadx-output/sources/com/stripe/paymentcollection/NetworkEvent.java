package com.stripe.paymentcollection;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: PaymentCollectionEvents.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0007\u0003\u0004\u0005\u0006\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/stripe/paymentcollection/NetworkEvent;", "Lcom/stripe/paymentcollection/PaymentCollectionEvent;", "()V", "Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;", "Lcom/stripe/paymentcollection/ManualEntryAuthorizationRequestEvent;", "Lcom/stripe/paymentcollection/NonCardPaymentMethodActionCompletionEvent;", "Lcom/stripe/paymentcollection/NonCardPaymentMethodConfirmationRequestEvent;", "Lcom/stripe/paymentcollection/OnlineAuthorizationRequestEvent;", "Lcom/stripe/paymentcollection/PassthroughConfirmationRequestEvent;", "Lcom/stripe/paymentcollection/SecondGenACResponseEvent;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class NetworkEvent extends PaymentCollectionEvent {
    public /* synthetic */ NetworkEvent(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private NetworkEvent() {
        super(null);
    }
}
