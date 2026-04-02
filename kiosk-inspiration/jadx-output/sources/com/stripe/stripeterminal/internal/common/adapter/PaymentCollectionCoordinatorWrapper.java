package com.stripe.stripeterminal.internal.common.adapter;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.cart.Item;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.core.transaction.SettingsRepository;
import com.stripe.core.transaction.TransactionRepository;
import com.stripe.currency.Amount;
import com.stripe.currency.CurrencyCode;
import com.stripe.hardware.ReaderConfiguration;
import com.stripe.hardware.emv.EmvTransactionType;
import com.stripe.hardware.emv.InterfaceType;
import com.stripe.hardware.emv.SourceType;
import com.stripe.hardware.emv.TlvMap;
import com.stripe.hardware.emv.TransactionResult;
import com.stripe.hardware.magstripe.MagStripePaymentCollectionAuthority;
import com.stripe.hardware.magstripe.MagStripeReadSuccess;
import com.stripe.hardware.paymentcollection.TransactionType;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.paymentcollection.BatteryCriticallyLow;
import com.stripe.paymentcollection.Cancelled;
import com.stripe.paymentcollection.DeviceMissingEncryptionKey;
import com.stripe.paymentcollection.EmvResult;
import com.stripe.paymentcollection.Failed;
import com.stripe.paymentcollection.ManualEntryResult;
import com.stripe.paymentcollection.MsrResult;
import com.stripe.paymentcollection.NonCardPaymentMethodConfirmationResult;
import com.stripe.paymentcollection.OnlineAuthState;
import com.stripe.paymentcollection.OnlineAuthStateListener;
import com.stripe.paymentcollection.PassthroughResult;
import com.stripe.paymentcollection.PaymentCollectionCoordinator;
import com.stripe.paymentcollection.PaymentCollectionListener;
import com.stripe.paymentcollection.PaymentCollectionResult;
import com.stripe.paymentcollection.SCARequirement;
import com.stripe.paymentcollection.Timeout;
import com.stripe.paymentcollection.TippingState;
import com.stripe.proto.model.sdk.NonCardPaymentMethod;
import com.stripe.proto.model.sdk.PaymentMethod;
import com.stripe.stripeterminal.external.models.Cart;
import com.stripe.stripeterminal.external.models.CartLineItem;
import com.stripe.stripeterminal.external.models.PaymentMethodType;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.Adapter;
import com.stripe.stripeterminal.internal.models.PaymentMethodData;
import com.stripe.stripeterminal.internal.models.SwipeReason;
import com.stripe.transaction.ChargeAttempt;
import com.stripe.transaction.CollectiblePayment;
import com.stripe.transaction.DynamicCurrencyConversionData;
import com.stripe.transaction.NonCardPaymentMethodData;
import com.stripe.transaction.PaymentCollectionDeviceCapability;
import com.stripe.transaction.PaymentMethodCollectionType;
import com.stripe.transaction.payment.EmvPayment;
import com.stripe.transaction.payment.MagstripePayment;
import com.stripe.transaction.payment.ManualEntryPayment;
import com.stripe.transaction.payment.NonCardPayment;
import com.stripe.transaction.payment.Payment;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.Delegates;
import kotlin.properties.ObservableProperty;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.Deferred;

