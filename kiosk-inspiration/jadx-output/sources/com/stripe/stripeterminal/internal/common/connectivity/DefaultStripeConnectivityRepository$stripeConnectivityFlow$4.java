package com.stripe.stripeterminal.internal.common.connectivity;

import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: compiled from: DefaultStripeConnectivityRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;", "error", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeConnectivityRepository$stripeConnectivityFlow$4", f = "DefaultStripeConnectivityRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class DefaultStripeConnectivityRepository$stripeConnectivityFlow$4 extends SuspendLambda implements Function3<FlowCollector<? super StripeConnectivityStatus>, Throwable, Continuation<? super Unit>, Object> {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ DefaultStripeConnectivityRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DefaultStripeConnectivityRepository$stripeConnectivityFlow$4(DefaultStripeConnectivityRepository defaultStripeConnectivityRepository, Continuation<? super DefaultStripeConnectivityRepository$stripeConnectivityFlow$4> continuation) {
        super(3, continuation);
        this.this$0 = defaultStripeConnectivityRepository;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(FlowCollector<? super StripeConnectivityStatus> flowCollector, Throwable th, Continuation<? super Unit> continuation) {
        DefaultStripeConnectivityRepository$stripeConnectivityFlow$4 defaultStripeConnectivityRepository$stripeConnectivityFlow$4 = new DefaultStripeConnectivityRepository$stripeConnectivityFlow$4(this.this$0, continuation);
        defaultStripeConnectivityRepository$stripeConnectivityFlow$4.L$0 = th;
        return defaultStripeConnectivityRepository$stripeConnectivityFlow$4.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        this.this$0.logger.w((Throwable) this.L$0, "Error in Stripe connectivity flow", new Pair[0]);
        return Unit.INSTANCE;
    }
}
