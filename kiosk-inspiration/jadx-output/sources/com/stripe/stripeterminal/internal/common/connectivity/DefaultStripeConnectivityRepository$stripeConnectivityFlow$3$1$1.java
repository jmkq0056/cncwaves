package com.stripe.stripeterminal.internal.common.connectivity;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: DefaultStripeConnectivityRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;", "healthCheckPassed", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeConnectivityRepository$stripeConnectivityFlow$3$1$1", f = "DefaultStripeConnectivityRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class DefaultStripeConnectivityRepository$stripeConnectivityFlow$3$1$1 extends SuspendLambda implements Function2<Boolean, Continuation<? super StripeConnectivityStatus>, Object> {
    /* synthetic */ boolean Z$0;
    int label;

    DefaultStripeConnectivityRepository$stripeConnectivityFlow$3$1$1(Continuation<? super DefaultStripeConnectivityRepository$stripeConnectivityFlow$3$1$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DefaultStripeConnectivityRepository$stripeConnectivityFlow$3$1$1 defaultStripeConnectivityRepository$stripeConnectivityFlow$3$1$1 = new DefaultStripeConnectivityRepository$stripeConnectivityFlow$3$1$1(continuation);
        defaultStripeConnectivityRepository$stripeConnectivityFlow$3$1$1.Z$0 = ((Boolean) obj).booleanValue();
        return defaultStripeConnectivityRepository$stripeConnectivityFlow$3$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Continuation<? super StripeConnectivityStatus> continuation) {
        return invoke(bool.booleanValue(), continuation);
    }

    public final Object invoke(boolean z, Continuation<? super StripeConnectivityStatus> continuation) {
        return ((DefaultStripeConnectivityRepository$stripeConnectivityFlow$3$1$1) create(Boolean.valueOf(z), continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        if (this.Z$0) {
            return StripeConnectivityStatus.HEALTH_CHECKS_PASSING;
        }
        return StripeConnectivityStatus.HEALTH_CHECKS_FAILING;
    }
}
