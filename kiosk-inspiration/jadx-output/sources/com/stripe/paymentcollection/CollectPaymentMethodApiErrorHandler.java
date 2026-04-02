package com.stripe.paymentcollection;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.stripe.hardware.paymentcollection.ContactCardSlotState;
import com.stripe.paymentcollection.log.PaymentCollectionLogger;
import com.stripe.statemachine.StateMachine;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionStateHandlers.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001c\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016¨\u0006\r"}, d2 = {"Lcom/stripe/paymentcollection/CollectPaymentMethodApiErrorHandler;", "Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;", "timer", "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;", "logger", "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;", "(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V", "onEnter", "", "current", "Lcom/stripe/paymentcollection/PaymentCollectionData;", TypedValues.TransitionType.S_FROM, "Lcom/stripe/paymentcollection/PaymentCollectionState;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CollectPaymentMethodApiErrorHandler extends PaymentCollectionStateHandler {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectPaymentMethodApiErrorHandler(PaymentCollectionStateTimer timer, PaymentCollectionLogger logger) {
        super(PaymentCollectionState.COLLECT_PAYMENT_METHOD_API_ERROR, timer, logger);
        Intrinsics.checkNotNullParameter(timer, "timer");
        Intrinsics.checkNotNullParameter(logger, "logger");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler, com.stripe.statemachine.StateMachine.StateHandler
    public void onEnter(PaymentCollectionData current, PaymentCollectionState from) {
        super.onEnter(current, from);
        if (current != null) {
            updateDataWithoutCallback(PaymentCollectionData.copy$default(current, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, true, false, null, null, null, null, false, null, false, null, false, false, false, false, -1, -16777217, 63, null));
            yieldEvent(CollectPaymentMethodApiErrorEvent.INSTANCE);
            getStageEventLogger().onCancel(current);
            if (current.getCardSlotState() == ContactCardSlotState.EMPTY) {
                transitionTo(PaymentCollectionState.FINISHED, "Update payment intent request resulted in error.");
            } else {
                StateMachine.StateHandler.transitionTo$default(this, PaymentCollectionState.COLLECTION_COMPLETE, null, 2, null);
            }
        }
    }
}
