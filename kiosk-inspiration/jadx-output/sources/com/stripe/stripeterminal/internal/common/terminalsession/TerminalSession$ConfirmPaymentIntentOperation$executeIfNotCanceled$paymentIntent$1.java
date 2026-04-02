package com.stripe.stripeterminal.internal.common.terminalsession;

import com.stripe.stripeterminal.internal.common.Adapter;
import com.stripe.transaction.CollectiblePayment;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: compiled from: TerminalSession.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* synthetic */ class TerminalSession$ConfirmPaymentIntentOperation$executeIfNotCanceled$paymentIntent$1 extends FunctionReferenceImpl implements Function0<CollectiblePayment> {
    TerminalSession$ConfirmPaymentIntentOperation$executeIfNotCanceled$paymentIntent$1(Object obj) {
        super(0, obj, Adapter.class, "collectiblePayment", "collectiblePayment()Lcom/stripe/transaction/CollectiblePayment;", 0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final CollectiblePayment invoke() {
        return ((Adapter) this.receiver).collectiblePayment();
    }
}
