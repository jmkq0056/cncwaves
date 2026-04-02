package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.core.aidlrpc.AidlRpcException;
import com.stripe.cots.aidlservice.CotsCollectPinResponse;
import com.stripe.cots.common.CotsClientInterface;
import com.stripe.stripeterminal.internal.common.adapter.CotsAdapter;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: CotsAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/stripe/cots/aidlservice/CotsCollectPinResponse;", "Lcom/stripe/cots/common/CotsClientInterface;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.CotsAdapter$collectPinAndUpdatePaymentMethodData$response$1", f = "CotsAdapter.kt", i = {}, l = {262}, m = "invokeSuspend", n = {}, s = {})
final class CotsAdapter$collectPinAndUpdatePaymentMethodData$response$1 extends SuspendLambda implements Function2<CotsClientInterface, Continuation<? super CotsCollectPinResponse>, Object> {
    final /* synthetic */ CotsAdapter.CachedPayment $cached;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CotsAdapter$collectPinAndUpdatePaymentMethodData$response$1(CotsAdapter.CachedPayment cachedPayment, Continuation<? super CotsAdapter$collectPinAndUpdatePaymentMethodData$response$1> continuation) {
        super(2, continuation);
        this.$cached = cachedPayment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        CotsAdapter$collectPinAndUpdatePaymentMethodData$response$1 cotsAdapter$collectPinAndUpdatePaymentMethodData$response$1 = new CotsAdapter$collectPinAndUpdatePaymentMethodData$response$1(this.$cached, continuation);
        cotsAdapter$collectPinAndUpdatePaymentMethodData$response$1.L$0 = obj;
        return cotsAdapter$collectPinAndUpdatePaymentMethodData$response$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CotsClientInterface cotsClientInterface, Continuation<? super CotsCollectPinResponse> continuation) {
        return ((CotsAdapter$collectPinAndUpdatePaymentMethodData$response$1) create(cotsClientInterface, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws AidlRpcException {
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
        Object objCollectPin = ((CotsClientInterface) this.L$0).collectPin(this.$cached.getAmountString(), this);
        return objCollectPin == coroutine_suspended ? coroutine_suspended : objCollectPin;
    }
}
