package com.stripe.paymentcollection;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.cart.Cart;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import com.stripe.currency.CurrencyCode;
import com.stripe.hardware.ReaderConfiguration;
import com.stripe.hardware.emv.AccountType;
import com.stripe.hardware.emv.EmvTransactionType;
import com.stripe.hardware.emv.IntermediateTransactionError;
import com.stripe.hardware.emv.TlvMap;
import com.stripe.hardware.emv.TransactionResult;
import com.stripe.hardware.magstripe.MagStripeReadResult;
import com.stripe.hardware.magstripe.MagStripeReadSuccess;
import com.stripe.hardware.paymentcollection.AccessiblePinPadTouchEvent;
import com.stripe.hardware.paymentcollection.ApplicationSelectionModel;
import com.stripe.hardware.paymentcollection.ContactCardSlotState;
import com.stripe.hardware.paymentcollection.PinEntryRetryReason;
import com.stripe.hardware.paymentcollection.PinEntryStatus;
import com.stripe.hardware.paymentcollection.TippingSelectionResult;
import com.stripe.hardware.paymentcollection.TippingSelectionType;
import com.stripe.hardware.paymentcollection.TransactionType;
import com.stripe.hardware.tipping.BbposSdkTipSelectionType;
import com.stripe.hardware.tipping.Custom;
import com.stripe.hardware.tipping.FixedAmount;
import com.stripe.hardware.tipping.FixedAmountTips;
import com.stripe.hardware.tipping.NoTipSelected;
import com.stripe.hardware.tipping.Percentage;
import com.stripe.hardware.tipping.PercentageTips;
import com.stripe.hardware.tipping.TipConfigValidationResult;
import com.stripe.hardware.tipping.TipSelected;
import com.stripe.hardware.tipping.TipSelectionFailure;
import com.stripe.hardware.tipping.TipSelectionResult;
import com.stripe.hardware.tipping.Unknown;
import com.stripe.paymentcollection.AccountSelectionStatus;
import com.stripe.paymentcollection.DynamicCurrencyConversionSelectionStatus;
import com.stripe.paymentcollection.TippingState;
import com.stripe.paymentcollection.log.PaymentCollectionLogger;
import com.stripe.paymentcollection.log.PaymentCollectionLoggerFactory;
import com.stripe.paymentcollection.manualentry.ManualEntryCollectionResult;
import com.stripe.paymentcollection.manualentry.ManualEntryStateMachine;
import com.stripe.paymentcollection.metrics.DisplayCartResult;
import com.stripe.paymentcollection.metrics.EventLoggers;
import com.stripe.paymentcollection.metrics.PendingPosCommand;
import com.stripe.restclient.IntegrationType;
import com.stripe.statemachine.StateMachine;
import com.stripe.stripeterminal.external.models.DeviceType;
import com.stripe.stripeterminal.external.models.PaymentMethodType;
import com.stripe.transaction.ChargeAttempt;
import com.stripe.transaction.DynamicCurrencyConversionData;
import com.stripe.transaction.NonCardPaymentMethodData;
import com.stripe.transaction.PaymentCollectionDeviceCapability;
import com.sun.jna.platform.win32.Ddeml;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;

