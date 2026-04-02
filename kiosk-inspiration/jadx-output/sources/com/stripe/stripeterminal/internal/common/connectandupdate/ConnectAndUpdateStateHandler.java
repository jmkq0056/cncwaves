package com.stripe.stripeterminal.internal.common.connectandupdate;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.core.readerconnection.ConnectionState;
import com.stripe.core.readerconnection.ConnectionSummary;
import com.stripe.core.readerupdate.UpdateState;
import com.stripe.core.readerupdate.UpdateSummary;
import com.stripe.jvmcore.logging.terminal.log.Log;
import com.stripe.statemachine.StateMachine;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ConnectAndUpdateStates.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\b&\u0018\u0000 \u000b2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u000bB\r\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0002\u0010\u0005J\u001a\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00032\b\u0010\t\u001a\u0004\u0018\u00010\u0003H\u0016J\u0018\u0010\n\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00032\b\u0010\t\u001a\u0004\u0018\u00010\u0003¨\u0006\f"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateHandler;", "Lcom/stripe/statemachine/StateMachine$StateHandler;", "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;", "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;", RemoteConfigConstants.ResponseFieldKey.STATE, "(Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;)V", "onConnectAndUpdateApplicationDataUpdate", "", "new", "old", "onUpdate", "Companion", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class ConnectAndUpdateStateHandler extends StateMachine.StateHandler<ConnectAndUpdateState, ConnectAndUpdateApplicationData> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Log LOGGER = Log.INSTANCE.getLogger(ConnectAndUpdateStateHandler.class);

    public void onConnectAndUpdateApplicationDataUpdate(ConnectAndUpdateApplicationData connectAndUpdateApplicationData, ConnectAndUpdateApplicationData old) {
        Intrinsics.checkNotNullParameter(connectAndUpdateApplicationData, "new");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConnectAndUpdateStateHandler(ConnectAndUpdateState state) {
        super(state);
        Intrinsics.checkNotNullParameter(state, "state");
    }

    @Override // com.stripe.statemachine.StateMachine.StateHandler
    public final void onUpdate(ConnectAndUpdateApplicationData connectAndUpdateApplicationData, ConnectAndUpdateApplicationData old) {
        Intrinsics.checkNotNullParameter(connectAndUpdateApplicationData, "new");
        if (!(this instanceof EmptyHandler)) {
            ConnectionSummary connectionSummary = connectAndUpdateApplicationData.getConnectionSummary();
            if ((connectionSummary != null ? connectionSummary.getState() : null) == ConnectionState.NONE) {
                UpdateSummary updateSummary = connectAndUpdateApplicationData.getUpdateSummary();
                if ((updateSummary != null ? updateSummary.getState() : null) == UpdateState.NONE) {
                    StateMachine.StateHandler.transitionTo$default(this, ConnectAndUpdateState.CANCELLED, null, 2, null);
                    return;
                }
            }
        }
        onConnectAndUpdateApplicationDataUpdate(connectAndUpdateApplicationData, old);
    }

    /* JADX INFO: compiled from: ConnectAndUpdateStates.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateHandler$Companion;", "", "()V", "LOGGER", "Lcom/stripe/jvmcore/logging/terminal/log/Log;", "getLOGGER$common_publish", "()Lcom/stripe/jvmcore/logging/terminal/log/Log;", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Log getLOGGER$common_publish() {
            return ConnectAndUpdateStateHandler.LOGGER;
        }
    }
}
