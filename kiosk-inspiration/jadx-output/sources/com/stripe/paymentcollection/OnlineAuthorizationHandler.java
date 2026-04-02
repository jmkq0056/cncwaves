package com.stripe.paymentcollection;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.stripe.hardware.emv.EmvTransactionType;
import com.stripe.hardware.emv.Messages;
import com.stripe.hardware.paymentcollection.PinEntryStatus;
import com.stripe.hardware.paymentcollection.TransactionType;
import com.stripe.paymentcollection.DynamicCurrencyConversionSelectionStatus;
import com.stripe.paymentcollection.log.PaymentCollectionLogger;
import com.stripe.statemachine.StateMachine;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionStateHandlers.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0002J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u0010\f\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u001c\u0010\r\u001a\u00020\b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u001a\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u000b2\b\u0010\u0013\u001a\u0004\u0018\u00010\u000bH\u0016¨\u0006\u0014"}, d2 = {"Lcom/stripe/paymentcollection/OnlineAuthorizationHandler;", "Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;", "timer", "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;", "logger", "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;", "(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V", "autoSetQuickEmvAuthResponse", "", "generateAuthResponseEvent", "data", "Lcom/stripe/paymentcollection/PaymentCollectionData;", "generateSecondGenACResponseEvent", "onEnter", "current", TypedValues.TransitionType.S_FROM, "Lcom/stripe/paymentcollection/PaymentCollectionState;", "onPaymentCollectionDataUpdate", "new", "old", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OnlineAuthorizationHandler extends PaymentCollectionStateHandler {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnlineAuthorizationHandler(PaymentCollectionStateTimer timer, PaymentCollectionLogger logger) {
        super(PaymentCollectionState.ONLINE_AUTHORIZATION, timer, logger);
        Intrinsics.checkNotNullParameter(timer, "timer");
        Intrinsics.checkNotNullParameter(logger, "logger");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler, com.stripe.statemachine.StateMachine.StateHandler
    public void onEnter(PaymentCollectionData current, PaymentCollectionState from) {
        super.onEnter(current, from);
        if (current != null) {
            sendOnlineAuthRequestEventIfNeeded(current);
            if (current.getShouldAutoRespondOnlineAuth()) {
                autoSetQuickEmvAuthResponse();
            }
        }
        PaymentCollectionData data = getData();
        if (data != null) {
            onPaymentCollectionDataUpdate(data, data);
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler
    public void onPaymentCollectionDataUpdate(PaymentCollectionData paymentCollectionData, PaymentCollectionData old) {
        Intrinsics.checkNotNullParameter(paymentCollectionData, "new");
        super.onPaymentCollectionDataUpdate(paymentCollectionData, old);
        boolean z = true;
        boolean z2 = paymentCollectionData.getOnlineAuthorizationData() != null;
        boolean z3 = (paymentCollectionData.getOnlineAuthorizationResponse() == null || paymentCollectionData.getOnlineAuthorizationResponseSentToKernel()) ? false : true;
        boolean z4 = paymentCollectionData.getFinalTlvResponse() != null;
        boolean z5 = paymentCollectionData.getHardwareTransactionResult() != null;
        boolean z6 = paymentCollectionData.getEmvTransactionType() == EmvTransactionType.QUICK;
        if (!z5 || (!z4 && !z6)) {
            z = false;
        }
        if (paymentCollectionData.getDynamicCurrencyConversionSelectionStatus() instanceof DynamicCurrencyConversionSelectionStatus.Requested) {
            StateMachine.StateHandler.transitionTo$default(this, PaymentCollectionState.DCC_SELECTION, null, 2, null);
            return;
        }
        if (z) {
            if (!z6) {
                if (paymentCollectionData.getChargeAttempt() != null) {
                    transitionTo(PaymentCollectionState.COLLECTION_COMPLETE, "Received payment confirmation.");
                    return;
                } else {
                    generateSecondGenACResponseEvent(paymentCollectionData);
                    return;
                }
            }
            transitionTo(PaymentCollectionState.COLLECTION_COMPLETE, "Quick response submitted.");
            return;
        }
        if (z3) {
            generateAuthResponseEvent(paymentCollectionData);
            return;
        }
        if (paymentCollectionData.getTransactionType() != TransactionType.STRONG_CUSTOMER_AUTHENTICATION || z2) {
            return;
        }
        if (paymentCollectionData.getScaRequirement() == SCARequirement.ONLINE_OR_OFFLINE_PIN && paymentCollectionData.getPinEntryStatus() == PinEntryStatus.REQUESTED) {
            transitionTo(PaymentCollectionState.PIN_ENTRY, "Online SCA PIN entry requested.");
        } else {
            transitionTo(PaymentCollectionState.COLLECTION, "Offline SCA PIN entry requested.");
        }
    }

    private final void generateSecondGenACResponseEvent(PaymentCollectionData data) {
        boolean z = !data.isDeclined();
        String finalTlvResponse = data.getFinalTlvResponse();
        Intrinsics.checkNotNull(finalTlvResponse);
        yieldEvent(new SecondGenACResponseEvent(new EmvSecondGenACResponse(z, finalTlvResponse)));
    }

    private final void generateAuthResponseEvent(PaymentCollectionData data) {
        String onlineAuthorizationResponse = data.getOnlineAuthorizationResponse();
        if (onlineAuthorizationResponse == null) {
            return;
        }
        AuthorizePaymentEvent authorizePaymentEvent = new AuthorizePaymentEvent(onlineAuthorizationResponse);
        updateDataWithoutCallback(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, true, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -16777217, -1, 63, null));
        yieldEvent(authorizePaymentEvent);
    }

    private final void autoSetQuickEmvAuthResponse() {
        PaymentCollectionData data = getData();
        if (data != null) {
            updateDataWithoutCallback(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, Messages.ONLINE_AUTHORIZATION_RESPONSE_DECLINE, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -8388609, -1, 63, null));
        }
    }
}
