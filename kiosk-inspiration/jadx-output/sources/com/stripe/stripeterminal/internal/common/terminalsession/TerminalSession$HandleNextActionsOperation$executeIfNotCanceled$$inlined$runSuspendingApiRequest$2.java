package com.stripe.stripeterminal.internal.common.terminalsession;

import com.stripe.stripeterminal.external.callable.ErrorCallback;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.resourcerepository.ProxyResourceRepository;
import com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession;
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
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;

/* JADX INFO: compiled from: TerminalSession.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@¨\u0006\u0003"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "com/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$runSuspendingApiRequest$1"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession$HandleNextActionsOperation$executeIfNotCanceled$$inlined$runSuspendingApiRequest$2", f = "TerminalSession.kt", i = {}, l = {3365}, m = "invokeSuspend", n = {}, s = {})
public final class TerminalSession$HandleNextActionsOperation$executeIfNotCanceled$$inlined$runSuspendingApiRequest$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ ErrorCallback $callback;
    final /* synthetic */ String $errorMessage;
    Object L$0;
    int label;
    final /* synthetic */ TerminalSession.HandleNextActionsOperation this$0;
    final /* synthetic */ TerminalSession this$0$inline_fun;
    final /* synthetic */ TerminalSession this$1$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TerminalSession$HandleNextActionsOperation$executeIfNotCanceled$$inlined$runSuspendingApiRequest$2(ErrorCallback errorCallback, TerminalSession terminalSession, String str, Continuation continuation, TerminalSession.HandleNextActionsOperation handleNextActionsOperation, TerminalSession terminalSession2) {
        super(2, continuation);
        this.$callback = errorCallback;
        this.this$0$inline_fun = terminalSession;
        this.$errorMessage = str;
        this.this$0 = handleNextActionsOperation;
        this.this$1$inlined = terminalSession2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TerminalSession$HandleNextActionsOperation$executeIfNotCanceled$$inlined$runSuspendingApiRequest$2(this.$callback, this.this$0$inline_fun, this.$errorMessage, continuation, this.this$0, this.this$1$inlined);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((TerminalSession$HandleNextActionsOperation$executeIfNotCanceled$$inlined$runSuspendingApiRequest$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        TerminalSession.HandleNextActionsOperation handleNextActionsOperation;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    TerminalSession$HandleNextActionsOperation$executeIfNotCanceled$$inlined$runSuspendingApiRequest$2 terminalSession$HandleNextActionsOperation$executeIfNotCanceled$$inlined$runSuspendingApiRequest$2 = this;
                    TerminalSession.HandleNextActionsOperation handleNextActionsOperation2 = this.this$0;
                    ProxyResourceRepository proxyResourceRepository = this.this$1$inlined.proxyResourceRepository;
                    String id = this.this$0.paymentIntent.getId();
                    Intrinsics.checkNotNull(id);
                    Deferred<PaymentIntent> deferredAwaitActionRequiredPaymentIntentCompletion = proxyResourceRepository.awaitActionRequiredPaymentIntentCompletion(id, this.this$1$inlined.transactionRepository.getStripeAccountId());
                    this.L$0 = handleNextActionsOperation2;
                    this.label = 1;
                    Object objAwait = deferredAwaitActionRequiredPaymentIntentCompletion.await(this);
                    if (objAwait == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    handleNextActionsOperation = handleNextActionsOperation2;
                    obj = objAwait;
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    handleNextActionsOperation = (TerminalSession.HandleNextActionsOperation) this.L$0;
                    ResultKt.throwOnFailure(obj);
                }
                handleNextActionsOperation.onSuccess((PaymentIntent) obj);
            } catch (CancellationException unused) {
            }
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
