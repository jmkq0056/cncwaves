package com.stripe.statemachine;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.annotation.VisibleForTesting;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StateMachine.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\n\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u0002*\b\b\u0001\u0010\u0003*\u00020\u00022\u00020\u0002:\u0001\u001fB\u0005¢\u0006\u0002\u0010\u0004J\r\u0010\r\u001a\u0004\u0018\u00018\u0001¢\u0006\u0002\u0010\u000eJ\r\u0010\u000f\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010\u000eJ\u0016\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\bH\u0004J3\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00028\u00002\b\u0010\u0014\u001a\u0004\u0018\u00018\u00002\b\u0010\u0005\u001a\u0004\u0018\u00018\u00012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0015¢\u0006\u0002\u0010\u0017J\u001c\u0010\u0018\u001a\u00020\u00122\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\bH\u0002J!\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00028\u00002\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016¢\u0006\u0002\u0010\u001aJ\u0013\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00028\u0001¢\u0006\u0002\u0010\u001cJ\u0015\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00028\u0001H\u0002¢\u0006\u0002\u0010\u001cJ\u0015\u0010\u001e\u001a\u00020\u00122\u0006\u0010\n\u001a\u00028\u0000H\u0007¢\u0006\u0002\u0010\u001cR\u0012\u0010\u0005\u001a\u0004\u0018\u00018\u0001X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u001c\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00018\u0001X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0012\u0010\n\u001a\u0004\u0018\u00018\u0000X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0006R&\u0010\u000b\u001a\u001a\u0012\u0004\u0012\u00028\u0000\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\b0\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/stripe/statemachine/StateMachine;", "S", "", "D", "()V", "data", "Ljava/lang/Object;", "handler", "Lcom/stripe/statemachine/StateMachine$StateHandler;", "previousData", RemoteConfigConstants.ResponseFieldKey.STATE, "stateHandlers", "", "getData", "()Ljava/lang/Object;", "getState", "getStateHandler", "onStateChanging", "", TypedValues.TransitionType.S_TO, TypedValues.TransitionType.S_FROM, "reason", "", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V", "registerHandler", "transitionTo", "(Ljava/lang/Object;Ljava/lang/String;)V", "updateData", "(Ljava/lang/Object;)V", "updateDataWithoutCallback", "updateStateWithoutCallback", "StateHandler", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class StateMachine<S, D> {
    private D data;
    private StateHandler<S, D> handler;
    private D previousData;
    private S state;
    private final Map<S, StateHandler<S, D>> stateHandlers = new LinkedHashMap();

    protected void onStateChanging(S to, S from, D data, String reason) {
        Intrinsics.checkNotNullParameter(to, "to");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void registerHandler(StateHandler<S, D> handler) {
        this.stateHandlers.put(handler.getState(), handler);
    }

    public final void updateData(D to) {
        Intrinsics.checkNotNullParameter(to, "to");
        D d = this.data;
        this.previousData = d;
        this.data = to;
        StateHandler<S, D> stateHandler = this.handler;
        if (stateHandler != null) {
            stateHandler.onUpdate(to, d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateDataWithoutCallback(D data) {
        this.data = data;
    }

    @VisibleForTesting
    public final void updateStateWithoutCallback(S state) {
        Intrinsics.checkNotNullParameter(state, "state");
        this.state = state;
    }

    public static /* synthetic */ void transitionTo$default(StateMachine stateMachine, Object obj, String str, int i, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: transitionTo");
        }
        if ((i & 2) != 0) {
            str = null;
        }
        stateMachine.transitionTo(obj, str);
    }

    public void transitionTo(S to, String reason) {
        Intrinsics.checkNotNullParameter(to, "to");
        if (Intrinsics.areEqual(this.state, to)) {
            return;
        }
        S s = this.state;
        StateHandler<S, D> stateHandler = this.handler;
        if (stateHandler != null) {
            stateHandler.onExit(to);
        }
        if (Intrinsics.areEqual(s, this.state)) {
            StateHandler<S, D> stateHandler2 = this.stateHandlers.get(to);
            this.handler = stateHandler2;
            this.state = to;
            if (stateHandler2 != null) {
                onStateChanging(to, s, this.data, reason);
                stateHandler2.onEnter(this.data, s);
                return;
            }
            throw new IllegalStateException("No handler registered for " + to);
        }
    }

    public final S getState() {
        return this.state;
    }

    protected final StateHandler<S, D> getStateHandler() {
        return this.handler;
    }

    public final D getData() {
        return this.data;
    }

    /* JADX INFO: compiled from: StateMachine.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0016\u0018\u0000*\b\b\u0002\u0010\u0001*\u00020\u0002*\b\b\u0003\u0010\u0003*\u00020\u00022\u00020\u0002B\r\u0012\u0006\u0010\u0004\u001a\u00028\u0002¢\u0006\u0002\u0010\u0005J\u000f\u0010\u000f\u001a\u0004\u0018\u00018\u0003H\u0016¢\u0006\u0002\u0010\u0007J!\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00018\u00032\b\u0010\u0013\u001a\u0004\u0018\u00018\u0002H\u0017¢\u0006\u0002\u0010\u0014J\u0015\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00028\u0002H\u0017¢\u0006\u0002\u0010\u0005J\u001f\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00028\u00032\b\u0010\u0019\u001a\u0004\u0018\u00018\u0003H\u0017¢\u0006\u0002\u0010\u0014J\u001a\u0010\u001a\u001a\u00020\u00112\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\nJ\u001f\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00028\u00022\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d¢\u0006\u0002\u0010\u001eJ\u0013\u0010\u001f\u001a\u00020\u00112\u0006\u0010 \u001a\u00028\u0003¢\u0006\u0002\u0010\u0005R\u0013\u0010\u0004\u001a\u00028\u0002¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007R&\u0010\t\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\nX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006!"}, d2 = {"Lcom/stripe/statemachine/StateMachine$StateHandler;", "S", "", "D", RemoteConfigConstants.ResponseFieldKey.STATE, "(Ljava/lang/Object;)V", "getState", "()Ljava/lang/Object;", "Ljava/lang/Object;", "stateMachine", "Lcom/stripe/statemachine/StateMachine;", "getStateMachine", "()Lcom/stripe/statemachine/StateMachine;", "setStateMachine", "(Lcom/stripe/statemachine/StateMachine;)V", "getData", "onEnter", "", "current", TypedValues.TransitionType.S_FROM, "(Ljava/lang/Object;Ljava/lang/Object;)V", "onExit", TypedValues.TransitionType.S_TO, "onUpdate", "new", "old", "register", "transitionTo", "reason", "", "(Ljava/lang/Object;Ljava/lang/String;)V", "updateDataWithoutCallback", "data", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static class StateHandler<S, D> {
        private final S state;
        public StateMachine<S, D> stateMachine;

        public void onEnter(D current, S from) {
        }

        public void onExit(S to) {
            Intrinsics.checkNotNullParameter(to, "to");
        }

        public void onUpdate(D d, D old) {
            Intrinsics.checkNotNullParameter(d, "new");
        }

        public StateHandler(S state) {
            Intrinsics.checkNotNullParameter(state, "state");
            this.state = state;
        }

        public final S getState() {
            return this.state;
        }

        public final StateMachine<S, D> getStateMachine() {
            StateMachine<S, D> stateMachine = this.stateMachine;
            if (stateMachine != null) {
                return stateMachine;
            }
            Intrinsics.throwUninitializedPropertyAccessException("stateMachine");
            return null;
        }

        public final void setStateMachine(StateMachine<S, D> stateMachine) {
            Intrinsics.checkNotNullParameter(stateMachine, "<set-?>");
            this.stateMachine = stateMachine;
        }

        public final void register(StateMachine<S, D> stateMachine) {
            Intrinsics.checkNotNullParameter(stateMachine, "stateMachine");
            setStateMachine(stateMachine);
            stateMachine.registerHandler(this);
        }

        public final void updateDataWithoutCallback(D data) {
            Intrinsics.checkNotNullParameter(data, "data");
            getStateMachine().updateDataWithoutCallback(data);
        }

        public static /* synthetic */ void transitionTo$default(StateHandler stateHandler, Object obj, String str, int i, Object obj2) {
            if (obj2 != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: transitionTo");
            }
            if ((i & 2) != 0) {
                str = null;
            }
            stateHandler.transitionTo(obj, str);
        }

        public final void transitionTo(S to, String reason) {
            Intrinsics.checkNotNullParameter(to, "to");
            getStateMachine().transitionTo(to, reason);
        }

        public D getData() {
            return getStateMachine().getData();
        }
    }
}
