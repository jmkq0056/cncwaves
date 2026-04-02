package com.stripe.paymentcollection;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.stripe.hardware.emv.CancellationPhase;
import com.stripe.paymentcollection.MagStripePinStatus;
import com.stripe.paymentcollection.log.PaymentCollectionLogger;
import com.stripe.paymentcollection.metrics.PinEntryFailureReason;
import com.stripe.paymentcollection.metrics.Result;
import com.stripe.paymentcollection.metrics.StageEventLogger;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionStateHandlers.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001c\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\u0010\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\fH\u0016J\u001a\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\n2\b\u0010\u0011\u001a\u0004\u0018\u00010\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/stripe/paymentcollection/MagStripePinEntryHandler;", "Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;", "timer", "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;", "logger", "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;", "(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V", "onEnter", "", "current", "Lcom/stripe/paymentcollection/PaymentCollectionData;", TypedValues.TransitionType.S_FROM, "Lcom/stripe/paymentcollection/PaymentCollectionState;", "onExit", TypedValues.TransitionType.S_TO, "onPaymentCollectionDataUpdate", "new", "old", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MagStripePinEntryHandler extends PaymentCollectionStateHandler {
    private final PaymentCollectionLogger logger;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MagStripePinEntryHandler(PaymentCollectionStateTimer timer, PaymentCollectionLogger logger) {
        super(PaymentCollectionState.MAGSTRIPE_PIN_ENTRY, timer, logger);
        Intrinsics.checkNotNullParameter(timer, "timer");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.logger = logger;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler, com.stripe.statemachine.StateMachine.StateHandler
    public void onEnter(PaymentCollectionData current, PaymentCollectionState from) {
        super.onEnter(current, from);
        generateStartPinEntryEvent();
        getStageEventLogger().openPinEntryLog();
        if (current != null) {
            onPaymentCollectionDataUpdate(current, null);
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler
    public void onPaymentCollectionDataUpdate(PaymentCollectionData paymentCollectionData, PaymentCollectionData old) {
        PaymentCollectionData paymentCollectionData2;
        Intrinsics.checkNotNullParameter(paymentCollectionData, "new");
        super.onPaymentCollectionDataUpdate(paymentCollectionData, old);
        if (Intrinsics.areEqual(paymentCollectionData.getMagStripePinStatus(), old != null ? old.getMagStripePinStatus() : null)) {
            paymentCollectionData2 = paymentCollectionData;
        } else {
            this.logger.d("MagStripePinStatus changed to: " + paymentCollectionData.getMagStripePinStatus(), new Pair[0]);
            MagStripePinStatus magStripePinStatus = paymentCollectionData.getMagStripePinStatus();
            if (Intrinsics.areEqual(magStripePinStatus, MagStripePinStatus.Collected.INSTANCE)) {
                StageEventLogger.closePinEntryLog$default(getStageEventLogger(), Result.SUCCESS, paymentCollectionData, null, 4, null);
                transitionTo(PaymentCollectionState.ONLINE_AUTHORIZATION_MAG_STRIPE, "MagStripe PIN entered.");
                return;
            }
            if (Intrinsics.areEqual(magStripePinStatus, MagStripePinStatus.Bypassed.INSTANCE)) {
                StageEventLogger.closePinEntryLog$default(getStageEventLogger(), Result.FAILURE, paymentCollectionData, null, 4, null);
                transitionTo(PaymentCollectionState.ONLINE_AUTHORIZATION_MAG_STRIPE, "MagStripe PIN bypassed.");
                return;
            } else if (magStripePinStatus instanceof MagStripePinStatus.Failed) {
                StageEventLogger.closePinEntryLog$default(getStageEventLogger(), Result.FAILURE, paymentCollectionData, null, 4, null);
                clearContactCardStateAndPrepareNextCollection();
                transitionTo(PaymentCollectionState.COLLECTION, "MagStripe PIN failed, recollect payment.");
                return;
            } else {
                if (Intrinsics.areEqual(magStripePinStatus, MagStripePinStatus.NotNeeded.INSTANCE)) {
                    this.logger.e("MagStripePinStatus NotNeeded in MagStripe PIN state.");
                } else {
                    Intrinsics.areEqual(magStripePinStatus, MagStripePinStatus.ToCollect.INSTANCE);
                }
                paymentCollectionData2 = paymentCollectionData;
            }
        }
        PaymentCollectionData paymentCollectionData3 = paymentCollectionData2;
        generateUserInteractionEvent(paymentCollectionData2.getAmount(), paymentCollectionData2.getPinAsterisks(), paymentCollectionData3.getSelectedLanguage(), paymentCollectionData3.getPinEntryRetryReason(), paymentCollectionData3.getEnableCustomerCancellation(), getPinEntryAccessibilityData(paymentCollectionData3, old));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler, com.stripe.statemachine.StateMachine.StateHandler
    public void onExit(PaymentCollectionState to) {
        Intrinsics.checkNotNullParameter(to, "to");
        super.onExit(to);
        if (to == PaymentCollectionState.CANCEL) {
            yieldEvent(new StopReaderEvent(CancellationPhase.PIN));
            StageEventLogger stageEventLogger = getStageEventLogger();
            Result result = Result.FAILURE;
            PaymentCollectionData data = getData();
            Intrinsics.checkNotNull(data);
            stageEventLogger.closePinEntryLog(result, data, PinEntryFailureReason.MERCHANT_CANCELLED);
        }
    }
}
