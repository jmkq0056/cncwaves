package com.stripe.stripeterminal.internal.common.terminalsession;

import com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession;
import com.stripe.stripeterminal.internal.models.PaymentMethodData;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: compiled from: TerminalSession.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* synthetic */ class TerminalSession$ConfirmPaymentIntentOperation$executeIfNotCanceled$paymentIntent$3 extends FunctionReferenceImpl implements Function0<PaymentMethodData> {
    TerminalSession$ConfirmPaymentIntentOperation$executeIfNotCanceled$paymentIntent$3(Object obj) {
        super(0, obj, TerminalSession.ConfirmPaymentIntentOperation.class, "collectScaPaymentMethodData", "collectScaPaymentMethodData()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", 0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final PaymentMethodData invoke() {
        return ((TerminalSession.ConfirmPaymentIntentOperation) this.receiver).collectScaPaymentMethodData();
    }
}
