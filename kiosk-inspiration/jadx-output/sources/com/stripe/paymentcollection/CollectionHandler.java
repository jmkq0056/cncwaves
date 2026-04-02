package com.stripe.paymentcollection;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.stripe.currency.Amount;
import com.stripe.currency.AmountKt;
import com.stripe.hardware.ReaderConfiguration;
import com.stripe.hardware.emv.EmvTransactionType;
import com.stripe.hardware.emv.IntermediateTransactionError;
import com.stripe.hardware.emv.TransactionResult;
import com.stripe.hardware.magstripe.MagStripeReadFailure;
import com.stripe.hardware.magstripe.MagStripeReadResult;
import com.stripe.hardware.magstripe.MagStripeReadSuccess;
import com.stripe.hardware.paymentcollection.CollectionModel;
import com.stripe.hardware.paymentcollection.ContactCardSlotState;
import com.stripe.hardware.paymentcollection.PinEntryStatus;
import com.stripe.hardware.paymentcollection.RecoverableError;
import com.stripe.hardware.paymentcollection.TransactionType;
import com.stripe.paymentcollection.MagStripePinStatus;
import com.stripe.paymentcollection.TippingState;
import com.stripe.paymentcollection.log.PaymentCollectionLogger;
import com.stripe.statemachine.StateMachine;
import java.util.ArrayList;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionStateHandlers.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u0000  2\u00020\u0001:\u0001 B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0002J\u000f\u0010\t\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0002\u0010\nJ\b\u0010\u000b\u001a\u00020\bH\u0002J\b\u0010\f\u001a\u00020\bH\u0002J\u0010\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0010\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0011\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u000f\u0010\u0012\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0002\u0010\nJ\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u001c\u0010\u0016\u001a\u00020\b2\b\u0010\u0017\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0010\u0010\u001a\u001a\u00020\b2\u0006\u0010\u001b\u001a\u00020\u0019H\u0016J\u001a\u0010\u001c\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\u000f2\b\u0010\u001e\u001a\u0004\u0018\u00010\u000fH\u0016J\b\u0010\u001f\u001a\u00020\bH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/stripe/paymentcollection/CollectionHandler;", "Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;", "timer", "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;", "logger", "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;", "(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V", "clearLastCollectionResultEvent", "", "clearNumberOfFailedInsertionsEvent", "()Lkotlin/Unit;", "generateAcknowledgeInterfaceResetEvent", "generateClearMagStripeDataEvent", "generateCollectionModel", "data", "Lcom/stripe/paymentcollection/PaymentCollectionData;", "generateConfigureReaderEvent", "generateUserInteractionEvent", "incrementNumberOfFailedInsertionsEvent", "isAuthorizationDataCollected", "", "isSuitableMagStripeDataAvailable", "onEnter", "current", TypedValues.TransitionType.S_FROM, "Lcom/stripe/paymentcollection/PaymentCollectionState;", "onExit", TypedValues.TransitionType.S_TO, "onPaymentCollectionDataUpdate", "new", "old", "resetIsWaitingForCard", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CollectionHandler extends PaymentCollectionStateHandler {
    public static final int TECHNICAL_FALLBACK_FAILED_INSERTION_THRESHOLD = 3;
    private final PaymentCollectionLogger logger;

    /* JADX INFO: compiled from: PaymentCollectionStateHandlers.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[RecoverableError.values().length];
            try {
                iArr[RecoverableError.CHIP_CARD_SWIPED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RecoverableError.CONTACTLESS_LIMIT_EXCEEDED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[RecoverableError.CHIP_CARD_MUST_BE_INSERTED_FOR_SCA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectionHandler(PaymentCollectionStateTimer timer, PaymentCollectionLogger logger) {
        super(PaymentCollectionState.COLLECTION, timer, logger);
        Intrinsics.checkNotNullParameter(timer, "timer");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.logger = logger;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler, com.stripe.statemachine.StateMachine.StateHandler
    public void onEnter(PaymentCollectionData current, PaymentCollectionState from) {
        super.onEnter(current, from);
        if (current != null) {
            if (current.getTransactionType() != TransactionType.STRONG_CUSTOMER_AUTHENTICATION || current.getEmvTransactionType() != EmvTransactionType.TRADITIONAL || from != PaymentCollectionState.ONLINE_AUTHORIZATION) {
                generateConfigureReaderEvent(current);
            }
            onPaymentCollectionDataUpdate(current, current);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler, com.stripe.statemachine.StateMachine.StateHandler
    public void onExit(PaymentCollectionState to) {
        Intrinsics.checkNotNullParameter(to, "to");
        super.onExit(to);
        getStageEventLogger().closeWaitForCardPresentLog(getData());
        PaymentCollectionData data = getData();
        Intrinsics.checkNotNull(data);
        if (!isSuitableMagStripeDataAvailable(data)) {
            generateClearMagStripeDataEvent();
        }
        PaymentCollectionData data2 = getData();
        if (data2 == null || !data2.getBadCardRead()) {
            PaymentCollectionData data3 = getData();
            Intrinsics.checkNotNull(data3);
            if (!isSuitableMagStripeDataAvailable(data3)) {
                clearNumberOfFailedInsertionsEvent();
            }
        }
        PaymentCollectionData data4 = getData();
        Intrinsics.checkNotNull(data4);
        if (!isSuitableMagStripeDataAvailable(data4) && to != PaymentCollectionState.PREPARE_TO_COLLECT_AGAIN) {
            clearLastCollectionResultEvent();
        }
        if (to == PaymentCollectionState.TIPPING_SELECTION || to == PaymentCollectionState.NON_CARD_PAYMENT_METHOD_SELECTION) {
            PaymentCollectionData data5 = getData();
            Intrinsics.checkNotNull(data5);
            updateDataWithoutCallback(PaymentCollectionData.copy$default(data5, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, true, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -1073741825, -1, 63, null));
            generateStopReaderEvent();
        }
        resetIsWaitingForCard();
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler
    public void onPaymentCollectionDataUpdate(PaymentCollectionData paymentCollectionData, PaymentCollectionData old) {
        Intrinsics.checkNotNullParameter(paymentCollectionData, "new");
        super.onPaymentCollectionDataUpdate(paymentCollectionData, old);
        if (paymentCollectionData.getShouldStartNonCardPaymentMethodSelection()) {
            StateMachine.StateHandler.transitionTo$default(this, PaymentCollectionState.NON_CARD_PAYMENT_METHOD_SELECTION, null, 2, null);
            return;
        }
        if (startCollectionIfNeeded(paymentCollectionData)) {
            return;
        }
        boolean zIsAuthorizationDataCollected = isAuthorizationDataCollected(paymentCollectionData);
        boolean z = paymentCollectionData.getCardSlotState() == ContactCardSlotState.CARD_INSERTED_CORRECTLY;
        boolean z2 = paymentCollectionData.getBadCardRead() || paymentCollectionData.isDeclined() || paymentCollectionData.getHardwareTransactionResult() == TransactionResult.Result.CHECK_MOBILE_DEVICE || paymentCollectionData.getHardwareTransactionResult() == TransactionResult.Result.CONTACTLESS_LIMIT_EXCEEDED || paymentCollectionData.getHardwareTransactionResult() == TransactionResult.Result.INSERT_OR_SWIPE_REQUIRED || paymentCollectionData.getHardwareTransactionResult() == TransactionResult.Result.MULTIPLE_CARDS_DETECTED || paymentCollectionData.getHardwareTransactionResult() == TransactionResult.Result.EMPTY_CANDIDATE_LIST || paymentCollectionData.getHardwareTransactionResult() == TransactionResult.Result.TERMINATED || paymentCollectionData.getHardwareTransactionResult() == TransactionResult.Result.CARD_STILL_INSERTED;
        boolean zAreEqual = Intrinsics.areEqual(paymentCollectionData.getMagStripePinStatus(), MagStripePinStatus.ToCollect.INSTANCE);
        boolean zIsSuitableMagStripeDataAvailable = isSuitableMagStripeDataAvailable(paymentCollectionData);
        boolean zIsFatalError = UtilsKt.isFatalError(paymentCollectionData.getHardwareTransactionResult());
        boolean z3 = paymentCollectionData.getHardwareTransactionResult() == TransactionResult.Result.TIMEOUT;
        boolean z4 = paymentCollectionData.getPinEntryStatus() == PinEntryStatus.REQUESTED;
        if (zIsFatalError) {
            transitionTo(PaymentCollectionState.FINISHED, "Fatal error, abort.");
            return;
        }
        if (zIsAuthorizationDataCollected) {
            transitionTo(PaymentCollectionState.PROCESSING, "Contactless card presented.");
            return;
        }
        if (zIsSuitableMagStripeDataAvailable) {
            if (zAreEqual) {
                yieldEvent(RequestPinEntryEvent.INSTANCE);
            }
            transitionTo(PaymentCollectionState.PROCESSING, "Magnetic stripe read.");
            return;
        }
        if (z2) {
            if (paymentCollectionData.getBadCardRead()) {
                this.logger.i("badCardRead", new Pair[0]);
                incrementNumberOfFailedInsertionsEvent();
            }
            transitionTo(PaymentCollectionState.PREPARE_TO_COLLECT_AGAIN, "Error in collection. Prepare to collect again.");
            return;
        }
        if (z3) {
            transitionTo(PaymentCollectionState.TIMEOUT, "Transaction timed out.");
            return;
        }
        if (old != null && !old.getShowThankYouReceived() && paymentCollectionData.getShowThankYouReceived()) {
            transitionTo(PaymentCollectionState.RECOVERABLE_ERROR_SUMMARY, "Received Thank You event. Attempt recovery");
            return;
        }
        if (z) {
            transitionTo(PaymentCollectionState.PROCESSING, "Card inserted.");
            return;
        }
        if (z4) {
            transitionTo(PaymentCollectionState.PROCESSING, "Collect card PIN.");
            return;
        }
        if (paymentCollectionData.getInterfaceResetRequired()) {
            generateAcknowledgeInterfaceResetEvent();
            generateConfigureReaderEvent(paymentCollectionData);
        }
        generateUserInteractionEvent(paymentCollectionData);
    }

    private final Unit incrementNumberOfFailedInsertionsEvent() {
        PaymentCollectionData data = getData();
        if (data == null) {
            return null;
        }
        updateDataWithoutCallback(PaymentCollectionData.copy$default(data, null, null, null, null, false, data.getNumberOfFailedInsertions() + 1, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -33, -1, 63, null));
        return Unit.INSTANCE;
    }

    private final void generateUserInteractionEvent(PaymentCollectionData data) {
        if (!data.getConfirmedCollection() && data.getCartToDisplay() != null) {
            generateDisplayCartEvent(data);
        } else {
            generateCollectionModel(data);
        }
    }

    private final void generateCollectionModel(PaymentCollectionData data) {
        RecoverableError recoverableErrorFromIntermediateTransactionError;
        ArrayList insert;
        MagStripeReadResult magStripeReadResult = data.getMagStripeReadResult();
        IntermediateTransactionError intermediateTransactionError = data.getIntermediateTransactionError();
        if (data.getCardSlotState() == ContactCardSlotState.CARD_INSERTED_INCORRECTLY) {
            recoverableErrorFromIntermediateTransactionError = RecoverableError.CHIP_CARD_INSERTED_INCORRECTLY;
        } else if (magStripeReadResult instanceof MagStripeReadFailure) {
            recoverableErrorFromIntermediateTransactionError = RecoverableError.INSTANCE.fromMagStripeReadFailure(((MagStripeReadFailure) magStripeReadResult).getFailureType());
        } else if ((magStripeReadResult instanceof MagStripeReadSuccess) && ((MagStripeReadSuccess) magStripeReadResult).getIccCapable()) {
            recoverableErrorFromIntermediateTransactionError = RecoverableError.CHIP_CARD_SWIPED;
        } else if (data.getTransactionType() == TransactionType.STRONG_CUSTOMER_AUTHENTICATION) {
            recoverableErrorFromIntermediateTransactionError = RecoverableError.CHIP_CARD_MUST_BE_INSERTED_FOR_SCA;
        } else {
            recoverableErrorFromIntermediateTransactionError = intermediateTransactionError != null ? RecoverableError.INSTANCE.fromIntermediateTransactionError(intermediateTransactionError) : null;
        }
        RecoverableError recoverableError = recoverableErrorFromIntermediateTransactionError;
        int i = recoverableError == null ? -1 : WhenMappings.$EnumSwitchMapping$0[recoverableError.ordinal()];
        if (i == 1) {
            Set<ReaderConfiguration.ReaderType> activeReaderInterfacesForDisplay = data.getActiveReaderInterfacesForDisplay();
            ArrayList arrayList = new ArrayList();
            for (Object obj : activeReaderInterfacesForDisplay) {
                if (((ReaderConfiguration.ReaderType) obj) != ReaderConfiguration.ReaderType.MAGSTRIPE) {
                    arrayList.add(obj);
                }
            }
            insert = arrayList;
        } else if (i == 2) {
            Set<ReaderConfiguration.ReaderType> activeReaderInterfacesForDisplay2 = data.getActiveReaderInterfacesForDisplay();
            ArrayList arrayList2 = new ArrayList();
            for (Object obj2 : activeReaderInterfacesForDisplay2) {
                if (((ReaderConfiguration.ReaderType) obj2) != ReaderConfiguration.ReaderType.NFC) {
                    arrayList2.add(obj2);
                }
            }
            insert = arrayList2;
        } else if (i == 3) {
            insert = ReaderConfiguration.INSTANCE.getINSERT();
        } else {
            insert = data.getActiveReaderInterfacesForDisplay();
        }
        yieldEvent(new PresentPaymentMethodEvent(new CollectionModel(data.getTransactionType(), data.getAmount(), data.getBaseAmount(), recoverableError, CollectionsKt.toSet(insert), data.getCardSlotState(), data.getTippingState() instanceof TippingState.Completed, data.getEnableCustomerCancellation(), data.getSurchargeNotice(), data.getNonCardPaymentMethodTypes(), data.getUseIncrementalAuthUi())));
    }

    private final void generateConfigureReaderEvent(PaymentCollectionData data) {
        Amount amount;
        if (data.getEmvTransactionType() == EmvTransactionType.QUICK && data.getTransactionType() == TransactionType.CHARGE && data.getAmount().getValue() == 0) {
            amount = AmountKt.getQUICK_EMV_AMOUNT();
        } else {
            amount = data.getAmount();
        }
        yieldEvent(new ConfigureReaderEvent(UtilsKt.generateConfigureReaderEvent(data.getDesiredReaderInterfaces(), amount, data.getTransactionType(), data.getEmvTransactionType(), data.isOffline(), data.isDeferredAuthorizationCountry(), data.getDeviceType(), data.getDomesticDebitPriority(), data.getDomesticDebitAids(), data.getForcePinEntry())));
    }

    private final boolean isSuitableMagStripeDataAvailable(PaymentCollectionData data) {
        return data.getMagStripePaymentCollectionAuthority() != null;
    }

    private final boolean isAuthorizationDataCollected(PaymentCollectionData data) {
        String onlineAuthorizationData = data.getOnlineAuthorizationData();
        return !(onlineAuthorizationData == null || onlineAuthorizationData.length() == 0);
    }

    private final Unit clearNumberOfFailedInsertionsEvent() {
        PaymentCollectionData data = getData();
        if (data == null) {
            return null;
        }
        updateDataWithoutCallback(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -33, -1, 63, null));
        return Unit.INSTANCE;
    }

    private final void generateClearMagStripeDataEvent() {
        yieldEvent(ClearMagStripeStateEvent.INSTANCE);
    }

    private final void clearLastCollectionResultEvent() {
        PaymentCollectionData data = getData();
        if (data == null || (data.getLastCollectionResult() == null && data.getIntermediateTransactionError() == null)) {
            return;
        }
        updateDataWithoutCallback(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -1, -4, 63, null));
    }

    private final void generateAcknowledgeInterfaceResetEvent() {
        yieldEvent(AcknowledgeInterfaceResetEvent.INSTANCE);
    }

    private final void resetIsWaitingForCard() {
        PaymentCollectionData data = getData();
        if (data != null) {
            updateDataWithoutCallback(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -1, -257, 63, null));
        }
    }
}
