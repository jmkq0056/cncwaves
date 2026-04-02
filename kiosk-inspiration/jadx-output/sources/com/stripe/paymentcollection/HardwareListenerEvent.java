package com.stripe.paymentcollection;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: PaymentCollectionEvents.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0017\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019¨\u0006\u001a"}, d2 = {"Lcom/stripe/paymentcollection/HardwareListenerEvent;", "Lcom/stripe/paymentcollection/PaymentCollectionEvent;", "()V", "Lcom/stripe/paymentcollection/BatteryCriticallyLowEvent;", "Lcom/stripe/paymentcollection/ChipCardInitializationFailed;", "Lcom/stripe/paymentcollection/ContactCardUpdateEvent;", "Lcom/stripe/paymentcollection/DeviceMissingEncryptionKeyEvent;", "Lcom/stripe/paymentcollection/EmptyCandidateListEncounteredEvent;", "Lcom/stripe/paymentcollection/HardwareTippingCollectionResultEvent;", "Lcom/stripe/paymentcollection/HardwareTransactionCancelledEvent;", "Lcom/stripe/paymentcollection/IntermediateErrorEvent;", "Lcom/stripe/paymentcollection/MagStripeReadEvent;", "Lcom/stripe/paymentcollection/OnAccessiblePinPadEvent;", "Lcom/stripe/paymentcollection/PinEntryStatusChangeEvent;", "Lcom/stripe/paymentcollection/ReaderFinalConfirmationTlvCollectedEvent;", "Lcom/stripe/paymentcollection/ReaderTypeChangedEvent;", "Lcom/stripe/paymentcollection/ReadingCardEvent;", "Lcom/stripe/paymentcollection/RequestOnlineAuthorisationEvent;", "Lcom/stripe/paymentcollection/RequestSelectAccountEvent;", "Lcom/stripe/paymentcollection/RequestSelectApplicationEvent;", "Lcom/stripe/paymentcollection/ResetPaymentInterfacesEvent;", "Lcom/stripe/paymentcollection/SetPinEntryAsteriskCountEvent;", "Lcom/stripe/paymentcollection/SetPinPadResultEvent;", "Lcom/stripe/paymentcollection/ShowThankYouEvent;", "Lcom/stripe/paymentcollection/TransactionCompletedEvent;", "Lcom/stripe/paymentcollection/WaitForCardPresentEvent;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class HardwareListenerEvent extends PaymentCollectionEvent {
    public /* synthetic */ HardwareListenerEvent(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private HardwareListenerEvent() {
        super(null);
    }
}
