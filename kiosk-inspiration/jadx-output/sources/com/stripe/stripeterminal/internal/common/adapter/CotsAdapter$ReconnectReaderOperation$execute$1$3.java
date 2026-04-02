package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.cots.common.CotsClientInterface;
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
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lcom/stripe/cots/common/CotsClientInterface;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.CotsAdapter$ReconnectReaderOperation$execute$1$3", f = "CotsAdapter.kt", i = {}, l = {794}, m = "invokeSuspend", n = {}, s = {})
final class CotsAdapter$ReconnectReaderOperation$execute$1$3 extends SuspendLambda implements Function2<CotsClientInterface, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;

    CotsAdapter$ReconnectReaderOperation$execute$1$3(Continuation<? super CotsAdapter$ReconnectReaderOperation$execute$1$3> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        CotsAdapter$ReconnectReaderOperation$execute$1$3 cotsAdapter$ReconnectReaderOperation$execute$1$3 = new CotsAdapter$ReconnectReaderOperation$execute$1$3(continuation);
        cotsAdapter$ReconnectReaderOperation$execute$1$3.L$0 = obj;
        return cotsAdapter$ReconnectReaderOperation$execute$1$3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CotsClientInterface cotsClientInterface, Continuation<? super Unit> continuation) {
        return ((CotsAdapter$ReconnectReaderOperation$execute$1$3) create(cotsClientInterface, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            if (((CotsClientInterface) this.L$0).disconnect(this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
