package com.stripe.stripeterminal.internal.common.connectivity;

import com.stripe.statemachine.StateMachine;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StripeHealthCheckerStates.kt */
/* JADX INFO: loaded from: classes4.dex */
@Singleton
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001j\u0002`\u0004B\u0007\b\u0007¢\u0006\u0002\u0010\u0005J\u001a\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00032\b\u0010\t\u001a\u0004\u0018\u00010\u0003H\u0016¨\u0006\n"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineStableHandler;", "Lcom/stripe/statemachine/StateMachine$StateHandler;", "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;", "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerData;", "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateHandler;", "()V", "onUpdate", "", "new", "old", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OnlineStableHandler extends StateMachine.StateHandler<StripeHealthCheckerState, StripeHealthCheckerData> {
    @Inject
    public OnlineStableHandler() {
        super(StripeHealthCheckerState.ONLINE_STABLE);
    }

    @Override // com.stripe.statemachine.StateMachine.StateHandler
    public void onUpdate(StripeHealthCheckerData stripeHealthCheckerData, StripeHealthCheckerData old) {
        Intrinsics.checkNotNullParameter(stripeHealthCheckerData, "new");
        super.onUpdate(stripeHealthCheckerData, old);
        if (stripeHealthCheckerData.getReachable()) {
            return;
        }
        transitionTo(StripeHealthCheckerState.ONLINE_UNSTABLE, "Health check call failed");
    }
}
