package com.stripe.paymentcollection;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.stripe.paymentcollection.TippingState;
import com.stripe.paymentcollection.log.PaymentCollectionLogger;
import com.stripe.statemachine.StateMachine;
import com.stripe.stripeterminal.external.models.PaymentMethodType;
import com.stripe.transaction.ChargeAttempt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionStateHandlers.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001c\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\u0010\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\fH\u0016J\u001a\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\n2\b\u0010\u0011\u001a\u0004\u0018\u00010\nH\u0016J\u0010\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\nH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/paymentcollection/NonCardPaymentMethodConfirmationHandler;", "Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;", "timer", "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;", "logger", "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;", "(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V", "onEnter", "", "current", "Lcom/stripe/paymentcollection/PaymentCollectionData;", TypedValues.TransitionType.S_FROM, "Lcom/stripe/paymentcollection/PaymentCollectionState;", "onExit", TypedValues.TransitionType.S_TO, "onPaymentCollectionDataUpdate", "new", "old", "sendNonCardPaymentMethodConfirmationEventIfNeeded", "data", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class NonCardPaymentMethodConfirmationHandler extends PaymentCollectionStateHandler {
    private final PaymentCollectionLogger logger;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NonCardPaymentMethodConfirmationHandler(PaymentCollectionStateTimer timer, PaymentCollectionLogger logger) {
        super(PaymentCollectionState.NON_CARD_PAYMENT_METHOD_CONFIRMATION, timer, logger);
        Intrinsics.checkNotNullParameter(timer, "timer");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.logger = logger;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler, com.stripe.statemachine.StateMachine.StateHandler
    public void onEnter(PaymentCollectionData current, PaymentCollectionState from) {
        super.onEnter(current, from);
        if (current != null) {
            PaymentMethodType selectedNonCardPaymentMethod = current.getSelectedNonCardPaymentMethod();
            if (selectedNonCardPaymentMethod == null) {
                this.logger.e("entered non card payment method confirmation without selection");
                StateMachine.StateHandler.transitionTo$default(this, PaymentCollectionState.CANCEL, null, 2, null);
            } else {
                yieldEvent(new PresentNonCardPaymentMethodLoadingEvent(selectedNonCardPaymentMethod));
                sendNonCardPaymentMethodConfirmationEventIfNeeded(current);
            }
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler, com.stripe.statemachine.StateMachine.StateHandler
    public void onExit(PaymentCollectionState to) {
        Intrinsics.checkNotNullParameter(to, "to");
        super.onExit(to);
        PaymentCollectionData data = getData();
        if (data != null) {
            getDiscreteEventLogger().logNonCardPaymentMethodConfirmResult(data);
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler
    public void onPaymentCollectionDataUpdate(PaymentCollectionData paymentCollectionData, PaymentCollectionData old) {
        Intrinsics.checkNotNullParameter(paymentCollectionData, "new");
        super.onPaymentCollectionDataUpdate(paymentCollectionData, old);
        if (paymentCollectionData.getChargeAttempt() instanceof ChargeAttempt.CompletedAttempt) {
            StateMachine.StateHandler.transitionTo$default(this, PaymentCollectionState.FINISHED, null, 2, null);
        } else if (paymentCollectionData.getNonCardPaymentMethodData() != null) {
            StateMachine.StateHandler.transitionTo$default(this, PaymentCollectionState.NON_CARD_PAYMENT_METHOD_ACTION_REQUIRED, null, 2, null);
        }
    }

    private final void sendNonCardPaymentMethodConfirmationEventIfNeeded(PaymentCollectionData data) {
        PaymentMethodType selectedNonCardPaymentMethod = data.getSelectedNonCardPaymentMethod();
        if (selectedNonCardPaymentMethod == null || data.getNonCardPaymentMethodConfirmationRequested()) {
            return;
        }
        updateDataWithoutCallback(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, true, null, false, false, false, false, -1, -1, 62, null));
        TippingState tippingState = data.getTippingState();
        TippingState.Ineligible ineligible = tippingState instanceof TippingState.EndState ? (TippingState.EndState) tippingState : null;
        if (ineligible == null) {
            this.logger.w("Reached non-card confirmation with incomplete tipping flow. This should never happen.");
            ineligible = TippingState.Ineligible.INSTANCE;
        }
        yieldEvent(new NonCardPaymentMethodConfirmationRequestEvent(selectedNonCardPaymentMethod, ineligible));
    }
}
