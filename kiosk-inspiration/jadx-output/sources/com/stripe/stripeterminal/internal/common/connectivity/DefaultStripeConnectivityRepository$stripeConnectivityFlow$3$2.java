package com.stripe.stripeterminal.internal.common.connectivity;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: compiled from: DefaultStripeConnectivityRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeConnectivityRepository$stripeConnectivityFlow$3$2", f = "DefaultStripeConnectivityRepository.kt", i = {}, l = {164}, m = "invokeSuspend", n = {}, s = {})
final class DefaultStripeConnectivityRepository$stripeConnectivityFlow$3$2 extends SuspendLambda implements Function2<FlowCollector<? super StripeConnectivityStatus>, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;

    DefaultStripeConnectivityRepository$stripeConnectivityFlow$3$2(Continuation<? super DefaultStripeConnectivityRepository$stripeConnectivityFlow$3$2> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DefaultStripeConnectivityRepository$stripeConnectivityFlow$3$2 defaultStripeConnectivityRepository$stripeConnectivityFlow$3$2 = new DefaultStripeConnectivityRepository$stripeConnectivityFlow$3$2(continuation);
        defaultStripeConnectivityRepository$stripeConnectivityFlow$3$2.L$0 = obj;
        return defaultStripeConnectivityRepository$stripeConnectivityFlow$3$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(FlowCollector<? super StripeConnectivityStatus> flowCollector, Continuation<? super Unit> continuation) {
        return ((DefaultStripeConnectivityRepository$stripeConnectivityFlow$3$2) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            if (((FlowCollector) this.L$0).emit(StripeConnectivityStatus.HEALTH_CHECKS_NOT_STARTED, this) == coroutine_suspended) {
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
