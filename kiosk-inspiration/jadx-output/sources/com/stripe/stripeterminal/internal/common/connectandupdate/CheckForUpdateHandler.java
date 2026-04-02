package com.stripe.stripeterminal.internal.common.connectandupdate;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.stripe.core.hardware.updates.ReaderConfigurationUpdateController;
import com.stripe.core.readerupdate.UpdateState;
import com.stripe.core.readerupdate.UpdateSummary;
import com.stripe.statemachine.StateMachine;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ConnectAndUpdateStates.kt */
/* JADX INFO: loaded from: classes4.dex */
@Singleton
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u000f\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001c\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/connectandupdate/CheckForUpdateHandler;", "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateHandler;", "readerConfigurationUpdateController", "Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;", "(Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;)V", "onEnter", "", "current", "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;", TypedValues.TransitionType.S_FROM, "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CheckForUpdateHandler extends ConnectAndUpdateStateHandler {
    private final ReaderConfigurationUpdateController readerConfigurationUpdateController;

    /* JADX INFO: compiled from: ConnectAndUpdateStates.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[UpdateState.values().length];
            try {
                iArr[UpdateState.CHECKING_FOR_UPDATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public CheckForUpdateHandler(ReaderConfigurationUpdateController readerConfigurationUpdateController) {
        super(ConnectAndUpdateState.CHECK_FOR_UPDATE);
        Intrinsics.checkNotNullParameter(readerConfigurationUpdateController, "readerConfigurationUpdateController");
        this.readerConfigurationUpdateController = readerConfigurationUpdateController;
    }

    @Override // com.stripe.statemachine.StateMachine.StateHandler
    public void onEnter(ConnectAndUpdateApplicationData current, ConnectAndUpdateState from) {
        UpdateSummary updateSummary;
        UpdateState state = (current == null || (updateSummary = current.getUpdateSummary()) == null) ? null : updateSummary.getState();
        if ((state == null ? -1 : WhenMappings.$EnumSwitchMapping$0[state.ordinal()]) == 1) {
            ReaderConfigurationUpdateController.readSettings$default(this.readerConfigurationUpdateController, true, true, true, false, true, 8, null);
        } else {
            StateMachine.StateHandler.transitionTo$default(this, ConnectAndUpdateState.CANCELLED, null, 2, null);
        }
    }
}
