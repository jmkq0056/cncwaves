package com.stripe.paymentcollection;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: PaymentCollectionEvents.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0005\u0003\u0004\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/paymentcollection/AutomationEvent;", "Lcom/stripe/paymentcollection/PaymentCollectionEvent;", "()V", "Lcom/stripe/paymentcollection/AcknowledgeInterfaceResetEvent;", "Lcom/stripe/paymentcollection/AutoSelectApplicationEvent;", "Lcom/stripe/paymentcollection/AutoSelectLanguageEvent;", "Lcom/stripe/paymentcollection/ClearMagStripeStateEvent;", "Lcom/stripe/paymentcollection/ManualEntryCollectionResultEvent;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class AutomationEvent extends PaymentCollectionEvent {
    public /* synthetic */ AutomationEvent(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private AutomationEvent() {
        super(null);
    }
}
