package com.stripe.stripeterminal.internal.common.connectandupdate;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.stripe.core.readerconnection.ConnectionSummary;
import com.stripe.core.readerupdate.UpdateSummary;
import com.stripe.statemachine.StateMachine;
import java.util.Iterator;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ConnectAndUpdateStateMachine.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001BW\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0017¢\u0006\u0002\u0010\u0018J\b\u0010\u0019\u001a\u00020\u0003H\u0002J.\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00022\b\u0010\u001d\u001a\u0004\u0018\u00010\u00022\b\u0010\u001e\u001a\u0004\u0018\u00010\u00032\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0014J\b\u0010!\u001a\u00020\u001bH\u0002J\b\u0010\"\u001a\u00020\u001bH\u0002J\u001e\u0010#\u001a\u00020\u001b2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010%2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010'R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006("}, d2 = {"Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;", "Lcom/stripe/statemachine/StateMachine;", "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;", "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;", "emptyHandler", "Lcom/stripe/stripeterminal/internal/common/connectandupdate/EmptyHandler;", "checkForUpdateHandler", "Lcom/stripe/stripeterminal/internal/common/connectandupdate/CheckForUpdateHandler;", "connectHandler", "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler;", "rebootHandler", "Lcom/stripe/stripeterminal/internal/common/connectandupdate/RebootHandler;", "disconnectHandler", "Lcom/stripe/stripeterminal/internal/common/connectandupdate/DisconnectHandler;", "discoveryHandler", "Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryHandler;", "installUpdatesHandler", "Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler;", "sessionHandler", "Lcom/stripe/stripeterminal/internal/common/connectandupdate/SessionHandler;", "readerInfoHandler", "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ReaderInfoHandler;", "cancelledHandler", "Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler;", "(Lcom/stripe/stripeterminal/internal/common/connectandupdate/EmptyHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/CheckForUpdateHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/RebootHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/DisconnectHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/SessionHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ReaderInfoHandler;Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler;)V", "getDataOrDefault", "onStateChanging", "", TypedValues.TransitionType.S_TO, TypedValues.TransitionType.S_FROM, "data", "reason", "", "registerHandlers", "setInitialState", "update", "updateSummary", "Lcom/stripe/core/readerupdate/UpdateSummary;", "connectionSummary", "Lcom/stripe/core/readerconnection/ConnectionSummary;", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Singleton
public final class ConnectAndUpdateStateMachine extends StateMachine<ConnectAndUpdateState, ConnectAndUpdateApplicationData> {
    private final CancelledHandler cancelledHandler;
    private final CheckForUpdateHandler checkForUpdateHandler;
    private final ConnectHandler connectHandler;
    private final DisconnectHandler disconnectHandler;
    private final DiscoveryHandler discoveryHandler;
    private final EmptyHandler emptyHandler;
    private final InstallUpdatesHandler installUpdatesHandler;
    private final ReaderInfoHandler readerInfoHandler;
    private final RebootHandler rebootHandler;
    private final SessionHandler sessionHandler;

    /* JADX INFO: compiled from: ConnectAndUpdateStateMachine.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ConnectAndUpdateState.values().length];
            try {
                iArr[ConnectAndUpdateState.EMPTY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ConnectAndUpdateState.CHECK_FOR_UPDATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ConnectAndUpdateState.CONNECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ConnectAndUpdateState.REBOOT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ConnectAndUpdateState.DISCONNECT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ConnectAndUpdateState.DISCOVER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ConnectAndUpdateState.INSTALL_UPDATES.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[ConnectAndUpdateState.START_SESSION.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[ConnectAndUpdateState.READER_INFO.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[ConnectAndUpdateState.CANCELLED.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Inject
    public ConnectAndUpdateStateMachine(EmptyHandler emptyHandler, CheckForUpdateHandler checkForUpdateHandler, ConnectHandler connectHandler, RebootHandler rebootHandler, DisconnectHandler disconnectHandler, DiscoveryHandler discoveryHandler, InstallUpdatesHandler installUpdatesHandler, SessionHandler sessionHandler, ReaderInfoHandler readerInfoHandler, CancelledHandler cancelledHandler) {
        Intrinsics.checkNotNullParameter(emptyHandler, "emptyHandler");
        Intrinsics.checkNotNullParameter(checkForUpdateHandler, "checkForUpdateHandler");
        Intrinsics.checkNotNullParameter(connectHandler, "connectHandler");
        Intrinsics.checkNotNullParameter(rebootHandler, "rebootHandler");
        Intrinsics.checkNotNullParameter(disconnectHandler, "disconnectHandler");
        Intrinsics.checkNotNullParameter(discoveryHandler, "discoveryHandler");
        Intrinsics.checkNotNullParameter(installUpdatesHandler, "installUpdatesHandler");
        Intrinsics.checkNotNullParameter(sessionHandler, "sessionHandler");
        Intrinsics.checkNotNullParameter(readerInfoHandler, "readerInfoHandler");
        Intrinsics.checkNotNullParameter(cancelledHandler, "cancelledHandler");
        this.emptyHandler = emptyHandler;
        this.checkForUpdateHandler = checkForUpdateHandler;
        this.connectHandler = connectHandler;
        this.rebootHandler = rebootHandler;
        this.disconnectHandler = disconnectHandler;
        this.discoveryHandler = discoveryHandler;
        this.installUpdatesHandler = installUpdatesHandler;
        this.sessionHandler = sessionHandler;
        this.readerInfoHandler = readerInfoHandler;
        this.cancelledHandler = cancelledHandler;
        registerHandlers();
        setInitialState();
    }

    private final void registerHandlers() {
        ConnectAndUpdateStateHandler connectAndUpdateStateHandler;
        Iterator<ConnectAndUpdateState> it = ConnectAndUpdateState.getEntries().iterator();
        while (it.hasNext()) {
            switch (WhenMappings.$EnumSwitchMapping$0[it.next().ordinal()]) {
                case 1:
                    connectAndUpdateStateHandler = this.emptyHandler;
                    break;
                case 2:
                    connectAndUpdateStateHandler = this.checkForUpdateHandler;
                    break;
                case 3:
                    connectAndUpdateStateHandler = this.connectHandler;
                    break;
                case 4:
                    connectAndUpdateStateHandler = this.rebootHandler;
                    break;
                case 5:
                    connectAndUpdateStateHandler = this.disconnectHandler;
                    break;
                case 6:
                    connectAndUpdateStateHandler = this.discoveryHandler;
                    break;
                case 7:
                    connectAndUpdateStateHandler = this.installUpdatesHandler;
                    break;
                case 8:
                    connectAndUpdateStateHandler = this.sessionHandler;
                    break;
                case 9:
                    connectAndUpdateStateHandler = this.readerInfoHandler;
                    break;
                case 10:
                    connectAndUpdateStateHandler = this.cancelledHandler;
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            connectAndUpdateStateHandler.register(this);
        }
    }

    private final void setInitialState() {
        StateMachine.transitionTo$default(this, ConnectAndUpdateState.EMPTY, null, 2, null);
    }

    public static /* synthetic */ void update$default(ConnectAndUpdateStateMachine connectAndUpdateStateMachine, UpdateSummary updateSummary, ConnectionSummary connectionSummary, int i, Object obj) {
        if ((i & 1) != 0) {
            updateSummary = null;
        }
        if ((i & 2) != 0) {
            connectionSummary = null;
        }
        connectAndUpdateStateMachine.update(updateSummary, connectionSummary);
    }

    public final void update(UpdateSummary updateSummary, ConnectionSummary connectionSummary) {
        synchronized (this) {
            ConnectAndUpdateApplicationData dataOrDefault = getDataOrDefault();
            if (connectionSummary != null) {
                dataOrDefault = ConnectAndUpdateApplicationData.copy$default(dataOrDefault, connectionSummary, null, 2, null);
            }
            if (updateSummary != null) {
                dataOrDefault = ConnectAndUpdateApplicationData.copy$default(dataOrDefault, null, updateSummary, 1, null);
            }
            updateData(dataOrDefault);
            Unit unit = Unit.INSTANCE;
        }
    }

    private final ConnectAndUpdateApplicationData getDataOrDefault() {
        ConnectAndUpdateApplicationData data = getData();
        return data == null ? new ConnectAndUpdateApplicationData(null, null, 3, null) : data;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.stripe.statemachine.StateMachine
    public void onStateChanging(ConnectAndUpdateState to, ConnectAndUpdateState from, ConnectAndUpdateApplicationData data, String reason) {
        Intrinsics.checkNotNullParameter(to, "to");
        ConnectAndUpdateStateMachineKt.LOGGER.i("onStateChanged: " + (from != null ? from.name() : null) + " -> " + to.name() + ": " + reason, new Pair[0]);
    }
}
