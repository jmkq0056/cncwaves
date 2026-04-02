package com.stripe.paymentcollection;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.stripe.hardware.paymentcollection.ContactCardSlotState;
import com.stripe.hardware.paymentcollection.RecoverableError;
import com.stripe.hardware.paymentcollection.RemoveCardModel;
import com.stripe.paymentcollection.log.PaymentCollectionLogger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionStateHandlers.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001c\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\u001a\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\n2\b\u0010\u000f\u001a\u0004\u0018\u00010\nH\u0016¨\u0006\u0010"}, d2 = {"Lcom/stripe/paymentcollection/PrepareToCollectAgainHandler;", "Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;", "timer", "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;", "logger", "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;", "(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V", "onEnter", "", "current", "Lcom/stripe/paymentcollection/PaymentCollectionData;", TypedValues.TransitionType.S_FROM, "Lcom/stripe/paymentcollection/PaymentCollectionState;", "onPaymentCollectionDataUpdate", "new", "old", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PrepareToCollectAgainHandler extends PaymentCollectionStateHandler {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PrepareToCollectAgainHandler(PaymentCollectionStateTimer timer, PaymentCollectionLogger logger) {
        super(PaymentCollectionState.PREPARE_TO_COLLECT_AGAIN, timer, logger);
        Intrinsics.checkNotNullParameter(timer, "timer");
        Intrinsics.checkNotNullParameter(logger, "logger");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler, com.stripe.statemachine.StateMachine.StateHandler
    public void onEnter(PaymentCollectionData current, PaymentCollectionState from) {
        super.onEnter(current, from);
        if (current != null) {
            getCollectionEventLogger().end(current, getState());
            onPaymentCollectionDataUpdate(current, current);
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler
    public void onPaymentCollectionDataUpdate(PaymentCollectionData paymentCollectionData, PaymentCollectionData old) {
        Intrinsics.checkNotNullParameter(paymentCollectionData, "new");
        super.onPaymentCollectionDataUpdate(paymentCollectionData, old);
        boolean z = paymentCollectionData.getCardSlotState() == ContactCardSlotState.EMPTY;
        boolean z2 = paymentCollectionData.getCardSlotState() == ContactCardSlotState.CARD_INSERTED_INCORRECTLY;
        boolean z3 = paymentCollectionData.getHardwareTransactionResult() != null;
        boolean z4 = z && z3;
        boolean z5 = (!paymentCollectionData.isWaitingForCard() || old == null || old.isWaitingForCard()) ? false : true;
        if (z4) {
            transitionTo(PaymentCollectionState.RECOVERABLE_ERROR_SUMMARY, "Transaction can be recovered.");
            return;
        }
        if (z3 && !z) {
            generateStartPollingForCardStatusEvent();
        } else if (z5) {
            transitionTo(PaymentCollectionState.COLLECTION, "Card must be presented again.");
            return;
        }
        if (!z) {
            yieldEvent(new PresentRemoveCardEvent(new RemoveCardModel(paymentCollectionData.getAmount(), paymentCollectionData.getSelectedLanguage(), z2 ? RecoverableError.CHIP_CARD_INSERTED_INCORRECTLY : null)));
        } else {
            yieldEvent(createPresentProcessingEvent(paymentCollectionData));
        }
    }
}
