package com.stripe.stripeterminal.internal.common.connectivity;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: StripeNetworkHealthChecker.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H&J\u000e\u0010\u0005\u001a\u00020\u0004H¦@¢\u0006\u0002\u0010\u0006ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0007À\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/connectivity/StripeNetworkHealthChecker;", "", "getNetworkHealthStatusFlow", "Lkotlinx/coroutines/flow/Flow;", "", "isNetworkHealthy", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface StripeNetworkHealthChecker {
    Flow<Boolean> getNetworkHealthStatusFlow();

    Object isNetworkHealthy(Continuation<? super Boolean> continuation);
}
