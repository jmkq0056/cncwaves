package com.stripe.paymentcollection;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.stripe.hardware.paymentcollection.ContactCardSlotState;
import com.stripe.paymentcollection.DynamicCurrencyConversionSelectionStatus;
import com.stripe.paymentcollection.TippingState;
import com.stripe.paymentcollection.log.PaymentCollectionLogger;
import com.stripe.statemachine.StateMachine;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionStateHandlers.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001c\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\u001a\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\n2\b\u0010\u000f\u001a\u0004\u0018\u00010\nH\u0016¨\u0006\u0010"}, d2 = {"Lcom/stripe/paymentcollection/CollectionCompleteHandler;", "Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;", "timer", "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;", "logger", "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;", "(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V", "onEnter", "", "current", "Lcom/stripe/paymentcollection/PaymentCollectionData;", TypedValues.TransitionType.S_FROM, "Lcom/stripe/paymentcollection/PaymentCollectionState;", "onPaymentCollectionDataUpdate", "new", "old", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CollectionCompleteHandler extends PaymentCollectionStateHandler {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectionCompleteHandler(PaymentCollectionStateTimer timer, PaymentCollectionLogger logger) {
        super(PaymentCollectionState.COLLECTION_COMPLETE, timer, logger);
        Intrinsics.checkNotNullParameter(timer, "timer");
        Intrinsics.checkNotNullParameter(logger, "logger");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler, com.stripe.statemachine.StateMachine.StateHandler
    public void onEnter(PaymentCollectionData current, PaymentCollectionState from) {
        super.onEnter(current, from);
        if (current != null) {
            onPaymentCollectionDataUpdate(current, current);
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler
    public void onPaymentCollectionDataUpdate(PaymentCollectionData paymentCollectionData, PaymentCollectionData old) {
        Intrinsics.checkNotNullParameter(paymentCollectionData, "new");
        super.onPaymentCollectionDataUpdate(paymentCollectionData, old);
        boolean z = true;
        boolean z2 = paymentCollectionData.getChargeAttempt() != null;
        boolean z3 = paymentCollectionData.getCardSlotState() != ContactCardSlotState.EMPTY;
        boolean confirmedCollection = paymentCollectionData.getConfirmedCollection();
        boolean z4 = paymentCollectionData.getTippingState() instanceof TippingState.SelectionNeeded;
        boolean zIsPreDipEnabled = paymentCollectionData.isPreDipEnabled();
        boolean isCollectionEndedWithFailure = paymentCollectionData.getIsCollectionEndedWithFailure();
        if (!z3 || (!z2 && !zIsPreDipEnabled)) {
            z = false;
        }
        boolean z5 = paymentCollectionData.getDynamicCurrencyConversionSelectionStatus() instanceof DynamicCurrencyConversionSelectionStatus.Requested;
        sendOnlineAuthRequestEventIfNeeded(paymentCollectionData);
        if (isCollectionEndedWithFailure) {
            if (z3) {
                transitionTo(PaymentCollectionState.REMOVE_CARD, "Remove card after collection fails / cancels.");
                return;
            } else {
                transitionTo(PaymentCollectionState.FINISHED, "Finish as collection fails / cancels.");
                return;
            }
        }
        if (z) {
            transitionTo(PaymentCollectionState.REMOVE_CARD, "Remove card after collection success.");
            return;
        }
        if (!confirmedCollection) {
            transitionTo(PaymentCollectionState.DISPLAY_CART_POST_COLLECTION, "Pre-dip collection complete.");
            return;
        }
        if (z5) {
            StateMachine.StateHandler.transitionTo$default(this, PaymentCollectionState.DCC_SELECTION, null, 2, null);
            return;
        }
        if (z4) {
            transitionTo(PaymentCollectionState.TIPPING_SELECTION, "Tipping required.");
        } else if (!z2) {
            transitionTo(PaymentCollectionState.ONLINE_CONFIRMATION, "Waiting for payment confirmation.");
        } else {
            transitionTo(PaymentCollectionState.FINISHED, "Finish as collection succeeds.");
        }
    }
}
