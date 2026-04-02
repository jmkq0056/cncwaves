package com.stripe.paymentcollection;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.stripe.hardware.paymentcollection.CollectionCompletedModel;
import com.stripe.hardware.paymentcollection.ContactCardSlotState;
import com.stripe.hardware.paymentcollection.PaymentCollectionResultType;
import com.stripe.hardware.paymentcollection.PaymentCollectionTimeoutResultDetails;
import com.stripe.paymentcollection.log.PaymentCollectionLogger;
import com.stripe.statemachine.StateMachine;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionStateHandlers.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u001c\u0010\u000b\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\n2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/paymentcollection/FinishedHandler;", "Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;", "timer", "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;", "logger", "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;", "(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V", "generateCollectionCompleteEvent", "", "data", "Lcom/stripe/paymentcollection/PaymentCollectionData;", "onEnter", "current", TypedValues.TransitionType.S_FROM, "Lcom/stripe/paymentcollection/PaymentCollectionState;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FinishedHandler extends PaymentCollectionStateHandler {
    private final PaymentCollectionLogger logger;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FinishedHandler(PaymentCollectionStateTimer timer, PaymentCollectionLogger logger) {
        super(PaymentCollectionState.FINISHED, timer, logger);
        Intrinsics.checkNotNullParameter(timer, "timer");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.logger = logger;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler, com.stripe.statemachine.StateMachine.StateHandler
    public void onEnter(PaymentCollectionData current, PaymentCollectionState from) {
        super.onEnter(current, from);
        if (current != null) {
            getCollectionEventLogger().end(current, getState());
            generateCollectionCompleteEvent(current);
        }
    }

    private final void generateCollectionCompleteEvent(PaymentCollectionData data) {
        PaymentCollectionResultType collectionResultType = data.getCollectionResultType();
        if (collectionResultType == PaymentCollectionResultType.NOT_FINISHED) {
            this.logger.e("Finished but can't decide the result.");
        }
        PaymentCollectionTimeoutResultDetails paymentCollectionTimeoutResultDetails = null;
        if (!data.getIsCollectionEndedWithFailure() && !data.getConfirmedCollection()) {
            StateMachine.StateHandler.transitionTo$default(this, PaymentCollectionState.DISPLAY_CART_POST_COLLECTION, null, 2, null);
            return;
        }
        if (data.getCardSlotState() != ContactCardSlotState.EMPTY) {
            this.logger.e("Update card slot to EMPTY. Transaction is likely failed with device failure or timed out.");
            yieldEvent(new CardStateUpdateEvent(ContactCardSlotState.EMPTY));
        }
        if (data.getNonCardPaymentMethodData() != null) {
            paymentCollectionTimeoutResultDetails = PaymentCollectionTimeoutResultDetails.TRANSACTION_TIMED_OUT;
        } else if (data.getNonCardPaymentMethodConfirmationRequested()) {
            paymentCollectionTimeoutResultDetails = PaymentCollectionTimeoutResultDetails.TRANSACTION_NOT_PROCESSED;
        }
        yieldEvent(new CollectionCompleteEvent(new CollectionCompletedModel(data.getTransactionType(), collectionResultType, data.getAmount(), false, paymentCollectionTimeoutResultDetails, 8, null)));
    }
}
