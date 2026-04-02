package com.stripe.paymentcollection;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: PaymentCollectionEvents.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0015\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017¨\u0006\u0018"}, d2 = {"Lcom/stripe/paymentcollection/UserInteractionEvent;", "Lcom/stripe/paymentcollection/PaymentCollectionEvent;", "()V", "Lcom/stripe/paymentcollection/CardStateUpdateEvent;", "Lcom/stripe/paymentcollection/CollectPaymentMethodApiErrorEvent;", "Lcom/stripe/paymentcollection/CollectionCancelledEvent;", "Lcom/stripe/paymentcollection/CollectionCompleteEvent;", "Lcom/stripe/paymentcollection/DisplayCartEvent;", "Lcom/stripe/paymentcollection/DisplayRecoverableErrorEvent;", "Lcom/stripe/paymentcollection/ManualEntryEvent;", "Lcom/stripe/paymentcollection/PresentAccountTypeSelectionEvent;", "Lcom/stripe/paymentcollection/PresentApplicationSelectionEvent;", "Lcom/stripe/paymentcollection/PresentDynamicCurrencyConversionSelectionEvent;", "Lcom/stripe/paymentcollection/PresentInterstitialEvent;", "Lcom/stripe/paymentcollection/PresentNonCardPaymentMethodActionRequiredEvent;", "Lcom/stripe/paymentcollection/PresentNonCardPaymentMethodLoadingEvent;", "Lcom/stripe/paymentcollection/PresentNonCardPaymentMethodsSelectionEvent;", "Lcom/stripe/paymentcollection/PresentPaymentMethodEvent;", "Lcom/stripe/paymentcollection/PresentPinEntryEvent;", "Lcom/stripe/paymentcollection/PresentProcessingEvent;", "Lcom/stripe/paymentcollection/PresentRemoveCardEvent;", "Lcom/stripe/paymentcollection/SelectNonCardPaymentMethodEvent;", "Lcom/stripe/paymentcollection/TimeoutEvent;", "Lcom/stripe/paymentcollection/TippingSelectionEvent;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class UserInteractionEvent extends PaymentCollectionEvent {
    public /* synthetic */ UserInteractionEvent(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private UserInteractionEvent() {
        super(null);
    }
}
