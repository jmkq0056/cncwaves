package com.stripe.paymentcollection.metrics;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.paymentcollection.OnlineAuthState;
import com.stripe.paymentcollection.OnlineAuthType;
import com.stripe.paymentcollection.PaymentCollectionData;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultOnlineAuthStateLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/paymentcollection/metrics/DefaultOnlineAuthStateLogger;", "Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;", "stageEventLogger", "Lcom/stripe/paymentcollection/metrics/StageEventLogger;", "(Lcom/stripe/paymentcollection/metrics/StageEventLogger;)V", "updateOnlineAuthState", "", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/stripe/paymentcollection/OnlineAuthState;", "data", "Lcom/stripe/paymentcollection/PaymentCollectionData;", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultOnlineAuthStateLogger implements OnlineAuthStateLogger {
    private final StageEventLogger stageEventLogger;

    public DefaultOnlineAuthStateLogger(StageEventLogger stageEventLogger) {
        Intrinsics.checkNotNullParameter(stageEventLogger, "stageEventLogger");
        this.stageEventLogger = stageEventLogger;
    }

    @Override // com.stripe.paymentcollection.metrics.OnlineAuthStateLogger
    public void updateOnlineAuthState(OnlineAuthState state, PaymentCollectionData data) {
        Intrinsics.checkNotNullParameter(state, "state");
        OnlineAuthType onlineAuthType = state.getOnlineAuthType();
        if (Intrinsics.areEqual(state, OnlineAuthState.ReadyToStartConfirmation.INSTANCE)) {
            this.stageEventLogger.openWaitForPosCommandLog(PendingPosCommand.PROCESS_PAYMENT);
            return;
        }
        if (Intrinsics.areEqual(state, OnlineAuthState.ConfirmationStarted.INSTANCE)) {
            this.stageEventLogger.closeWaitForPosCommandLog(data, PendingPosCommand.PROCESS_PAYMENT);
            this.stageEventLogger.openOnlineAuthenticationLog(onlineAuthType);
            return;
        }
        if (Intrinsics.areEqual(state, OnlineAuthState.SecondGenAcStarted.INSTANCE)) {
            this.stageEventLogger.openOnlineAuthenticationLog(onlineAuthType);
            return;
        }
        if (Intrinsics.areEqual(state, OnlineAuthState.Cancelled.INSTANCE) ? true : state instanceof OnlineAuthState.ConfirmationResponseReceived.NeedSecondGenAc ? true : state instanceof OnlineAuthState.ConfirmationResponseReceived.Success ? true : state instanceof OnlineAuthState.ConfirmationResponseReceived.Failed ? true : state instanceof OnlineAuthState.SecondGenAcResponseReceived.Failed ? true : state instanceof OnlineAuthState.SecondGenAcResponseReceived.Success) {
            if (((state instanceof OnlineAuthState.ConfirmationResponseReceived.Failed) && ((OnlineAuthState.ConfirmationResponseReceived.Failed) state).getReason() == com.stripe.paymentcollection.OnlineAuthFailureReason.SCA_NEEDED) || ((state instanceof OnlineAuthState.SecondGenAcResponseReceived.Failed) && ((OnlineAuthState.SecondGenAcResponseReceived.Failed) state).getReason() == com.stripe.paymentcollection.OnlineAuthFailureReason.SCA_NEEDED)) {
                this.stageEventLogger.openWaitForPosCommandLog(PendingPosCommand.RESUME_PAYMENT);
            }
            this.stageEventLogger.closeOnlineAuthenticationLog(data, state);
        }
    }
}
