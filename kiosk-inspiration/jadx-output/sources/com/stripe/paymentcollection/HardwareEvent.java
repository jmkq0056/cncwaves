package com.stripe.paymentcollection;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: PaymentCollectionEvents.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\f\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e¨\u0006\u000f"}, d2 = {"Lcom/stripe/paymentcollection/HardwareEvent;", "Lcom/stripe/paymentcollection/PaymentCollectionEvent;", "()V", "Lcom/stripe/paymentcollection/AuthorizePaymentEvent;", "Lcom/stripe/paymentcollection/CancelHardwareTippingCollectionEvent;", "Lcom/stripe/paymentcollection/ConfigureReaderEvent;", "Lcom/stripe/paymentcollection/HardwareTippingCollectionEvent;", "Lcom/stripe/paymentcollection/RequestPinEntryEvent;", "Lcom/stripe/paymentcollection/SelectAccountTypeEvent;", "Lcom/stripe/paymentcollection/SelectApplicationEvent;", "Lcom/stripe/paymentcollection/SelectLanguageEvent;", "Lcom/stripe/paymentcollection/SendFinalConfirmEvent;", "Lcom/stripe/paymentcollection/StartPinEntryEvent;", "Lcom/stripe/paymentcollection/StartPollingForCardStatusEvent;", "Lcom/stripe/paymentcollection/StopReaderEvent;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class HardwareEvent extends PaymentCollectionEvent {
    public /* synthetic */ HardwareEvent(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private HardwareEvent() {
        super(null);
    }
}
