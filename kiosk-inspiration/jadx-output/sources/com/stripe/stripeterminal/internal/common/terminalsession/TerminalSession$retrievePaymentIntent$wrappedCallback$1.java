package com.stripe.stripeterminal.internal.common.terminalsession;

import com.stripe.stripeterminal.external.callable.PaymentIntentCallback;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.log.SdkResponse;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TerminalSession.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"com/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrievePaymentIntent$wrappedCallback$1", "Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;", "onFailure", "", "e", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "onSuccess", "paymentIntent", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TerminalSession$retrievePaymentIntent$wrappedCallback$1 implements PaymentIntentCallback {
    final /* synthetic */ PaymentIntentCallback $callback;
    final /* synthetic */ TerminalSession this$0;

    TerminalSession$retrievePaymentIntent$wrappedCallback$1(TerminalSession terminalSession, PaymentIntentCallback paymentIntentCallback) {
        this.this$0 = terminalSession;
        this.$callback = paymentIntentCallback;
    }

    @Override // com.stripe.stripeterminal.external.callable.PaymentIntentCallback
    public void onSuccess(PaymentIntent paymentIntent) {
        Intrinsics.checkNotNullParameter(paymentIntent, "paymentIntent");
        this.this$0.logger.endOperation(SdkResponse.INSTANCE.success(paymentIntent), "sdk_operation");
        this.$callback.onSuccess(paymentIntent);
    }

    @Override // com.stripe.stripeterminal.external.callable.ErrorCallback
    public void onFailure(TerminalException e) {
        Intrinsics.checkNotNullParameter(e, "e");
        this.this$0.logger.endOperation(SdkResponse.INSTANCE.failure(e), "sdk_operation");
        this.$callback.onFailure(e);
    }
}
