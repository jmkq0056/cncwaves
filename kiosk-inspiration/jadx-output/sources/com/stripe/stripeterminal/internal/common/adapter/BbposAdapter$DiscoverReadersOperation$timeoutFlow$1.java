package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.stripeterminal.internal.common.adapter.BbposAdapter;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: compiled from: BbposAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$DiscoverReadersOperation$timeoutFlow$1", f = "BbposAdapter.kt", i = {0}, l = {1133, 1134}, m = "invokeSuspend", n = {"$this$flow"}, s = {"L$0"})
final class BbposAdapter$DiscoverReadersOperation$timeoutFlow$1 extends SuspendLambda implements Function2<FlowCollector<? super BbposAdapter.DiscoveryResult>, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ BbposAdapter.DiscoverReadersOperation this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BbposAdapter$DiscoverReadersOperation$timeoutFlow$1(BbposAdapter.DiscoverReadersOperation discoverReadersOperation, Continuation<? super BbposAdapter$DiscoverReadersOperation$timeoutFlow$1> continuation) {
        super(2, continuation);
        this.this$0 = discoverReadersOperation;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        BbposAdapter$DiscoverReadersOperation$timeoutFlow$1 bbposAdapter$DiscoverReadersOperation$timeoutFlow$1 = new BbposAdapter$DiscoverReadersOperation$timeoutFlow$1(this.this$0, continuation);
        bbposAdapter$DiscoverReadersOperation$timeoutFlow$1.L$0 = obj;
        return bbposAdapter$DiscoverReadersOperation$timeoutFlow$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(FlowCollector<? super BbposAdapter.DiscoveryResult> flowCollector, Continuation<? super Unit> continuation) {
        return ((BbposAdapter$DiscoverReadersOperation$timeoutFlow$1) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0061, code lost:
    
        if (r1.emit(new com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.DiscoveryResult.Failure(r6.this$0.createTimeoutException()), r6) != r0) goto L18;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r6.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L22
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            kotlin.ResultKt.throwOnFailure(r7)
            goto L64
        L12:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L1a:
            java.lang.Object r1 = r6.L$0
            kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
            kotlin.ResultKt.throwOnFailure(r7)
            goto L4a
        L22:
            kotlin.ResultKt.throwOnFailure(r7)
            java.lang.Object r7 = r6.L$0
            r1 = r7
            kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
            com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$DiscoverReadersOperation r7 = r6.this$0
            long r4 = r7.mo508getTimeoutUwyO8pc()
            boolean r7 = kotlin.time.Duration.m2206isPositiveimpl(r4)
            if (r7 == 0) goto L64
            com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$DiscoverReadersOperation r7 = r6.this$0
            long r4 = r7.mo508getTimeoutUwyO8pc()
            r7 = r6
            kotlin.coroutines.Continuation r7 = (kotlin.coroutines.Continuation) r7
            r6.L$0 = r1
            r6.label = r3
            java.lang.Object r7 = kotlinx.coroutines.DelayKt.m2320delayVtjQ1oo(r4, r7)
            if (r7 != r0) goto L4a
            goto L63
        L4a:
            com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$DiscoveryResult$Failure r7 = new com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$DiscoveryResult$Failure
            com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$DiscoverReadersOperation r3 = r6.this$0
            com.stripe.stripeterminal.external.models.TerminalException r3 = r3.createTimeoutException()
            r7.<init>(r3)
            r3 = r6
            kotlin.coroutines.Continuation r3 = (kotlin.coroutines.Continuation) r3
            r4 = 0
            r6.L$0 = r4
            r6.label = r2
            java.lang.Object r7 = r1.emit(r7, r3)
            if (r7 != r0) goto L64
        L63:
            return r0
        L64:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$DiscoverReadersOperation$timeoutFlow$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
