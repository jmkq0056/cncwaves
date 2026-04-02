package com.stripe.paymentcollection;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.stripe.hardware.magstripe.MagStripeReadResult;
import com.stripe.hardware.magstripe.MagStripeReadSuccess;
import com.stripe.paymentcollection.log.PaymentCollectionLogger;
import com.stripe.transaction.ChargeAttempt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionStateHandlers.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u001c\u0010\u000b\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u001a\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\r2\b\u0010\u0012\u001a\u0004\u0018\u00010\rH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/paymentcollection/PassthroughConfirmationHandler;", "Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;", "timer", "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;", "logger", "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;", "(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V", "generatePassthroughConfirmationEvent", "", "result", "Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;", "onEnter", "current", "Lcom/stripe/paymentcollection/PaymentCollectionData;", TypedValues.TransitionType.S_FROM, "Lcom/stripe/paymentcollection/PaymentCollectionState;", "onPaymentCollectionDataUpdate", "new", "old", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PassthroughConfirmationHandler extends PaymentCollectionStateHandler {
    private final PaymentCollectionLogger logger;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PassthroughConfirmationHandler(PaymentCollectionStateTimer timer, PaymentCollectionLogger logger) {
        super(PaymentCollectionState.PASSTHROUGH_CONFIRMATION, timer, logger);
        Intrinsics.checkNotNullParameter(timer, "timer");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.logger = logger;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler, com.stripe.statemachine.StateMachine.StateHandler
    public void onEnter(PaymentCollectionData current, PaymentCollectionState from) {
        super.onEnter(current, from);
        if (current != null) {
            yieldEvent(createPresentProcessingEvent(current));
            MagStripeReadResult magStripeReadResult = current.getMagStripeReadResult();
            if (magStripeReadResult instanceof MagStripeReadSuccess) {
                this.logger.d("Received MagStripeReadSuccess for Passthrough Confirmation, yielding network request event", new Pair[0]);
                generatePassthroughConfirmationEvent((MagStripeReadSuccess) magStripeReadResult);
            } else {
                this.logger.e("Entered Passthrough Confirmation without card data");
                transitionTo(PaymentCollectionState.PREPARE_TO_COLLECT_AGAIN, "Did not receive passthrough card data");
            }
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler
    public void onPaymentCollectionDataUpdate(PaymentCollectionData paymentCollectionData, PaymentCollectionData old) {
        Intrinsics.checkNotNullParameter(paymentCollectionData, "new");
        super.onPaymentCollectionDataUpdate(paymentCollectionData, old);
        getDiscreteEventLogger().logPassthroughSwiped(paymentCollectionData);
        if (paymentCollectionData.getChargeAttempt() instanceof ChargeAttempt.CompletedAttempt.SuccessfulCollectedData) {
            transitionTo(PaymentCollectionState.FINISHED, "Received successful passthrough confirmation from the backend");
        } else if (paymentCollectionData.getChargeAttempt() instanceof ChargeAttempt.CompletedAttempt.InvalidCollectedData) {
            transitionTo(PaymentCollectionState.FINISHED, "Received declined passthrough confirmation from the backend");
        }
    }

    private final void generatePassthroughConfirmationEvent(MagStripeReadSuccess result) {
        yieldEvent(new PassthroughConfirmationRequestEvent(result));
    }
}
