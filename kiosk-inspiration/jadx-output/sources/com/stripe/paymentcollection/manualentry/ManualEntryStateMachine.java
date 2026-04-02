package com.stripe.paymentcollection.manualentry;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.stripe.annotation.VisibleForTesting;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import com.stripe.hardware.emv.EmvTransactionType;
import com.stripe.hardware.emv.TransactionResult;
import com.stripe.hardware.paymentcollection.ConfirmPaymentFromManualEntryResult;
import com.stripe.hardware.paymentcollection.ManualEntryEventReceiver;
import com.stripe.hardware.paymentcollection.ManualEntryResult;
import com.stripe.hardware.paymentcollection.ManualEntryType;
import com.stripe.hardware.paymentcollection.TransactionType;
import com.stripe.hardware.paymentcollection.ZipCodeManualEntryResult;
import com.stripe.paymentcollection.log.PaymentCollectionLogger;
import com.stripe.restclient.IntegrationType;
import com.stripe.statemachine.StateMachine;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ManualEntryStateMachine.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000À\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004BU\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0006\u0010\u0015\u001a\u00020\u0016\u0012\u0006\u0010\u0017\u001a\u00020\u0018¢\u0006\u0002\u0010\u0019J\u0010\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020!H\u0002J\u0006\u0010\"\u001a\u00020#J\u0006\u0010$\u001a\u00020#J\u0010\u0010%\u001a\u00020#2\u0006\u0010&\u001a\u00020'H\u0002J8\u0010(\u001a\u00020#2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020*2\u0006\u0010,\u001a\u00020*2\u0006\u0010-\u001a\u00020*2\u0006\u0010.\u001a\u00020*2\u0006\u0010/\u001a\u00020*H\u0016J\b\u00100\u001a\u00020#H\u0016J\u001a\u00101\u001a\u00020#2\b\u00102\u001a\u0004\u0018\u00010*2\u0006\u00103\u001a\u000204H\u0016J\u0010\u00105\u001a\u00020#2\u0006\u00106\u001a\u000207H\u0016J\u0010\u00108\u001a\u00020#2\u0006\u00109\u001a\u00020:H\u0016J.\u0010;\u001a\u00020#2\u0006\u0010<\u001a\u00020\u00022\b\u0010=\u001a\u0004\u0018\u00010\u00022\b\u0010 \u001a\u0004\u0018\u00010\u00032\b\u0010>\u001a\u0004\u0018\u00010*H\u0014J\b\u0010?\u001a\u00020#H\u0002J\u0006\u0010@\u001a\u00020#J\u000e\u0010A\u001a\u00020#2\u0006\u0010B\u001a\u00020CJ>\u0010D\u001a\u00020#2\u0006\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020J2\u0006\u0010K\u001a\u00020L2\u0016\u0010M\u001a\u0012\u0012\u0004\u0012\u00020O\u0012\u0004\u0012\u00020#0Nj\u0002`PR\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u001a\u001a\u00020\u001b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001a\u0010\u001eR\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006Q"}, d2 = {"Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;", "Lcom/stripe/statemachine/StateMachine;", "Lcom/stripe/paymentcollection/manualentry/ManualEntryState;", "Lcom/stripe/paymentcollection/manualentry/ManualEntryData;", "Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;", "emptyHandler", "Lcom/stripe/paymentcollection/manualentry/EmptyHandler;", "configureReaderHandler", "Lcom/stripe/paymentcollection/manualentry/ConfigureReaderHandler;", "zipCodeHandler", "Lcom/stripe/paymentcollection/manualentry/ZipCodeHandler;", "confirmDetailsHandler", "Lcom/stripe/paymentcollection/manualentry/ConfirmDetailsHandler;", "panEntryHandler", "Lcom/stripe/paymentcollection/manualentry/PanEntryHandler;", "expiryDateEntryHandler", "Lcom/stripe/paymentcollection/manualentry/ExpiryDateEntryHandler;", "cvvEntryHandler", "Lcom/stripe/paymentcollection/manualentry/CvvEntryHandler;", "finishedHandler", "Lcom/stripe/paymentcollection/manualentry/FinishedHandler;", "manualEntryLogger", "Lcom/stripe/paymentcollection/manualentry/ManualEntryLoggerInterface;", "logger", "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;", "(Lcom/stripe/paymentcollection/manualentry/EmptyHandler;Lcom/stripe/paymentcollection/manualentry/ConfigureReaderHandler;Lcom/stripe/paymentcollection/manualentry/ZipCodeHandler;Lcom/stripe/paymentcollection/manualentry/ConfirmDetailsHandler;Lcom/stripe/paymentcollection/manualentry/PanEntryHandler;Lcom/stripe/paymentcollection/manualentry/ExpiryDateEntryHandler;Lcom/stripe/paymentcollection/manualentry/CvvEntryHandler;Lcom/stripe/paymentcollection/manualentry/FinishedHandler;Lcom/stripe/paymentcollection/manualentry/ManualEntryLoggerInterface;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V", "isActive", "", "isActive$annotations", "()V", "()Z", "isEncryptedDataValid", "data", "Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;", "notifyHardwareCancel", "", "notifyMerchantCancel", "onCollectionFailed", "failureReason", "Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;", "onEncryptedDataCollected", "encPAN", "", "expiryDate", "encCVV", "maskedPan", "ksn", "posEntryMode", "onInvalidInput", "onRequestDisplayAsterisk", "unmaskedDigits", "numOfAsterisk", "", "onRequestManualEntry", "type", "Lcom/stripe/hardware/paymentcollection/ManualEntryType;", "onReturnTransactionResult", "transactionResult", "Lcom/stripe/hardware/emv/TransactionResult$Result;", "onStateChanging", TypedValues.TransitionType.S_TO, TypedValues.TransitionType.S_FROM, "reason", "registerHandlers", "reset", "setManualEntryResult", "manualEntryResult", "Lcom/stripe/hardware/paymentcollection/ManualEntryResult;", "startTransaction", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", BbposDeviceControllerImpl.TRANSACTION_TYPE_PARAM_NAME, "Lcom/stripe/hardware/paymentcollection/TransactionType;", "emvTransactionType", "Lcom/stripe/hardware/emv/EmvTransactionType;", "integrationType", "Lcom/stripe/restclient/IntegrationType;", "resultListener", "Lkotlin/Function1;", "Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;", "Lcom/stripe/paymentcollection/manualentry/ManualEntryResultListener;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ManualEntryStateMachine extends StateMachine<ManualEntryState, ManualEntryData> implements ManualEntryEventReceiver {
    private final ConfigureReaderHandler configureReaderHandler;
    private final ConfirmDetailsHandler confirmDetailsHandler;
    private final CvvEntryHandler cvvEntryHandler;
    private final EmptyHandler emptyHandler;
    private final ExpiryDateEntryHandler expiryDateEntryHandler;
    private final FinishedHandler finishedHandler;
    private final PaymentCollectionLogger logger;
    private final ManualEntryLoggerInterface manualEntryLogger;
    private final PanEntryHandler panEntryHandler;
    private final ZipCodeHandler zipCodeHandler;

    /* JADX INFO: compiled from: ManualEntryStateMachine.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;

        static {
            int[] iArr = new int[ManualEntryState.values().length];
            try {
                iArr[ManualEntryState.EMPTY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ManualEntryState.CONFIGURE_READER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ManualEntryState.ZIP_CODE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ManualEntryState.CONFIRM_DETAILS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ManualEntryState.PAN_ENTRY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ManualEntryState.EXPIRY_DATE_ENTRY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ManualEntryState.CVV_ENTRY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[ManualEntryState.FINISHED.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[ManualEntryType.values().length];
            try {
                iArr2[ManualEntryType.PAN_ENTRY.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[ManualEntryType.EXPIRY_DATE_ENTRY.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr2[ManualEntryType.CVV_ENTRY.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[TransactionResult.Result.values().length];
            try {
                iArr3[TransactionResult.Result.TERMINATED.ordinal()] = 1;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr3[TransactionResult.Result.TIMEOUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr3[TransactionResult.Result.DEVICE_FAILURE.ordinal()] = 3;
            } catch (NoSuchFieldError unused14) {
            }
            $EnumSwitchMapping$2 = iArr3;
        }
    }

    @VisibleForTesting
    public static /* synthetic */ void isActive$annotations() {
    }

    public ManualEntryStateMachine(EmptyHandler emptyHandler, ConfigureReaderHandler configureReaderHandler, ZipCodeHandler zipCodeHandler, ConfirmDetailsHandler confirmDetailsHandler, PanEntryHandler panEntryHandler, ExpiryDateEntryHandler expiryDateEntryHandler, CvvEntryHandler cvvEntryHandler, FinishedHandler finishedHandler, ManualEntryLoggerInterface manualEntryLogger, PaymentCollectionLogger logger) {
        Intrinsics.checkNotNullParameter(emptyHandler, "emptyHandler");
        Intrinsics.checkNotNullParameter(configureReaderHandler, "configureReaderHandler");
        Intrinsics.checkNotNullParameter(zipCodeHandler, "zipCodeHandler");
        Intrinsics.checkNotNullParameter(confirmDetailsHandler, "confirmDetailsHandler");
        Intrinsics.checkNotNullParameter(panEntryHandler, "panEntryHandler");
        Intrinsics.checkNotNullParameter(expiryDateEntryHandler, "expiryDateEntryHandler");
        Intrinsics.checkNotNullParameter(cvvEntryHandler, "cvvEntryHandler");
        Intrinsics.checkNotNullParameter(finishedHandler, "finishedHandler");
        Intrinsics.checkNotNullParameter(manualEntryLogger, "manualEntryLogger");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.emptyHandler = emptyHandler;
        this.configureReaderHandler = configureReaderHandler;
        this.zipCodeHandler = zipCodeHandler;
        this.confirmDetailsHandler = confirmDetailsHandler;
        this.panEntryHandler = panEntryHandler;
        this.expiryDateEntryHandler = expiryDateEntryHandler;
        this.cvvEntryHandler = cvvEntryHandler;
        this.finishedHandler = finishedHandler;
        this.manualEntryLogger = manualEntryLogger;
        this.logger = logger;
        logger.i("registerHandlers", new Pair[0]);
        registerHandlers();
        StateMachine.transitionTo$default(this, ManualEntryState.EMPTY, null, 2, null);
    }

    public final void reset() {
        StateMachine.transitionTo$default(this, ManualEntryState.FINISHED, null, 2, null);
    }

    public final void startTransaction(Amount amount, TransactionType transactionType, EmvTransactionType emvTransactionType, IntegrationType integrationType, Function1<? super ManualEntryCollectionResult, Unit> resultListener) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(transactionType, "transactionType");
        Intrinsics.checkNotNullParameter(emvTransactionType, "emvTransactionType");
        Intrinsics.checkNotNullParameter(integrationType, "integrationType");
        Intrinsics.checkNotNullParameter(resultListener, "resultListener");
        if (isActive()) {
            return;
        }
        updateData(new ManualEntryData(amount, null, null, 0, 0, null, transactionType, emvTransactionType, integrationType, null, null, null, false, resultListener, false, 24126, null));
        StateMachine.transitionTo$default(this, ManualEntryState.CONFIGURE_READER, null, 2, null);
    }

    public final boolean isActive() {
        return getState() != ManualEntryState.EMPTY;
    }

    private final void registerHandlers() {
        ManualEntryHandler manualEntryHandler;
        Iterator<ManualEntryState> it = ManualEntryState.getEntries().iterator();
        while (it.hasNext()) {
            switch (WhenMappings.$EnumSwitchMapping$0[it.next().ordinal()]) {
                case 1:
                    manualEntryHandler = this.emptyHandler;
                    break;
                case 2:
                    manualEntryHandler = this.configureReaderHandler;
                    break;
                case 3:
                    manualEntryHandler = this.zipCodeHandler;
                    break;
                case 4:
                    manualEntryHandler = this.confirmDetailsHandler;
                    break;
                case 5:
                    manualEntryHandler = this.panEntryHandler;
                    break;
                case 6:
                    manualEntryHandler = this.expiryDateEntryHandler;
                    break;
                case 7:
                    manualEntryHandler = this.cvvEntryHandler;
                    break;
                case 8:
                    manualEntryHandler = this.finishedHandler;
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            manualEntryHandler.register(this);
        }
    }

    public final void setManualEntryResult(ManualEntryResult manualEntryResult) {
        Intrinsics.checkNotNullParameter(manualEntryResult, "manualEntryResult");
        ManualEntryData data = getData();
        if (data == null) {
            return;
        }
        if (manualEntryResult instanceof ZipCodeManualEntryResult) {
            updateData(data.copy((29695 & 1) != 0 ? data.amount : null, (29695 & 2) != 0 ? data.zipCode : ((ZipCodeManualEntryResult) manualEntryResult).getZipCode(), (29695 & 4) != 0 ? data.panUnmaskedDigits : null, (29695 & 8) != 0 ? data.panAsteriskCount : 0, (29695 & 16) != 0 ? data.cvvAsteriskCount : 0, (29695 & 32) != 0 ? data.expiryDateUnmaskedDigits : null, (29695 & 64) != 0 ? data.transactionType : null, (29695 & 128) != 0 ? data.emvTransactionType : null, (29695 & 256) != 0 ? data.integrationType : null, (29695 & 512) != 0 ? data.encryptedData : null, (29695 & 1024) != 0 ? data.failureState : null, (29695 & 2048) != 0 ? data.failureReason : null, (29695 & 4096) != 0 ? data.userConfirmed : false, (29695 & 8192) != 0 ? data.resultListener : null, (29695 & 16384) != 0 ? data.showError : false));
        } else if (Intrinsics.areEqual(manualEntryResult, ConfirmPaymentFromManualEntryResult.INSTANCE)) {
            updateData(data.copy((29695 & 1) != 0 ? data.amount : null, (29695 & 2) != 0 ? data.zipCode : null, (29695 & 4) != 0 ? data.panUnmaskedDigits : null, (29695 & 8) != 0 ? data.panAsteriskCount : 0, (29695 & 16) != 0 ? data.cvvAsteriskCount : 0, (29695 & 32) != 0 ? data.expiryDateUnmaskedDigits : null, (29695 & 64) != 0 ? data.transactionType : null, (29695 & 128) != 0 ? data.emvTransactionType : null, (29695 & 256) != 0 ? data.integrationType : null, (29695 & 512) != 0 ? data.encryptedData : null, (29695 & 1024) != 0 ? data.failureState : null, (29695 & 2048) != 0 ? data.failureReason : null, (29695 & 4096) != 0 ? data.userConfirmed : true, (29695 & 8192) != 0 ? data.resultListener : null, (29695 & 16384) != 0 ? data.showError : false));
        }
    }

    @Override // com.stripe.hardware.paymentcollection.ManualEntryEventReceiver
    public void onRequestDisplayAsterisk(String unmaskedDigits, int numOfAsterisk) {
        ManualEntryData data;
        if (isActive()) {
            ManualEntryState state = getState();
            int i = state == null ? -1 : WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
            if (i == 5) {
                ManualEntryData data2 = getData();
                if (data2 != null) {
                    updateData(data2.copy((29695 & 1) != 0 ? data2.amount : null, (29695 & 2) != 0 ? data2.zipCode : null, (29695 & 4) != 0 ? data2.panUnmaskedDigits : unmaskedDigits, (29695 & 8) != 0 ? data2.panAsteriskCount : numOfAsterisk, (29695 & 16) != 0 ? data2.cvvAsteriskCount : 0, (29695 & 32) != 0 ? data2.expiryDateUnmaskedDigits : null, (29695 & 64) != 0 ? data2.transactionType : null, (29695 & 128) != 0 ? data2.emvTransactionType : null, (29695 & 256) != 0 ? data2.integrationType : null, (29695 & 512) != 0 ? data2.encryptedData : null, (29695 & 1024) != 0 ? data2.failureState : null, (29695 & 2048) != 0 ? data2.failureReason : null, (29695 & 4096) != 0 ? data2.userConfirmed : false, (29695 & 8192) != 0 ? data2.resultListener : null, (29695 & 16384) != 0 ? data2.showError : false));
                    return;
                }
                return;
            }
            if (i != 6) {
                if (i == 7 && (data = getData()) != null) {
                    updateData(data.copy((29695 & 1) != 0 ? data.amount : null, (29695 & 2) != 0 ? data.zipCode : null, (29695 & 4) != 0 ? data.panUnmaskedDigits : null, (29695 & 8) != 0 ? data.panAsteriskCount : 0, (29695 & 16) != 0 ? data.cvvAsteriskCount : numOfAsterisk, (29695 & 32) != 0 ? data.expiryDateUnmaskedDigits : null, (29695 & 64) != 0 ? data.transactionType : null, (29695 & 128) != 0 ? data.emvTransactionType : null, (29695 & 256) != 0 ? data.integrationType : null, (29695 & 512) != 0 ? data.encryptedData : null, (29695 & 1024) != 0 ? data.failureState : null, (29695 & 2048) != 0 ? data.failureReason : null, (29695 & 4096) != 0 ? data.userConfirmed : false, (29695 & 8192) != 0 ? data.resultListener : null, (29695 & 16384) != 0 ? data.showError : false));
                    return;
                }
                return;
            }
            ManualEntryData data3 = getData();
            if (data3 != null) {
                updateData(data3.copy((29695 & 1) != 0 ? data3.amount : null, (29695 & 2) != 0 ? data3.zipCode : null, (29695 & 4) != 0 ? data3.panUnmaskedDigits : null, (29695 & 8) != 0 ? data3.panAsteriskCount : 0, (29695 & 16) != 0 ? data3.cvvAsteriskCount : 0, (29695 & 32) != 0 ? data3.expiryDateUnmaskedDigits : unmaskedDigits, (29695 & 64) != 0 ? data3.transactionType : null, (29695 & 128) != 0 ? data3.emvTransactionType : null, (29695 & 256) != 0 ? data3.integrationType : null, (29695 & 512) != 0 ? data3.encryptedData : null, (29695 & 1024) != 0 ? data3.failureState : null, (29695 & 2048) != 0 ? data3.failureReason : null, (29695 & 4096) != 0 ? data3.userConfirmed : false, (29695 & 8192) != 0 ? data3.resultListener : null, (29695 & 16384) != 0 ? data3.showError : false));
            }
        }
    }

    public final void notifyMerchantCancel() {
        onCollectionFailed(ManualEntryFailureReason.MERCHANT_CANCELLED);
    }

    public final void notifyHardwareCancel() {
        onCollectionFailed(ManualEntryFailureReason.USER_CANCELLED);
    }

    @Override // com.stripe.hardware.paymentcollection.ManualEntryEventReceiver
    public void onEncryptedDataCollected(String encPAN, String expiryDate, String encCVV, String maskedPan, String ksn, String posEntryMode) {
        ManualEntryData data;
        Intrinsics.checkNotNullParameter(encPAN, "encPAN");
        Intrinsics.checkNotNullParameter(expiryDate, "expiryDate");
        Intrinsics.checkNotNullParameter(encCVV, "encCVV");
        Intrinsics.checkNotNullParameter(maskedPan, "maskedPan");
        Intrinsics.checkNotNullParameter(ksn, "ksn");
        Intrinsics.checkNotNullParameter(posEntryMode, "posEntryMode");
        if (isActive() && (data = getData()) != null) {
            ManualEntryEncryptedData manualEntryEncryptedData = new ManualEntryEncryptedData(encPAN, expiryDate, encCVV, maskedPan, ksn, posEntryMode);
            if (isEncryptedDataValid(manualEntryEncryptedData)) {
                updateData(data.copy((29695 & 1) != 0 ? data.amount : null, (29695 & 2) != 0 ? data.zipCode : null, (29695 & 4) != 0 ? data.panUnmaskedDigits : null, (29695 & 8) != 0 ? data.panAsteriskCount : 0, (29695 & 16) != 0 ? data.cvvAsteriskCount : 0, (29695 & 32) != 0 ? data.expiryDateUnmaskedDigits : null, (29695 & 64) != 0 ? data.transactionType : null, (29695 & 128) != 0 ? data.emvTransactionType : null, (29695 & 256) != 0 ? data.integrationType : null, (29695 & 512) != 0 ? data.encryptedData : manualEntryEncryptedData, (29695 & 1024) != 0 ? data.failureState : null, (29695 & 2048) != 0 ? data.failureReason : null, (29695 & 4096) != 0 ? data.userConfirmed : false, (29695 & 8192) != 0 ? data.resultListener : null, (29695 & 16384) != 0 ? data.showError : false));
            } else {
                updateData(data.copy((29695 & 1) != 0 ? data.amount : null, (29695 & 2) != 0 ? data.zipCode : null, (29695 & 4) != 0 ? data.panUnmaskedDigits : null, (29695 & 8) != 0 ? data.panAsteriskCount : 0, (29695 & 16) != 0 ? data.cvvAsteriskCount : 0, (29695 & 32) != 0 ? data.expiryDateUnmaskedDigits : null, (29695 & 64) != 0 ? data.transactionType : null, (29695 & 128) != 0 ? data.emvTransactionType : null, (29695 & 256) != 0 ? data.integrationType : null, (29695 & 512) != 0 ? data.encryptedData : manualEntryEncryptedData, (29695 & 1024) != 0 ? data.failureState : getState(), (29695 & 2048) != 0 ? data.failureReason : ManualEntryFailureReason.INVALID_ENCRYPTED_DATA_RESULT, (29695 & 4096) != 0 ? data.userConfirmed : false, (29695 & 8192) != 0 ? data.resultListener : null, (29695 & 16384) != 0 ? data.showError : false));
            }
        }
    }

    private final boolean isEncryptedDataValid(ManualEntryEncryptedData data) {
        boolean z = data.getEncCVV().length() > 0 && data.getEncPAN().length() > 0 && data.getExpiryDate().length() > 0 && data.getKsn().length() > 0;
        if (!z) {
            this.logger.i("Invalid encrypted data result: " + data, new Pair[0]);
        }
        return z;
    }

    @Override // com.stripe.hardware.paymentcollection.ManualEntryEventReceiver
    public void onInvalidInput() {
        ManualEntryData data;
        if (isActive()) {
            this.manualEntryLogger.onInvalidInput(getData());
            ManualEntryState state = getState();
            int i = state == null ? -1 : WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
            if ((i == 5 || i == 6 || i == 7) && (data = getData()) != null) {
                updateData(data.copy((29695 & 1) != 0 ? data.amount : null, (29695 & 2) != 0 ? data.zipCode : null, (29695 & 4) != 0 ? data.panUnmaskedDigits : null, (29695 & 8) != 0 ? data.panAsteriskCount : 0, (29695 & 16) != 0 ? data.cvvAsteriskCount : 0, (29695 & 32) != 0 ? data.expiryDateUnmaskedDigits : null, (29695 & 64) != 0 ? data.transactionType : null, (29695 & 128) != 0 ? data.emvTransactionType : null, (29695 & 256) != 0 ? data.integrationType : null, (29695 & 512) != 0 ? data.encryptedData : null, (29695 & 1024) != 0 ? data.failureState : null, (29695 & 2048) != 0 ? data.failureReason : null, (29695 & 4096) != 0 ? data.userConfirmed : false, (29695 & 8192) != 0 ? data.resultListener : null, (29695 & 16384) != 0 ? data.showError : true));
            }
        }
    }

    @Override // com.stripe.hardware.paymentcollection.ManualEntryEventReceiver
    public void onRequestManualEntry(ManualEntryType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        if (isActive()) {
            int i = WhenMappings.$EnumSwitchMapping$1[type.ordinal()];
            if (i == 1) {
                StateMachine.transitionTo$default(this, ManualEntryState.PAN_ENTRY, null, 2, null);
            } else if (i == 2) {
                StateMachine.transitionTo$default(this, ManualEntryState.EXPIRY_DATE_ENTRY, null, 2, null);
            } else {
                if (i != 3) {
                    return;
                }
                StateMachine.transitionTo$default(this, ManualEntryState.CVV_ENTRY, null, 2, null);
            }
        }
    }

    @Override // com.stripe.hardware.paymentcollection.ManualEntryEventReceiver
    public void onReturnTransactionResult(TransactionResult.Result transactionResult) {
        Intrinsics.checkNotNullParameter(transactionResult, "transactionResult");
        if (isActive() && getData() != null) {
            int i = WhenMappings.$EnumSwitchMapping$2[transactionResult.ordinal()];
            if (i == 1 || i == 2) {
                onCollectionFailed(ManualEntryFailureReason.TIMEOUT);
            } else if (i == 3) {
                onCollectionFailed(ManualEntryFailureReason.DEVICE_FAILURE);
            } else {
                onCollectionFailed(ManualEntryFailureReason.EARLY_TRANSACTION_RESULT);
            }
        }
    }

    private final void onCollectionFailed(ManualEntryFailureReason failureReason) {
        ManualEntryState state;
        ManualEntryData data;
        if (!isActive() || (state = getState()) == null || (data = getData()) == null) {
            return;
        }
        updateData(data.copy((29695 & 1) != 0 ? data.amount : null, (29695 & 2) != 0 ? data.zipCode : null, (29695 & 4) != 0 ? data.panUnmaskedDigits : null, (29695 & 8) != 0 ? data.panAsteriskCount : 0, (29695 & 16) != 0 ? data.cvvAsteriskCount : 0, (29695 & 32) != 0 ? data.expiryDateUnmaskedDigits : null, (29695 & 64) != 0 ? data.transactionType : null, (29695 & 128) != 0 ? data.emvTransactionType : null, (29695 & 256) != 0 ? data.integrationType : null, (29695 & 512) != 0 ? data.encryptedData : null, (29695 & 1024) != 0 ? data.failureState : state, (29695 & 2048) != 0 ? data.failureReason : failureReason, (29695 & 4096) != 0 ? data.userConfirmed : false, (29695 & 8192) != 0 ? data.resultListener : null, (29695 & 16384) != 0 ? data.showError : false));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.stripe.statemachine.StateMachine
    public void onStateChanging(ManualEntryState to, ManualEntryState from, ManualEntryData data, String reason) {
        Intrinsics.checkNotNullParameter(to, "to");
        this.logger.i("onStateChanged: " + (from != null ? from.name() : null) + " -> " + to.name() + ": " + reason, new Pair[0]);
        this.manualEntryLogger.onExit(data);
        this.manualEntryLogger.onEnter(to);
    }
}
