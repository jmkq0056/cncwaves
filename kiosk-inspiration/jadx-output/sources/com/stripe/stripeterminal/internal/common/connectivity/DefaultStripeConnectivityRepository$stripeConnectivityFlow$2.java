package com.stripe.stripeterminal.internal.common.connectivity;

import kotlin.Metadata;
import kotlin.Triple;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.AdaptedFunctionReference;

/* JADX INFO: compiled from: DefaultStripeConnectivityRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* synthetic */ class DefaultStripeConnectivityRepository$stripeConnectivityFlow$2 extends AdaptedFunctionReference implements Function4<Boolean, Boolean, Boolean, Continuation<? super Triple<? extends Boolean, ? extends Boolean, ? extends Boolean>>, Object>, SuspendFunction {
    public static final DefaultStripeConnectivityRepository$stripeConnectivityFlow$2 INSTANCE = new DefaultStripeConnectivityRepository$stripeConnectivityFlow$2();

    DefaultStripeConnectivityRepository$stripeConnectivityFlow$2() {
        super(4, Triple.class, "<init>", "<init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V", 4);
    }

    @Override // kotlin.jvm.functions.Function4
    public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Boolean bool2, Boolean bool3, Continuation<? super Triple<? extends Boolean, ? extends Boolean, ? extends Boolean>> continuation) {
        return invoke(bool.booleanValue(), bool2.booleanValue(), bool3.booleanValue(), (Continuation<? super Triple<Boolean, Boolean, Boolean>>) continuation);
    }

    public final Object invoke(boolean z, boolean z2, boolean z3, Continuation<? super Triple<Boolean, Boolean, Boolean>> continuation) {
        return DefaultStripeConnectivityRepository.stripeConnectivityFlow$lambda$2(z, z2, z3, continuation);
    }
}
