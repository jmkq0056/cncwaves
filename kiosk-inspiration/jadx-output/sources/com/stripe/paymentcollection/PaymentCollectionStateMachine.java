package com.stripe.paymentcollection;

import androidx.core.app.NotificationCompat;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.cart.Cart;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import com.stripe.hardware.ReaderConfiguration;
import com.stripe.hardware.emv.AccountType;
import com.stripe.hardware.emv.EmvTransactionType;
import com.stripe.hardware.emv.IntermediateTransactionError;
import com.stripe.hardware.emv.TransactionResult;
import com.stripe.hardware.magstripe.MagStripeReadResult;
import com.stripe.hardware.paymentcollection.AccessiblePinPadTouchEvent;
import com.stripe.hardware.paymentcollection.ContactCardSlotState;
import com.stripe.hardware.paymentcollection.PinEntryStatus;
import com.stripe.hardware.paymentcollection.TippingSelectionResult;
import com.stripe.hardware.paymentcollection.TransactionType;
import com.stripe.hardware.tipping.TipConfigValidationResult;
import com.stripe.hardware.tipping.TipSelectionResult;
import com.stripe.paymentcollection.manualentry.ManualEntryCollectionResult;
import com.stripe.restclient.IntegrationType;
import com.stripe.statemachine.StateMachine;
import com.stripe.stripeterminal.external.models.DeviceType;
import com.stripe.stripeterminal.external.models.PaymentMethodType;
import com.stripe.transaction.ChargeAttempt;
import com.stripe.transaction.DynamicCurrencyConversionData;
import com.stripe.transaction.NonCardPaymentMethodData;
import com.stripe.transaction.PaymentCollectionDeviceCapability;
import com.stripe.transaction.PaymentCollectionDeviceCapabilityKt;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionStateMachine.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000¦\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H&J\b\u0010\u0007\u001a\u00020\u0006H&J\b\u0010\b\u001a\u00020\tH&J\b\u0010\n\u001a\u00020\tH&Jú\u0001\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\b\b\u0002\u0010\u0019\u001a\u00020\u00062\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010\u001e\u001a\u00020\u00062\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010 \u001a\u00020\u00062\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\"2\b\b\u0002\u0010#\u001a\u00020\u00062\b\b\u0002\u0010$\u001a\u00020\u00062\b\b\u0002\u0010%\u001a\u00020\u00062\u000e\b\u0002\u0010&\u001a\b\u0012\u0004\u0012\u00020(0'2\u0006\u0010)\u001a\u00020\u00062\b\u0010*\u001a\u0004\u0018\u00010(2\f\u0010+\u001a\b\u0012\u0004\u0012\u00020,0'2\u0006\u0010-\u001a\u00020\u00062\u0006\u0010.\u001a\u00020\u00062\b\b\u0002\u0010/\u001a\u00020\u0006H&Jn\u00100\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u00101\u001a\u0002022\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010#\u001a\u00020\u00062\b\b\u0002\u0010$\u001a\u00020\u00062\b\b\u0002\u0010%\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u0006H&J\b\u00103\u001a\u00020\tH&J\b\u00104\u001a\u00020\u0006H&J\u0010\u00105\u001a\u00020\t2\u0006\u00106\u001a\u000207H&J\b\u00108\u001a\u00020\tH&J\b\u00109\u001a\u00020\tH&J\b\u0010:\u001a\u00020\tH&J\u0010\u0010;\u001a\u00020\t2\u0006\u0010<\u001a\u00020=H&J(\u0010>\u001a\u00020\t2\u0006\u0010?\u001a\u00020@2\n\b\u0002\u0010A\u001a\u0004\u0018\u00010(2\n\b\u0002\u0010B\u001a\u0004\u0018\u00010(H&J\b\u0010C\u001a\u00020\tH&J\u0010\u0010D\u001a\u00020\t2\u0006\u0010E\u001a\u00020FH&J\b\u0010G\u001a\u00020\tH&J\u0010\u0010H\u001a\u00020\u00062\u0006\u0010I\u001a\u00020JH&J\b\u0010K\u001a\u00020\tH&J\b\u0010L\u001a\u00020\tH&J\u0016\u0010M\u001a\u00020\t2\f\u0010N\u001a\b\u0012\u0004\u0012\u00020P0OH&J\u0016\u0010Q\u001a\u00020\t2\f\u0010R\u001a\b\u0012\u0004\u0012\u00020(0'H&J\u0010\u0010S\u001a\u00020\t2\u0006\u0010T\u001a\u00020UH&J\u0010\u0010V\u001a\u00020\t2\u0006\u0010W\u001a\u00020\u0006H&J\u0010\u0010X\u001a\u00020\t2\u0006\u0010E\u001a\u00020YH&J\u0010\u0010Z\u001a\u00020\t2\u0006\u0010[\u001a\u00020(H&J\u0010\u0010\\\u001a\u00020\t2\u0006\u0010]\u001a\u00020^H&J\u0010\u0010_\u001a\u00020\t2\u0006\u0010`\u001a\u00020aH&J\u0010\u0010b\u001a\u00020\t2\u0006\u0010c\u001a\u00020\u0006H&J\u0010\u0010d\u001a\u00020\t2\u0006\u0010e\u001a\u00020fH&J\u0010\u0010g\u001a\u00020\t2\u0006\u0010h\u001a\u00020\u0006H&J\u0010\u0010i\u001a\u00020\t2\u0006\u0010j\u001a\u00020kH&J\u0010\u0010l\u001a\u00020\t2\u0006\u0010`\u001a\u00020mH&J\u0010\u0010n\u001a\u00020\t2\u0006\u0010o\u001a\u00020pH&J\u0010\u0010q\u001a\u00020\t2\u0006\u0010r\u001a\u00020sH&J\u0010\u0010t\u001a\u00020\t2\u0006\u0010W\u001a\u00020,H&J\u0010\u0010u\u001a\u00020\t2\u0006\u0010v\u001a\u00020(H&J.\u0010w\u001a\u00020\t2\u0006\u0010x\u001a\u00020(2\u001c\b\u0002\u0010y\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020(0'\u0012\u0006\u0012\u0004\u0018\u00010(0zH&J\u0010\u0010{\u001a\u00020\t2\u0006\u0010|\u001a\u00020}H&J\u0011\u0010~\u001a\u00020\t2\u0007\u0010\u007f\u001a\u00030\u0080\u0001H&J\u0012\u0010\u0081\u0001\u001a\u00020\t2\u0007\u0010\u0082\u0001\u001a\u00020}H&J\u0014\u0010\u0083\u0001\u001a\u00020\t2\t\u0010\u0084\u0001\u001a\u0004\u0018\u00010(H&J\u0012\u0010\u0085\u0001\u001a\u00020\t2\u0007\u0010\u0086\u0001\u001a\u00020\u0006H&J\u0012\u0010\u0087\u0001\u001a\u00020\t2\u0007\u0010`\u001a\u00030\u0088\u0001H&J\t\u0010\u0089\u0001\u001a\u00020\tH&J\u0013\u0010\u008a\u0001\u001a\u00020\t2\b\u0010\u008b\u0001\u001a\u00030\u008c\u0001H&J\u0015\u0010\u008d\u0001\u001a\u00020\t2\n\u0010\u008e\u0001\u001a\u0005\u0018\u00010\u008f\u0001H&¨\u0006\u0090\u0001"}, d2 = {"Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;", "Lcom/stripe/statemachine/StateMachine;", "Lcom/stripe/paymentcollection/PaymentCollectionState;", "Lcom/stripe/paymentcollection/PaymentCollectionData;", "()V", "canResumeCollectionForSca", "", "canStartCollection", "cancel", "", "clearMagStripeReadState", "collectPayment", BbposDeviceControllerImpl.TRANSACTION_TYPE_PARAM_NAME, "Lcom/stripe/hardware/paymentcollection/TransactionType;", "baseAmount", "Lcom/stripe/currency/Amount;", "emvTransactionType", "Lcom/stripe/hardware/emv/EmvTransactionType;", "tippingState", "Lcom/stripe/paymentcollection/TippingState;", "tippingConfig", "Lcom/stripe/hardware/tipping/TipConfigValidationResult;", "tippingAmount", "integrationType", "Lcom/stripe/restclient/IntegrationType;", "manualEntry", "deviceCapability", "Lcom/stripe/transaction/PaymentCollectionDeviceCapability;", "deviceType", "Lcom/stripe/stripeterminal/external/models/DeviceType;", "isOffline", "tipEligibleAmount", "isDeferredAuthorizationCountry", BbposDeviceControllerImpl.DOMESTIC_DEBIT_PRIORITY_PARAM_NAME, "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;", "isApplicationSelectionInQuickChipEnabled", "enableMagStripePin", "forceMagstripePin", "domesticDebitAids", "", "", "enableCustomerCancellation", "surchargeNotice", "nonCardPaymentMethodTypes", "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "disablePredip", "useIncrementalAuthUi", BbposDeviceControllerImpl.FORCE_PIN_ENTRY, "displayCart", "cart", "Lcom/stripe/cart/Cart;", "displayNonCardPaymentMethods", "isFinished", "onAccessiblePinPadEvent", "accessiblePinPadTouchEvent", "Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;", "onCollectPaymentMethodApiError", "onDeviceKernelBusy", "onHardwareTransactionCanceled", "onOnlineAuthStateChanged", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/stripe/paymentcollection/OnlineAuthState;", "onPinEntryStatusChange", NotificationCompat.CATEGORY_STATUS, "Lcom/stripe/hardware/paymentcollection/PinEntryStatus;", "epb", "epbKsn", "onRequestAccountTypeSelection", "onTransactionCanceled", "reason", "Lcom/stripe/paymentcollection/CancelReason;", "resetTipSelection", "resumePaymentForSCA", "scaRequirement", "Lcom/stripe/paymentcollection/SCARequirement;", "returnToCardPaymentMethodCollection", "returnToNonCardPaymentMethodsSelection", "setActiveReaderInterfaces", "activeReaderInterfaces", "", "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;", "setApplicationList", "applicationList", "setCardSlotState", "cardSlotState", "Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;", "setDynamicCurrencyConversionSelected", "selected", "setEarlyTransactionAbortReason", "Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;", "setFinalConfirmation", "tlv", "setHardwareTippingSelectionResult", "hardwareResult", "Lcom/stripe/hardware/tipping/TipSelectionResult;", "setHardwareTransactionResult", "result", "Lcom/stripe/hardware/emv/TransactionResult$Result;", "setInterfaceResetRequired", "isRequired", "setIntermediateError", "error", "Lcom/stripe/hardware/emv/IntermediateTransactionError;", "setIsWaitingForCard", "isWaitingForCard", "setMagStripeReadResult", "magStripeReadResult", "Lcom/stripe/hardware/magstripe/MagStripeReadResult;", "setManualEntryCollectionResult", "Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;", "setManualEntryResult", "manualEntryResult", "Lcom/stripe/hardware/paymentcollection/ManualEntryResult;", "setNonCardPaymentMethodData", "data", "Lcom/stripe/transaction/NonCardPaymentMethodData;", "setNonCardPaymentMethodSelected", "setOnlineAuthResponse", "response", "setOnlineAuthorizationData", "onlineAuthorizationData", "getFirstSupportedLanguage", "Lkotlin/Function1;", "setPinEntryAsterisks", "count", "", "setSelectedAccountType", "selectedAccountType", "Lcom/stripe/hardware/emv/AccountType;", "setSelectedApplicationIndex", "selectedApplicationIndex", "setSelectedLanguage", "selectedLanguage", "setShowThankYouReceived", "showThankYouReceived", "setTippingSelectionResult", "Lcom/stripe/hardware/paymentcollection/TippingSelectionResult;", "setUserRetryRequested", "startDynamicCurrencyConversionSelection", "dynamicCurrencyConversionData", "Lcom/stripe/transaction/DynamicCurrencyConversionData;", "updateChargeAttempt", "chargeAttempt", "Lcom/stripe/transaction/ChargeAttempt;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class PaymentCollectionStateMachine extends StateMachine<PaymentCollectionState, PaymentCollectionData> {
    public abstract boolean canResumeCollectionForSca();

    public abstract boolean canStartCollection();

    public abstract void cancel();

    public abstract void clearMagStripeReadState();

    public abstract boolean collectPayment(TransactionType transactionType, Amount baseAmount, EmvTransactionType emvTransactionType, TippingState tippingState, TipConfigValidationResult tippingConfig, Amount tippingAmount, IntegrationType integrationType, boolean manualEntry, PaymentCollectionDeviceCapability deviceCapability, DeviceType deviceType, boolean isOffline, Amount tipEligibleAmount, boolean isDeferredAuthorizationCountry, ReaderConfiguration.DomesticDebitPriority domesticDebitPriority, boolean isApplicationSelectionInQuickChipEnabled, boolean enableMagStripePin, boolean forceMagstripePin, List<String> domesticDebitAids, boolean enableCustomerCancellation, String surchargeNotice, List<? extends PaymentMethodType> nonCardPaymentMethodTypes, boolean disablePredip, boolean useIncrementalAuthUi, boolean forcePinEntry);

    public abstract boolean displayCart(EmvTransactionType emvTransactionType, TippingState tippingState, TipConfigValidationResult tippingConfig, Cart cart, IntegrationType integrationType, PaymentCollectionDeviceCapability deviceCapability, DeviceType deviceType, boolean isApplicationSelectionInQuickChipEnabled, boolean enableMagStripePin, boolean forceMagstripePin, boolean disablePredip);

    public abstract void displayNonCardPaymentMethods();

    public abstract boolean isFinished();

    public abstract void onAccessiblePinPadEvent(AccessiblePinPadTouchEvent accessiblePinPadTouchEvent);

    public abstract void onCollectPaymentMethodApiError();

    public abstract void onDeviceKernelBusy();

    public abstract void onHardwareTransactionCanceled();

    public abstract void onOnlineAuthStateChanged(OnlineAuthState state);

    public abstract void onPinEntryStatusChange(PinEntryStatus status, String epb, String epbKsn);

    public abstract void onRequestAccountTypeSelection();

    public abstract void onTransactionCanceled(CancelReason reason);

    public abstract void resetTipSelection();

    public abstract boolean resumePaymentForSCA(SCARequirement scaRequirement);

    public abstract void returnToCardPaymentMethodCollection();

    public abstract void returnToNonCardPaymentMethodsSelection();

    public abstract void setActiveReaderInterfaces(Set<? extends ReaderConfiguration.ReaderType> activeReaderInterfaces);

    public abstract void setApplicationList(List<String> applicationList);

    public abstract void setCardSlotState(ContactCardSlotState cardSlotState);

    public abstract void setDynamicCurrencyConversionSelected(boolean selected);

    public abstract void setEarlyTransactionAbortReason(EarlyTransactionAbortReason reason);

    public abstract void setFinalConfirmation(String tlv);

    public abstract void setHardwareTippingSelectionResult(TipSelectionResult hardwareResult);

    public abstract void setHardwareTransactionResult(TransactionResult.Result result);

    public abstract void setInterfaceResetRequired(boolean isRequired);

    public abstract void setIntermediateError(IntermediateTransactionError error);

    public abstract void setIsWaitingForCard(boolean isWaitingForCard);

    public abstract void setMagStripeReadResult(MagStripeReadResult magStripeReadResult);

    public abstract void setManualEntryCollectionResult(ManualEntryCollectionResult result);

    public abstract void setManualEntryResult(com.stripe.hardware.paymentcollection.ManualEntryResult manualEntryResult);

    public abstract void setNonCardPaymentMethodData(NonCardPaymentMethodData data);

    public abstract void setNonCardPaymentMethodSelected(PaymentMethodType selected);

    public abstract void setOnlineAuthResponse(String response);

    public abstract void setOnlineAuthorizationData(String onlineAuthorizationData, Function1<? super List<String>, String> getFirstSupportedLanguage);

    public abstract void setPinEntryAsterisks(int count);

    public abstract void setSelectedAccountType(AccountType selectedAccountType);

    public abstract void setSelectedApplicationIndex(int selectedApplicationIndex);

    public abstract void setSelectedLanguage(String selectedLanguage);

    public abstract void setShowThankYouReceived(boolean showThankYouReceived);

    public abstract void setTippingSelectionResult(TippingSelectionResult result);

    public abstract void setUserRetryRequested();

    public abstract void startDynamicCurrencyConversionSelection(DynamicCurrencyConversionData dynamicCurrencyConversionData);

    public abstract void updateChargeAttempt(ChargeAttempt chargeAttempt);

    public static /* synthetic */ boolean displayCart$default(PaymentCollectionStateMachine paymentCollectionStateMachine, EmvTransactionType emvTransactionType, TippingState tippingState, TipConfigValidationResult tipConfigValidationResult, Cart cart, IntegrationType integrationType, PaymentCollectionDeviceCapability paymentCollectionDeviceCapability, DeviceType deviceType, boolean z, boolean z2, boolean z3, boolean z4, int i, Object obj) {
        boolean z5;
        PaymentCollectionStateMachine paymentCollectionStateMachine2;
        EmvTransactionType emvTransactionType2;
        TippingState tippingState2;
        TipConfigValidationResult tipConfigValidationResult2;
        Cart cart2;
        boolean z6;
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: displayCart");
        }
        IntegrationType integrationType2 = (i & 16) != 0 ? null : integrationType;
        PaymentCollectionDeviceCapability default_payment_collection_capability = (i & 32) != 0 ? PaymentCollectionDeviceCapabilityKt.getDEFAULT_PAYMENT_COLLECTION_CAPABILITY() : paymentCollectionDeviceCapability;
        DeviceType deviceType2 = (i & 64) != 0 ? DeviceType.UNKNOWN : deviceType;
        boolean z7 = (i & 128) != 0 ? false : z;
        boolean z8 = (i & 256) != 0 ? false : z2;
        if ((i & 512) != 0) {
            z5 = false;
            emvTransactionType2 = emvTransactionType;
            tippingState2 = tippingState;
            tipConfigValidationResult2 = tipConfigValidationResult;
            cart2 = cart;
            z6 = z4;
            paymentCollectionStateMachine2 = paymentCollectionStateMachine;
        } else {
            z5 = z3;
            paymentCollectionStateMachine2 = paymentCollectionStateMachine;
            emvTransactionType2 = emvTransactionType;
            tippingState2 = tippingState;
            tipConfigValidationResult2 = tipConfigValidationResult;
            cart2 = cart;
            z6 = z4;
        }
        return paymentCollectionStateMachine2.displayCart(emvTransactionType2, tippingState2, tipConfigValidationResult2, cart2, integrationType2, default_payment_collection_capability, deviceType2, z7, z8, z5, z6);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ boolean collectPayment$default(PaymentCollectionStateMachine paymentCollectionStateMachine, TransactionType transactionType, Amount amount, EmvTransactionType emvTransactionType, TippingState tippingState, TipConfigValidationResult tipConfigValidationResult, Amount amount2, IntegrationType integrationType, boolean z, PaymentCollectionDeviceCapability paymentCollectionDeviceCapability, DeviceType deviceType, boolean z2, Amount amount3, boolean z3, ReaderConfiguration.DomesticDebitPriority domesticDebitPriority, boolean z4, boolean z5, boolean z6, List list, boolean z7, String str, List list2, boolean z8, boolean z9, boolean z10, int i, Object obj) {
        boolean z11;
        PaymentCollectionStateMachine paymentCollectionStateMachine2;
        TransactionType transactionType2;
        Amount amount4;
        EmvTransactionType emvTransactionType2;
        TippingState tippingState2;
        TipConfigValidationResult tipConfigValidationResult2;
        boolean z12;
        String str2;
        List list3;
        boolean z13;
        boolean z14;
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: collectPayment");
        }
        Amount amount5 = (i & 32) != 0 ? null : amount2;
        IntegrationType integrationType2 = (i & 64) != 0 ? null : integrationType;
        boolean z15 = (i & 128) != 0 ? false : z;
        PaymentCollectionDeviceCapability default_payment_collection_capability = (i & 256) != 0 ? PaymentCollectionDeviceCapabilityKt.getDEFAULT_PAYMENT_COLLECTION_CAPABILITY() : paymentCollectionDeviceCapability;
        DeviceType deviceType2 = (i & 512) != 0 ? DeviceType.UNKNOWN : deviceType;
        boolean z16 = (i & 1024) != 0 ? false : z2;
        Amount amount6 = (i & 2048) != 0 ? null : amount3;
        boolean z17 = (i & 4096) != 0 ? false : z3;
        ReaderConfiguration.DomesticDebitPriority domesticDebitPriority2 = (i & 8192) != 0 ? null : domesticDebitPriority;
        boolean z18 = (i & 16384) != 0 ? false : z4;
        boolean z19 = (32768 & i) != 0 ? false : z5;
        boolean z20 = (65536 & i) != 0 ? false : z6;
        List listEmptyList = (131072 & i) != 0 ? CollectionsKt.emptyList() : list;
        if ((i & 8388608) != 0) {
            z11 = false;
            transactionType2 = transactionType;
            amount4 = amount;
            emvTransactionType2 = emvTransactionType;
            tippingState2 = tippingState;
            tipConfigValidationResult2 = tipConfigValidationResult;
            z12 = z7;
            str2 = str;
            list3 = list2;
            z13 = z8;
            z14 = z9;
            paymentCollectionStateMachine2 = paymentCollectionStateMachine;
        } else {
            z11 = z10;
            paymentCollectionStateMachine2 = paymentCollectionStateMachine;
            transactionType2 = transactionType;
            amount4 = amount;
            emvTransactionType2 = emvTransactionType;
            tippingState2 = tippingState;
            tipConfigValidationResult2 = tipConfigValidationResult;
            z12 = z7;
            str2 = str;
            list3 = list2;
            z13 = z8;
            z14 = z9;
        }
        return paymentCollectionStateMachine2.collectPayment(transactionType2, amount4, emvTransactionType2, tippingState2, tipConfigValidationResult2, amount5, integrationType2, z15, default_payment_collection_capability, deviceType2, z16, amount6, z17, domesticDebitPriority2, z18, z19, z20, listEmptyList, z12, str2, list3, z13, z14, z11);
    }

    public static /* synthetic */ void onPinEntryStatusChange$default(PaymentCollectionStateMachine paymentCollectionStateMachine, PinEntryStatus pinEntryStatus, String str, String str2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onPinEntryStatusChange");
        }
        if ((i & 2) != 0) {
            str = null;
        }
        if ((i & 4) != 0) {
            str2 = null;
        }
        paymentCollectionStateMachine.onPinEntryStatusChange(pinEntryStatus, str, str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void setOnlineAuthorizationData$default(PaymentCollectionStateMachine paymentCollectionStateMachine, String str, Function1 function1, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setOnlineAuthorizationData");
        }
        if ((i & 2) != 0) {
            function1 = new Function1() { // from class: com.stripe.paymentcollection.PaymentCollectionStateMachine.setOnlineAuthorizationData.1
                @Override // kotlin.jvm.functions.Function1
                public final Void invoke(List<String> it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return null;
                }
            };
        }
        paymentCollectionStateMachine.setOnlineAuthorizationData(str, function1);
    }
}
