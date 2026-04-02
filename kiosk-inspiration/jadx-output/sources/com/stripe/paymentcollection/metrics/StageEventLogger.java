package com.stripe.paymentcollection.metrics;

import androidx.core.app.NotificationCompat;
import com.stripe.paymentcollection.HardwareEvent;
import com.stripe.paymentcollection.HardwareListenerEvent;
import com.stripe.paymentcollection.OnlineAuthState;
import com.stripe.paymentcollection.OnlineAuthType;
import com.stripe.paymentcollection.PaymentCollectionData;
import com.stripe.paymentcollection.PaymentCollectionState;
import kotlin.Metadata;

/* JADX INFO: compiled from: StageEventLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0018\u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH&J\u0018\u0010\f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0018\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0018\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u001a\u0010\u000f\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0010\u001a\u00020\u0011H&J$\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016H&J\u0010\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0012\u0010\u0018\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u001c\u0010\u0019\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH&J\u0010\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u001a\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u001f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u001a\u0010 \u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020!2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\b\u0010\"\u001a\u00020\u0003H&J\b\u0010#\u001a\u00020\u0003H&J\b\u0010$\u001a\u00020\u0003H&J\b\u0010%\u001a\u00020\u0003H&J\b\u0010&\u001a\u00020\u0003H&J\b\u0010'\u001a\u00020\u0003H&J\u0010\u0010(\u001a\u00020\u00032\u0006\u0010)\u001a\u00020*H&J\b\u0010+\u001a\u00020\u0003H&J\b\u0010,\u001a\u00020\u0003H&J\b\u0010-\u001a\u00020\u0003H&J\u0010\u0010.\u001a\u00020\u00032\u0006\u0010/\u001a\u00020\u001bH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u00060À\u0006\u0001"}, d2 = {"Lcom/stripe/paymentcollection/metrics/StageEventLogger;", "", "closeAccountSelectionLog", "", "data", "Lcom/stripe/paymentcollection/PaymentCollectionData;", "nextState", "Lcom/stripe/paymentcollection/PaymentCollectionState;", "closeApplicationSelectionLog", "closeDisplayCartLog", "displayCartResult", "Lcom/stripe/paymentcollection/metrics/DisplayCartResult;", "closeDynamicCurrencyConversionSelectionLog", "closeNonCardPaymentMethodActionRequiredLog", "closeNonCardPaymentMethodSelectionLog", "closeOnlineAuthenticationLog", "authState", "Lcom/stripe/paymentcollection/OnlineAuthState;", "closePinEntryLog", "result", "Lcom/stripe/paymentcollection/metrics/Result;", "knownFailureReason", "Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;", "closeRemoveCardLog", "closeWaitForCardPresentLog", "closeWaitForPosCommandLog", "closingCommand", "Lcom/stripe/paymentcollection/metrics/PendingPosCommand;", "onCancel", "onHardwareEvent", NotificationCompat.CATEGORY_EVENT, "Lcom/stripe/paymentcollection/HardwareEvent;", "onHardwareListenerEvent", "Lcom/stripe/paymentcollection/HardwareListenerEvent;", "openAccountSelectionLog", "openApplicationSelectionLog", "openDisplayCartLog", "openDynamicCurrencyConversionSelectionLog", "openNonCardPaymentMethodActionRequiredLog", "openNonCardPaymentMethodSelectionLog", "openOnlineAuthenticationLog", "authType", "Lcom/stripe/paymentcollection/OnlineAuthType;", "openPinEntryLog", "openRemoveCardLog", "openWaitForCardPresentLog", "openWaitForPosCommandLog", "pendingCommand", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface StageEventLogger {
    void closeAccountSelectionLog(PaymentCollectionData data, PaymentCollectionState nextState);

    void closeApplicationSelectionLog(PaymentCollectionData data, PaymentCollectionState nextState);

    void closeDisplayCartLog(PaymentCollectionData data, DisplayCartResult displayCartResult);

    void closeDynamicCurrencyConversionSelectionLog(PaymentCollectionData data, PaymentCollectionState nextState);

    void closeNonCardPaymentMethodActionRequiredLog(PaymentCollectionData data, PaymentCollectionState nextState);

    void closeNonCardPaymentMethodSelectionLog(PaymentCollectionData data, PaymentCollectionState nextState);

    void closeOnlineAuthenticationLog(PaymentCollectionData data, OnlineAuthState authState);

    void closePinEntryLog(Result result, PaymentCollectionData data, PinEntryFailureReason knownFailureReason);

    void closeRemoveCardLog(PaymentCollectionData data);

    void closeWaitForCardPresentLog(PaymentCollectionData data);

    void closeWaitForPosCommandLog(PaymentCollectionData data, PendingPosCommand closingCommand);

    void onCancel(PaymentCollectionData data);

    void onHardwareEvent(HardwareEvent event, PaymentCollectionData data);

    void onHardwareListenerEvent(HardwareListenerEvent event, PaymentCollectionData data);

    void openAccountSelectionLog();

    void openApplicationSelectionLog();

    void openDisplayCartLog();

    void openDynamicCurrencyConversionSelectionLog();

    void openNonCardPaymentMethodActionRequiredLog();

    void openNonCardPaymentMethodSelectionLog();

    void openOnlineAuthenticationLog(OnlineAuthType authType);

    void openPinEntryLog();

    void openRemoveCardLog();

    void openWaitForCardPresentLog();

    void openWaitForPosCommandLog(PendingPosCommand pendingCommand);

    static /* synthetic */ void closePinEntryLog$default(StageEventLogger stageEventLogger, Result result, PaymentCollectionData paymentCollectionData, PinEntryFailureReason pinEntryFailureReason, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: closePinEntryLog");
        }
        if ((i & 4) != 0) {
            pinEntryFailureReason = null;
        }
        stageEventLogger.closePinEntryLog(result, paymentCollectionData, pinEntryFailureReason);
    }
}
