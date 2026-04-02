package com.stripe.paymentcollection;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.stripe.currency.Amount;
import com.stripe.hardware.paymentcollection.TippingSelectionModel;
import com.stripe.paymentcollection.TippingState;
import com.stripe.paymentcollection.log.PaymentCollectionLogger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionStateHandlers.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0002J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u0010\f\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u001c\u0010\r\u001a\u00020\b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u0010H\u0016J\u001a\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u000b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u000bH\u0016¨\u0006\u0016"}, d2 = {"Lcom/stripe/paymentcollection/TippingHandler;", "Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;", "timer", "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;", "logger", "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;", "(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V", "generateCancelCollectTippingThroughKernelEvent", "", "generateCollectTippingThroughKernelEvent", "data", "Lcom/stripe/paymentcollection/PaymentCollectionData;", "generateUserInteractionEvent", "onEnter", "current", TypedValues.TransitionType.S_FROM, "Lcom/stripe/paymentcollection/PaymentCollectionState;", "onExit", TypedValues.TransitionType.S_TO, "onPaymentCollectionDataUpdate", "new", "old", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TippingHandler extends PaymentCollectionStateHandler {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TippingHandler(PaymentCollectionStateTimer timer, PaymentCollectionLogger logger) {
        super(PaymentCollectionState.TIPPING_SELECTION, timer, logger);
        Intrinsics.checkNotNullParameter(timer, "timer");
        Intrinsics.checkNotNullParameter(logger, "logger");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler, com.stripe.statemachine.StateMachine.StateHandler
    public void onEnter(PaymentCollectionData current, PaymentCollectionState from) {
        super.onEnter(current, from);
        getTippingLogger().openTippingSelectionLog();
        if (current != null) {
            if (current.getDeviceCapability().getDirectlyControlsScreenInput()) {
                generateUserInteractionEvent(current);
            } else {
                generateCollectTippingThroughKernelEvent(current);
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
            getTippingLogger().closeTippingSelectionLog(data);
            if (data.getDeviceCapability().getDirectlyControlsScreenInput()) {
                return;
            }
            generateCancelCollectTippingThroughKernelEvent();
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler
    public void onPaymentCollectionDataUpdate(PaymentCollectionData paymentCollectionData, PaymentCollectionData old) {
        Intrinsics.checkNotNullParameter(paymentCollectionData, "new");
        super.onPaymentCollectionDataUpdate(paymentCollectionData, old);
        if (paymentCollectionData.getTippingState() instanceof TippingState.Completed) {
            transitionTo(PaymentCollectionState.COLLECTION, "Tipping completed.");
        }
        if (old == null || old.getShowThankYouReceived() || !paymentCollectionData.getShowThankYouReceived()) {
            return;
        }
        transitionTo(PaymentCollectionState.RECOVERABLE_ERROR_SUMMARY, "Received Thank You event. Attempt recovery");
    }

    private final void generateUserInteractionEvent(PaymentCollectionData data) {
        Amount amount = data.getAmount();
        Amount tipEligibleAmount = data.getTipEligibleAmount();
        if (tipEligibleAmount == null) {
            tipEligibleAmount = data.getAmount();
        }
        yieldEvent(new TippingSelectionEvent(new TippingSelectionModel(amount, tipEligibleAmount, data.getEnableCustomerCancellation())));
    }

    private final void generateCollectTippingThroughKernelEvent(PaymentCollectionData data) {
        yieldEvent(new HardwareTippingCollectionEvent(data.getTippingConfig()));
    }

    private final void generateCancelCollectTippingThroughKernelEvent() {
        yieldEvent(CancelHardwareTippingCollectionEvent.INSTANCE);
    }
}
