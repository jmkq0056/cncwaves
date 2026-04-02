package com.stripe.stripeterminal.internal.common.connectandupdate;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.stripe.core.hardware.Reader;
import com.stripe.core.hardware.ReaderConnectionController;
import com.stripe.core.readerconnection.ConnectionState;
import com.stripe.core.readerconnection.ConnectionSummary;
import com.stripe.statemachine.StateMachine;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ConnectAndUpdateStates.kt */
/* JADX INFO: loaded from: classes4.dex */
@Singleton
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u000f\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016J\u001c\u0010\n\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler;", "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateHandler;", "readerConnectionController", "Lcom/stripe/core/hardware/ReaderConnectionController;", "(Lcom/stripe/core/hardware/ReaderConnectionController;)V", "onConnectAndUpdateApplicationDataUpdate", "", "new", "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;", "old", "onEnter", "current", TypedValues.TransitionType.S_FROM, "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ConnectHandler extends ConnectAndUpdateStateHandler {
    private final ReaderConnectionController readerConnectionController;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public ConnectHandler(ReaderConnectionController readerConnectionController) {
        super(ConnectAndUpdateState.CONNECT);
        Intrinsics.checkNotNullParameter(readerConnectionController, "readerConnectionController");
        this.readerConnectionController = readerConnectionController;
    }

    @Override // com.stripe.statemachine.StateMachine.StateHandler
    public void onEnter(ConnectAndUpdateApplicationData current, ConnectAndUpdateState from) {
        ConnectionSummary connectionSummary;
        Reader device;
        if (from != ConnectAndUpdateState.EMPTY || current == null || (connectionSummary = current.getConnectionSummary()) == null || (device = connectionSummary.getDevice()) == null) {
            return;
        }
        this.readerConnectionController.connect(device);
    }

    @Override // com.stripe.stripeterminal.internal.common.connectandupdate.ConnectAndUpdateStateHandler
    public void onConnectAndUpdateApplicationDataUpdate(ConnectAndUpdateApplicationData connectAndUpdateApplicationData, ConnectAndUpdateApplicationData old) {
        Intrinsics.checkNotNullParameter(connectAndUpdateApplicationData, "new");
        ConnectionSummary connectionSummary = connectAndUpdateApplicationData.getConnectionSummary();
        if ((connectionSummary != null ? connectionSummary.getState() : null) == ConnectionState.FETCHING_INFO) {
            StateMachine.StateHandler.transitionTo$default(this, ConnectAndUpdateState.READER_INFO, null, 2, null);
            return;
        }
        ConnectionSummary connectionSummary2 = connectAndUpdateApplicationData.getConnectionSummary();
        if ((connectionSummary2 != null ? connectionSummary2.getState() : null) == ConnectionState.DISCONNECTING) {
            StateMachine.StateHandler.transitionTo$default(this, ConnectAndUpdateState.DISCONNECT, null, 2, null);
        }
    }
}
