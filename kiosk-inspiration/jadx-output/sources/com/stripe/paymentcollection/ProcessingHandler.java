package com.stripe.paymentcollection;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.stripe.hardware.emv.TransactionResult;
import com.stripe.hardware.paymentcollection.PinEntryStatus;
import com.stripe.hardware.paymentcollection.TransactionType;
import com.stripe.paymentcollection.AccountSelectionStatus;
import com.stripe.paymentcollection.MagStripePinStatus;
import com.stripe.paymentcollection.log.PaymentCollectionLogger;
import com.stripe.statemachine.StateMachine;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionStateHandlers.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u001c\u0010\u000b\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\n2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u001a\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\n2\b\u0010\u0011\u001a\u0004\u0018\u00010\nH\u0016¨\u0006\u0012"}, d2 = {"Lcom/stripe/paymentcollection/ProcessingHandler;", "Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;", "timer", "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;", "logger", "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;", "(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V", "generatePresentProcessingEvent", "", "data", "Lcom/stripe/paymentcollection/PaymentCollectionData;", "onEnter", "current", TypedValues.TransitionType.S_FROM, "Lcom/stripe/paymentcollection/PaymentCollectionState;", "onPaymentCollectionDataUpdate", "new", "old", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ProcessingHandler extends PaymentCollectionStateHandler {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProcessingHandler(PaymentCollectionStateTimer timer, PaymentCollectionLogger logger) {
        super(PaymentCollectionState.PROCESSING, timer, logger);
        Intrinsics.checkNotNullParameter(timer, "timer");
        Intrinsics.checkNotNullParameter(logger, "logger");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler, com.stripe.statemachine.StateMachine.StateHandler
    public void onEnter(PaymentCollectionData current, PaymentCollectionState from) {
        super.onEnter(current, from);
        if (current != null) {
            generatePresentProcessingEvent(current);
            onPaymentCollectionDataUpdate(current, current);
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler
    public void onPaymentCollectionDataUpdate(PaymentCollectionData paymentCollectionData, PaymentCollectionData old) {
        Intrinsics.checkNotNullParameter(paymentCollectionData, "new");
        super.onPaymentCollectionDataUpdate(paymentCollectionData, old);
        boolean z = false;
        boolean z2 = paymentCollectionData.getEarlyTransactionAbortReason() == EarlyTransactionAbortReason.EMPTY_CANDIDATE_LIST || paymentCollectionData.getHardwareTransactionResult() == TransactionResult.Result.EMPTY_CANDIDATE_LIST;
        boolean z3 = paymentCollectionData.getSelectedApplicationIndex() != null;
        boolean zIsEmpty = paymentCollectionData.getApplicationList().isEmpty();
        boolean zAreEqual = Intrinsics.areEqual(paymentCollectionData.getAccountSelectionStatus(), AccountSelectionStatus.Requested.INSTANCE);
        boolean z4 = paymentCollectionData.getPinEntryStatus() == PinEntryStatus.REQUESTED;
        boolean z5 = paymentCollectionData.getOnlineAuthorizationData() != null;
        boolean z6 = (paymentCollectionData.getMagStripePaymentCollectionAuthority() == null || Intrinsics.areEqual(paymentCollectionData.getMagStripePinStatus(), MagStripePinStatus.ToCollect.INSTANCE)) ? false : true;
        boolean z7 = paymentCollectionData.getTransactionType() == TransactionType.MAGSTRIPE_PASSTHROUGH;
        if (paymentCollectionData.isWaitingForCard() && old != null && !old.isWaitingForCard()) {
            z = true;
        }
        if (z2) {
            transitionTo(PaymentCollectionState.PREPARE_TO_COLLECT_AGAIN, "Empty candidate list.");
            return;
        }
        if (!zIsEmpty && !z3) {
            transitionTo(PaymentCollectionState.APPLICATION_SELECTION, "Application selection requested.");
            return;
        }
        if (zAreEqual) {
            transitionTo(PaymentCollectionState.ACCOUNT_SELECTION, "Account selection requested.");
            return;
        }
        if (z4) {
            if (Intrinsics.areEqual(paymentCollectionData.getMagStripePinStatus(), MagStripePinStatus.ToCollect.INSTANCE)) {
                transitionTo(PaymentCollectionState.MAGSTRIPE_PIN_ENTRY, "MagStripe Pin entry requested.");
                return;
            } else {
                transitionTo(PaymentCollectionState.PIN_ENTRY, "Pin entry requested.");
                return;
            }
        }
        if (z7 && z6) {
            StateMachine.StateHandler.transitionTo$default(this, PaymentCollectionState.PASSTHROUGH_CONFIRMATION, null, 2, null);
            return;
        }
        if (z5) {
            transitionTo(PaymentCollectionState.ONLINE_AUTHORIZATION, "Online authorization data obtained.");
            return;
        }
        if (z6) {
            transitionTo(PaymentCollectionState.ONLINE_AUTHORIZATION_MAG_STRIPE, "MagStripe online auth ready.");
        } else if (!checkForPrematureTransactionCompletionAndTransitionIfNeeded(paymentCollectionData) && z) {
            transitionTo(PaymentCollectionState.COLLECTION, "Card must be presented again.");
        }
    }

    private final void generatePresentProcessingEvent(PaymentCollectionData data) {
        yieldEvent(createPresentProcessingEvent(data));
    }
}
