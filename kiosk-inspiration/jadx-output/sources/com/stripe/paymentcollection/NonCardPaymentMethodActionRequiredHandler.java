package com.stripe.paymentcollection;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import com.stripe.hardware.paymentcollection.NonCardPaymentMethodActionRequiredModel;
import com.stripe.paymentcollection.log.PaymentCollectionLogger;
import com.stripe.transaction.ChargeAttempt;
import com.stripe.transaction.NonCardPaymentMethodData;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionStateHandlers.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u001c\u0010\r\u001a\u00020\b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u0011H\u0016J\u001a\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u000f2\b\u0010\u0016\u001a\u0004\u0018\u00010\u000fH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/paymentcollection/NonCardPaymentMethodActionRequiredHandler;", "Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;", "timer", "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;", "logger", "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;", "(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V", "generateUserInteractionEvent", "", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "data", "Lcom/stripe/transaction/NonCardPaymentMethodData;", "onEnter", "current", "Lcom/stripe/paymentcollection/PaymentCollectionData;", TypedValues.TransitionType.S_FROM, "Lcom/stripe/paymentcollection/PaymentCollectionState;", "onExit", TypedValues.TransitionType.S_TO, "onPaymentCollectionDataUpdate", "new", "old", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class NonCardPaymentMethodActionRequiredHandler extends PaymentCollectionStateHandler {
    private final PaymentCollectionLogger logger;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NonCardPaymentMethodActionRequiredHandler(PaymentCollectionStateTimer timer, PaymentCollectionLogger logger) {
        super(PaymentCollectionState.NON_CARD_PAYMENT_METHOD_ACTION_REQUIRED, timer, logger);
        Intrinsics.checkNotNullParameter(timer, "timer");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.logger = logger;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler, com.stripe.statemachine.StateMachine.StateHandler
    public void onEnter(PaymentCollectionData current, PaymentCollectionState from) {
        super.onEnter(current, from);
        if (current != null) {
            getStageEventLogger().openNonCardPaymentMethodActionRequiredLog();
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
            getStageEventLogger().closeNonCardPaymentMethodActionRequiredLog(data, to);
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler
    public void onPaymentCollectionDataUpdate(PaymentCollectionData paymentCollectionData, PaymentCollectionData old) {
        Intrinsics.checkNotNullParameter(paymentCollectionData, "new");
        super.onPaymentCollectionDataUpdate(paymentCollectionData, old);
        if (paymentCollectionData.getSelectedNonCardPaymentMethod() == null) {
            transitionTo(PaymentCollectionState.NON_CARD_PAYMENT_METHOD_SELECTION, "User requested to return to non card payment selection.");
            return;
        }
        if (paymentCollectionData.getNonCardPaymentMethodData() == null) {
            transitionTo(PaymentCollectionState.NON_CARD_PAYMENT_METHOD_SELECTION, "No data available");
            return;
        }
        boolean z = false;
        if (paymentCollectionData.getChargeAttempt() instanceof ChargeAttempt.CompletedAttempt) {
            ChargeAttempt chargeAttempt = paymentCollectionData.getChargeAttempt();
            if (chargeAttempt instanceof ChargeAttempt.CompletedAttempt.SuccessfulNonCardCharge) {
                z = true;
            } else if (!(chargeAttempt instanceof ChargeAttempt.CompletedAttempt.DeclinedCharge)) {
                this.logger.w("Received unexpected chargeAttempt type " + paymentCollectionData.getChargeAttempt() + ". Failing transaction.");
            }
            yieldEvent(new NonCardPaymentMethodActionCompletionEvent(z));
            transitionTo(PaymentCollectionState.FINISHED, "Received completed charge.");
            return;
        }
        if (paymentCollectionData.getChargeAttempt() instanceof ChargeAttempt.IncompleteAttempt) {
            this.logger.w("Transaction received un-completable charge attempt (timeout). Failing transaction.");
            yieldEvent(new NonCardPaymentMethodActionCompletionEvent(false));
            transitionTo(PaymentCollectionState.FINISHED, "Received un-completable Charge");
        } else {
            Amount amount = paymentCollectionData.getAmount();
            NonCardPaymentMethodData nonCardPaymentMethodData = paymentCollectionData.getNonCardPaymentMethodData();
            Intrinsics.checkNotNull(nonCardPaymentMethodData);
            generateUserInteractionEvent(amount, nonCardPaymentMethodData);
        }
    }

    private final void generateUserInteractionEvent(Amount amount, NonCardPaymentMethodData data) {
        yieldEvent(new PresentNonCardPaymentMethodActionRequiredEvent(new NonCardPaymentMethodActionRequiredModel(data.getType(), data.getData(), amount)));
    }
}
