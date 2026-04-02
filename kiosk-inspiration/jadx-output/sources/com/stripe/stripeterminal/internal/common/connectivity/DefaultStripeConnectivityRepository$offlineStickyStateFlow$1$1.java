package com.stripe.stripeterminal.internal.common.connectivity;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: compiled from: DefaultStripeConnectivityRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeConnectivityRepository$offlineStickyStateFlow$1$1", f = "DefaultStripeConnectivityRepository.kt", i = {0, 0, 1}, l = {99, 100, 101}, m = "invokeSuspend", n = {"$this$flow", "delayMs", "$this$flow"}, s = {"L$0", "J$0", "L$0"})
final class DefaultStripeConnectivityRepository$offlineStickyStateFlow$1$1 extends SuspendLambda implements Function2<FlowCollector<? super Boolean>, Continuation<? super Unit>, Object> {
    final /* synthetic */ int $it;
    long J$0;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DefaultStripeConnectivityRepository$offlineStickyStateFlow$1$1(int i, Continuation<? super DefaultStripeConnectivityRepository$offlineStickyStateFlow$1$1> continuation) {
        super(2, continuation);
        this.$it = i;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DefaultStripeConnectivityRepository$offlineStickyStateFlow$1$1 defaultStripeConnectivityRepository$offlineStickyStateFlow$1$1 = new DefaultStripeConnectivityRepository$offlineStickyStateFlow$1$1(this.$it, continuation);
        defaultStripeConnectivityRepository$offlineStickyStateFlow$1$1.L$0 = obj;
        return defaultStripeConnectivityRepository$offlineStickyStateFlow$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(FlowCollector<? super Boolean> flowCollector, Continuation<? super Unit> continuation) {
        return ((DefaultStripeConnectivityRepository$offlineStickyStateFlow$1$1) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0085, code lost:
    
        if (r1.emit(kotlin.coroutines.jvm.internal.Boxing.boxBoolean(false), r9) != r0) goto L22;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r9.label
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L30
            if (r1 == r4) goto L26
            if (r1 == r3) goto L1e
            if (r1 != r2) goto L16
            kotlin.ResultKt.throwOnFailure(r10)
            goto L88
        L16:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L1e:
            java.lang.Object r1 = r9.L$0
            kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
            kotlin.ResultKt.throwOnFailure(r10)
            goto L74
        L26:
            long r4 = r9.J$0
            java.lang.Object r1 = r9.L$0
            kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
            kotlin.ResultKt.throwOnFailure(r10)
            goto L66
        L30:
            kotlin.ResultKt.throwOnFailure(r10)
            java.lang.Object r10 = r9.L$0
            kotlinx.coroutines.flow.FlowCollector r10 = (kotlinx.coroutines.flow.FlowCollector) r10
            int r1 = r9.$it
            int r1 = r1 - r4
            double r5 = (double) r1
            r7 = 4611686018427387904(0x4000000000000000, double:2.0)
            double r5 = java.lang.Math.pow(r7, r5)
            r7 = 30000(0x7530, double:1.4822E-319)
            double r7 = (double) r7
            double r5 = r5 * r7
            r7 = 600000(0x927c0, double:2.964394E-318)
            long r5 = kotlin.math.MathKt.roundToLong(r5)
            long r5 = java.lang.Long.min(r7, r5)
            java.lang.Boolean r1 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)
            r7 = r9
            kotlin.coroutines.Continuation r7 = (kotlin.coroutines.Continuation) r7
            r9.L$0 = r10
            r9.J$0 = r5
            r9.label = r4
            java.lang.Object r1 = r10.emit(r1, r7)
            if (r1 != r0) goto L64
            goto L87
        L64:
            r1 = r10
            r4 = r5
        L66:
            r10 = r9
            kotlin.coroutines.Continuation r10 = (kotlin.coroutines.Continuation) r10
            r9.L$0 = r1
            r9.label = r3
            java.lang.Object r10 = kotlinx.coroutines.DelayKt.delay(r4, r10)
            if (r10 != r0) goto L74
            goto L87
        L74:
            r10 = 0
            java.lang.Boolean r10 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r10)
            r3 = r9
            kotlin.coroutines.Continuation r3 = (kotlin.coroutines.Continuation) r3
            r4 = 0
            r9.L$0 = r4
            r9.label = r2
            java.lang.Object r10 = r1.emit(r10, r3)
            if (r10 != r0) goto L88
        L87:
            return r0
        L88:
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeConnectivityRepository$offlineStickyStateFlow$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