/* JADX INFO: compiled from: PaymentCollectionCoordinatorWrapper.kt */
/* JADX INFO: loaded from: classes4.dex */
@Singleton
@Metadata(d1 = {"\u0000\u008e\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 q2\u00020\u0001:\u0002qrB'\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nB7\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0016\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\fj\u0002`\u000f¢\u0006\u0002\u0010\u0010J\u0006\u0010%\u001a\u00020&J\u000e\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020*J\u0086\u0001\u0010+\u001a\u00020(2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\b\u00100\u001a\u0004\u0018\u0001012\u0006\u00102\u001a\u00020\"2\u0006\u00103\u001a\u00020\"2\u0006\u00104\u001a\u00020\"2\b\u00105\u001a\u0004\u0018\u00010/2\u0006\u00106\u001a\u00020\"2\b\u00107\u001a\u0004\u0018\u0001082\u0006\u00109\u001a\u00020\"2\b\u0010:\u001a\u0004\u0018\u00010;2\f\u0010<\u001a\b\u0012\u0004\u0012\u00020>0=2\u0006\u0010?\u001a\u00020\"2\u0006\u0010@\u001a\u00020\"H\u0002J\u0014\u0010A\u001a\b\u0012\u0004\u0012\u00020C0B2\u0006\u0010D\u001a\u00020;J\u000e\u0010E\u001a\u00020&2\u0006\u0010F\u001a\u00020GJ\u0010\u0010H\u001a\u00020&2\b\u0010I\u001a\u0004\u0018\u00010JJ\u0006\u0010K\u001a\u00020&J\u0011\u0010L\u001a\u00020&2\u0006\u0010M\u001a\u00020NH\u0096\u0001J\u0006\u0010O\u001a\u00020&J\u0006\u0010P\u001a\u00020(J\u000e\u0010Q\u001a\u00020&2\u0006\u0010R\u001a\u00020SJ\u000e\u0010T\u001a\u00020&2\u0006\u0010U\u001a\u00020VJ\u0010\u0010W\u001a\u00020&2\u0006\u0010X\u001a\u00020YH\u0002J\u0010\u0010Z\u001a\u00020&2\u0006\u0010[\u001a\u00020\\H\u0002J\u0010\u0010]\u001a\u00020&2\u0006\u0010X\u001a\u00020^H\u0002J\u0010\u0010_\u001a\u00020&2\u0006\u0010[\u001a\u00020`H\u0002J\u000e\u0010a\u001a\u00020&2\u0006\u0010b\u001a\u00020cJ\u0010\u0010d\u001a\u00020&2\u0006\u0010e\u001a\u00020fH\u0002J\f\u0010g\u001a\u00020h*\u00020iH\u0002J\f\u0010j\u001a\u00020k*\u00020iH\u0002J\f\u0010l\u001a\u00020m*\u00020VH\u0002J\f\u0010n\u001a\u000201*\u00020oH\u0002J\f\u0010p\u001a\u00020-*\u00020*H\u0002R(\u0010\u0013\u001a\u0004\u0018\u00010\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u00128F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001e\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\fj\u0002`\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R/\u0010\u001a\u001a\u0004\u0018\u00010\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\u00198F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010!\u001a\u00020\"8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b#\u0010$R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006s"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;", "Lcom/stripe/paymentcollection/OnlineAuthStateListener;", "paymentCollectionCoordinator", "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;", "transactionRepository", "Lcom/stripe/core/transaction/TransactionRepository;", "settingsRepository", "Lcom/stripe/core/transaction/SettingsRepository;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "value", "Lcom/stripe/transaction/CollectiblePayment;", "collectiblePayment", "getCollectiblePayment", "()Lcom/stripe/transaction/CollectiblePayment;", "setCollectiblePayment", "(Lcom/stripe/transaction/CollectiblePayment;)V", "<set-?>", "Lcom/stripe/paymentcollection/PaymentCollectionListener;", "paymentCollectionListener", "getPaymentCollectionListener", "()Lcom/stripe/paymentcollection/PaymentCollectionListener;", "setPaymentCollectionListener", "(Lcom/stripe/paymentcollection/PaymentCollectionListener;)V", "paymentCollectionListener$delegate", "Lkotlin/properties/ReadWriteProperty;", "supportsSca", "", "getSupportsSca", "()Z", "cancelCollectPaymentMethod", "", "collectPaymentMethod", "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "paymentMethodCollectionType", "Lcom/stripe/transaction/PaymentMethodCollectionType;", "collectPaymentMethodHelper", BbposDeviceControllerImpl.TRANSACTION_TYPE_PARAM_NAME, "Lcom/stripe/hardware/paymentcollection/TransactionType;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "scaRequirement", "Lcom/stripe/paymentcollection/SCARequirement;", "skipTipping", "manualEntry", "isOffline", "tipEligibleAmount", "isDeferredAuthorizationCountry", BbposDeviceControllerImpl.DOMESTIC_DEBIT_PRIORITY_PARAM_NAME, "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;", "enableCustomerCancellation", "surchargeNotice", "", "nonCardPaymentMethodTypes", "", "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "requestIncrementalAuthorizationSupport", BbposDeviceControllerImpl.FORCE_PIN_ENTRY, "handleAuthResponse", "Lkotlinx/coroutines/Deferred;", "Lcom/stripe/hardware/emv/TransactionResult;", "tlvBlob", "handleNonCardPaymentMethodConfirmationResponse", "data", "Lcom/stripe/transaction/NonCardPaymentMethodData;", "onChargeAttemptChanged", "chargeAttempt", "Lcom/stripe/transaction/ChargeAttempt;", "onCollectPaymentMethodApiError", "onOnlineAuthStateChanged", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/stripe/paymentcollection/OnlineAuthState;", "onReaderDisconnected", "readReusableCard", "selectDynamicCurrencyConversion", "dynamicCurrencyConversionData", "Lcom/stripe/transaction/DynamicCurrencyConversionData;", "setReaderDisplay", "cart", "Lcom/stripe/stripeterminal/external/models/Cart;", "updateCollectibleEmvPayment", "collectionResult", "Lcom/stripe/paymentcollection/EmvResult;", "updateCollectibleManualEntryPayment", "result", "Lcom/stripe/paymentcollection/ManualEntryResult;", "updateCollectibleMsrPayment", "Lcom/stripe/paymentcollection/MsrResult;", "updateCollectibleNonCardPaymentMethodPayment", "Lcom/stripe/paymentcollection/NonCardPaymentMethodConfirmationResult;", "updateDevicePaymentCapability", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "updateTipResult", "tipResult", "Lcom/stripe/paymentcollection/TippingState$EndState;", "asFallbackReason", "Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;", "Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;", "asSwipeReason", "Lcom/stripe/stripeterminal/internal/models/SwipeReason;", "toCoreCart", "Lcom/stripe/cart/Cart;", "toScaRequirement", "Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;", "toTransactionType", "Companion", "Config", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PaymentCollectionCoordinatorWrapper implements OnlineAuthStateListener {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.mutableProperty1(new MutablePropertyReference1Impl(PaymentCollectionCoordinatorWrapper.class, "paymentCollectionListener", "getPaymentCollectionListener()Lcom/stripe/paymentcollection/PaymentCollectionListener;", 0))};
    private static final Amount REUSABLE_CARD_AMOUNT = new Amount(0, CurrencyCode.USD);
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final PaymentCollectionCoordinator paymentCollectionCoordinator;

    /* JADX INFO: renamed from: paymentCollectionListener$delegate, reason: from kotlin metadata */
    private final ReadWriteProperty paymentCollectionListener;
    private final SettingsRepository settingsRepository;
    private final TransactionRepository transactionRepository;

    /* JADX INFO: compiled from: PaymentCollectionCoordinatorWrapper.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;

        static {
            int[] iArr = new int[TransactionResult.Result.values().length];
            try {
                iArr[TransactionResult.Result.APPROVED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TransactionResult.Result.DECLINED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TransactionResult.Result.CANCELED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[MagStripePaymentCollectionAuthority.values().length];
            try {
                iArr2[MagStripePaymentCollectionAuthority.NON_ICC.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[MagStripePaymentCollectionAuthority.TECHNICAL_FALLBACK.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[MagStripePaymentCollectionAuthority.EMPTY_CANDIDATE_LIST_FALLBACK.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[MagStripePaymentCollectionAuthority.PASSTHROUGH.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[PaymentMethodCollectionType.StrongCustomerAuthentication.Requirement.values().length];
            try {
                iArr3[PaymentMethodCollectionType.StrongCustomerAuthentication.Requirement.GENERIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr3[PaymentMethodCollectionType.StrongCustomerAuthentication.Requirement.ONLINE_OR_OFFLINE_PIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            $EnumSwitchMapping$2 = iArr3;
        }
    }

    @Override // com.stripe.paymentcollection.OnlineAuthStateListener
    public void onOnlineAuthStateChanged(OnlineAuthState state) {
        Intrinsics.checkNotNullParameter(state, "state");
        this.paymentCollectionCoordinator.onOnlineAuthStateChanged(state);
    }

    public PaymentCollectionCoordinatorWrapper(PaymentCollectionCoordinator paymentCollectionCoordinator, TransactionRepository transactionRepository, SettingsRepository settingsRepository, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(paymentCollectionCoordinator, "paymentCollectionCoordinator");
        Intrinsics.checkNotNullParameter(transactionRepository, "transactionRepository");
        Intrinsics.checkNotNullParameter(settingsRepository, "settingsRepository");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.paymentCollectionCoordinator = paymentCollectionCoordinator;
        this.transactionRepository = transactionRepository;
        this.settingsRepository = settingsRepository;
        this.logger = logger;
        Delegates delegates = Delegates.INSTANCE;
        final Object obj = null;
        this.paymentCollectionListener = new ObservableProperty<PaymentCollectionListener>(obj) { // from class: com.stripe.stripeterminal.internal.common.adapter.PaymentCollectionCoordinatorWrapper$special$$inlined$observable$1
            @Override // kotlin.properties.ObservableProperty
            protected void afterChange(KProperty<?> property, PaymentCollectionListener oldValue, PaymentCollectionListener newValue) {
                Intrinsics.checkNotNullParameter(property, "property");
                PaymentCollectionListener paymentCollectionListener = newValue;
                if (paymentCollectionListener != null) {
                    this.paymentCollectionCoordinator.initReaderContext(paymentCollectionListener);
                } else {
                    this.paymentCollectionCoordinator.clearReaderContext();
                }
            }
        };
    }

    /* JADX INFO: compiled from: PaymentCollectionCoordinatorWrapper.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b \n\u0002\u0010\b\n\u0002\b\u0002\b\u0082\b\u0018\u00002\u00020\u0001Bi\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\u0006\u0010\u0012\u001a\u00020\u0003¢\u0006\u0002\u0010\u0013J\t\u0010\"\u001a\u00020\u0003HÆ\u0003J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\t\u0010%\u001a\u00020\u0003HÆ\u0003J\t\u0010&\u001a\u00020\u0003HÆ\u0003J\t\u0010'\u001a\u00020\u0003HÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\nHÆ\u0003J\t\u0010*\u001a\u00020\u0003HÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000f\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fHÆ\u0003J\u0083\u0001\u0010-\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\u00032\b\b\u0002\u0010\u0012\u001a\u00020\u0003HÆ\u0001J\u0013\u0010.\u001a\u00020\u00032\b\u0010/\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00100\u001a\u000201HÖ\u0001J\t\u00102\u001a\u00020\rHÖ\u0001R\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\u0012\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0017R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0017R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0017R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0017R\u0017\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0011\u0010\u0011\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0017R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0017R\u0013\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b \u0010!¨\u00063"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;", "", "skipTipping", "", "manualEntry", "isOffline", "isDeferredAuthorizationCountry", "tipEligibleAmount", "Lcom/stripe/currency/Amount;", BbposDeviceControllerImpl.DOMESTIC_DEBIT_PRIORITY_PARAM_NAME, "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;", "enableCustomerCancellation", "surchargeNotice", "", "nonCardPaymentMethodTypes", "", "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "requestIncrementalAuthorizationSupport", BbposDeviceControllerImpl.FORCE_PIN_ENTRY, "(ZZZZLcom/stripe/currency/Amount;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZLjava/lang/String;Ljava/util/List;ZZ)V", "getDomesticDebitPriority", "()Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;", "getEnableCustomerCancellation", "()Z", "getForcePinEntry", "getManualEntry", "getNonCardPaymentMethodTypes", "()Ljava/util/List;", "getRequestIncrementalAuthorizationSupport", "getSkipTipping", "getSurchargeNotice", "()Ljava/lang/String;", "getTipEligibleAmount", "()Lcom/stripe/currency/Amount;", "component1", "component10", "component11", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "", "toString", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final /* data */ class Config {
        private final ReaderConfiguration.DomesticDebitPriority domesticDebitPriority;
        private final boolean enableCustomerCancellation;
        private final boolean forcePinEntry;
        private final boolean isDeferredAuthorizationCountry;
        private final boolean isOffline;
        private final boolean manualEntry;
        private final List<PaymentMethodType> nonCardPaymentMethodTypes;
        private final boolean requestIncrementalAuthorizationSupport;
        private final boolean skipTipping;
        private final String surchargeNotice;
        private final Amount tipEligibleAmount;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Config copy$default(Config config, boolean z, boolean z2, boolean z3, boolean z4, Amount amount, ReaderConfiguration.DomesticDebitPriority domesticDebitPriority, boolean z5, String str, List list, boolean z6, boolean z7, int i, Object obj) {
            if ((i & 1) != 0) {
                z = config.skipTipping;
            }
            if ((i & 2) != 0) {
                z2 = config.manualEntry;
            }
            if ((i & 4) != 0) {
                z3 = config.isOffline;
            }
            if ((i & 8) != 0) {
                z4 = config.isDeferredAuthorizationCountry;
            }
            if ((i & 16) != 0) {
                amount = config.tipEligibleAmount;
            }
            if ((i & 32) != 0) {
                domesticDebitPriority = config.domesticDebitPriority;
            }
            if ((i & 64) != 0) {
                z5 = config.enableCustomerCancellation;
            }
            if ((i & 128) != 0) {
                str = config.surchargeNotice;
            }
            if ((i & 256) != 0) {
                list = config.nonCardPaymentMethodTypes;
            }
            if ((i & 512) != 0) {
                z6 = config.requestIncrementalAuthorizationSupport;
            }
            if ((i & 1024) != 0) {
                z7 = config.forcePinEntry;
            }
            boolean z8 = z6;
            boolean z9 = z7;
            String str2 = str;
            List list2 = list;
            ReaderConfiguration.DomesticDebitPriority domesticDebitPriority2 = domesticDebitPriority;
            boolean z10 = z5;
            Amount amount2 = amount;
            boolean z11 = z3;
            return config.copy(z, z2, z11, z4, amount2, domesticDebitPriority2, z10, str2, list2, z8, z9);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getSkipTipping() {
            return this.skipTipping;
        }

        /* JADX INFO: renamed from: component10, reason: from getter */
        public final boolean getRequestIncrementalAuthorizationSupport() {
            return this.requestIncrementalAuthorizationSupport;
        }

        /* JADX INFO: renamed from: component11, reason: from getter */
        public final boolean getForcePinEntry() {
            return this.forcePinEntry;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final boolean getManualEntry() {
            return this.manualEntry;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final boolean getIsOffline() {
            return this.isOffline;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final boolean getIsDeferredAuthorizationCountry() {
            return this.isDeferredAuthorizationCountry;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final Amount getTipEligibleAmount() {
            return this.tipEligibleAmount;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final ReaderConfiguration.DomesticDebitPriority getDomesticDebitPriority() {
            return this.domesticDebitPriority;
        }

        /* JADX INFO: renamed from: component7, reason: from getter */
        public final boolean getEnableCustomerCancellation() {
            return this.enableCustomerCancellation;
        }

        /* JADX INFO: renamed from: component8, reason: from getter */
        public final String getSurchargeNotice() {
            return this.surchargeNotice;
        }

        public final List<PaymentMethodType> component9() {
            return this.nonCardPaymentMethodTypes;
        }

        public final Config copy(boolean skipTipping, boolean manualEntry, boolean isOffline, boolean isDeferredAuthorizationCountry, Amount tipEligibleAmount, ReaderConfiguration.DomesticDebitPriority domesticDebitPriority, boolean enableCustomerCancellation, String surchargeNotice, List<? extends PaymentMethodType> nonCardPaymentMethodTypes, boolean requestIncrementalAuthorizationSupport, boolean forcePinEntry) {
            Intrinsics.checkNotNullParameter(nonCardPaymentMethodTypes, "nonCardPaymentMethodTypes");
            return new Config(skipTipping, manualEntry, isOffline, isDeferredAuthorizationCountry, tipEligibleAmount, domesticDebitPriority, enableCustomerCancellation, surchargeNotice, nonCardPaymentMethodTypes, requestIncrementalAuthorizationSupport, forcePinEntry);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Config)) {
                return false;
            }
            Config config = (Config) other;
            return this.skipTipping == config.skipTipping && this.manualEntry == config.manualEntry && this.isOffline == config.isOffline && this.isDeferredAuthorizationCountry == config.isDeferredAuthorizationCountry && Intrinsics.areEqual(this.tipEligibleAmount, config.tipEligibleAmount) && this.domesticDebitPriority == config.domesticDebitPriority && this.enableCustomerCancellation == config.enableCustomerCancellation && Intrinsics.areEqual(this.surchargeNotice, config.surchargeNotice) && Intrinsics.areEqual(this.nonCardPaymentMethodTypes, config.nonCardPaymentMethodTypes) && this.requestIncrementalAuthorizationSupport == config.requestIncrementalAuthorizationSupport && this.forcePinEntry == config.forcePinEntry;
        }

        public int hashCode() {
            int iHashCode = ((((((Boolean.hashCode(this.skipTipping) * 31) + Boolean.hashCode(this.manualEntry)) * 31) + Boolean.hashCode(this.isOffline)) * 31) + Boolean.hashCode(this.isDeferredAuthorizationCountry)) * 31;
            Amount amount = this.tipEligibleAmount;
            int iHashCode2 = (iHashCode + (amount == null ? 0 : amount.hashCode())) * 31;
            ReaderConfiguration.DomesticDebitPriority domesticDebitPriority = this.domesticDebitPriority;
            int iHashCode3 = (((iHashCode2 + (domesticDebitPriority == null ? 0 : domesticDebitPriority.hashCode())) * 31) + Boolean.hashCode(this.enableCustomerCancellation)) * 31;
            String str = this.surchargeNotice;
            return ((((((iHashCode3 + (str != null ? str.hashCode() : 0)) * 31) + this.nonCardPaymentMethodTypes.hashCode()) * 31) + Boolean.hashCode(this.requestIncrementalAuthorizationSupport)) * 31) + Boolean.hashCode(this.forcePinEntry);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Config(skipTipping=");
            sb.append(this.skipTipping).append(", manualEntry=").append(this.manualEntry).append(", isOffline=").append(this.isOffline).append(", isDeferredAuthorizationCountry=").append(this.isDeferredAuthorizationCountry).append(", tipEligibleAmount=").append(this.tipEligibleAmount).append(", domesticDebitPriority=").append(this.domesticDebitPriority).append(", enableCustomerCancellation=").append(this.enableCustomerCancellation).append(", surchargeNotice=").append(this.surchargeNotice).append(", nonCardPaymentMethodTypes=").append(this.nonCardPaymentMethodTypes).append(", requestIncrementalAuthorizationSupport=").append(this.requestIncrementalAuthorizationSupport).append(", forcePinEntry=").append(this.forcePinEntry).append(')');
            return sb.toString();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Config(boolean z, boolean z2, boolean z3, boolean z4, Amount amount, ReaderConfiguration.DomesticDebitPriority domesticDebitPriority, boolean z5, String str, List<? extends PaymentMethodType> nonCardPaymentMethodTypes, boolean z6, boolean z7) {
            Intrinsics.checkNotNullParameter(nonCardPaymentMethodTypes, "nonCardPaymentMethodTypes");
            this.skipTipping = z;
            this.manualEntry = z2;
            this.isOffline = z3;
            this.isDeferredAuthorizationCountry = z4;
            this.tipEligibleAmount = amount;
            this.domesticDebitPriority = domesticDebitPriority;
            this.enableCustomerCancellation = z5;
            this.surchargeNotice = str;
            this.nonCardPaymentMethodTypes = nonCardPaymentMethodTypes;
            this.requestIncrementalAuthorizationSupport = z6;
            this.forcePinEntry = z7;
        }

        public final boolean getSkipTipping() {
            return this.skipTipping;
        }

        public final boolean getManualEntry() {
            return this.manualEntry;
        }

        public final boolean isOffline() {
            return this.isOffline;
        }

        public final boolean isDeferredAuthorizationCountry() {
            return this.isDeferredAuthorizationCountry;
        }

        public final Amount getTipEligibleAmount() {
            return this.tipEligibleAmount;
        }

        public final ReaderConfiguration.DomesticDebitPriority getDomesticDebitPriority() {
            return this.domesticDebitPriority;
        }

        public final boolean getEnableCustomerCancellation() {
            return this.enableCustomerCancellation;
        }

        public final String getSurchargeNotice() {
            return this.surchargeNotice;
        }

        public final List<PaymentMethodType> getNonCardPaymentMethodTypes() {
            return this.nonCardPaymentMethodTypes;
        }

        public final boolean getRequestIncrementalAuthorizationSupport() {
            return this.requestIncrementalAuthorizationSupport;
        }

        public final boolean getForcePinEntry() {
            return this.forcePinEntry;
        }
    }

    public final PaymentCollectionListener getPaymentCollectionListener() {
        return (PaymentCollectionListener) this.paymentCollectionListener.getValue(this, $$delegatedProperties[0]);
    }

    public final void setPaymentCollectionListener(PaymentCollectionListener paymentCollectionListener) {
        this.paymentCollectionListener.setValue(this, $$delegatedProperties[0], paymentCollectionListener);
    }

    private final boolean getSupportsSca() {
        return this.transactionRepository.getAllowExtendedTransactions();
    }

    public final CollectiblePayment getCollectiblePayment() {
        return this.transactionRepository.getCollectiblePayment();
    }

    public final void setCollectiblePayment(CollectiblePayment collectiblePayment) {
        this.transactionRepository.setCollectiblePayment(collectiblePayment);
    }

    public final PaymentMethodData readReusableCard() {
        return collectPaymentMethodHelper(TransactionType.REUSABLE_CARD, REUSABLE_CARD_AMOUNT, null, false, false, false, null, false, null, false, null, CollectionsKt.emptyList(), false, false);
    }

    public final void setReaderDisplay(Cart cart) {
        Intrinsics.checkNotNullParameter(cart, "cart");
        PaymentCollectionListener paymentCollectionListener = getPaymentCollectionListener();
        if (paymentCollectionListener != null) {
            this.paymentCollectionCoordinator.displayCart(toCoreCart(cart), paymentCollectionListener);
        }
    }

    public final PaymentMethodData collectPaymentMethod(PaymentMethodCollectionType paymentMethodCollectionType) {
        Config config;
        Config config2;
        boolean skipTipping;
        SCARequirement scaRequirement;
        Intrinsics.checkNotNullParameter(paymentMethodCollectionType, "paymentMethodCollectionType");
        TransactionType transactionType = toTransactionType(paymentMethodCollectionType);
        Amount amount = paymentMethodCollectionType.getAmount();
        boolean z = paymentMethodCollectionType instanceof PaymentMethodCollectionType.Sale;
        if (z) {
            PaymentMethodCollectionType.Sale sale = (PaymentMethodCollectionType.Sale) paymentMethodCollectionType;
            config2 = new Config(sale.getSkipTipping(), sale.getManualEntry(), sale.isOffline(), sale.isDeferredAuthorizationCountry(), sale.getTipEligibleAmount(), sale.getDomesticDebitPriority(), paymentMethodCollectionType.getEnableCustomerCancellation(), sale.getSurchargeNotice(), sale.getNonCardPaymentMethodTypes(), sale.getRequestIncrementalAuthorizationSupport(), sale.getForcePinEntry());
        } else {
            if (paymentMethodCollectionType instanceof PaymentMethodCollectionType.SetupIntent) {
                PaymentMethodCollectionType.SetupIntent setupIntent = (PaymentMethodCollectionType.SetupIntent) paymentMethodCollectionType;
                config = new Config(false, setupIntent.getManualEntry(), setupIntent.isOffline(), setupIntent.isDeferredAuthorizationCountry(), null, null, paymentMethodCollectionType.getEnableCustomerCancellation(), null, CollectionsKt.emptyList(), false, setupIntent.getForcePinEntryEnabled());
            } else {
                if (!(paymentMethodCollectionType instanceof PaymentMethodCollectionType.Refund) && !(paymentMethodCollectionType instanceof PaymentMethodCollectionType.StrongCustomerAuthentication) && !(paymentMethodCollectionType instanceof PaymentMethodCollectionType.Passthrough)) {
                    throw new NoWhenBranchMatchedException();
                }
                config = new Config(false, false, false, false, null, null, paymentMethodCollectionType.getEnableCustomerCancellation(), null, CollectionsKt.emptyList(), false, false);
            }
            config2 = config;
        }
        if (config2.getManualEntry()) {
            this.logger.w("Tipping is not supported for MOTO (manual entry) transactions, disabling tipping", new Pair[0]);
            skipTipping = true;
        } else {
            skipTipping = config2.getSkipTipping();
        }
        if (paymentMethodCollectionType instanceof PaymentMethodCollectionType.StrongCustomerAuthentication) {
            scaRequirement = toScaRequirement((PaymentMethodCollectionType.StrongCustomerAuthentication) paymentMethodCollectionType);
        } else {
            if (paymentMethodCollectionType instanceof PaymentMethodCollectionType.Refund) {
                z = true;
            }
            if (!(z ? true : paymentMethodCollectionType instanceof PaymentMethodCollectionType.SetupIntent ? true : paymentMethodCollectionType instanceof PaymentMethodCollectionType.Passthrough)) {
                throw new NoWhenBranchMatchedException();
            }
            scaRequirement = null;
        }
        Config config3 = config2;
        return collectPaymentMethodHelper(transactionType, amount, scaRequirement, skipTipping, config3.getManualEntry(), config3.isOffline(), config3.getTipEligibleAmount(), config3.isDeferredAuthorizationCountry(), config3.getDomesticDebitPriority(), config3.getEnableCustomerCancellation(), config3.getSurchargeNotice(), config3.getNonCardPaymentMethodTypes(), config3.getRequestIncrementalAuthorizationSupport(), config3.getForcePinEntry());
    }

    public final void selectDynamicCurrencyConversion(DynamicCurrencyConversionData dynamicCurrencyConversionData) {
        Intrinsics.checkNotNullParameter(dynamicCurrencyConversionData, "dynamicCurrencyConversionData");
        this.transactionRepository.setDynamicCurrencyConversionSelected((Boolean) BuildersKt__BuildersKt.runBlocking$default(null, new PaymentCollectionCoordinatorWrapper$selectDynamicCurrencyConversion$result$1(this, dynamicCurrencyConversionData, null), 1, null));
    }

    public final void cancelCollectPaymentMethod() {
        this.logger.d("cancelCollectPaymentMethod", new Pair[0]);
        this.paymentCollectionCoordinator.cancelPaymentMethodCollection();
    }

    public final void onReaderDisconnected() {
        this.paymentCollectionCoordinator.onHardwareTransactionCanceled();
    }

    public final void onCollectPaymentMethodApiError() {
        this.paymentCollectionCoordinator.onCollectPaymentMethodApiError();
    }

    public final void onChargeAttemptChanged(ChargeAttempt chargeAttempt) {
        if (chargeAttempt != null) {
            this.paymentCollectionCoordinator.updateChargeAttempt(chargeAttempt);
        }
    }

    public final Deferred<TransactionResult> handleAuthResponse(String tlvBlob) {
        Intrinsics.checkNotNullParameter(tlvBlob, "tlvBlob");
        return this.paymentCollectionCoordinator.handleOnlineAuthResponse(tlvBlob);
    }

    public final void handleNonCardPaymentMethodConfirmationResponse(NonCardPaymentMethodData data) throws TerminalException {
        Intrinsics.checkNotNullParameter(data, "data");
        int i = WhenMappings.$EnumSwitchMapping$0[((TransactionResult) BuildersKt__BuildersKt.runBlocking$default(null, new PaymentCollectionCoordinatorWrapper$handleNonCardPaymentMethodConfirmationResponse$nonCardPaymentMethodActionResult$1(this, data, null), 1, null)).getResult().ordinal()];
        if (i == 1 || i == 2) {
            return;
        }
        if (i == 3) {
            throw new TerminalException(TerminalErrorCode.CANCELED, "User canceled payment with non-card method.", null, null, 12, null);
        }
        throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Unexpected error handling non-card payment method confirmation.", null, null, 12, null);
    }

    public final void updateDevicePaymentCapability(Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        PaymentCollectionDeviceCapability paymentCollectionCapability = Adapter.INSTANCE.getPaymentCollectionCapability(reader);
        this.logger.i("Updating devicePaymentCapability to " + paymentCollectionCapability, new Pair[0]);
        this.transactionRepository.setDevicePaymentCapability(paymentCollectionCapability);
    }

    private final com.stripe.cart.Cart toCoreCart(Cart cart) {
        List<CartLineItem> lineItems = cart.getLineItems();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(lineItems, 10));
        for (CartLineItem cartLineItem : lineItems) {
            arrayList.add(new Item(cartLineItem.getQuantity(), cartLineItem.getDescription(), new Amount(cartLineItem.getAmount(), cart.getCurrency()), CollectionsKt.emptyList(), CollectionsKt.emptyList()));
        }
        return new com.stripe.cart.Cart(arrayList, CollectionsKt.emptyList(), CollectionsKt.emptyList(), CollectionsKt.emptyList(), new Amount(cart.getTax(), cart.getCurrency()), new Amount(cart.getTotal(), cart.getCurrency()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r26v10, types: [com.stripe.proto.model.sdk.PaymentMethod] */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v4, types: [kotlin.jvm.internal.DefaultConstructorMarker, okio.ByteString] */
    private final PaymentMethodData collectPaymentMethodHelper(TransactionType transactionType, Amount amount, SCARequirement scaRequirement, boolean skipTipping, boolean manualEntry, boolean isOffline, Amount tipEligibleAmount, boolean isDeferredAuthorizationCountry, ReaderConfiguration.DomesticDebitPriority domesticDebitPriority, boolean enableCustomerCancellation, String surchargeNotice, List<? extends PaymentMethodType> nonCardPaymentMethodTypes, boolean requestIncrementalAuthorizationSupport, boolean forcePinEntry) throws TerminalException {
        Payment payment;
        Payment payment2;
        Payment payment3;
        setCollectiblePayment(null);
        PaymentCollectionListener paymentCollectionListener = getPaymentCollectionListener();
        if (paymentCollectionListener != null) {
            ?? AsProtobuf = 0;
            paymentMethodAsProtobuf = null;
            PaymentMethod paymentMethodAsProtobuf = null;
            AsProtobuf = 0;
            PaymentCollectionResult paymentCollectionResult = (PaymentCollectionResult) BuildersKt__BuildersKt.runBlocking$default(null, new PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1(this, amount, transactionType, paymentCollectionListener, scaRequirement, transactionType == TransactionType.STRONG_CUSTOMER_AUTHENTICATION ? this.transactionRepository.getAmountTip() : null, skipTipping, manualEntry, isOffline, tipEligibleAmount, isDeferredAuthorizationCountry, domesticDebitPriority, enableCustomerCancellation, surchargeNotice, nonCardPaymentMethodTypes, requestIncrementalAuthorizationSupport, forcePinEntry, null), 1, null);
            if (paymentCollectionResult instanceof EmvResult) {
                EmvResult emvResult = (EmvResult) paymentCollectionResult;
                updateCollectibleEmvPayment(emvResult);
                updateTipResult(emvResult.getTipResult());
                String emvBlob = emvResult.getEmvBlob();
                CollectiblePayment collectiblePayment = getCollectiblePayment();
                if (collectiblePayment != null && (payment3 = collectiblePayment.getPayment()) != null) {
                    paymentMethodAsProtobuf = payment3.asProtobuf();
                }
                return new PaymentMethodData(emvBlob, null, null, null, null, paymentMethodAsProtobuf, null, null, null, null, 990, null);
            }
            if (paymentCollectionResult instanceof MsrResult) {
                MsrResult msrResult = (MsrResult) paymentCollectionResult;
                updateCollectibleMsrPayment(msrResult);
                updateTipResult(msrResult.getTipResult());
                String encryptedTrack2 = msrResult.getMagStripeReadSuccess().getEncryptedTrack2();
                MagStripeReadSuccess magStripeReadSuccess = msrResult.getMagStripeReadSuccess();
                SwipeReason swipeReasonAsSwipeReason = asSwipeReason(msrResult.getCollectionAuthority());
                CollectiblePayment collectiblePayment2 = getCollectiblePayment();
                if (collectiblePayment2 != null && (payment2 = collectiblePayment2.getPayment()) != null) {
                    AsProtobuf = payment2.asProtobuf();
                }
                return new PaymentMethodData(null, magStripeReadSuccess, swipeReasonAsSwipeReason, encryptedTrack2, null, AsProtobuf, null, null, null, null, 977, null);
            }
            if (paymentCollectionResult instanceof ManualEntryResult) {
                ManualEntryResult manualEntryResult = (ManualEntryResult) paymentCollectionResult;
                updateCollectibleManualEntryPayment(manualEntryResult);
                updateTipResult(manualEntryResult.getTipResult());
                CollectiblePayment collectiblePayment3 = getCollectiblePayment();
                return new PaymentMethodData(null, null, null, null, null, (collectiblePayment3 == null || (payment = collectiblePayment3.getPayment()) == null) ? null : payment.asProtobuf(), null, null, null, null, 991, null);
            }
            if (paymentCollectionResult instanceof NonCardPaymentMethodConfirmationResult) {
                NonCardPaymentMethodConfirmationResult nonCardPaymentMethodConfirmationResult = (NonCardPaymentMethodConfirmationResult) paymentCollectionResult;
                updateCollectibleNonCardPaymentMethodPayment(nonCardPaymentMethodConfirmationResult);
                updateTipResult(nonCardPaymentMethodConfirmationResult.getTipResult());
                PaymentMethod.Companion companion = PaymentMethod.INSTANCE;
                PaymentMethod.Builder builder = new PaymentMethod.Builder();
                builder.non_card_payment = new NonCardPaymentMethod(nonCardPaymentMethodConfirmationResult.getPaymentMethodType().getTypeName(), AsProtobuf, 2, AsProtobuf);
                Unit unit = Unit.INSTANCE;
                return new PaymentMethodData(null, null, null, null, null, null, null, builder.build(), null, null, 895, null);
            }
            if (paymentCollectionResult instanceof PassthroughResult) {
                PassthroughResult passthroughResult = (PassthroughResult) paymentCollectionResult;
                return new PaymentMethodData(null, passthroughResult.getMagStripeReadSuccess(), null, passthroughResult.getMagStripeReadSuccess().getEncryptedTrack2(), null, null, null, null, null, null, 1013, null);
            }
            if (Intrinsics.areEqual(paymentCollectionResult, Cancelled.INSTANCE)) {
                throw new TerminalException(TerminalErrorCode.CANCELED, "User canceled the transaction.", null, null, 12, null);
            }
            if (Intrinsics.areEqual(paymentCollectionResult, BatteryCriticallyLow.INSTANCE)) {
                throw new TerminalException(TerminalErrorCode.READER_BATTERY_CRITICALLY_LOW, "Reader battery is critically low.", null, null, 12, null);
            }
            if (Intrinsics.areEqual(paymentCollectionResult, DeviceMissingEncryptionKey.INSTANCE)) {
                throw new TerminalException(TerminalErrorCode.READER_MISSING_ENCRYPTION_KEYS, "The reader is missing encryption keys required for taking payments and has disconnected. Reconnect to the reader to attempt to re-install the keys. If the error persists, contact support.", null, null, 12, null);
            }
            if (Intrinsics.areEqual(paymentCollectionResult, Timeout.INSTANCE)) {
                throw new TerminalException(TerminalErrorCode.CARD_READ_TIMED_OUT, "Transaction timed out.", null, null, 12, null);
            }
            if (Intrinsics.areEqual(paymentCollectionResult, Failed.INSTANCE)) {
                throw new TerminalException(TerminalErrorCode.READER_COMMUNICATION_ERROR, "Transaction failed with unexpected reader failure.", null, null, 12, null);
            }
            throw new NoWhenBranchMatchedException();
        }
        TerminalException terminalException = new TerminalException(TerminalErrorCode.NOT_CONNECTED_TO_READER, "No connected reader", null, null, 12, null);
        this.logger.e("paymentCollectionListener is not set.", terminalException, new Pair[0]);
        throw terminalException;
    }

    private final void updateTipResult(TippingState.EndState tipResult) {
        Amount amount;
        TransactionRepository transactionRepository = this.transactionRepository;
        if (Intrinsics.areEqual(tipResult, TippingState.Ineligible.INSTANCE)) {
            amount = null;
        } else {
            if (!(tipResult instanceof TippingState.Completed)) {
                throw new NoWhenBranchMatchedException();
            }
            amount = ((TippingState.Completed) tipResult).getResult().getAmount();
        }
        transactionRepository.setAmountTip(amount);
    }

    private final void updateCollectibleManualEntryPayment(ManualEntryResult result) {
        setCollectiblePayment(new CollectiblePayment(new ManualEntryPayment(result.getData().getEncPAN(), result.getData().getExpiryDate(), result.getData().getEncCVV(), result.getData().getMaskedPan(), result.getData().getKsn(), result.getData().getPosEntryMode(), result.getData().getZipCode()), null, false, 6, null));
    }

    private final void updateCollectibleNonCardPaymentMethodPayment(NonCardPaymentMethodConfirmationResult result) {
        setCollectiblePayment(new CollectiblePayment(new NonCardPayment(result.getPaymentMethodType()), null, false, 6, null));
    }

    private final SwipeReason asSwipeReason(MagStripePaymentCollectionAuthority magStripePaymentCollectionAuthority) {
        int i = WhenMappings.$EnumSwitchMapping$1[magStripePaymentCollectionAuthority.ordinal()];
        if (i == 1) {
            return SwipeReason.CHIP_ERROR;
        }
        if (i == 2) {
            return SwipeReason.CHIP_ERROR;
        }
        if (i == 3) {
            return SwipeReason.EMPTY_CANDIDATE_LIST;
        }
        if (i == 4) {
            return SwipeReason.COLLECT_DATA;
        }
        throw new NoWhenBranchMatchedException();
    }

    private final TransactionType toTransactionType(PaymentMethodCollectionType paymentMethodCollectionType) {
        if (paymentMethodCollectionType instanceof PaymentMethodCollectionType.Refund) {
            return TransactionType.REFUND;
        }
        if (paymentMethodCollectionType instanceof PaymentMethodCollectionType.Sale) {
            return TransactionType.CHARGE;
        }
        if (paymentMethodCollectionType instanceof PaymentMethodCollectionType.StrongCustomerAuthentication) {
            return TransactionType.STRONG_CUSTOMER_AUTHENTICATION;
        }
        if (paymentMethodCollectionType instanceof PaymentMethodCollectionType.SetupIntent) {
            return TransactionType.SETUP;
        }
        if (paymentMethodCollectionType instanceof PaymentMethodCollectionType.Passthrough) {
            return TransactionType.MAGSTRIPE_PASSTHROUGH;
        }
        throw new NoWhenBranchMatchedException();
    }

    private final void updateCollectibleEmvPayment(EmvResult collectionResult) {
        SourceType sourceType;
        EmvTransactionType emvTransactionType = this.settingsRepository.getSettings().getEmvTransactionType();
        TlvMap tlvMap = TlvMap.INSTANCE.toTlvMap(collectionResult.getEmvBlob());
        if (tlvMap == null || (sourceType = tlvMap.getSourceType()) == null) {
            sourceType = SourceType.CARD_PRESENT;
        }
        InterfaceType interfaceType = collectionResult.getInterfaceType();
        setCollectiblePayment(new CollectiblePayment(new EmvPayment(collectionResult.getEmvBlob(), interfaceType, emvTransactionType, sourceType, false, 16, null), interfaceType, getSupportsSca()));
    }

    private final void updateCollectibleMsrPayment(MsrResult collectionResult) {
        MagStripeReadSuccess magStripeReadSuccess = collectionResult.getMagStripeReadSuccess();
        setCollectiblePayment(new CollectiblePayment(new MagstripePayment(magStripeReadSuccess.getEncryptedTrack2(), magStripeReadSuccess.getKsn(), magStripeReadSuccess.getMaskedPan(), magStripeReadSuccess.getExpiryDate(), asFallbackReason(collectionResult.getCollectionAuthority()), magStripeReadSuccess.getEpb(), magStripeReadSuccess.getEpbKsn()), null, false, 6, null));
    }

    private final MagstripePayment.FallbackReason asFallbackReason(MagStripePaymentCollectionAuthority magStripePaymentCollectionAuthority) {
        int i = WhenMappings.$EnumSwitchMapping$1[magStripePaymentCollectionAuthority.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return MagstripePayment.FallbackReason.CHIP_ERROR;
            }
            if (i == 3) {
                return MagstripePayment.FallbackReason.EMPTY_CANDIDATE_LIST;
            }
            if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
        }
        return MagstripePayment.FallbackReason.NONE;
    }

    private final SCARequirement toScaRequirement(PaymentMethodCollectionType.StrongCustomerAuthentication strongCustomerAuthentication) {
        int i = WhenMappings.$EnumSwitchMapping$2[strongCustomerAuthentication.getRequirement().ordinal()];
        if (i == 1) {
            return SCARequirement.GENERIC;
        }
        if (i == 2) {
            return SCARequirement.ONLINE_OR_OFFLINE_PIN;
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Inject
    public PaymentCollectionCoordinatorWrapper(PaymentCollectionCoordinator paymentCollectionCoordinator, TransactionRepository transactionRepository, SettingsRepository settingsRepository, LoggerFactory loggerFactory) {
        this(paymentCollectionCoordinator, transactionRepository, settingsRepository, loggerFactory.create(Reflection.getOrCreateKotlinClass(PaymentCollectionCoordinatorWrapper.class)));
        Intrinsics.checkNotNullParameter(paymentCollectionCoordinator, "paymentCollectionCoordinator");
        Intrinsics.checkNotNullParameter(transactionRepository, "transactionRepository");
        Intrinsics.checkNotNullParameter(settingsRepository, "settingsRepository");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
    }
}
