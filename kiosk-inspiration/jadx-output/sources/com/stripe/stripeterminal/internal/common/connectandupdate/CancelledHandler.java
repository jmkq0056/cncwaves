package com.stripe.stripeterminal.internal.common.connectandupdate;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.stripe.core.readerupdate.UpdateInstaller;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ConnectAndUpdateStates.kt */
/* JADX INFO: loaded from: classes4.dex */
@Singleton
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0017\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001c\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler;", "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateHandler;", "discoveryController", "Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;", "updateInstaller", "Lcom/stripe/core/readerupdate/UpdateInstaller;", "(Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;Lcom/stripe/core/readerupdate/UpdateInstaller;)V", "onEnter", "", "current", "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;", TypedValues.TransitionType.S_FROM, "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CancelledHandler extends ConnectAndUpdateStateHandler {
    private final DiscoveryController discoveryController;
    private final UpdateInstaller updateInstaller;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public CancelledHandler(DiscoveryController discoveryController, UpdateInstaller updateInstaller) {
        super(ConnectAndUpdateState.CANCELLED);
        Intrinsics.checkNotNullParameter(discoveryController, "discoveryController");
        Intrinsics.checkNotNullParameter(updateInstaller, "updateInstaller");
        this.discoveryController = discoveryController;
        this.updateInstaller = updateInstaller;
    }

    @Override // com.stripe.statemachine.StateMachine.StateHandler
    public void onEnter(ConnectAndUpdateApplicationData current, ConnectAndUpdateState from) {
        if (from == ConnectAndUpdateState.INSTALL_UPDATES) {
            this.updateInstaller.cancel();
        }
        if (CollectionsKt.contains(CollectionsKt.listOf((Object[]) new ConnectAndUpdateState[]{ConnectAndUpdateState.DISCOVER, ConnectAndUpdateState.CONNECT, ConnectAndUpdateState.DISCONNECT, ConnectAndUpdateState.READER_INFO}), from)) {
            this.discoveryController.stopDiscover();
        }
        transitionTo(ConnectAndUpdateState.EMPTY, "Transaction cancelled");
    }
}
