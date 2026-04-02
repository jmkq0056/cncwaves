package com.stripe.stripeterminal.internal.common.connectivity;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.statemachine.StateMachine;
import java.util.Iterator;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StripeHealthCheckerStateMachine.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B/\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\b\u0010\u000f\u001a\u00020\u0003H\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0002J\u000e\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0002J\u0010\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0002H\u0002J\u000e\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0017R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;", "Lcom/stripe/statemachine/StateMachine;", "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;", "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerData;", "unknownHandler", "Lcom/stripe/stripeterminal/internal/common/connectivity/UnknownHandler;", "onlineStableHandler", "Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineStableHandler;", "offlineStableHandler", "Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineStableHandler;", "onlineUnstableHandler", "Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineUnstableHandler;", "offlineUnstableHandler", "Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineUnstableHandler;", "(Lcom/stripe/stripeterminal/internal/common/connectivity/UnknownHandler;Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineStableHandler;Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineStableHandler;Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineUnstableHandler;Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineUnstableHandler;)V", "getDataOrDefault", "registerHandlers", "", "reset", RemoteConfigConstants.ResponseFieldKey.STATE, "setInitialState", "update", "reachable", "", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Singleton
public final class StripeHealthCheckerStateMachine extends StateMachine<StripeHealthCheckerState, StripeHealthCheckerData> {
    private final OfflineStableHandler offlineStableHandler;
    private final OfflineUnstableHandler offlineUnstableHandler;
    private final OnlineStableHandler onlineStableHandler;
    private final OnlineUnstableHandler onlineUnstableHandler;
    private final UnknownHandler unknownHandler;

    /* JADX INFO: compiled from: StripeHealthCheckerStateMachine.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[StripeHealthCheckerState.values().length];
            try {
                iArr[StripeHealthCheckerState.UNKNOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[StripeHealthCheckerState.ONLINE_STABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[StripeHealthCheckerState.ONLINE_UNSTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[StripeHealthCheckerState.OFFLINE_STABLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[StripeHealthCheckerState.OFFLINE_UNSTABLE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Inject
    public StripeHealthCheckerStateMachine(UnknownHandler unknownHandler, OnlineStableHandler onlineStableHandler, OfflineStableHandler offlineStableHandler, OnlineUnstableHandler onlineUnstableHandler, OfflineUnstableHandler offlineUnstableHandler) {
        Intrinsics.checkNotNullParameter(unknownHandler, "unknownHandler");
        Intrinsics.checkNotNullParameter(onlineStableHandler, "onlineStableHandler");
        Intrinsics.checkNotNullParameter(offlineStableHandler, "offlineStableHandler");
        Intrinsics.checkNotNullParameter(onlineUnstableHandler, "onlineUnstableHandler");
        Intrinsics.checkNotNullParameter(offlineUnstableHandler, "offlineUnstableHandler");
        this.unknownHandler = unknownHandler;
        this.onlineStableHandler = onlineStableHandler;
        this.offlineStableHandler = offlineStableHandler;
        this.onlineUnstableHandler = onlineUnstableHandler;
        this.offlineUnstableHandler = offlineUnstableHandler;
        registerHandlers();
        setInitialState(StripeHealthCheckerState.UNKNOWN);
    }

    private final void registerHandlers() {
        StateMachine.StateHandler stateHandler;
        Iterator<StripeHealthCheckerState> it = StripeHealthCheckerState.getEntries().iterator();
        while (it.hasNext()) {
            int i = WhenMappings.$EnumSwitchMapping$0[it.next().ordinal()];
            if (i == 1) {
                stateHandler = this.unknownHandler;
            } else if (i == 2) {
                stateHandler = this.onlineStableHandler;
            } else if (i == 3) {
                stateHandler = this.onlineUnstableHandler;
            } else if (i == 4) {
                stateHandler = this.offlineStableHandler;
            } else {
                if (i != 5) {
                    throw new NoWhenBranchMatchedException();
                }
                stateHandler = this.offlineUnstableHandler;
            }
            stateHandler.register(this);
        }
    }

    private final void setInitialState(StripeHealthCheckerState state) {
        StateMachine.transitionTo$default(this, state, null, 2, null);
    }

    public final void reset(StripeHealthCheckerState state) {
        Intrinsics.checkNotNullParameter(state, "state");
        setInitialState(state);
    }

    public final void update(boolean reachable) {
        synchronized (this) {
            updateData(getDataOrDefault().copy(reachable));
            Unit unit = Unit.INSTANCE;
        }
    }

    private final StripeHealthCheckerData getDataOrDefault() {
        StripeHealthCheckerData data = getData();
        return data == null ? new StripeHealthCheckerData(false) : data;
    }
}
