package com.stripe.hardware.paymentcollection;

import com.stripe.hardware.ReaderConfiguration;
import com.stripe.hardware.emv.IntermediateTransactionError;
import com.stripe.hardware.emv.TransactionResult;
import com.stripe.hardware.magstripe.MagStripeReadResult;
import com.stripe.hardware.status.AudioAlertType;
import com.stripe.hardware.status.ReaderDisplayMessage;
import com.stripe.hardware.tipping.TipSelectionResult;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;

/* JADX INFO: compiled from: PaymentEventReceiver.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0003H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J\b\u0010\n\u001a\u00020\u0003H&J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\rH&J\b\u0010\u000e\u001a\u00020\u0003H&J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0011H&J\b\u0010\u0012\u001a\u00020\u0003H&J\b\u0010\u0013\u001a\u00020\u0003H&J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0016H&J\u0010\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0019H&J(\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u001c2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u001eH&J\u0016\u0010 \u001a\u00020\u00032\f\u0010!\u001a\b\u0012\u0004\u0012\u00020#0\"H&J\b\u0010$\u001a\u00020\u0003H&J\b\u0010%\u001a\u00020\u0003H&J\u0010\u0010&\u001a\u00020\u00032\u0006\u0010'\u001a\u00020\u001eH&J\u0010\u0010(\u001a\u00020\u00032\u0006\u0010)\u001a\u00020*H&J\b\u0010+\u001a\u00020\u0003H&J\u0016\u0010,\u001a\u00020\u00032\f\u0010-\u001a\b\u0012\u0004\u0012\u00020\u001e0.H&J\b\u0010/\u001a\u00020\u0003H&J\u0010\u00100\u001a\u00020\u00032\u0006\u00101\u001a\u00020\u001eH&J\u0010\u00102\u001a\u00020\u00032\u0006\u00103\u001a\u000204H&J\u0010\u00105\u001a\u00020\u00032\u0006\u00106\u001a\u000207H&J\b\u00108\u001a\u00020\u0003H&J\u0010\u00109\u001a\u00020\u00032\u0006\u0010:\u001a\u00020;H&J\b\u0010<\u001a\u00020\u0003H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006=À\u0006\u0001"}, d2 = {"Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;", "", "onAccessiblePinPadEvent", "", "accessiblePinPadTouchEvent", "Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;", "onBatteryCriticallyLow", "onCardSwiped", "readResult", "Lcom/stripe/hardware/magstripe/MagStripeReadResult;", "onChipCardInitializationFailed", "onContactCardStateUpdate", "slotState", "Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;", "onDeviceMissingEncryptionKeys", "onDisplayAdditionalMessage", "message", "Lcom/stripe/hardware/status/ReaderDisplayMessage;", "onEmptyCandidateList", "onHardwareTransactionCanceled", "onIntermediateTransactionError", "error", "Lcom/stripe/hardware/emv/IntermediateTransactionError;", "onKernelTippingSelectionResult", "tipSelectionResult", "Lcom/stripe/hardware/tipping/TipSelectionResult;", "onPinEntryStatusChange", "pinEntryStatus", "Lcom/stripe/hardware/paymentcollection/PinEntryStatus;", "epb", "", "ksn", "onReaderTypesChanged", "readerTypes", "", "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;", "onReadingCard", "onRequestFinalConfirm", "onRequestOnlineAuthorisation", "authorisationData", "onRequestProduceAudioTone", "audioAlertType", "Lcom/stripe/hardware/status/AudioAlertType;", "onRequestSelectAccountType", "onRequestSelectApplication", "appList", "", "onResetPaymentInterfaces", "onReturnFinalTlvBlob", "tlv", "onReturnTransactionResult", "transactionResult", "Lcom/stripe/hardware/emv/TransactionResult$Result;", "onSetPinPadButtonsResult", "isSuccess", "", "onShowThankYou", "onUpdatePinEntryAsteriskCount", "count", "", "waitForCardPresent", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface PaymentEventReceiver {
    void onAccessiblePinPadEvent(AccessiblePinPadTouchEvent accessiblePinPadTouchEvent);

    void onBatteryCriticallyLow();

    void onCardSwiped(MagStripeReadResult readResult);

    void onChipCardInitializationFailed();

    void onContactCardStateUpdate(ContactCardSlotState slotState);

    void onDeviceMissingEncryptionKeys();

    void onDisplayAdditionalMessage(ReaderDisplayMessage message);

    void onEmptyCandidateList();

    void onHardwareTransactionCanceled();

    void onIntermediateTransactionError(IntermediateTransactionError error);

    void onKernelTippingSelectionResult(TipSelectionResult tipSelectionResult);

    void onPinEntryStatusChange(PinEntryStatus pinEntryStatus, String epb, String ksn);

    void onReaderTypesChanged(Set<? extends ReaderConfiguration.ReaderType> readerTypes);

    void onReadingCard();

    void onRequestFinalConfirm();

    void onRequestOnlineAuthorisation(String authorisationData);

    void onRequestProduceAudioTone(AudioAlertType audioAlertType);

    void onRequestSelectAccountType();

    void onRequestSelectApplication(List<String> appList);

    void onResetPaymentInterfaces();

    void onReturnFinalTlvBlob(String tlv);

    void onReturnTransactionResult(TransactionResult.Result transactionResult);

    void onSetPinPadButtonsResult(boolean isSuccess);

    void onShowThankYou();

    void onUpdatePinEntryAsteriskCount(int count);

    void waitForCardPresent();

    static /* synthetic */ void onPinEntryStatusChange$default(PaymentEventReceiver paymentEventReceiver, PinEntryStatus pinEntryStatus, String str, String str2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onPinEntryStatusChange");
        }
        if ((i & 2) != 0) {
            str = null;
        }
        if ((i & 4) != 0) {
            str2 = null;
        }
        paymentEventReceiver.onPinEntryStatusChange(pinEntryStatus, str, str2);
    }
}
