package com.stripe.paymentcollection;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
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
import com.stripe.stripeterminal.external.models.PaymentMethodType;
import com.stripe.transaction.ChargeAttempt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: PaymentCollectionListener.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000À\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0003H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\fH&J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH&J\u0012\u0010\u0010\u001a\u00020\u00032\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H&J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0015H&J$\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u00182\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH&J*\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u001c2\u0018\u0010\u001d\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020 0\u001f\u0012\u0004\u0012\u00020\u00030\u001eH&J*\u0010!\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\"2\u0018\u0010\u001d\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020#0\u001f\u0012\u0004\u0012\u00020\u00030\u001eH&J\u0010\u0010$\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020%H&J\u0010\u0010&\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020'H&J*\u0010(\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020)2\u0018\u0010\u001d\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u001f\u0012\u0004\u0012\u00020\u00030\u001eH&J*\u0010*\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020+2\u0018\u0010\u001d\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u001f\u0012\u0004\u0012\u00020\u00030\u001eH&J*\u0010,\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020-2\u0018\u0010\u001d\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u001f\u0012\u0004\u0012\u00020\u00030\u001eH&J*\u0010.\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020/2\u0018\u0010\u001d\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002000\u001f\u0012\u0004\u0012\u00020\u00030\u001eH&J*\u00101\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u0002022\u0018\u0010\u001d\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002030\u001f\u0012\u0004\u0012\u00020\u00030\u001eH&J\"\u00104\u001a\u00020\u00032\u0018\u0010\u001d\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u001f\u0012\u0004\u0012\u00020\u00030\u001eH&J*\u00105\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u0002062\u0018\u0010\u001d\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002070\u001f\u0012\u0004\u0012\u00020\u00030\u001eH&J*\u00108\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u0002092\u0018\u0010:\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u001f\u0012\u0004\u0012\u00020\u00030\u001eH&J\u0010\u0010;\u001a\u00020\u00032\u0006\u0010<\u001a\u00020=H&J*\u0010>\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020?2\u0018\u0010\u001d\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020@0\u001f\u0012\u0004\u0012\u00020\u00030\u001eH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006AÀ\u0006\u0001"}, d2 = {"Lcom/stripe/paymentcollection/PaymentCollectionListener;", "", "onAdditionalReaderDisplayMessage", "", "message", "Lcom/stripe/hardware/status/ReaderDisplayMessage;", "onCancelled", "onCardStateUpdate", "cardState", "Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;", "onChargeSummary", "chargeAttempt", "Lcom/stripe/transaction/ChargeAttempt;", "onCollectionComplete", "model", "Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;", "onInterstitial", "language", "", "onNonCardPaymentMethodLoading", "paymentMethodType", "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "onProcessing", BbposDeviceControllerImpl.TRANSACTION_TYPE_PARAM_NAME, "Lcom/stripe/hardware/paymentcollection/TransactionType;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "onRequestAccountTypeSelection", "Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;", "onCompletion", "Lkotlin/Function1;", "Lcom/stripe/hardware/paymentcollection/Disposition;", "Lcom/stripe/hardware/emv/AccountType;", "onRequestApplicationSelection", "Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel;", "", "onRequestCardRemoval", "Lcom/stripe/hardware/paymentcollection/RemoveCardModel;", "onRequestDisplayCart", "Lcom/stripe/hardware/paymentcollection/DisplayCartModel;", "onRequestDisplayNonCardPaymentMethodActionRequired", "Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;", "onRequestDisplayNonCardPaymentMethodsSelection", "Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodSelectionModel;", "onRequestDisplayRecoverableError", "Lcom/stripe/hardware/paymentcollection/RecoverableErrorModel;", "onRequestDynamicCurrencySelection", "Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;", "", "onRequestManualEntry", "Lcom/stripe/hardware/paymentcollection/ManualEntryModel;", "Lcom/stripe/hardware/paymentcollection/ManualEntryResult;", "onRequestMerchantUiFinished", "onRequestPaymentMethodCollection", "Lcom/stripe/hardware/paymentcollection/CollectionModel;", "Lcom/stripe/hardware/paymentcollection/PaymentMethodCollectionResult;", "onRequestPinEntry", "Lcom/stripe/hardware/paymentcollection/PinEntryModel;", "onCancelation", "onRequestProduceAudioTone", "audioAlertType", "Lcom/stripe/hardware/status/AudioAlertType;", "onRequestTippingSelection", "Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;", "Lcom/stripe/hardware/paymentcollection/TippingSelectionResult;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface PaymentCollectionListener {
    void onAdditionalReaderDisplayMessage(ReaderDisplayMessage message);

    void onCancelled();

    void onCardStateUpdate(ContactCardSlotState cardState);

    void onChargeSummary(ChargeAttempt chargeAttempt);

    void onCollectionComplete(CollectionCompletedModel model);

    void onInterstitial(String language);

    void onNonCardPaymentMethodLoading(PaymentMethodType paymentMethodType);

    void onProcessing(TransactionType transactionType, String language, Amount amount);

    void onRequestAccountTypeSelection(AccountTypeSelectionModel model, Function1<? super Disposition<AccountType>, Unit> onCompletion);

    void onRequestApplicationSelection(ApplicationSelectionModel model, Function1<? super Disposition<Integer>, Unit> onCompletion);

    void onRequestCardRemoval(RemoveCardModel model);

    void onRequestDisplayCart(DisplayCartModel model);

    void onRequestDisplayNonCardPaymentMethodActionRequired(NonCardPaymentMethodActionRequiredModel model, Function1<? super Disposition<Unit>, Unit> onCompletion);

    void onRequestDisplayNonCardPaymentMethodsSelection(NonCardPaymentMethodSelectionModel model, Function1<? super Disposition<PaymentMethodType>, Unit> onCompletion);

    void onRequestDisplayRecoverableError(RecoverableErrorModel model, Function1<? super Disposition<Unit>, Unit> onCompletion);

    void onRequestDynamicCurrencySelection(DynamicCurrencyConversionSelectionModel model, Function1<? super Disposition<Boolean>, Unit> onCompletion);

    void onRequestManualEntry(ManualEntryModel model, Function1<? super Disposition<com.stripe.hardware.paymentcollection.ManualEntryResult>, Unit> onCompletion);

    void onRequestMerchantUiFinished(Function1<? super Disposition<Unit>, Unit> onCompletion);

    void onRequestPaymentMethodCollection(CollectionModel model, Function1<? super Disposition<PaymentMethodCollectionResult>, Unit> onCompletion);

    void onRequestPinEntry(PinEntryModel model, Function1<? super Disposition<Unit>, Unit> onCancelation);

    void onRequestProduceAudioTone(AudioAlertType audioAlertType);

    void onRequestTippingSelection(TippingSelectionModel model, Function1<? super Disposition<TippingSelectionResult>, Unit> onCompletion);
}
