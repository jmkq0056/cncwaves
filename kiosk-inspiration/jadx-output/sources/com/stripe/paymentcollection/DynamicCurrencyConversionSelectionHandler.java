package com.stripe.paymentcollection;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import com.stripe.hardware.paymentcollection.DisclosureMode;
import com.stripe.hardware.paymentcollection.DynamicCurrencyConversionSelectionModel;
import com.stripe.paymentcollection.log.PaymentCollectionLogger;
import com.stripe.transaction.DynamicCurrencyConversionData;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionStateHandlers.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\"\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u001c\u0010\u000f\u001a\u00020\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u0013H\u0016J\u001a\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u00112\b\u0010\u0018\u001a\u0004\u0018\u00010\u0011H\u0016¨\u0006\u0019"}, d2 = {"Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionHandler;", "Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;", "timer", "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;", "logger", "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;", "(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V", "generateUserInteractionEvent", "", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "details", "Lcom/stripe/transaction/DynamicCurrencyConversionData;", "enableCustomerCancellation", "", "onEnter", "current", "Lcom/stripe/paymentcollection/PaymentCollectionData;", TypedValues.TransitionType.S_FROM, "Lcom/stripe/paymentcollection/PaymentCollectionState;", "onExit", TypedValues.TransitionType.S_TO, "onPaymentCollectionDataUpdate", "new", "old", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DynamicCurrencyConversionSelectionHandler extends PaymentCollectionStateHandler {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DynamicCurrencyConversionSelectionHandler(PaymentCollectionStateTimer timer, PaymentCollectionLogger logger) {
        super(PaymentCollectionState.DCC_SELECTION, timer, logger);
        Intrinsics.checkNotNullParameter(timer, "timer");
        Intrinsics.checkNotNullParameter(logger, "logger");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler, com.stripe.statemachine.StateMachine.StateHandler
    public void onEnter(PaymentCollectionData current, PaymentCollectionState from) {
        super.onEnter(current, from);
        if (current != null) {
            getStageEventLogger().openDynamicCurrencyConversionSelectionLog();
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
            getStageEventLogger().closeDynamicCurrencyConversionSelectionLog(data, to);
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler
    public void onPaymentCollectionDataUpdate(PaymentCollectionData paymentCollectionData, PaymentCollectionData old) {
        Intrinsics.checkNotNullParameter(paymentCollectionData, "new");
        super.onPaymentCollectionDataUpdate(paymentCollectionData, old);
        Boolean selectedDynamicCurrencyConversion = paymentCollectionData.getSelectedDynamicCurrencyConversion();
        if (selectedDynamicCurrencyConversion != null) {
            selectedDynamicCurrencyConversion.booleanValue();
            transitionTo(PaymentCollectionState.PROCESSING, "Dynamic Currency Conversion selected");
        } else {
            generateUserInteractionEvent(paymentCollectionData.getAmount(), paymentCollectionData.getDynamicCurrencyConversionData(), paymentCollectionData.getEnableCustomerCancellation());
        }
    }

    private final void generateUserInteractionEvent(Amount amount, DynamicCurrencyConversionData details, boolean enableCustomerCancellation) {
        float transactionMarkupPercent;
        if (details != null) {
            boolean z = (details.getReferenceFxRate() == null || details.getReferenceMarkupPercent() == null) ? false : true;
            if (z) {
                Float referenceMarkupPercent = details.getReferenceMarkupPercent();
                Intrinsics.checkNotNull(referenceMarkupPercent);
                transactionMarkupPercent = referenceMarkupPercent.floatValue();
            } else {
                transactionMarkupPercent = details.getTransactionMarkupPercent();
            }
            yieldEvent(new PresentDynamicCurrencyConversionSelectionEvent(new DynamicCurrencyConversionSelectionModel(amount, details.getAmount(), details.getCardholderRate(), transactionMarkupPercent, DisclosureMode.INSTANCE.fromOptions(details.getSetupFutureUsage(), details.getRequestIncrementalAuth(), details.getRequestExtendedAuth()), z, enableCustomerCancellation, details.getReaderCountry(), details.getCardCountry())));
        }
    }
}
