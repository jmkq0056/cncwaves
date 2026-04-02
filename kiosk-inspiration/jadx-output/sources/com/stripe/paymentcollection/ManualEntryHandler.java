package com.stripe.paymentcollection;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import com.stripe.hardware.emv.EmvTransactionType;
import com.stripe.hardware.paymentcollection.ManualEntryFailureModel;
import com.stripe.hardware.paymentcollection.TransactionType;
import com.stripe.paymentcollection.TippingState;
import com.stripe.paymentcollection.log.PaymentCollectionLogger;
import com.stripe.paymentcollection.manualentry.ManualEntryCollectionResult;
import com.stripe.paymentcollection.manualentry.ManualEntryFailureReason;
import com.stripe.paymentcollection.manualentry.ManualEntryStateMachine;
import com.stripe.restclient.IntegrationType;
import com.stripe.statemachine.StateMachine;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionStateHandlers.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u001c\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000eH\u0016J\u001a\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\f2\b\u0010\u0013\u001a\u0004\u0018\u00010\fH\u0016J\u0010\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0018\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/stripe/paymentcollection/ManualEntryHandler;", "Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;", "timer", "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;", "manualEntryStateMachine", "Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;", "logger", "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;", "(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V", "onEnter", "", "current", "Lcom/stripe/paymentcollection/PaymentCollectionData;", TypedValues.TransitionType.S_FROM, "Lcom/stripe/paymentcollection/PaymentCollectionState;", "onExit", TypedValues.TransitionType.S_TO, "onPaymentCollectionDataUpdate", "new", "old", "sendManualEntryCollectionResult", "result", "Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;", "sendManualEntryFailureUiEvent", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", BbposDeviceControllerImpl.TRANSACTION_TYPE_PARAM_NAME, "Lcom/stripe/hardware/paymentcollection/TransactionType;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ManualEntryHandler extends PaymentCollectionStateHandler {
    private final PaymentCollectionLogger logger;
    private final ManualEntryStateMachine manualEntryStateMachine;

    /* JADX INFO: compiled from: PaymentCollectionStateHandlers.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[ManualEntryFailureReason.values().length];
            try {
                iArr[ManualEntryFailureReason.UNKNOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ManualEntryFailureReason.INVALID_ENCRYPTED_DATA_RESULT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ManualEntryFailureReason.DEVICE_FAILURE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ManualEntryFailureReason.EARLY_TRANSACTION_RESULT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ManualEntryFailureReason.TIMEOUT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ManualEntryFailureReason.MERCHANT_CANCELLED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ManualEntryFailureReason.USER_CANCELLED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[CancelReason.values().length];
            try {
                iArr2[CancelReason.HARDWARE_CANCELLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[CancelReason.CUSTOMER_CANCELLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[CancelReason.MERCHANT_CANCELLED.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ManualEntryHandler(PaymentCollectionStateTimer timer, ManualEntryStateMachine manualEntryStateMachine, PaymentCollectionLogger logger) {
        super(PaymentCollectionState.MANUAL_ENTRY, timer, logger);
        Intrinsics.checkNotNullParameter(timer, "timer");
        Intrinsics.checkNotNullParameter(manualEntryStateMachine, "manualEntryStateMachine");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.manualEntryStateMachine = manualEntryStateMachine;
        this.logger = logger;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler, com.stripe.statemachine.StateMachine.StateHandler
    public void onEnter(PaymentCollectionData current, PaymentCollectionState from) {
        super.onEnter(current, from);
        if (current != null) {
            this.manualEntryStateMachine.reset();
            ManualEntryStateMachine manualEntryStateMachine = this.manualEntryStateMachine;
            Amount amount = current.getAmount();
            TransactionType transactionType = current.getTransactionType();
            EmvTransactionType emvTransactionType = current.getEmvTransactionType();
            IntegrationType integrationType = current.getIntegrationType();
            if (integrationType == null) {
                integrationType = IntegrationType.LOCAL_POS;
            }
            manualEntryStateMachine.startTransaction(amount, transactionType, emvTransactionType, integrationType, new Function1<ManualEntryCollectionResult, Unit>() { // from class: com.stripe.paymentcollection.ManualEntryHandler$onEnter$1$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ManualEntryCollectionResult manualEntryCollectionResult) {
                    invoke2(manualEntryCollectionResult);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ManualEntryCollectionResult result) {
                    Intrinsics.checkNotNullParameter(result, "result");
                    this.this$0.sendManualEntryCollectionResult(result);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendManualEntryCollectionResult(ManualEntryCollectionResult result) {
        yieldEvent(new ManualEntryCollectionResultEvent(result));
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler
    public void onPaymentCollectionDataUpdate(PaymentCollectionData paymentCollectionData, PaymentCollectionData old) {
        Intrinsics.checkNotNullParameter(paymentCollectionData, "new");
        super.onPaymentCollectionDataUpdate(paymentCollectionData, old);
        ManualEntryCollectionResult manualEntryCollectionResult = paymentCollectionData.getManualEntryCollectionResult();
        if (manualEntryCollectionResult instanceof ManualEntryCollectionResult.Failure) {
            this.logger.i("MOTO collection failed: " + manualEntryCollectionResult, new Pair[0]);
            int i = WhenMappings.$EnumSwitchMapping$0[((ManualEntryCollectionResult.Failure) manualEntryCollectionResult).getReason().ordinal()];
            if (i == 1 || i == 2 || i == 3 || i == 4) {
                sendManualEntryFailureUiEvent(paymentCollectionData.getAmount(), paymentCollectionData.getTransactionType());
                StateMachine.StateHandler.transitionTo$default(this, PaymentCollectionState.FINISHED, null, 2, null);
                return;
            } else {
                if (i != 5) {
                    return;
                }
                StateMachine.StateHandler.transitionTo$default(this, PaymentCollectionState.TIMEOUT, null, 2, null);
                return;
            }
        }
        if (manualEntryCollectionResult instanceof ManualEntryCollectionResult.Success) {
            this.logger.i("MOTO collection success: " + manualEntryCollectionResult, new Pair[0]);
            yieldEvent(new ManualEntryAuthorizationRequestEvent(((ManualEntryCollectionResult.Success) manualEntryCollectionResult).getData(), TippingState.Ineligible.INSTANCE));
            StateMachine.StateHandler.transitionTo$default(this, PaymentCollectionState.COLLECTION_COMPLETE, null, 2, null);
        }
    }

    private final void sendManualEntryFailureUiEvent(Amount amount, TransactionType transactionType) {
        yieldEvent(new ManualEntryEvent(new ManualEntryFailureModel(amount, transactionType)));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler, com.stripe.statemachine.StateMachine.StateHandler
    public void onExit(PaymentCollectionState to) {
        Intrinsics.checkNotNullParameter(to, "to");
        super.onExit(to);
        if (to == PaymentCollectionState.CANCEL) {
            PaymentCollectionData data = getData();
            CancelReason cancelReason = data != null ? data.getCancelReason() : null;
            int i = cancelReason == null ? -1 : WhenMappings.$EnumSwitchMapping$1[cancelReason.ordinal()];
            if (i == -1) {
                this.logger.w("Manual entry cancelled without a reason.");
                return;
            }
            if (i == 1) {
                this.manualEntryStateMachine.notifyHardwareCancel();
            } else if (i == 2 || i == 3) {
                this.manualEntryStateMachine.notifyMerchantCancel();
            }
        }
    }
}
