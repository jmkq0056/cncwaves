package com.stripe.stripeterminal.internal.common.connectivity;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.stripe.statemachine.StateMachine;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StripeHealthCheckerStates.kt */
/* JADX INFO: loaded from: classes4.dex */
@Singleton
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001j\u0002`\u0004B\u0007\b\u0007¢\u0006\u0002\u0010\u0005J\u001c\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u00032\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u0002H\u0016J\u001a\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u00032\b\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineUnstableHandler;", "Lcom/stripe/statemachine/StateMachine$StateHandler;", "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;", "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerData;", "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateHandler;", "()V", "attemptCount", "", "onEnter", "", "current", TypedValues.TransitionType.S_FROM, "onExit", TypedValues.TransitionType.S_TO, "onUpdate", "new", "old", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OnlineUnstableHandler extends StateMachine.StateHandler<StripeHealthCheckerState, StripeHealthCheckerData> {
    private int attemptCount;

    @Inject
    public OnlineUnstableHandler() {
        super(StripeHealthCheckerState.ONLINE_UNSTABLE);
    }

    @Override // com.stripe.statemachine.StateMachine.StateHandler
    public void onEnter(StripeHealthCheckerData current, StripeHealthCheckerState from) {
        super.onEnter(current, from);
        this.attemptCount++;
    }

    @Override // com.stripe.statemachine.StateMachine.StateHandler
    public void onUpdate(StripeHealthCheckerData stripeHealthCheckerData, StripeHealthCheckerData old) {
        Intrinsics.checkNotNullParameter(stripeHealthCheckerData, "new");
        super.onUpdate(stripeHealthCheckerData, old);
        if (stripeHealthCheckerData.getReachable()) {
            transitionTo(StripeHealthCheckerState.ONLINE_STABLE, "Health check call succeeded");
            return;
        }
        int i = this.attemptCount + 1;
        this.attemptCount = i;
        if (i >= 3) {
            transitionTo(StripeHealthCheckerState.OFFLINE_STABLE, "Consecutive health check calls failed");
        }
    }

    @Override // com.stripe.statemachine.StateMachine.StateHandler
    public void onExit(StripeHealthCheckerState to) {
        Intrinsics.checkNotNullParameter(to, "to");
        super.onExit(to);
        this.attemptCount = 0;
    }
}
