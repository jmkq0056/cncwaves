package com.stripe.paymentcollection;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.stripe.hardware.emv.CancellationPhase;
import com.stripe.hardware.paymentcollection.ContactCardSlotState;
import com.stripe.hardware.paymentcollection.PinEntryStatus;
import com.stripe.paymentcollection.AccountSelectionStatus;
import com.stripe.paymentcollection.log.PaymentCollectionLogger;
import com.stripe.statemachine.StateMachine;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionStateHandlers.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001c\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\u001a\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\n2\b\u0010\u000f\u001a\u0004\u0018\u00010\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/stripe/paymentcollection/CancelHandler;", "Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;", "timer", "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;", "logger", "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;", "(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V", "onEnter", "", "current", "Lcom/stripe/paymentcollection/PaymentCollectionData;", TypedValues.TransitionType.S_FROM, "Lcom/stripe/paymentcollection/PaymentCollectionState;", "onPaymentCollectionDataUpdate", "new", "old", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CancelHandler extends PaymentCollectionStateHandler {
    private final PaymentCollectionLogger logger;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CancelHandler(PaymentCollectionStateTimer timer, PaymentCollectionLogger logger) {
        super(PaymentCollectionState.CANCEL, timer, logger);
        Intrinsics.checkNotNullParameter(timer, "timer");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.logger = logger;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler, com.stripe.statemachine.StateMachine.StateHandler
    public void onEnter(PaymentCollectionData current, PaymentCollectionState from) {
        super.onEnter(current, from);
        if (current != null) {
            updateDataWithoutCallback(PaymentCollectionData.copy$default(current, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, from, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -1, -9, 63, null));
            onPaymentCollectionDataUpdate(current, current);
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler
    public void onPaymentCollectionDataUpdate(PaymentCollectionData paymentCollectionData, PaymentCollectionData old) {
        List<String> applicationList;
        Intrinsics.checkNotNullParameter(paymentCollectionData, "new");
        super.onPaymentCollectionDataUpdate(paymentCollectionData, old);
        if (paymentCollectionData.getKernelConfirmedCancel() || paymentCollectionData.getHardwareTransactionResult() != null) {
            yieldEvent(CollectionCancelledEvent.INSTANCE);
            getStageEventLogger().onCancel(paymentCollectionData);
            if (paymentCollectionData.getCardSlotState() == ContactCardSlotState.EMPTY) {
                transitionTo(PaymentCollectionState.FINISHED, "Transaction cancelled.");
                return;
            } else {
                StateMachine.StateHandler.transitionTo$default(this, PaymentCollectionState.COLLECTION_COMPLETE, null, 2, null);
                return;
            }
        }
        if (paymentCollectionData.getOnlineAuthorizationData() != null) {
            if ((old != null ? old.getOnlineAuthorizationData() : null) == null) {
                this.logger.d("online request after a cancel, calling StopReaderEvent", new Pair[0]);
                yieldEvent(new StopReaderEvent(CancellationPhase.AUTH));
                return;
            }
        }
        if (paymentCollectionData.getPinEntryStatus() == PinEntryStatus.REQUESTED) {
            if ((old != null ? old.getPinEntryStatus() : null) == PinEntryStatus.NOT_REQUESTED) {
                this.logger.d("pin entry request after a cancel, calling StopReaderEvent", new Pair[0]);
                yieldEvent(new StopReaderEvent(CancellationPhase.PIN));
                return;
            }
        }
        if (Intrinsics.areEqual(paymentCollectionData.getAccountSelectionStatus(), AccountSelectionStatus.Requested.INSTANCE)) {
            if (Intrinsics.areEqual(old != null ? old.getAccountSelectionStatus() : null, AccountSelectionStatus.NotRequested.INSTANCE)) {
                this.logger.d("account selection request after a cancel, calling StopReaderEvent", new Pair[0]);
                yieldEvent(new StopReaderEvent(CancellationPhase.ACCOUNT_TYPE_SELECTION));
                return;
            }
        }
        if (!paymentCollectionData.getApplicationList().isEmpty() && old != null && (applicationList = old.getApplicationList()) != null && applicationList.isEmpty()) {
            this.logger.d("app selection request after a cancel, calling StopReaderEvent", new Pair[0]);
            yieldEvent(new StopReaderEvent(CancellationPhase.APPLICATION_SELECTION));
        } else if (paymentCollectionData.getStateWhenCancelled() == PaymentCollectionState.NON_CARD_PAYMENT_METHOD_ACTION_REQUIRED) {
            StateMachine.StateHandler.transitionTo$default(this, PaymentCollectionState.INTERSTITIAL, null, 2, null);
        } else if (paymentCollectionData.getEarlyTransactionAbortReason() == null) {
            generateStopReaderEvent();
        }
    }
}
