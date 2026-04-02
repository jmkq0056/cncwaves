package com.stripe.stripeterminal.internal.common.connectandupdate;

import com.stripe.core.readerconnection.ConnectionState;
import com.stripe.core.readerconnection.ConnectionSummary;
import com.stripe.core.readerupdate.UpdateState;
import com.stripe.core.readerupdate.UpdateSummary;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ConnectAndUpdateStates.kt */
/* JADX INFO: loaded from: classes4.dex */
@Singleton
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007\b\u0007¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¨\u0006\b"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/connectandupdate/EmptyHandler;", "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateHandler;", "()V", "onConnectAndUpdateApplicationDataUpdate", "", "new", "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;", "old", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class EmptyHandler extends ConnectAndUpdateStateHandler {

    /* JADX INFO: compiled from: ConnectAndUpdateStates.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[UpdateState.values().length];
            try {
                iArr[UpdateState.CHECKING_FOR_UPDATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[UpdateState.INSTALLING_UPDATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[UpdateState.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[ConnectionState.values().length];
            try {
                iArr2[ConnectionState.DISCOVERING.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[ConnectionState.CONNECTING.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[ConnectionState.STARTING_SESSION.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[ConnectionState.REBOOTING.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[ConnectionState.DISCONNECTING.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[ConnectionState.NONE.ordinal()] = 6;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[ConnectionState.FETCHING_INFO.ordinal()] = 7;
            } catch (NoSuchFieldError unused10) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    @Inject
    public EmptyHandler() {
        super(ConnectAndUpdateState.EMPTY);
    }

    @Override // com.stripe.stripeterminal.internal.common.connectandupdate.ConnectAndUpdateStateHandler
    public void onConnectAndUpdateApplicationDataUpdate(ConnectAndUpdateApplicationData connectAndUpdateApplicationData, ConnectAndUpdateApplicationData old) {
        Intrinsics.checkNotNullParameter(connectAndUpdateApplicationData, "new");
        UpdateSummary updateSummary = connectAndUpdateApplicationData.getUpdateSummary();
        UpdateState state = updateSummary != null ? updateSummary.getState() : null;
        int i = state == null ? -1 : WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
        if (i == 1) {
            transitionTo(ConnectAndUpdateState.CHECK_FOR_UPDATE, "Check for update requested");
        } else if (i == 2) {
            transitionTo(ConnectAndUpdateState.INSTALL_UPDATES, "Installing updates");
        }
        ConnectionSummary connectionSummary = connectAndUpdateApplicationData.getConnectionSummary();
        ConnectionState state2 = connectionSummary != null ? connectionSummary.getState() : null;
        int i2 = state2 != null ? WhenMappings.$EnumSwitchMapping$1[state2.ordinal()] : -1;
        if (i2 == 1) {
            transitionTo(ConnectAndUpdateState.DISCOVER, "Discovery requested");
            return;
        }
        if (i2 == 2) {
            transitionTo(ConnectAndUpdateState.CONNECT, "Connect requested");
            return;
        }
        if (i2 == 3) {
            transitionTo(ConnectAndUpdateState.START_SESSION, "Start session requested");
        } else if (i2 == 4) {
            transitionTo(ConnectAndUpdateState.REBOOT, "Reboot requested");
        } else {
            if (i2 != 5) {
                return;
            }
            transitionTo(ConnectAndUpdateState.DISCONNECT, "Disconnect requested");
        }
    }
}
