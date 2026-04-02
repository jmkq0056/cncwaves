package com.stripe.stripeterminal.internal.common.resourcerepository;

import com.stripe.hardware.emv.TransactionResult;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;

/* JADX INFO: compiled from: OnlineDirectResourceRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/stripe/hardware/emv/TransactionResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.resourcerepository.OnlineDirectResourceRepository$refundCharge$result$1", f = "OnlineDirectResourceRepository.kt", i = {}, l = {294}, m = "invokeSuspend", n = {}, s = {})
final class OnlineDirectResourceRepository$refundCharge$result$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super TransactionResult>, Object> {
    final /* synthetic */ Function1<String, Deferred<TransactionResult>> $handleAuthResponse;
    final /* synthetic */ String $responseBlob;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    OnlineDirectResourceRepository$refundCharge$result$1(Function1<? super String, ? extends Deferred<TransactionResult>> function1, String str, Continuation<? super OnlineDirectResourceRepository$refundCharge$result$1> continuation) {
        super(2, continuation);
        this.$handleAuthResponse = function1;
        this.$responseBlob = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new OnlineDirectResourceRepository$refundCharge$result$1(this.$handleAuthResponse, this.$responseBlob, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super TransactionResult> continuation) {
        return ((OnlineDirectResourceRepository$refundCharge$result$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
        Object objAwait = this.$handleAuthResponse.invoke(this.$responseBlob).await(this);
        return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
    }
}
