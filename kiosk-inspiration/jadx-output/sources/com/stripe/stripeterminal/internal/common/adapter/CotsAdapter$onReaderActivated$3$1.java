package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.cots.common.CotsClientInterface;
import com.stripe.proto.model.config.ReaderFeatureFlags;
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
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/stripe/proto/model/config/ReaderFeatureFlags;", "Lcom/stripe/cots/common/CotsClientInterface;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.CotsAdapter$onReaderActivated$3$1", f = "CotsAdapter.kt", i = {}, l = {495}, m = "invokeSuspend", n = {}, s = {})
final class CotsAdapter$onReaderActivated$3$1 extends SuspendLambda implements Function2<CotsClientInterface, Continuation<? super ReaderFeatureFlags>, Object> {
    private /* synthetic */ Object L$0;
    int label;

    CotsAdapter$onReaderActivated$3$1(Continuation<? super CotsAdapter$onReaderActivated$3$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        CotsAdapter$onReaderActivated$3$1 cotsAdapter$onReaderActivated$3$1 = new CotsAdapter$onReaderActivated$3$1(continuation);
        cotsAdapter$onReaderActivated$3$1.L$0 = obj;
        return cotsAdapter$onReaderActivated$3$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CotsClientInterface cotsClientInterface, Continuation<? super ReaderFeatureFlags> continuation) {
        return ((CotsAdapter$onReaderActivated$3$1) create(cotsClientInterface, continuation)).invokeSuspend(Unit.INSTANCE);
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
        Object objUpdateReader = ((CotsClientInterface) this.L$0).updateReader(this);
        return objUpdateReader == coroutine_suspended ? coroutine_suspended : objUpdateReader;
    }
}