/* JADX INFO: compiled from: BbposPaymentCollectionStateMachine.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000æ\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0017H\u0016J\b\u0010\u0019\u001a\u00020\u0014H\u0016J\b\u0010\u001a\u001a\u00020\u0014H\u0016JÞ\u0001\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010\u001f2\b\u0010'\u001a\u0004\u0018\u00010(2\u0006\u0010)\u001a\u00020\u00172\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u00172\b\u0010/\u001a\u0004\u0018\u00010\u001f2\u0006\u00100\u001a\u00020\u00172\b\u00101\u001a\u0004\u0018\u0001022\u0006\u00103\u001a\u00020\u00172\u0006\u00104\u001a\u00020\u00172\u0006\u00105\u001a\u00020\u00172\f\u00106\u001a\b\u0012\u0004\u0012\u000208072\u0006\u00109\u001a\u00020\u00172\b\u0010:\u001a\u0004\u0018\u0001082\f\u0010;\u001a\b\u0012\u0004\u0012\u00020<072\u0006\u0010=\u001a\u00020\u00172\u0006\u0010>\u001a\u00020\u00172\u0006\u0010?\u001a\u00020\u0017H\u0016J\u0018\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u00020%2\u0006\u0010C\u001a\u00020DH\u0002Jb\u0010E\u001a\u00020\u00172\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010F\u001a\u00020G2\b\u0010'\u001a\u0004\u0018\u00010(2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\u0006\u00103\u001a\u00020\u00172\u0006\u00104\u001a\u00020\u00172\u0006\u00105\u001a\u00020\u00172\u0006\u0010=\u001a\u00020\u0017H\u0016J\b\u0010H\u001a\u00020\u0014H\u0016J2\u0010I\u001a\b\u0012\u0004\u0012\u00020K0J2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010*\u001a\u00020+2\b\b\u0002\u0010)\u001a\u00020\u00172\b\b\u0002\u0010.\u001a\u00020\u0017H\u0002J*\u0010L\u001a\b\u0012\u0004\u0012\u00020K0J2\u0006\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010)\u001a\u00020\u00172\b\b\u0002\u0010.\u001a\u00020\u0017H\u0002J\b\u0010M\u001a\u00020\u0017H\u0016J\u0010\u0010N\u001a\u00020\u00142\u0006\u0010O\u001a\u00020PH\u0016J\b\u0010Q\u001a\u00020\u0014H\u0016J\b\u0010R\u001a\u00020\u0014H\u0016J\b\u0010S\u001a\u00020\u0014H\u0016J\u0010\u0010T\u001a\u00020\u00142\u0006\u0010U\u001a\u00020VH\u0016J$\u0010W\u001a\u00020\u00142\u0006\u0010X\u001a\u00020Y2\b\u0010Z\u001a\u0004\u0018\u0001082\b\u0010[\u001a\u0004\u0018\u000108H\u0016J\b\u0010\\\u001a\u00020\u0014H\u0016J.\u0010\u0011\u001a\u00020\u00142\u0006\u0010]\u001a\u00020\u00132\b\u0010^\u001a\u0004\u0018\u00010\u00132\b\u0010_\u001a\u0004\u0018\u00010`2\b\u0010a\u001a\u0004\u0018\u000108H\u0014J\u0010\u0010b\u001a\u00020\u00142\u0006\u0010a\u001a\u00020cH\u0016J\u0014\u0010d\u001a\u0004\u0018\u00010e2\b\u0010f\u001a\u0004\u0018\u00010YH\u0002J\b\u0010g\u001a\u00020\u0014H\u0002J\b\u0010h\u001a\u00020\u0014H\u0016J\u0010\u0010i\u001a\u00020\u00172\u0006\u0010j\u001a\u00020kH\u0016J\b\u0010l\u001a\u00020\u0014H\u0016J\b\u0010m\u001a\u00020\u0014H\u0016J\u0016\u0010n\u001a\u00020\u00142\f\u0010o\u001a\b\u0012\u0004\u0012\u00020K0JH\u0016J\u0016\u0010p\u001a\u00020\u00142\f\u0010q\u001a\b\u0012\u0004\u0012\u00020807H\u0016J\u0010\u0010r\u001a\u00020\u00142\u0006\u0010s\u001a\u00020tH\u0016J\u0010\u0010u\u001a\u00020\u00142\u0006\u0010v\u001a\u00020\u0017H\u0016J\u0010\u0010w\u001a\u00020\u00142\u0006\u0010a\u001a\u00020xH\u0016J\u0010\u0010y\u001a\u00020\u00142\u0006\u0010z\u001a\u000208H\u0016J\u0010\u0010{\u001a\u00020\u00142\u0006\u0010|\u001a\u00020}H\u0016J\u0011\u0010~\u001a\u00020\u00142\u0007\u0010\u007f\u001a\u00030\u0080\u0001H\u0016J\t\u0010\u0081\u0001\u001a\u00020\u0014H\u0002J\u0012\u0010\u0082\u0001\u001a\u00020\u00142\u0007\u0010\u0083\u0001\u001a\u00020\u0017H\u0016J\u0013\u0010\u0084\u0001\u001a\u00020\u00142\b\u0010\u0085\u0001\u001a\u00030\u0086\u0001H\u0016J\u0012\u0010\u0087\u0001\u001a\u00020\u00142\u0007\u0010\u0088\u0001\u001a\u00020\u0017H\u0016J\u0013\u0010\u0089\u0001\u001a\u00020\u00142\b\u0010\u008a\u0001\u001a\u00030\u008b\u0001H\u0016J\u0012\u0010\u008c\u0001\u001a\u00020\u00142\u0007\u0010\u007f\u001a\u00030\u008d\u0001H\u0016J\u0013\u0010\u008e\u0001\u001a\u00020\u00142\b\u0010\u008f\u0001\u001a\u00030\u0090\u0001H\u0016J\u0012\u0010\u0091\u0001\u001a\u00020\u00142\u0007\u0010_\u001a\u00030\u0092\u0001H\u0016J\u0011\u0010\u0093\u0001\u001a\u00020\u00142\u0006\u0010v\u001a\u00020<H\u0016J\u0012\u0010\u0094\u0001\u001a\u00020\u00142\u0007\u0010\u0095\u0001\u001a\u000208H\u0016J/\u0010\u0096\u0001\u001a\u00020\u00142\u0007\u0010\u0097\u0001\u001a\u0002082\u001b\u0010\u0098\u0001\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020807\u0012\u0006\u0012\u0004\u0018\u0001080\u0012H\u0016J\u0013\u0010\u0099\u0001\u001a\u00020\u00142\b\u0010\u009a\u0001\u001a\u00030\u009b\u0001H\u0016J\u0013\u0010\u009c\u0001\u001a\u00020\u00142\b\u0010\u009d\u0001\u001a\u00030\u009e\u0001H\u0016J\u0013\u0010\u009f\u0001\u001a\u00020\u00142\b\u0010 \u0001\u001a\u00030\u009b\u0001H\u0016J\u0014\u0010¡\u0001\u001a\u00020\u00142\t\u0010¢\u0001\u001a\u0004\u0018\u000108H\u0016J\u0012\u0010£\u0001\u001a\u00020\u00142\u0007\u0010¤\u0001\u001a\u00020\u0017H\u0016J\u0012\u0010¥\u0001\u001a\u00020\u00142\u0007\u0010\u007f\u001a\u00030¦\u0001H\u0016J\t\u0010§\u0001\u001a\u00020\u0014H\u0016J\u0013\u0010¨\u0001\u001a\u00020\u00142\b\u0010©\u0001\u001a\u00030ª\u0001H\u0016J\u0015\u0010«\u0001\u001a\u00020\u00142\n\u0010¬\u0001\u001a\u0005\u0018\u00010\u00ad\u0001H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010\u0011\u001a\u0016\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0012j\u0004\u0018\u0001`\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006®\u0001"}, d2 = {"Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;", "Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;", "eventDelegate", "Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;", "eventLoggers", "Lcom/stripe/paymentcollection/metrics/EventLoggers;", "timer", "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;", "paymentCollectionFeatureFlagRepository", "Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;", "manualEntryStateMachine", "Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;", "loggerFactory", "Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;", "(Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;Lcom/stripe/paymentcollection/metrics/EventLoggers;Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;)V", "logger", "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;", "onStateChanging", "Lkotlin/Function1;", "Lcom/stripe/paymentcollection/PaymentCollectionState;", "", "Lcom/stripe/paymentcollection/OnStateChanging;", "canResumeCollectionForSca", "", "canStartCollection", "cancel", "clearMagStripeReadState", "collectPayment", BbposDeviceControllerImpl.TRANSACTION_TYPE_PARAM_NAME, "Lcom/stripe/hardware/paymentcollection/TransactionType;", "baseAmount", "Lcom/stripe/currency/Amount;", "emvTransactionType", "Lcom/stripe/hardware/emv/EmvTransactionType;", "tippingState", "Lcom/stripe/paymentcollection/TippingState;", "tippingConfig", "Lcom/stripe/hardware/tipping/TipConfigValidationResult;", "tippingAmount", "integrationType", "Lcom/stripe/restclient/IntegrationType;", "manualEntry", "deviceCapability", "Lcom/stripe/transaction/PaymentCollectionDeviceCapability;", "deviceType", "Lcom/stripe/stripeterminal/external/models/DeviceType;", "isOffline", "tipEligibleAmount", "isDeferredAuthorizationCountry", BbposDeviceControllerImpl.DOMESTIC_DEBIT_PRIORITY_PARAM_NAME, "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;", "isApplicationSelectionInQuickChipEnabled", "enableMagStripePin", "forceMagstripePin", "domesticDebitAids", "", "", "enableCustomerCancellation", "surchargeNotice", "nonCardPaymentMethodTypes", "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "disablePredip", "useIncrementalAuthUi", BbposDeviceControllerImpl.FORCE_PIN_ENTRY, "determineTipSelectionType", "Lcom/stripe/hardware/paymentcollection/TippingSelectionType;", "config", "bbposSdkTipSelectionType", "Lcom/stripe/hardware/tipping/BbposSdkTipSelectionType;", "displayCart", "cart", "Lcom/stripe/cart/Cart;", "displayNonCardPaymentMethods", "getDesiredReaderInterfaces", "", "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;", "interfacesSupportedByTransaction", "isFinished", "onAccessiblePinPadEvent", "accessiblePinPadTouchEvent", "Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;", "onCollectPaymentMethodApiError", "onDeviceKernelBusy", "onHardwareTransactionCanceled", "onOnlineAuthStateChanged", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/stripe/paymentcollection/OnlineAuthState;", "onPinEntryStatusChange", NotificationCompat.CATEGORY_STATUS, "Lcom/stripe/hardware/paymentcollection/PinEntryStatus;", "epb", "epbKsn", "onRequestAccountTypeSelection", TypedValues.TransitionType.S_TO, TypedValues.TransitionType.S_FROM, "data", "Lcom/stripe/paymentcollection/PaymentCollectionData;", "reason", "onTransactionCanceled", "Lcom/stripe/paymentcollection/CancelReason;", "pinEntryStatusToFailureReasonForViewModel", "Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;", "pinEntryStatus", "registerHandlers", "resetTipSelection", "resumePaymentForSCA", "scaRequirement", "Lcom/stripe/paymentcollection/SCARequirement;", "returnToCardPaymentMethodCollection", "returnToNonCardPaymentMethodsSelection", "setActiveReaderInterfaces", "activeReaderInterfaces", "setApplicationList", "applicationList", "setCardSlotState", "cardSlotState", "Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;", "setDynamicCurrencyConversionSelected", "selected", "setEarlyTransactionAbortReason", "Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;", "setFinalConfirmation", "tlv", "setHardwareTippingSelectionResult", "hardwareResult", "Lcom/stripe/hardware/tipping/TipSelectionResult;", "setHardwareTransactionResult", "result", "Lcom/stripe/hardware/emv/TransactionResult$Result;", "setInitialState", "setInterfaceResetRequired", "isRequired", "setIntermediateError", "error", "Lcom/stripe/hardware/emv/IntermediateTransactionError;", "setIsWaitingForCard", "isWaitingForCard", "setMagStripeReadResult", "magStripeReadResult", "Lcom/stripe/hardware/magstripe/MagStripeReadResult;", "setManualEntryCollectionResult", "Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;", "setManualEntryResult", "manualEntryResult", "Lcom/stripe/hardware/paymentcollection/ManualEntryResult;", "setNonCardPaymentMethodData", "Lcom/stripe/transaction/NonCardPaymentMethodData;", "setNonCardPaymentMethodSelected", "setOnlineAuthResponse", "response", "setOnlineAuthorizationData", "onlineAuthorizationData", "getFirstSupportedLanguage", "setPinEntryAsterisks", "count", "", "setSelectedAccountType", "selectedAccountType", "Lcom/stripe/hardware/emv/AccountType;", "setSelectedApplicationIndex", "selectedApplicationIndex", "setSelectedLanguage", "selectedLanguage", "setShowThankYouReceived", "showThankYouReceived", "setTippingSelectionResult", "Lcom/stripe/hardware/paymentcollection/TippingSelectionResult;", "setUserRetryRequested", "startDynamicCurrencyConversionSelection", "dynamicCurrencyConversionData", "Lcom/stripe/transaction/DynamicCurrencyConversionData;", "updateChargeAttempt", "chargeAttempt", "Lcom/stripe/transaction/ChargeAttempt;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BbposPaymentCollectionStateMachine extends PaymentCollectionStateMachine {
    private final PaymentCollectionEventDelegate eventDelegate;
    private final EventLoggers eventLoggers;
    private final PaymentCollectionLogger logger;
    private final PaymentCollectionLoggerFactory loggerFactory;
    private final ManualEntryStateMachine manualEntryStateMachine;
    private Function1<? super PaymentCollectionState, Unit> onStateChanging;
    private final PaymentCollectionFeatureFlagRepository paymentCollectionFeatureFlagRepository;
    private final PaymentCollectionStateTimer timer;

    /* JADX INFO: compiled from: BbposPaymentCollectionStateMachine.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;

        static {
            int[] iArr = new int[PaymentCollectionState.values().length];
            try {
                iArr[PaymentCollectionState.EMPTY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PaymentCollectionState.DISPLAY_CART_PRE_COLLECTION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PaymentCollectionState.DISPLAY_CART_POST_COLLECTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PaymentCollectionState.TIPPING_SELECTION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[PaymentCollectionState.COLLECTION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[PaymentCollectionState.MANUAL_ENTRY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[PaymentCollectionState.PROCESSING.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[PaymentCollectionState.APPLICATION_SELECTION.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[PaymentCollectionState.LANGUAGE_SELECTION.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[PaymentCollectionState.ACCOUNT_SELECTION.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[PaymentCollectionState.PIN_ENTRY.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[PaymentCollectionState.MAGSTRIPE_PIN_ENTRY.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[PaymentCollectionState.PREPARE_TO_COLLECT_AGAIN.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[PaymentCollectionState.RECOVERABLE_ERROR_SUMMARY.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[PaymentCollectionState.ONLINE_AUTHORIZATION.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[PaymentCollectionState.ONLINE_AUTHORIZATION_MAG_STRIPE.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[PaymentCollectionState.REMOVE_CARD.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[PaymentCollectionState.ONLINE_CONFIRMATION.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[PaymentCollectionState.COLLECTION_COMPLETE.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[PaymentCollectionState.CANCEL.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[PaymentCollectionState.FINISHED.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[PaymentCollectionState.TIMEOUT.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr[PaymentCollectionState.COLLECT_PAYMENT_METHOD_API_ERROR.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr[PaymentCollectionState.DCC_SELECTION.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr[PaymentCollectionState.NON_CARD_PAYMENT_METHOD_SELECTION.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr[PaymentCollectionState.NON_CARD_PAYMENT_METHOD_CONFIRMATION.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr[PaymentCollectionState.NON_CARD_PAYMENT_METHOD_ACTION_REQUIRED.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr[PaymentCollectionState.INTERSTITIAL.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                iArr[PaymentCollectionState.PASSTHROUGH_CONFIRMATION.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[TransactionType.values().length];
            try {
                iArr2[TransactionType.STRONG_CUSTOMER_AUTHENTICATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                iArr2[TransactionType.CHARGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                iArr2[TransactionType.REFUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                iArr2[TransactionType.REUSABLE_CARD.ordinal()] = 4;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                iArr2[TransactionType.SETUP.ordinal()] = 5;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                iArr2[TransactionType.MAGSTRIPE_PASSTHROUGH.ordinal()] = 6;
            } catch (NoSuchFieldError unused35) {
            }
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[PinEntryStatus.values().length];
            try {
                iArr3[PinEntryStatus.CANCEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                iArr3[PinEntryStatus.TIMEOUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                iArr3[PinEntryStatus.INCORRECT_PIN.ordinal()] = 3;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                iArr3[PinEntryStatus.CARD_ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                iArr3[PinEntryStatus.REQUESTED.ordinal()] = 5;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                iArr3[PinEntryStatus.ENTERED.ordinal()] = 6;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                iArr3[PinEntryStatus.SUCCESS.ordinal()] = 7;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                iArr3[PinEntryStatus.WRONG_PIN_LENGTH.ordinal()] = 8;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                iArr3[PinEntryStatus.ICC_REMOVED.ordinal()] = 9;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                iArr3[PinEntryStatus.NOT_REQUESTED.ordinal()] = 10;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                iArr3[PinEntryStatus.BYPASS.ordinal()] = 11;
            } catch (NoSuchFieldError unused46) {
            }
            $EnumSwitchMapping$2 = iArr3;
        }
    }

    public BbposPaymentCollectionStateMachine(PaymentCollectionEventDelegate eventDelegate, EventLoggers eventLoggers, PaymentCollectionStateTimer timer, PaymentCollectionFeatureFlagRepository paymentCollectionFeatureFlagRepository, ManualEntryStateMachine manualEntryStateMachine, PaymentCollectionLoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(eventDelegate, "eventDelegate");
        Intrinsics.checkNotNullParameter(eventLoggers, "eventLoggers");
        Intrinsics.checkNotNullParameter(timer, "timer");
        Intrinsics.checkNotNullParameter(paymentCollectionFeatureFlagRepository, "paymentCollectionFeatureFlagRepository");
        Intrinsics.checkNotNullParameter(manualEntryStateMachine, "manualEntryStateMachine");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        this.eventDelegate = eventDelegate;
        this.eventLoggers = eventLoggers;
        this.timer = timer;
        this.paymentCollectionFeatureFlagRepository = paymentCollectionFeatureFlagRepository;
        this.manualEntryStateMachine = manualEntryStateMachine;
        this.loggerFactory = loggerFactory;
        this.logger = loggerFactory.create(Reflection.getOrCreateKotlinClass(PaymentCollectionStateMachine.class));
        registerHandlers();
        setInitialState();
    }

    private final void registerHandlers() {
        PaymentCollectionStateHandler emptyHandler;
        Iterator<PaymentCollectionState> it = PaymentCollectionState.getEntries().iterator();
        while (it.hasNext()) {
            switch (WhenMappings.$EnumSwitchMapping$0[it.next().ordinal()]) {
                case 1:
                    emptyHandler = new EmptyHandler(this.timer, this.loggerFactory.create(Reflection.getOrCreateKotlinClass(EmptyHandler.class)));
                    break;
                case 2:
                    emptyHandler = new DisplayCartPreCollectionHandler(this.timer, this.loggerFactory.create(Reflection.getOrCreateKotlinClass(DisplayCartPreCollectionHandler.class)));
                    break;
                case 3:
                    emptyHandler = new DisplayCartPostCollectionHandler(this.timer, this.loggerFactory.create(Reflection.getOrCreateKotlinClass(DisplayCartPostCollectionHandler.class)));
                    break;
                case 4:
                    emptyHandler = new TippingHandler(this.timer, this.loggerFactory.create(Reflection.getOrCreateKotlinClass(TippingHandler.class)));
                    break;
                case 5:
                    emptyHandler = new CollectionHandler(this.timer, this.loggerFactory.create(Reflection.getOrCreateKotlinClass(CollectionHandler.class)));
                    break;
                case 6:
                    emptyHandler = new ManualEntryHandler(this.timer, this.manualEntryStateMachine, this.loggerFactory.create(Reflection.getOrCreateKotlinClass(ManualEntryHandler.class)));
                    break;
                case 7:
                    emptyHandler = new ProcessingHandler(this.timer, this.loggerFactory.create(Reflection.getOrCreateKotlinClass(ProcessingHandler.class)));
                    break;
                case 8:
                    emptyHandler = new ApplicationSelectionHandler(this.timer, this.loggerFactory.create(Reflection.getOrCreateKotlinClass(ApplicationSelectionHandler.class)));
                    break;
                case 9:
                    emptyHandler = new LanguageSelectionHandler(this.timer, this.loggerFactory.create(Reflection.getOrCreateKotlinClass(LanguageSelectionHandler.class)));
                    break;
                case 10:
                    emptyHandler = new AccountSelectionHandler(this.timer, this.loggerFactory.create(Reflection.getOrCreateKotlinClass(AccountSelectionHandler.class)));
                    break;
                case 11:
                    emptyHandler = new PinEntryHandler(this.timer, this.loggerFactory.create(Reflection.getOrCreateKotlinClass(PinEntryHandler.class)));
                    break;
                case 12:
                    emptyHandler = new MagStripePinEntryHandler(this.timer, this.loggerFactory.create(Reflection.getOrCreateKotlinClass(MagStripePinEntryHandler.class)));
                    break;
                case 13:
                    emptyHandler = new PrepareToCollectAgainHandler(this.timer, this.loggerFactory.create(Reflection.getOrCreateKotlinClass(PrepareToCollectAgainHandler.class)));
                    break;
                case 14:
                    emptyHandler = new RecoverableErrorSummaryHandler(this.timer, this.loggerFactory.create(Reflection.getOrCreateKotlinClass(RecoverableErrorSummaryHandler.class)));
                    break;
                case 15:
                    emptyHandler = new OnlineAuthorizationHandler(this.timer, this.loggerFactory.create(Reflection.getOrCreateKotlinClass(OnlineAuthorizationHandler.class)));
                    break;
                case 16:
                    emptyHandler = new OnlineAuthorizationMagStripeHandler(this.timer, this.loggerFactory.create(Reflection.getOrCreateKotlinClass(OnlineAuthorizationMagStripeHandler.class)));
                    break;
                case 17:
                    emptyHandler = new RemoveCardHandler(this.timer, this.loggerFactory.create(Reflection.getOrCreateKotlinClass(RemoveCardHandler.class)));
                    break;
                case 18:
                    emptyHandler = new OnlineConfirmationHandler(this.timer, this.loggerFactory.create(Reflection.getOrCreateKotlinClass(OnlineConfirmationHandler.class)));
                    break;
                case 19:
                    emptyHandler = new CollectionCompleteHandler(this.timer, this.loggerFactory.create(Reflection.getOrCreateKotlinClass(CollectionCompleteHandler.class)));
                    break;
                case 20:
                    emptyHandler = new CancelHandler(this.timer, this.loggerFactory.create(Reflection.getOrCreateKotlinClass(CancelHandler.class)));
                    break;
                case 21:
                    emptyHandler = new FinishedHandler(this.timer, this.loggerFactory.create(Reflection.getOrCreateKotlinClass(FinishedHandler.class)));
                    break;
                case 22:
                    emptyHandler = new TimeoutHandler(this.timer, this.loggerFactory.create(Reflection.getOrCreateKotlinClass(TimeoutHandler.class)));
                    break;
                case 23:
                    emptyHandler = new CollectPaymentMethodApiErrorHandler(this.timer, this.loggerFactory.create(Reflection.getOrCreateKotlinClass(CollectPaymentMethodApiErrorHandler.class)));
                    break;
                case 24:
                    emptyHandler = new DynamicCurrencyConversionSelectionHandler(this.timer, this.loggerFactory.create(Reflection.getOrCreateKotlinClass(DynamicCurrencyConversionSelectionHandler.class)));
                    break;
                case 25:
                    emptyHandler = new NonCardPaymentMethodsSelectionHandler(this.timer, this.loggerFactory.create(Reflection.getOrCreateKotlinClass(NonCardPaymentMethodsSelectionHandler.class)));
                    break;
                case 26:
                    emptyHandler = new NonCardPaymentMethodConfirmationHandler(this.timer, this.loggerFactory.create(Reflection.getOrCreateKotlinClass(NonCardPaymentMethodConfirmationHandler.class)));
                    break;
                case 27:
                    emptyHandler = new NonCardPaymentMethodActionRequiredHandler(this.timer, this.loggerFactory.create(Reflection.getOrCreateKotlinClass(NonCardPaymentMethodActionRequiredHandler.class)));
                    break;
                case 28:
                    emptyHandler = new InterstitialHandler(this.timer, this.loggerFactory.create(Reflection.getOrCreateKotlinClass(InterstitialHandler.class)));
                    break;
                case 29:
                    emptyHandler = new PassthroughConfirmationHandler(this.timer, this.loggerFactory.create(Reflection.getOrCreateKotlinClass(PassthroughConfirmationHandler.class)));
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            PaymentCollectionStateHandler paymentCollectionStateHandler = emptyHandler;
            paymentCollectionStateHandler.setEventDelegate(this.eventDelegate);
            paymentCollectionStateHandler.setEventLoggers$public_release(this.eventLoggers);
            paymentCollectionStateHandler.register(this);
        }
    }

    private final void setInitialState() {
        StateMachine.transitionTo$default(this, PaymentCollectionState.EMPTY, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.stripe.statemachine.StateMachine
    public void onStateChanging(PaymentCollectionState to, PaymentCollectionState from, PaymentCollectionData data, String reason) {
        Intrinsics.checkNotNullParameter(to, "to");
        this.logger.i("onStateChanged: " + (from != null ? from.name() : null) + " -> " + to.name() + ": " + reason, new Pair[0]);
        Function1<? super PaymentCollectionState, Unit> function1 = this.onStateChanging;
        if (function1 != null) {
            function1.invoke(to);
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public boolean canStartCollection() {
        PaymentCollectionData data;
        return CollectionsKt.contains(SetsKt.setOf((Object[]) new PaymentCollectionState[]{PaymentCollectionState.EMPTY, PaymentCollectionState.TIPPING_SELECTION, PaymentCollectionState.MANUAL_ENTRY}), getState()) || !((data = getData()) == null || data.getConfirmedCollection());
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public boolean canResumeCollectionForSca() {
        if (getState() != PaymentCollectionState.ONLINE_AUTHORIZATION) {
            return false;
        }
        PaymentCollectionData data = getData();
        if (!((data != null ? data.getChargeAttempt() : null) instanceof ChargeAttempt.ExtendedAttempt)) {
            return false;
        }
        PaymentCollectionData data2 = getData();
        if ((data2 != null ? data2.getOnlineAuthorizationData() : null) == null) {
            return false;
        }
        PaymentCollectionData data3 = getData();
        return (data3 != null ? data3.getOnlineAuthorizationResponse() : null) != null;
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public boolean displayCart(EmvTransactionType emvTransactionType, TippingState tippingState, TipConfigValidationResult tippingConfig, Cart cart, IntegrationType integrationType, PaymentCollectionDeviceCapability deviceCapability, DeviceType deviceType, boolean isApplicationSelectionInQuickChipEnabled, boolean enableMagStripePin, boolean forceMagstripePin, boolean disablePredip) {
        TransactionType transactionType;
        PaymentCollectionData paymentCollectionData;
        Intrinsics.checkNotNullParameter(emvTransactionType, "emvTransactionType");
        Intrinsics.checkNotNullParameter(tippingState, "tippingState");
        Intrinsics.checkNotNullParameter(tippingConfig, "tippingConfig");
        Intrinsics.checkNotNullParameter(cart, "cart");
        Intrinsics.checkNotNullParameter(deviceCapability, "deviceCapability");
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        if (!canStartCollection()) {
            this.logger.i("Attempt to begin payment from invalid state " + getState(), new Pair[0]);
            return false;
        }
        PaymentCollectionData data = getData();
        if (data != null) {
            this.eventLoggers.getStageEventLogger().closeDisplayCartLog(data, DisplayCartResult.CART_UPDATED);
        }
        this.eventLoggers.getStageEventLogger().openDisplayCartLog();
        TransactionType transactionType2 = TransactionType.CHARGE;
        Set desiredReaderInterfaces$default = getDesiredReaderInterfaces$default(this, transactionType2, deviceCapability, false, false, 12, null);
        Amount balance = cart.getBalance();
        PaymentCollectionData data2 = getData();
        if (data2 != null) {
            transactionType = transactionType2;
            paymentCollectionData = PaymentCollectionData.copy$default(data2, transactionType, balance, balance, emvTransactionType, false, 0, null, enableMagStripePin, forceMagstripePin, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, tippingState, tippingConfig, null, false, null, null, null, false, null, null, false, desiredReaderInterfaces$default, null, false, cart, false, false, null, null, integrationType, deviceCapability, deviceType, null, false, false, null, null, isApplicationSelectionInQuickChipEnabled, false, false, false, null, null, null, null, false, null, false, null, disablePredip, false, false, false, -402653584, -281134785, 51, null);
            if (paymentCollectionData == null) {
            }
            updateData(paymentCollectionData);
            return true;
        }
        transactionType = transactionType2;
        paymentCollectionData = new PaymentCollectionData(transactionType, balance, balance, emvTransactionType, false, 0, null, enableMagStripePin, forceMagstripePin, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, tippingState, tippingConfig, null, false, null, null, null, false, null, null, false, desiredReaderInterfaces$default, null, false, cart, false, false, null, null, integrationType, deviceCapability, deviceType, null, false, false, null, null, isApplicationSelectionInQuickChipEnabled, false, false, false, null, null, null, CollectionsKt.emptyList(), false, null, false, null, disablePredip, false, false, false, -402653584, -818005697, 35, null);
        updateData(paymentCollectionData);
        return true;
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public boolean collectPayment(TransactionType transactionType, Amount baseAmount, EmvTransactionType emvTransactionType, TippingState tippingState, TipConfigValidationResult tippingConfig, Amount tippingAmount, IntegrationType integrationType, boolean manualEntry, PaymentCollectionDeviceCapability deviceCapability, DeviceType deviceType, boolean isOffline, Amount tipEligibleAmount, boolean isDeferredAuthorizationCountry, ReaderConfiguration.DomesticDebitPriority domesticDebitPriority, boolean isApplicationSelectionInQuickChipEnabled, boolean enableMagStripePin, boolean forceMagstripePin, List<String> domesticDebitAids, boolean enableCustomerCancellation, String surchargeNotice, List<? extends PaymentMethodType> nonCardPaymentMethodTypes, boolean disablePredip, boolean useIncrementalAuthUi, boolean forcePinEntry) {
        Amount amount;
        boolean z;
        Amount amount2;
        PaymentCollectionData paymentCollectionData;
        Intrinsics.checkNotNullParameter(transactionType, "transactionType");
        Intrinsics.checkNotNullParameter(baseAmount, "baseAmount");
        Intrinsics.checkNotNullParameter(emvTransactionType, "emvTransactionType");
        Intrinsics.checkNotNullParameter(tippingState, "tippingState");
        Intrinsics.checkNotNullParameter(tippingConfig, "tippingConfig");
        Intrinsics.checkNotNullParameter(deviceCapability, "deviceCapability");
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(domesticDebitAids, "domesticDebitAids");
        Intrinsics.checkNotNullParameter(nonCardPaymentMethodTypes, "nonCardPaymentMethodTypes");
        if (!canStartCollection()) {
            this.logger.i("Attempt to begin payment from invalid state " + getState(), new Pair[0]);
            return false;
        }
        Set<ReaderConfiguration.ReaderType> desiredReaderInterfaces = getDesiredReaderInterfaces(transactionType, deviceCapability, manualEntry, isOffline);
        PaymentCollectionData data = getData();
        if (data != null && !data.getConfirmedCollection() && getState() != null) {
            this.eventLoggers.getStageEventLogger().closeDisplayCartLog(data, DisplayCartResult.STARTED_COLLECTION);
        }
        if ((tippingAmount != null ? tippingAmount.getCurrency() : null) != baseAmount.getCurrency()) {
            amount = baseAmount;
            z = false;
        } else {
            z = false;
            amount = new Amount(tippingAmount.getValue() + baseAmount.getValue(), baseAmount.getCurrency());
        }
        boolean zMotoTransactionsEnabled = this.paymentCollectionFeatureFlagRepository.motoTransactionsEnabled();
        if (manualEntry && !zMotoTransactionsEnabled) {
            this.logger.e("MOTO transactions are not enabled for the registered account");
            return z;
        }
        PaymentCollectionData data2 = getData();
        if (data2 != null) {
            amount2 = amount;
            paymentCollectionData = PaymentCollectionData.copy$default(data2, transactionType, baseAmount, amount2, emvTransactionType, false, 0, null, enableMagStripePin, forceMagstripePin, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, tippingState, tippingConfig, tipEligibleAmount, false, null, null, null, false, null, null, false, desiredReaderInterfaces, null, false, null, true, manualEntry, null, null, integrationType, deviceCapability, deviceType, null, isOffline, isDeferredAuthorizationCountry, domesticDebitAids, domesticDebitPriority, isApplicationSelectionInQuickChipEnabled, enableCustomerCancellation, false, false, null, null, surchargeNotice, nonCardPaymentMethodTypes, false, null, false, null, disablePredip, useIncrementalAuthUi, false, this.paymentCollectionFeatureFlagRepository.sposGirocardEnabled(), -939526544, -821939393, 19, null);
            if (paymentCollectionData == null) {
            }
            updateData(paymentCollectionData);
            return true;
        }
        amount2 = amount;
        paymentCollectionData = new PaymentCollectionData(transactionType, baseAmount, amount2, emvTransactionType, false, 0, null, enableMagStripePin, forceMagstripePin, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, tippingState, tippingConfig, tipEligibleAmount, false, null, null, null, false, null, null, false, desiredReaderInterfaces, null, false, null, false, manualEntry, null, null, integrationType, deviceCapability, deviceType, null, isOffline, isDeferredAuthorizationCountry, domesticDebitAids, domesticDebitPriority, isApplicationSelectionInQuickChipEnabled, enableCustomerCancellation, false, false, null, null, surchargeNotice, nonCardPaymentMethodTypes, false, null, false, null, disablePredip, useIncrementalAuthUi, forcePinEntry, this.paymentCollectionFeatureFlagRepository.sposGirocardEnabled(), -939526544, -821938369, 3, null);
        updateData(paymentCollectionData);
        return true;
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public boolean resumePaymentForSCA(SCARequirement scaRequirement) {
        Intrinsics.checkNotNullParameter(scaRequirement, "scaRequirement");
        if (!canResumeCollectionForSca()) {
            this.logger.i("Attempt to resume payment from invalid state " + getState(), new Pair[0]);
            return false;
        }
        PaymentCollectionData data = getData();
        if (data == null) {
            return true;
        }
        updateData(PaymentCollectionData.copy$default(data, TransactionType.STRONG_CUSTOMER_AUTHENTICATION, null, null, null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, scaRequirement, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -98566146, -4097, 63, null));
        this.eventLoggers.getStageEventLogger().closeWaitForPosCommandLog(getData(), PendingPosCommand.RESUME_PAYMENT);
        return true;
    }

    static /* synthetic */ Set getDesiredReaderInterfaces$default(BbposPaymentCollectionStateMachine bbposPaymentCollectionStateMachine, TransactionType transactionType, PaymentCollectionDeviceCapability paymentCollectionDeviceCapability, boolean z, boolean z2, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        if ((i & 8) != 0) {
            z2 = false;
        }
        return bbposPaymentCollectionStateMachine.getDesiredReaderInterfaces(transactionType, paymentCollectionDeviceCapability, z, z2);
    }

    private final Set<ReaderConfiguration.ReaderType> getDesiredReaderInterfaces(TransactionType transactionType, PaymentCollectionDeviceCapability deviceCapability, boolean manualEntry, boolean isOffline) {
        Set<ReaderConfiguration.ReaderType> setInterfacesSupportedByTransaction = interfacesSupportedByTransaction(transactionType, manualEntry, isOffline);
        ArrayList arrayList = new ArrayList();
        for (Object obj : setInterfacesSupportedByTransaction) {
            if (deviceCapability.getSupportedInterface().contains((ReaderConfiguration.ReaderType) obj)) {
                arrayList.add(obj);
            }
        }
        return CollectionsKt.toSet(arrayList);
    }

    static /* synthetic */ Set interfacesSupportedByTransaction$default(BbposPaymentCollectionStateMachine bbposPaymentCollectionStateMachine, TransactionType transactionType, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            z2 = false;
        }
        return bbposPaymentCollectionStateMachine.interfacesSupportedByTransaction(transactionType, z, z2);
    }

    private final Set<ReaderConfiguration.ReaderType> interfacesSupportedByTransaction(TransactionType transactionType, boolean manualEntry, boolean isOffline) {
        Set setMutableSetOf;
        if (manualEntry) {
            return SetsKt.setOf(ReaderConfiguration.ReaderType.MANUAL_ENTRY);
        }
        switch (WhenMappings.$EnumSwitchMapping$1[transactionType.ordinal()]) {
            case 1:
                setMutableSetOf = SetsKt.mutableSetOf(ReaderConfiguration.ReaderType.ICC, ReaderConfiguration.ReaderType.MAGSTRIPE);
                break;
            case 2:
                setMutableSetOf = SetsKt.mutableSetOf(ReaderConfiguration.ReaderType.MAGSTRIPE, ReaderConfiguration.ReaderType.ICC, ReaderConfiguration.ReaderType.NFC);
                break;
            case 3:
                setMutableSetOf = SetsKt.mutableSetOf(ReaderConfiguration.ReaderType.ICC, ReaderConfiguration.ReaderType.NFC);
                break;
            case 4:
                setMutableSetOf = SetsKt.mutableSetOf(ReaderConfiguration.ReaderType.MAGSTRIPE, ReaderConfiguration.ReaderType.ICC);
                break;
            case 5:
                setMutableSetOf = SetsKt.mutableSetOf(ReaderConfiguration.ReaderType.MAGSTRIPE, ReaderConfiguration.ReaderType.ICC, ReaderConfiguration.ReaderType.NFC);
                break;
            case 6:
                setMutableSetOf = SetsKt.mutableSetOf(ReaderConfiguration.ReaderType.MAGSTRIPE);
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        if (isOffline) {
            setMutableSetOf.remove(ReaderConfiguration.ReaderType.MAGSTRIPE);
        }
        return CollectionsKt.toSet(setMutableSetOf);
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void setTippingSelectionResult(TippingSelectionResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        PaymentCollectionData data = getData();
        if (data != null) {
            Amount amount = result.getAmount();
            if (amount.getCurrency() != data.getAmount().getCurrency()) {
                throw new IllegalStateException(("Tip currency (" + amount.getCurrency() + ") not the same as transaction " + data.getAmount().getCurrency()).toString());
            }
            updateData(PaymentCollectionData.copy$default(data, null, null, new Amount(data.getBaseAmount().getValue() + amount.getValue(), data.getAmount().getCurrency()), null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, new TippingState.Completed(result), null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -134217733, -1, 63, null));
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void resetTipSelection() {
        if (getState() != PaymentCollectionState.COLLECTION) {
            this.logger.w("Attempt to return to tip selection from an invalid state " + getState());
            return;
        }
        PaymentCollectionData data = getData();
        if (data != null) {
            this.eventLoggers.getTippingLogger().logReselectTipping(data);
            updateData(PaymentCollectionData.copy$default(data, null, null, data.getBaseAmount(), null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, TippingState.SelectionNeeded.INSTANCE, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -134217733, -1, 63, null));
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void setInterfaceResetRequired(boolean isRequired) {
        PaymentCollectionData data = getData();
        if (data != null) {
            updateData(PaymentCollectionData.copy$default(data, null, null, null, null, isRequired, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -17, -1, 63, null));
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void setCardSlotState(ContactCardSlotState cardSlotState) {
        PaymentCollectionData data;
        Intrinsics.checkNotNullParameter(cardSlotState, "cardSlotState");
        PaymentCollectionData data2 = getData();
        if ((data2 == null || !data2.getShouldStartManualEntry() || cardSlotState == ContactCardSlotState.EMPTY) && (data = getData()) != null) {
            updateData(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, cardSlotState, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -513, -1, 63, null));
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void clearMagStripeReadState() {
        PaymentCollectionData data = getData();
        if (data == null || data.getMagStripeReadResult() == null) {
            return;
        }
        updateData(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -65, -1, 63, null));
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void setMagStripeReadResult(MagStripeReadResult magStripeReadResult) {
        Intrinsics.checkNotNullParameter(magStripeReadResult, "magStripeReadResult");
        PaymentCollectionData data = getData();
        if (data != null) {
            updateData(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, magStripeReadResult, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -65, -1, 63, null));
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void setApplicationList(List<String> applicationList) {
        Intrinsics.checkNotNullParameter(applicationList, "applicationList");
        PaymentCollectionData data = getData();
        if (data != null) {
            updateData(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, applicationList, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -5121, -1, 63, null));
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void onRequestAccountTypeSelection() {
        PaymentCollectionData data = getData();
        if (data != null) {
            updateData(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, AccountSelectionStatus.Requested.INSTANCE, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -16385, -1, 63, null));
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void setSelectedApplicationIndex(int selectedApplicationIndex) {
        PaymentCollectionData data = getData();
        if (data != null) {
            updateData(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, Integer.valueOf(selectedApplicationIndex), null, null, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -4097, -1, 63, null));
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void setSelectedLanguage(String selectedLanguage) {
        PaymentCollectionData data = getData();
        if (data != null) {
            updateData(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, null, selectedLanguage, null, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, Ddeml.DDE_FPOKRESERVED, -1, 63, null));
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void setSelectedAccountType(AccountType selectedAccountType) {
        Intrinsics.checkNotNullParameter(selectedAccountType, "selectedAccountType");
        PaymentCollectionData data = getData();
        if (data != null) {
            updateData(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, new AccountSelectionStatus.AccountSelected(selectedAccountType), null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -16385, -1, 63, null));
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void setShowThankYouReceived(boolean showThankYouReceived) {
        PaymentCollectionData data = getData();
        if (data != null) {
            updateData(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, showThankYouReceived, null, null, null, null, false, null, false, null, false, false, false, false, -1, -33554433, 63, null));
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void onPinEntryStatusChange(PinEntryStatus status, String epb, String epbKsn) {
        MagStripeReadSuccess magStripeReadResult;
        int pinAsterisks;
        Intrinsics.checkNotNullParameter(status, "status");
        PaymentCollectionData data = getData();
        EarlyTransactionAbortReason earlyTransactionAbortReason = null;
        if (status != (data != null ? data.getPinEntryStatus() : null)) {
            int i = WhenMappings.$EnumSwitchMapping$2[status.ordinal()];
            if (i == 1) {
                earlyTransactionAbortReason = EarlyTransactionAbortReason.PIN_ENTRY_CANCELED;
            } else if (i == 2) {
                earlyTransactionAbortReason = EarlyTransactionAbortReason.PIN_ENTRY_TIMED_OUT;
            }
            PinEntryRetryReason pinEntryRetryReasonPinEntryStatusToFailureReasonForViewModel = pinEntryStatusToFailureReasonForViewModel(status);
            PaymentCollectionData data2 = getData();
            if (data2 != null) {
                if (status == PinEntryStatus.ENTERED && (data2.getMagStripeReadResult() instanceof MagStripeReadSuccess)) {
                    magStripeReadResult = MagStripeReadSuccess.copy$default((MagStripeReadSuccess) data2.getMagStripeReadResult(), null, null, null, null, null, epb, epbKsn, 31, null);
                } else {
                    magStripeReadResult = data2.getMagStripeReadResult();
                }
                MagStripeReadResult magStripeReadResult2 = magStripeReadResult;
                switch (WhenMappings.$EnumSwitchMapping$2[status.ordinal()]) {
                    case 1:
                    case 2:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                        pinAsterisks = data2.getPinAsterisks();
                        break;
                    case 3:
                    case 4:
                        pinAsterisks = 0;
                        break;
                    default:
                        throw new NoWhenBranchMatchedException();
                }
                int i2 = pinAsterisks;
                if (earlyTransactionAbortReason == null) {
                    earlyTransactionAbortReason = data2.getEarlyTransactionAbortReason();
                }
                EarlyTransactionAbortReason earlyTransactionAbortReason2 = earlyTransactionAbortReason;
                if (pinEntryRetryReasonPinEntryStatusToFailureReasonForViewModel == null) {
                    pinEntryRetryReasonPinEntryStatusToFailureReasonForViewModel = data2.getPinEntryRetryReason();
                }
                updateData(PaymentCollectionData.copy$default(data2, null, null, null, null, false, 0, magStripeReadResult2, false, false, null, null, null, null, null, null, status, pinEntryRetryReasonPinEntryStatusToFailureReasonForViewModel, i2, false, null, earlyTransactionAbortReason2, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -1278017, -1, 63, null));
            }
        }
    }

    private final PinEntryRetryReason pinEntryStatusToFailureReasonForViewModel(PinEntryStatus pinEntryStatus) {
        int i = pinEntryStatus == null ? -1 : WhenMappings.$EnumSwitchMapping$2[pinEntryStatus.ordinal()];
        if (i == 3) {
            return PinEntryRetryReason.INCORRECT_PIN;
        }
        if (i == 4) {
            return PinEntryRetryReason.CARD_ERROR;
        }
        if (i != 8) {
            return null;
        }
        return PinEntryRetryReason.WRONG_PIN_LENGTH;
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void setPinEntryAsterisks(int count) {
        PaymentCollectionData data = getData();
        if (data != null) {
            updateData(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, null, null, null, count, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -131073, -1, 63, null));
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void onAccessiblePinPadEvent(AccessiblePinPadTouchEvent accessiblePinPadTouchEvent) {
        Intrinsics.checkNotNullParameter(accessiblePinPadTouchEvent, "accessiblePinPadTouchEvent");
        PaymentCollectionData data = getData();
        if (data != null) {
            updateData(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, accessiblePinPadTouchEvent, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -524289, -1, 63, null));
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void setEarlyTransactionAbortReason(EarlyTransactionAbortReason reason) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        PaymentCollectionData data = getData();
        if (data != null) {
            updateData(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, reason, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -1048577, -1, 63, null));
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void setOnlineAuthorizationData(String onlineAuthorizationData, Function1<? super List<String>, String> getFirstSupportedLanguage) {
        Intrinsics.checkNotNullParameter(onlineAuthorizationData, "onlineAuthorizationData");
        Intrinsics.checkNotNullParameter(getFirstSupportedLanguage, "getFirstSupportedLanguage");
        TlvMap tlvMap = TlvMap.INSTANCE.toTlvMap(onlineAuthorizationData);
        if ((tlvMap != null ? tlvMap.getInterfaceType() : null) == null) {
            this.logger.w("Ignore invalid onlineAuthorizationData " + onlineAuthorizationData);
            return;
        }
        PaymentCollectionData data = getData();
        if (data != null) {
            String selectedLanguage = data.getSelectedLanguage();
            if (selectedLanguage == null) {
                List<String> languagePreferences = tlvMap.getLanguagePreferences();
                if (languagePreferences == null) {
                    languagePreferences = CollectionsKt.emptyList();
                }
                if (!languagePreferences.isEmpty()) {
                    List<String> languagePreferences2 = tlvMap.getLanguagePreferences();
                    if (languagePreferences2 == null) {
                        languagePreferences2 = CollectionsKt.emptyList();
                    }
                    selectedLanguage = getFirstSupportedLanguage.invoke(languagePreferences2);
                    this.logger.i("selected language: " + selectedLanguage, new Pair[0]);
                }
            }
            updateData(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, null, selectedLanguage, null, null, null, 0, false, null, null, onlineAuthorizationData, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -2105345, -1, 63, null));
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void setFinalConfirmation(String tlv) {
        Intrinsics.checkNotNullParameter(tlv, "tlv");
        PaymentCollectionData data = getData();
        if (data == null || data.getOnlineAuthorizationData() == null) {
            return;
        }
        updateData(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, tlv, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -33554433, -1, 63, null));
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void setOnlineAuthResponse(String response) {
        Intrinsics.checkNotNullParameter(response, "response");
        PaymentCollectionData data = getData();
        if (data != null) {
            updateData(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, response, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -8388609, -1, 63, null));
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void updateChargeAttempt(ChargeAttempt chargeAttempt) {
        this.logger.d("updateChargeAttempt " + chargeAttempt, new Pair[0]);
        PaymentCollectionData data = getData();
        if (data != null) {
            PaymentCollectionData paymentCollectionDataCopy$default = PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, chargeAttempt, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -67108865, -1, 63, null);
            updateData(paymentCollectionDataCopy$default);
            if (chargeAttempt != null) {
                this.eventLoggers.getDiscreteEventLogger().logOnlineConfirmResult(paymentCollectionDataCopy$default);
                if (chargeAttempt instanceof ChargeAttempt.CompletedAttempt.SuccessfulCharge) {
                    ChargeAttempt.CompletedAttempt.SuccessfulCharge successfulCharge = (ChargeAttempt.CompletedAttempt.SuccessfulCharge) chargeAttempt;
                    Amount amountSurcharge = successfulCharge.getAmountSurcharge();
                    if (amountSurcharge != null) {
                        if (amountSurcharge.getValue() <= 0) {
                            amountSurcharge = null;
                        }
                        if (amountSurcharge != null) {
                            this.eventLoggers.getDiscreteEventLogger().logSurcharge(paymentCollectionDataCopy$default);
                        }
                    }
                    Amount amountRequested = successfulCharge.getAmountRequested();
                    if (amountRequested != null) {
                        if ((amountRequested.getValue() != successfulCharge.getAmountCharged().getValue() ? amountRequested : null) != null) {
                            this.eventLoggers.getDiscreteEventLogger().logPartialAuthApproved(paymentCollectionDataCopy$default, successfulCharge.getAmountCharged().getValue());
                        }
                    }
                }
            }
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void setHardwareTransactionResult(TransactionResult.Result result) {
        Intrinsics.checkNotNullParameter(result, "result");
        PaymentCollectionData data = getData();
        if (data != null) {
            updateData(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, result, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, Integer.MAX_VALUE, -1, 63, null));
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void setIntermediateError(IntermediateTransactionError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        if (error == IntermediateTransactionError.CONTACTLESS_LIMIT_EXCEEDED) {
            PaymentCollectionData data = getData();
            if ((data != null ? data.getTransactionType() : null) == TransactionType.SETUP) {
                return;
            }
            PaymentCollectionData data2 = getData();
            if ((data2 != null ? data2.getTransactionType() : null) == TransactionType.REUSABLE_CARD) {
                return;
            }
        }
        if (error == IntermediateTransactionError.NOT_ACCEPTED_TRY_AGAIN) {
            PaymentCollectionData data3 = getData();
            if (data3 != null) {
                updateData(PaymentCollectionData.copy$default(data3, null, null, null, null, false, 0, null, false, false, null, null, ApplicationSelectionModel.ApplicationSelectionRetryReason.NOT_ACCEPTED, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -2049, -1, 63, null));
                return;
            }
            return;
        }
        PaymentCollectionData data4 = getData();
        if (data4 != null) {
            updateData(PaymentCollectionData.copy$default(data4, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, error, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -1, -2, 63, null));
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void setActiveReaderInterfaces(Set<? extends ReaderConfiguration.ReaderType> activeReaderInterfaces) {
        Intrinsics.checkNotNullParameter(activeReaderInterfaces, "activeReaderInterfaces");
        PaymentCollectionData data = getData();
        if (data == null || Intrinsics.areEqual(activeReaderInterfaces, data.getActiveReaderInterfacesForDisplay())) {
            return;
        }
        this.eventLoggers.getDiscreteEventLogger().logReaderInterfaceChanged(activeReaderInterfaces);
        updateData(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, activeReaderInterfaces, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -1, -129, 63, null));
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void setIsWaitingForCard(boolean isWaitingForCard) {
        PaymentCollectionData data = getData();
        if (data != null) {
            updateData(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, isWaitingForCard, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -1, -257, 63, null));
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public boolean isFinished() {
        return getState() == PaymentCollectionState.FINISHED;
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void onOnlineAuthStateChanged(OnlineAuthState state) {
        Intrinsics.checkNotNullParameter(state, "state");
        this.eventLoggers.getOnlineAuthStateLogger().updateOnlineAuthState(state, getData());
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void setManualEntryResult(com.stripe.hardware.paymentcollection.ManualEntryResult manualEntryResult) {
        Intrinsics.checkNotNullParameter(manualEntryResult, "manualEntryResult");
        this.manualEntryStateMachine.setManualEntryResult(manualEntryResult);
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void setUserRetryRequested() {
        PaymentCollectionData data = getData();
        if (data != null) {
            updateData(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, true, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -1, -5, 63, null));
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void onDeviceKernelBusy() {
        PaymentCollectionData data;
        PaymentCollectionDeviceCapability deviceCapability;
        StateMachine.StateHandler<PaymentCollectionState, PaymentCollectionData> stateHandler = getStateHandler();
        if (stateHandler == null || (data = getData()) == null || (deviceCapability = data.getDeviceCapability()) == null || deviceCapability.getDirectlyControlsScreenInput() || !(stateHandler instanceof PaymentCollectionScreenInputStateHandler)) {
            return;
        }
        ((PaymentCollectionScreenInputStateHandler) stateHandler).onImplicitSelection(data);
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void setHardwareTippingSelectionResult(TipSelectionResult hardwareResult) {
        TippingSelectionResult tippingSelectionResult;
        Intrinsics.checkNotNullParameter(hardwareResult, "hardwareResult");
        PaymentCollectionData data = getData();
        if (data != null) {
            CurrencyCode currency = data.getAmount().getCurrency();
            if (Intrinsics.areEqual(hardwareResult, NoTipSelected.INSTANCE)) {
                tippingSelectionResult = new TippingSelectionResult(new Amount(0L, currency), TippingSelectionType.NO_TIP, null, 4, null);
            } else if (hardwareResult instanceof TipSelected) {
                TipSelected tipSelected = (TipSelected) hardwareResult;
                tippingSelectionResult = new TippingSelectionResult(new Amount(tipSelected.getTipsAmount(), currency), determineTipSelectionType(data.getTippingConfig(), tipSelected.getBbposSdkTipSelectionType()), null, 4, null);
            } else if (hardwareResult instanceof TipSelectionFailure) {
                tippingSelectionResult = new TippingSelectionResult(new Amount(0L, currency), TippingSelectionType.NO_TIP, ((TipSelectionFailure) hardwareResult).getTippingSelectionFailureReason());
            } else {
                throw new NoWhenBranchMatchedException();
            }
            setTippingSelectionResult(tippingSelectionResult);
        }
    }

    private final TippingSelectionType determineTipSelectionType(TipConfigValidationResult config, BbposSdkTipSelectionType bbposSdkTipSelectionType) {
        boolean zIsSmartTip;
        if (config instanceof FixedAmountTips) {
            zIsSmartTip = ((FixedAmountTips) config).isSmartTip();
        } else {
            zIsSmartTip = config instanceof PercentageTips ? ((PercentageTips) config).isSmartTip() : false;
        }
        if (Intrinsics.areEqual(bbposSdkTipSelectionType, FixedAmount.INSTANCE)) {
            if (zIsSmartTip) {
                return TippingSelectionType.SELECTED_FIXED_SMART_TIP;
            }
            return TippingSelectionType.SELECTED_FIXED;
        }
        if (Intrinsics.areEqual(bbposSdkTipSelectionType, Percentage.INSTANCE)) {
            if (zIsSmartTip) {
                return TippingSelectionType.SELECTED_PERCENTAGE_SMART_TIP;
            }
            return TippingSelectionType.SELECTED_PERCENTAGE;
        }
        if (Intrinsics.areEqual(bbposSdkTipSelectionType, Unknown.INSTANCE)) {
            return TippingSelectionType.NO_TIP_SELECTION_TYPE_FROM_BBPOS;
        }
        if (Intrinsics.areEqual(bbposSdkTipSelectionType, Custom.INSTANCE)) {
            return TippingSelectionType.CUSTOMIZED;
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void setManualEntryCollectionResult(ManualEntryCollectionResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        PaymentCollectionData data = getData();
        if (data != null) {
            updateData(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, result, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -1, -131073, 63, null));
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void onHardwareTransactionCanceled() {
        PaymentCollectionData data = getData();
        if (data == null) {
            return;
        }
        if (data.isCancelled()) {
            updateData(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, true, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -1, -33, 63, null));
        } else if (data.getExpectingHardwareCancellation()) {
            updateData(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -1073741825, -1, 63, null));
        } else {
            onTransactionCanceled(CancelReason.HARDWARE_CANCELLED);
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void onTransactionCanceled(CancelReason reason) {
        PaymentCollectionData data;
        Intrinsics.checkNotNullParameter(reason, "reason");
        this.logger.i("onTransactionCanceled: " + reason, new Pair[0]);
        PaymentCollectionState state = getState();
        if (state == null || (data = getData()) == null || data.isCancelled()) {
            return;
        }
        updateData(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, state, reason, reason == CancelReason.HARDWARE_CANCELLED, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -1, -57, 63, null));
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void onCollectPaymentMethodApiError() {
        transitionTo(PaymentCollectionState.COLLECT_PAYMENT_METHOD_API_ERROR, "API error when updating payment intent");
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void setDynamicCurrencyConversionSelected(boolean selected) {
        PaymentCollectionData data = getData();
        if (data != null) {
            updateData(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, new DynamicCurrencyConversionSelectionStatus.DynamicCurrencyConversionSelected(selected), null, null, null, false, null, false, null, false, false, false, false, -1, -67108865, 63, null));
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void cancel() {
        this.timer.cancel();
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void startDynamicCurrencyConversionSelection(DynamicCurrencyConversionData dynamicCurrencyConversionData) {
        Intrinsics.checkNotNullParameter(dynamicCurrencyConversionData, "dynamicCurrencyConversionData");
        PaymentCollectionData data = getData();
        if (data != null) {
            updateData(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, DynamicCurrencyConversionSelectionStatus.Requested.INSTANCE, dynamicCurrencyConversionData, null, null, false, null, false, null, false, false, false, false, -1, -201326593, 63, null));
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void setNonCardPaymentMethodSelected(PaymentMethodType selected) {
        Intrinsics.checkNotNullParameter(selected, "selected");
        PaymentCollectionData data = getData();
        if (data != null) {
            updateData(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, selected, false, null, false, false, false, false, -1, LockFreeTaskQueueCore.MAX_CAPACITY_MASK, 63, null));
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void returnToNonCardPaymentMethodsSelection() {
        PaymentCollectionData data = getData();
        if (data != null) {
            updateData(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -1, Integer.MAX_VALUE, 63, null));
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void setNonCardPaymentMethodData(NonCardPaymentMethodData data) {
        Intrinsics.checkNotNullParameter(data, "data");
        PaymentCollectionData data2 = getData();
        if (data2 != null) {
            updateData(PaymentCollectionData.copy$default(data2, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, data, false, false, false, false, -1, -1, 61, null));
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void returnToCardPaymentMethodCollection() {
        PaymentCollectionData data = getData();
        if (data != null) {
            updateData(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, false, null, false, null, false, false, false, false, -1, -1073741825, 63, null));
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateMachine
    public void displayNonCardPaymentMethods() {
        PaymentCollectionData data = getData();
        if (data != null) {
            Iterator<T> it = data.getNonCardPaymentMethodTypes().iterator();
            Object obj = null;
            boolean z = false;
            Object obj2 = null;
            while (true) {
                if (it.hasNext()) {
                    Object next = it.next();
                    if (((PaymentMethodType) next).getIsNonCardPaymentMethod()) {
                        if (z) {
                            break;
                        }
                        z = true;
                        obj2 = next;
                    }
                } else if (z) {
                    obj = obj2;
                }
            }
            updateData(PaymentCollectionData.copy$default(data, null, null, null, null, false, 0, null, false, false, null, null, null, null, null, null, null, null, 0, false, null, null, null, false, null, false, null, null, null, null, null, false, null, null, null, false, null, null, false, null, null, false, null, false, false, null, null, null, null, null, null, false, false, null, null, false, false, false, false, null, null, null, null, true, (PaymentMethodType) obj, false, null, false, false, false, false, -1, LockFreeTaskQueueCore.MAX_CAPACITY_MASK, 63, null));
        }
    }
}
