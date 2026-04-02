package com.stripe.stripeterminal.internal.common.terminalsession;

import com.stripe.stripeterminal.external.callable.ErrorCallback;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.api.ApiClient;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: TerminalSession.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@¨\u0006\u0003"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "com/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$runSuspendingApiRequest$1"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession$retrievePaymentIntent$$inlined$runSuspendingApiRequest$1", f = "TerminalSession.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
public final class TerminalSession$retrievePaymentIntent$$inlined$runSuspendingApiRequest$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ ErrorCallback $callback;
    final /* synthetic */ String $clientSecret$inlined;
    final /* synthetic */ String $errorMessage;
    final /* synthetic */ TerminalSession$retrievePaymentIntent$wrappedCallback$1 $wrappedCallback$inlined;
    int label;
    final /* synthetic */ TerminalSession this$0;
    final /* synthetic */ TerminalSession this$0$inline_fun;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TerminalSession$retrievePaymentIntent$$inlined$runSuspendingApiRequest$1(ErrorCallback errorCallback, TerminalSession terminalSession, String str, Continuation continuation, TerminalSession terminalSession2, String str2, TerminalSession$retrievePaymentIntent$wrappedCallback$1 terminalSession$retrievePaymentIntent$wrappedCallback$1) {
        super(2, continuation);
        this.$callback = errorCallback;
        this.this$0$inline_fun = terminalSession;
        this.$errorMessage = str;
        this.this$0 = terminalSession2;
        this.$clientSecret$inlined = str2;
        this.$wrappedCallback$inlined = terminalSession$retrievePaymentIntent$wrappedCallback$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TerminalSession$retrievePaymentIntent$$inlined$runSuspendingApiRequest$1(this.$callback, this.this$0$inline_fun, this.$errorMessage, continuation, this.this$0, this.$clientSecret$inlined, this.$wrappedCallback$inlined);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((TerminalSession$retrievePaymentIntent$$inlined$runSuspendingApiRequest$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        try {
            TerminalSession$retrievePaymentIntent$$inlined$runSuspendingApiRequest$1 terminalSession$retrievePaymentIntent$$inlined$runSuspendingApiRequest$1 = this;
            this.$wrappedCallback$inlined.onSuccess(this.this$0.sessionTokenRepository.getStripeSessionToken() != null ? ApiClient.retrievePaymentIntent$default(this.this$0.apiClient, this.$clientSecret$inlined, null, 2, null) : this.this$0.apiClient.retrievePaymentIntent(this.$clientSecret$inlined, this.this$0.connectionTokenRepository.getToken()));
        } catch (TerminalException e) {
            this.$callback.onFailure(e);
        } catch (Throwable th) {
            this.this$0$inline_fun.logger.e(this.$errorMessage, th, new Pair[0]);
            this.$callback.onFailure(new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, this.$errorMessage, th, null, 8, null));
            if (th instanceof CancellationException) {
                throw th;
            }
        }
        return Unit.INSTANCE;
    }
}
