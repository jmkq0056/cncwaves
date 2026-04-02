package com.stripe.stripeterminal.internal.common.remotereadercontrollers;

import com.stripe.stripeterminal.external.models.PaymentIntent;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: IpReaderController.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController$confirmPayment$2$3", f = "IpReaderController.kt", i = {}, l = {512}, m = "invokeSuspend", n = {}, s = {})
final class IpReaderController$confirmPayment$2$3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super PaymentIntent>, Object> {
    final /* synthetic */ CompletableDeferred<PaymentIntent> $completable;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    IpReaderController$confirmPayment$2$3(CompletableDeferred<PaymentIntent> completableDeferred, Continuation<? super IpReaderController$confirmPayment$2$3> continuation) {
        super(2, continuation);
        this.$completable = completableDeferred;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new IpReaderController$confirmPayment$2$3(this.$completable, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super PaymentIntent> continuation) {
        return ((IpReaderController$confirmPayment$2$3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return obj;
        }
        ResultKt.throwOnFailure(obj);
        this.label = 1;
        Object objAwait = this.$completable.await(this);
        return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
    }
}
