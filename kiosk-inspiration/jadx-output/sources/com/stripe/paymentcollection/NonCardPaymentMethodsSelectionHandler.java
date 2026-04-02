package com.stripe.paymentcollection;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.stripe.hardware.paymentcollection.NonCardPaymentMethodSelectionModel;
import com.stripe.paymentcollection.log.PaymentCollectionLogger;
import com.stripe.stripeterminal.external.models.PaymentMethodType;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionStateHandlers.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0016\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u001c\u0010\f\u001a\u00020\b2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u0010H\u0016J\u001a\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u000e2\b\u0010\u0015\u001a\u0004\u0018\u00010\u000eH\u0016¨\u0006\u0016"}, d2 = {"Lcom/stripe/paymentcollection/NonCardPaymentMethodsSelectionHandler;", "Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;", "timer", "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;", "logger", "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;", "(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V", "generateUserInteractionEvent", "", "paymentMethodTypes", "", "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "onEnter", "current", "Lcom/stripe/paymentcollection/PaymentCollectionData;", TypedValues.TransitionType.S_FROM, "Lcom/stripe/paymentcollection/PaymentCollectionState;", "onExit", TypedValues.TransitionType.S_TO, "onPaymentCollectionDataUpdate", "new", "old", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class NonCardPaymentMethodsSelectionHandler extends PaymentCollectionStateHandler {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NonCardPaymentMethodsSelectionHandler(PaymentCollectionStateTimer timer, PaymentCollectionLogger logger) {
        super(PaymentCollectionState.NON_CARD_PAYMENT_METHOD_SELECTION, timer, logger);
        Intrinsics.checkNotNullParameter(timer, "timer");
        Intrinsics.checkNotNullParameter(logger, "logger");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler, com.stripe.statemachine.StateMachine.StateHandler
    public void onEnter(PaymentCollectionData current, PaymentCollectionState from) {
        super.onEnter(current, from);
        if (current != null) {
            getStageEventLogger().openNonCardPaymentMethodSelectionLog();
            onPaymentCollectionDataUpdate(current, current);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler, com.stripe.statemachine.StateMachine.StateHandler
    public void onExit(PaymentCollectionState to) {
        Intrinsics.checkNotNullParameter(to, "to");
        super.onExit(to);
        PaymentCollectionData data = getData();
        if (data != null) {
            getStageEventLogger().closeNonCardPaymentMethodSelectionLog(data, to);
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler
    public void onPaymentCollectionDataUpdate(PaymentCollectionData paymentCollectionData, PaymentCollectionData old) {
        Intrinsics.checkNotNullParameter(paymentCollectionData, "new");
        super.onPaymentCollectionDataUpdate(paymentCollectionData, old);
        PaymentMethodType selectedNonCardPaymentMethod = paymentCollectionData.getSelectedNonCardPaymentMethod();
        if (selectedNonCardPaymentMethod != null) {
            yieldEvent(new SelectNonCardPaymentMethodEvent(selectedNonCardPaymentMethod));
            transitionTo(PaymentCollectionState.NON_CARD_PAYMENT_METHOD_CONFIRMATION, "Non card payment method requested.");
        } else if (!paymentCollectionData.getShouldStartNonCardPaymentMethodSelection()) {
            transitionTo(PaymentCollectionState.COLLECTION, "User requested to return to card payment collection from non card payment selection.");
        } else {
            generateUserInteractionEvent(paymentCollectionData.getNonCardPaymentMethodTypes());
        }
    }

    private final void generateUserInteractionEvent(List<? extends PaymentMethodType> paymentMethodTypes) {
        yieldEvent(new PresentNonCardPaymentMethodsSelectionEvent(new NonCardPaymentMethodSelectionModel(paymentMethodTypes)));
    }
}
