package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.core.transaction.TransactionRepository;
import com.stripe.currency.Amount;
import com.stripe.hardware.ReaderConfiguration;
import com.stripe.hardware.emv.AccountType;
import com.stripe.hardware.paymentcollection.AccountTypeSelectionModel;
import com.stripe.hardware.paymentcollection.ApplicationSelectionModel;
import com.stripe.hardware.paymentcollection.CollectionCompletedModel;
import com.stripe.hardware.paymentcollection.CollectionModel;
import com.stripe.hardware.paymentcollection.ContactCardSlotState;
import com.stripe.hardware.paymentcollection.DisplayCartModel;
import com.stripe.hardware.paymentcollection.Disposition;
import com.stripe.hardware.paymentcollection.DynamicCurrencyConversionSelectionModel;
import com.stripe.hardware.paymentcollection.ManualEntryModel;
import com.stripe.hardware.paymentcollection.ManualEntryResult;
import com.stripe.hardware.paymentcollection.NonCardPaymentMethodActionRequiredModel;
import com.stripe.hardware.paymentcollection.NonCardPaymentMethodSelectionModel;
import com.stripe.hardware.paymentcollection.PaymentMethodCollectionResult;
import com.stripe.hardware.paymentcollection.PinEntryModel;
import com.stripe.hardware.paymentcollection.RecoverableErrorModel;
import com.stripe.hardware.paymentcollection.RemoveCardModel;
import com.stripe.hardware.paymentcollection.TippingSelectionModel;
import com.stripe.hardware.paymentcollection.TippingSelectionResult;
import com.stripe.hardware.paymentcollection.TransactionType;
import com.stripe.hardware.status.AudioAlertType;
import com.stripe.hardware.status.ReaderDisplayMessage;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.paymentcollection.PaymentCollectionListener;
import com.stripe.stripeterminal.external.models.PaymentMethodType;
import com.stripe.stripeterminal.external.models.ReaderEvent;
import com.stripe.stripeterminal.external.models.ReaderInputOptions;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.makers.ReaderDisplayMessageMaker;
import com.stripe.transaction.ChargeAttempt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BbposAdapterPaymentCollectionListener.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000î\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\b\u0001\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0016\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007j\u0002`\n¢\u0006\u0002\u0010\u000bJ\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\rH\u0016J\u0010\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0012\u0010\u001a\u001a\u00020\r2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0010\u0010\u001d\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J$\u0010 \u001a\u00020\r2\u0006\u0010!\u001a\u00020\"2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010#\u001a\u0004\u0018\u00010$H\u0016J*\u0010%\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020&2\u0018\u0010'\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020*0)\u0012\u0004\u0012\u00020\r0(H\u0016J*\u0010+\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020,2\u0018\u0010'\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020-0)\u0012\u0004\u0012\u00020\r0(H\u0016J\u0010\u0010.\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020/H\u0016J\u0010\u00100\u001a\u00020\r2\u0006\u0010\u0018\u001a\u000201H\u0016J*\u00102\u001a\u00020\r2\u0006\u0010\u0018\u001a\u0002032\u0018\u0010'\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0)\u0012\u0004\u0012\u00020\r0(H\u0016J*\u00104\u001a\u00020\r2\u0006\u0010\u0018\u001a\u0002052\u0018\u0010'\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001f0)\u0012\u0004\u0012\u00020\r0(H\u0016J*\u00106\u001a\u00020\r2\u0006\u0010\u0018\u001a\u0002072\u0018\u0010'\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0)\u0012\u0004\u0012\u00020\r0(H\u0016J*\u00108\u001a\u00020\r2\u0006\u0010\u0018\u001a\u0002092\u0018\u0010'\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020:0)\u0012\u0004\u0012\u00020\r0(H\u0016J*\u0010;\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020<2\u0018\u0010'\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020=0)\u0012\u0004\u0012\u00020\r0(H\u0016J\"\u0010>\u001a\u00020\r2\u0018\u0010'\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0)\u0012\u0004\u0012\u00020\r0(H\u0016J*\u0010?\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020@2\u0018\u0010'\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020A0)\u0012\u0004\u0012\u00020\r0(H\u0016J*\u0010B\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020C2\u0018\u0010D\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0)\u0012\u0004\u0012\u00020\r0(H\u0016J\u0010\u0010E\u001a\u00020\r2\u0006\u0010F\u001a\u00020GH\u0016J*\u0010H\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020I2\u0018\u0010'\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020J0)\u0012\u0004\u0012\u00020\r0(H\u0016J\u0012\u0010K\u001a\u00020L*\b\u0012\u0004\u0012\u00020N0MH\u0002R\u001e\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007j\u0002`\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006O"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;", "Lcom/stripe/paymentcollection/PaymentCollectionListener;", "statusManager", "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;", "transactionRepository", "Lcom/stripe/core/transaction/TransactionRepository;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "onAdditionalReaderDisplayMessage", "", "message", "Lcom/stripe/hardware/status/ReaderDisplayMessage;", "onCancelled", "onCardStateUpdate", "cardState", "Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;", "onChargeSummary", "chargeAttempt", "Lcom/stripe/transaction/ChargeAttempt;", "onCollectionComplete", "model", "Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;", "onInterstitial", "language", "", "onNonCardPaymentMethodLoading", "paymentMethodType", "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "onProcessing", BbposDeviceControllerImpl.TRANSACTION_TYPE_PARAM_NAME, "Lcom/stripe/hardware/paymentcollection/TransactionType;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "onRequestAccountTypeSelection", "Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;", "onCompletion", "Lkotlin/Function1;", "Lcom/stripe/hardware/paymentcollection/Disposition;", "Lcom/stripe/hardware/emv/AccountType;", "onRequestApplicationSelection", "Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel;", "", "onRequestCardRemoval", "Lcom/stripe/hardware/paymentcollection/RemoveCardModel;", "onRequestDisplayCart", "Lcom/stripe/hardware/paymentcollection/DisplayCartModel;", "onRequestDisplayNonCardPaymentMethodActionRequired", "Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;", "onRequestDisplayNonCardPaymentMethodsSelection", "Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodSelectionModel;", "onRequestDisplayRecoverableError", "Lcom/stripe/hardware/paymentcollection/RecoverableErrorModel;", "onRequestDynamicCurrencySelection", "Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;", "", "onRequestManualEntry", "Lcom/stripe/hardware/paymentcollection/ManualEntryModel;", "Lcom/stripe/hardware/paymentcollection/ManualEntryResult;", "onRequestMerchantUiFinished", "onRequestPaymentMethodCollection", "Lcom/stripe/hardware/paymentcollection/CollectionModel;", "Lcom/stripe/hardware/paymentcollection/PaymentMethodCollectionResult;", "onRequestPinEntry", "Lcom/stripe/hardware/paymentcollection/PinEntryModel;", "onCancelation", "onRequestProduceAudioTone", "audioAlertType", "Lcom/stripe/hardware/status/AudioAlertType;", "onRequestTippingSelection", "Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;", "Lcom/stripe/hardware/paymentcollection/TippingSelectionResult;", "toReaderInputOptions", "Lcom/stripe/stripeterminal/external/models/ReaderInputOptions;", "", "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BbposAdapterPaymentCollectionListener implements PaymentCollectionListener {
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final TerminalStatusManager statusManager;
    private final TransactionRepository transactionRepository;

    public BbposAdapterPaymentCollectionListener(TerminalStatusManager statusManager, TransactionRepository transactionRepository, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(statusManager, "statusManager");
        Intrinsics.checkNotNullParameter(transactionRepository, "transactionRepository");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.statusManager = statusManager;
        this.transactionRepository = transactionRepository;
        this.logger = logger;
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionListener
    public synchronized void onRequestTippingSelection(TippingSelectionModel model, Function1<? super Disposition<TippingSelectionResult>, Unit> onCompletion) {
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(onCompletion, "onCompletion");
        this.logger.d("onRequestTippingSelection", new Pair[0]);
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionListener
    public void onRequestManualEntry(ManualEntryModel model, Function1<? super Disposition<ManualEntryResult>, Unit> onCompletion) {
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(onCompletion, "onCompletion");
        this.logger.d("onRequestManualEntry", new Pair[0]);
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionListener
    public synchronized void onRequestPaymentMethodCollection(CollectionModel model, Function1<? super Disposition<PaymentMethodCollectionResult>, Unit> onCompletion) {
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(onCompletion, "onCompletion");
        this.logger.d("onRequestPaymentMethodCollection", new Pair[0]);
        this.statusManager.requestReaderInput(toReaderInputOptions(model.getReaderActiveInterfaces()));
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionListener
    public synchronized void onRequestDisplayRecoverableError(RecoverableErrorModel model, Function1<? super Disposition<Unit>, Unit> onCompletion) {
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(onCompletion, "onCompletion");
        this.logger.d("onRequestDisplayRecoverableError", new Pair[0]);
    }

    private final ReaderInputOptions toReaderInputOptions(Set<? extends ReaderConfiguration.ReaderType> set) {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = set.iterator();
        while (it.hasNext()) {
            arrayList.add(BbposAdapterPaymentCollectionListenerKt.translateReaderType((ReaderConfiguration.ReaderType) it.next()));
        }
        if (arrayList.isEmpty()) {
            arrayList.add(ReaderInputOptions.ReaderInputOption.NONE);
        }
        return new ReaderInputOptions(arrayList);
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionListener
    public synchronized void onRequestDisplayCart(DisplayCartModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        this.logger.d("onRequestDisplayCart", new Pair[0]);
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionListener
    public synchronized void onRequestApplicationSelection(ApplicationSelectionModel model, Function1<? super Disposition<Integer>, Unit> onCompletion) {
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(onCompletion, "onCompletion");
        this.logger.d("onRequestApplicationSelection", new Pair[0]);
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionListener
    public synchronized void onRequestAccountTypeSelection(AccountTypeSelectionModel model, Function1<? super Disposition<AccountType>, Unit> onCompletion) {
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(onCompletion, "onCompletion");
        this.logger.d("onRequestAccountTypeSelection", new Pair[0]);
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionListener
    public synchronized void onRequestPinEntry(PinEntryModel model, Function1<? super Disposition<Unit>, Unit> onCancelation) {
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(onCancelation, "onCancelation");
        this.logger.d("onRequestPinEntry", new Pair[0]);
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionListener
    public synchronized void onRequestCardRemoval(RemoveCardModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        this.logger.d("onRequestCardRemoval", new Pair[0]);
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionListener
    public synchronized void onCollectionComplete(CollectionCompletedModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        this.logger.d("onCollectionComplete " + model, new Pair[0]);
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionListener
    public synchronized void onCancelled() {
        this.logger.d("onCancelled", new Pair[0]);
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionListener
    public synchronized void onProcessing(TransactionType transactionType, String language, Amount amount) {
        Intrinsics.checkNotNullParameter(transactionType, "transactionType");
        this.logger.d("onProcessing", new Pair[0]);
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionListener
    public void onInterstitial(String language) {
        this.logger.d("onInterstitial", new Pair[0]);
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionListener
    public void onRequestProduceAudioTone(AudioAlertType audioAlertType) {
        Intrinsics.checkNotNullParameter(audioAlertType, "audioAlertType");
        this.logger.d("onRequestProduceAudioTone", new Pair[0]);
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionListener
    public void onAdditionalReaderDisplayMessage(ReaderDisplayMessage message) {
        Intrinsics.checkNotNullParameter(message, "message");
        this.logger.d("onAdditionalReaderDisplayMessage " + message, new Pair[0]);
        com.stripe.stripeterminal.external.models.ReaderDisplayMessage readerDisplayMessageFromCoreObject = ReaderDisplayMessageMaker.INSTANCE.fromCoreObject(message);
        if (readerDisplayMessageFromCoreObject != null) {
            this.statusManager.requestReaderDisplayMessage(readerDisplayMessageFromCoreObject);
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionListener
    public synchronized void onCardStateUpdate(ContactCardSlotState cardState) {
        ReaderEvent readerEvent;
        Intrinsics.checkNotNullParameter(cardState, "cardState");
        this.logger.d("onCardStateUpdate " + cardState, new Pair[0]);
        ContactCardSlotState value = this.transactionRepository.getCardStatusFlow().getValue();
        if (value == ContactCardSlotState.EMPTY && (cardState == ContactCardSlotState.CARD_INSERTED_INCORRECTLY || cardState == ContactCardSlotState.CARD_INSERTED_CORRECTLY)) {
            readerEvent = ReaderEvent.CARD_INSERTED;
        } else {
            readerEvent = ((value == ContactCardSlotState.CARD_INSERTED_INCORRECTLY || value == ContactCardSlotState.CARD_INSERTED_CORRECTLY) && cardState == ContactCardSlotState.EMPTY) ? ReaderEvent.CARD_REMOVED : null;
        }
        this.transactionRepository.updateCardStatus(cardState);
        if (readerEvent != null) {
            this.statusManager.reportReaderEvent(readerEvent);
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionListener
    public synchronized void onChargeSummary(ChargeAttempt chargeAttempt) {
        Intrinsics.checkNotNullParameter(chargeAttempt, "chargeAttempt");
        this.logger.d("onChargeSummary " + chargeAttempt, new Pair[0]);
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionListener
    public synchronized void onRequestDynamicCurrencySelection(DynamicCurrencyConversionSelectionModel model, Function1<? super Disposition<Boolean>, Unit> onCompletion) {
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(onCompletion, "onCompletion");
        this.logger.d("onRequestDynamicCurrencySelection", new Pair[0]);
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionListener
    public synchronized void onRequestDisplayNonCardPaymentMethodsSelection(NonCardPaymentMethodSelectionModel model, Function1<? super Disposition<PaymentMethodType>, Unit> onCompletion) {
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(onCompletion, "onCompletion");
        this.logger.d("onRequestDisplayNonCardPaymentMethodsSelection", new Pair[0]);
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionListener
    public synchronized void onRequestDisplayNonCardPaymentMethodActionRequired(NonCardPaymentMethodActionRequiredModel model, Function1<? super Disposition<Unit>, Unit> onCompletion) {
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(onCompletion, "onCompletion");
        this.logger.d("onRequestDisplayNonCardPaymentMethodActionRequired", new Pair[0]);
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionListener
    public synchronized void onNonCardPaymentMethodLoading(PaymentMethodType paymentMethodType) {
        Intrinsics.checkNotNullParameter(paymentMethodType, "paymentMethodType");
        this.logger.d("onNonCardPaymentMethodLoading", new Pair[0]);
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionListener
    public void onRequestMerchantUiFinished(Function1<? super Disposition<Unit>, Unit> onCompletion) {
        Intrinsics.checkNotNullParameter(onCompletion, "onCompletion");
        this.logger.d("onRequestMerchantUiFinished", new Pair[0]);
    }
}
