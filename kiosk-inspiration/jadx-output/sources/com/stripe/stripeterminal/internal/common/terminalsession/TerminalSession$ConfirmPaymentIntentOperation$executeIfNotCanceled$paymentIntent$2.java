package com.stripe.stripeterminal.internal.common.terminalsession;

import com.stripe.hardware.emv.TransactionResult;
import com.stripe.stripeterminal.internal.common.Adapter;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Deferred;

/* JADX INFO: compiled from: TerminalSession.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* synthetic */ class TerminalSession$ConfirmPaymentIntentOperation$executeIfNotCanceled$paymentIntent$2 extends FunctionReferenceImpl implements Function1<String, Deferred<? extends TransactionResult>> {
    TerminalSession$ConfirmPaymentIntentOperation$executeIfNotCanceled$paymentIntent$2(Object obj) {
        super(1, obj, Adapter.class, "handleAuthResponse", "handleAuthResponse(Ljava/lang/String;)Lkotlinx/coroutines/Deferred;", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Deferred<TransactionResult> invoke(String p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        return ((Adapter) this.receiver).handleAuthResponse(p0);
    }
}
