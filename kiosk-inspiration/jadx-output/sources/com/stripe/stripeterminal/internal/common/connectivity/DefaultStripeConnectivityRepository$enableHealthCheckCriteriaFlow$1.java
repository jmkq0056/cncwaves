package com.stripe.stripeterminal.internal.common.connectivity;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* JADX INFO: compiled from: DefaultStripeConnectivityRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", "", "isListenerSet", "isConfigEnabled"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeConnectivityRepository$enableHealthCheckCriteriaFlow$1", f = "DefaultStripeConnectivityRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class DefaultStripeConnectivityRepository$enableHealthCheckCriteriaFlow$1 extends SuspendLambda implements Function3<Boolean, Boolean, Continuation<? super Boolean>, Object> {
    /* synthetic */ boolean Z$0;
    /* synthetic */ boolean Z$1;
    int label;

    DefaultStripeConnectivityRepository$enableHealthCheckCriteriaFlow$1(Continuation<? super DefaultStripeConnectivityRepository$enableHealthCheckCriteriaFlow$1> continuation) {
        super(3, continuation);
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Boolean bool2, Continuation<? super Boolean> continuation) {
        return invoke(bool.booleanValue(), bool2.booleanValue(), continuation);
    }

    public final Object invoke(boolean z, boolean z2, Continuation<? super Boolean> continuation) {
        DefaultStripeConnectivityRepository$enableHealthCheckCriteriaFlow$1 defaultStripeConnectivityRepository$enableHealthCheckCriteriaFlow$1 = new DefaultStripeConnectivityRepository$enableHealthCheckCriteriaFlow$1(continuation);
        defaultStripeConnectivityRepository$enableHealthCheckCriteriaFlow$1.Z$0 = z;
        defaultStripeConnectivityRepository$enableHealthCheckCriteriaFlow$1.Z$1 = z2;
        return defaultStripeConnectivityRepository$enableHealthCheckCriteriaFlow$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        return Boxing.boxBoolean(this.Z$0 || this.Z$1);
    }
}
