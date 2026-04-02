package com.stripe.core.transaction;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.core.transaction.TransactionStateSummary;
import com.stripe.currency.Amount;
import com.stripe.hardware.paymentcollection.ContactCardSlotState;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.proto.model.common.DeviceInfo;
import com.stripe.proto.model.common.VersionInfoPb;
import com.stripe.restclient.CoreTransactionRepository;
import com.stripe.restclient.IntegrationType;
import com.stripe.restclient.TransactionOpType;
import com.stripe.stripeterminal.external.callable.Cancelable;
import com.stripe.stripeterminal.external.models.AllowRedisplay;
import com.stripe.stripeterminal.external.models.PaymentMethodType;
import com.stripe.transaction.CollectiblePayment;
import com.stripe.transaction.PaymentCollectionDeviceCapability;
import com.stripe.transaction.PaymentCollectionDeviceCapabilityKt;
import com.stripe.transaction.Settings;
import java.util.EnumMap;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: TransactionRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000Ü\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018\u0000 ¤\u00012\u00020\u0001:\u0004¤\u0001¥\u0001B\u0017\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u008c\u0001\u001a\u00030\u008d\u0001J\b\u0010\u008e\u0001\u001a\u00030\u008d\u0001J\b\u0010\u008f\u0001\u001a\u00030\u008d\u0001J\n\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u0091\u0001J\u0011\u0010\u0092\u0001\u001a\u00020\u000b2\b\u0010\u0093\u0001\u001a\u00030\u0094\u0001J\u0007\u0010\u0095\u0001\u001a\u00020\u0014J\b\u0010\u0096\u0001\u001a\u00030\u008d\u0001J\b\u0010\u0097\u0001\u001a\u00030\u008d\u0001J\u001c\u0010\u0098\u0001\u001a\u00030\u008d\u00012\b\u0010\u0099\u0001\u001a\u00030\u009a\u00012\b\u0010\u009b\u0001\u001a\u00030\u009c\u0001J\u001d\u0010\u009d\u0001\u001a\u00030\u008d\u00012\b\u0010f\u001a\u0004\u0018\u00010\u000b2\t\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u000bJ\u001d\u0010\u009e\u0001\u001a\u00030\u008d\u00012\b\u0010\u0093\u0001\u001a\u00030\u0094\u00012\u0007\u0010\u009f\u0001\u001a\u00020\u000bH\u0016J\u0011\u0010 \u0001\u001a\u00030\u008d\u00012\u0007\u0010¡\u0001\u001a\u00020&J\u0011\u0010¢\u0001\u001a\u00030\u008d\u00012\u0007\u0010£\u0001\u001a\u00020\tR\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R/\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u000b8F@FX\u0086\u008e\u0002¢\u0006\u0012\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012*\u0004\b\r\u0010\u000eR\u0011\u0010\u0013\u001a\u00020\u00148F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R(\u0010\u0019\u001a\u0004\u0018\u00010\u00182\b\u0010\u0017\u001a\u0004\u0018\u00010\u00188F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR(\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\b\u0010\u0017\u001a\u0004\u0018\u00010\u001e8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u0017\u0010$\u001a\b\u0012\u0004\u0012\u00020&0%¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R(\u0010*\u001a\u0004\u0018\u00010)2\b\u0010\u0017\u001a\u0004\u0018\u00010)8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R(\u0010/\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0017\u001a\u0004\u0018\u00010\u000b8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b0\u0010\u0010\"\u0004\b1\u0010\u0012R+\u00103\u001a\u0002022\u0006\u0010\n\u001a\u0002028F@FX\u0086\u008e\u0002¢\u0006\u0012\u001a\u0004\b5\u00106\"\u0004\b7\u00108*\u0004\b4\u0010\u000eR7\u0010:\u001a\b\u0012\u0004\u0012\u00020\u000b092\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b098F@FX\u0086\u008e\u0002¢\u0006\u0012\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?*\u0004\b;\u0010\u000eR$\u0010@\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00148F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bA\u0010\u0016\"\u0004\bB\u0010CR(\u0010D\u001a\u0004\u0018\u00010\u00142\b\u0010\u0017\u001a\u0004\u0018\u00010\u00148F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR(\u0010J\u001a\u0004\u0018\u00010I2\b\u0010\u0017\u001a\u0004\u0018\u00010I8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bK\u0010L\"\u0004\bM\u0010NR(\u0010P\u001a\u0004\u0018\u00010O2\b\u0010\u0017\u001a\u0004\u0018\u00010O8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010TR\u0011\u0010U\u001a\u00020\u00148F¢\u0006\u0006\u001a\u0004\bU\u0010\u0016R\u0011\u0010V\u001a\u00020\u00148F¢\u0006\u0006\u001a\u0004\bV\u0010\u0016R/\u0010W\u001a\u0004\u0018\u00010\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u000b8F@FX\u0086\u008e\u0002¢\u0006\u0012\u001a\u0004\bY\u0010\u0010\"\u0004\bZ\u0010\u0012*\u0004\bX\u0010\u000eR\u001e\u0010[\u001a\u0012\u0012\u0004\u0012\u00020]\u0012\u0004\u0012\u00020^0\\j\u0002`_X\u0082\u0004¢\u0006\u0002\n\u0000R(\u0010a\u001a\u0004\u0018\u00010`2\b\u0010\u0017\u001a\u0004\u0018\u00010`8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bb\u0010c\"\u0004\bd\u0010eR\u0013\u0010f\u001a\u0004\u0018\u00010\u000b8F¢\u0006\u0006\u001a\u0004\bg\u0010\u0010R(\u0010i\u001a\u0004\u0018\u00010h2\b\u0010\u0017\u001a\u0004\u0018\u00010h8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bj\u0010k\"\u0004\bl\u0010mR/\u0010o\u001a\u0004\u0018\u00010n2\b\u0010\n\u001a\u0004\u0018\u00010n8F@FX\u0086\u008e\u0002¢\u0006\u0012\u001a\u0004\bq\u0010r\"\u0004\bs\u0010t*\u0004\bp\u0010\u000eR/\u0010v\u001a\u0004\u0018\u00010u2\b\u0010\n\u001a\u0004\u0018\u00010u8F@FX\u0086\u008e\u0002¢\u0006\u0012\u001a\u0004\bx\u0010y\"\u0004\bz\u0010{*\u0004\bw\u0010\u000eR/\u0010|\u001a\u0004\u0018\u00010u2\b\u0010\n\u001a\u0004\u0018\u00010u8F@FX\u0086\u008e\u0002¢\u0006\u0012\u001a\u0004\b~\u0010y\"\u0004\b\u007f\u0010{*\u0004\b}\u0010\u000eR\u0016\u0010\u0080\u0001\u001a\u00020\u00148BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u0081\u0001\u0010\u0016R\u0015\u0010\u0082\u0001\u001a\u00030\u0083\u00018F¢\u0006\b\u001a\u0006\b\u0084\u0001\u0010\u0085\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0015\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u000b8F¢\u0006\u0007\u001a\u0005\b\u0087\u0001\u0010\u0010R\u001b\u0010\u0088\u0001\u001a\t\u0012\u0004\u0012\u00020\t0\u0089\u0001¢\u0006\n\n\u0000\u001a\u0006\b\u008a\u0001\u0010\u008b\u0001¨\u0006¦\u0001"}, d2 = {"Lcom/stripe/core/transaction/TransactionRepository;", "Lcom/stripe/restclient/CoreTransactionRepository;", "settingsRepository", "Lcom/stripe/core/transaction/SettingsRepository;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "(Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V", "_transactionStateSummaryFlow", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/stripe/core/transaction/TransactionStateSummary;", "<set-?>", "", "accountId", "getAccountId$delegate", "(Lcom/stripe/core/transaction/TransactionRepository;)Ljava/lang/Object;", "getAccountId", "()Ljava/lang/String;", "setAccountId", "(Ljava/lang/String;)V", "allowExtendedTransactions", "", "getAllowExtendedTransactions", "()Z", "value", "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;", "allowRedisplay", "getAllowRedisplay", "()Lcom/stripe/stripeterminal/external/models/AllowRedisplay;", "setAllowRedisplay", "(Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)V", "Lcom/stripe/currency/Amount;", "amountTip", "getAmountTip", "()Lcom/stripe/currency/Amount;", "setAmountTip", "(Lcom/stripe/currency/Amount;)V", "cardStatusFlow", "Lkotlinx/coroutines/flow/StateFlow;", "Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;", "getCardStatusFlow", "()Lkotlinx/coroutines/flow/StateFlow;", "Lcom/stripe/transaction/CollectiblePayment;", "collectiblePayment", "getCollectiblePayment", "()Lcom/stripe/transaction/CollectiblePayment;", "setCollectiblePayment", "(Lcom/stripe/transaction/CollectiblePayment;)V", "connectionToken", "getConnectionToken", "setConnectionToken", "Lcom/stripe/transaction/PaymentCollectionDeviceCapability;", "devicePaymentCapability", "getDevicePaymentCapability$delegate", "getDevicePaymentCapability", "()Lcom/stripe/transaction/PaymentCollectionDeviceCapability;", "setDevicePaymentCapability", "(Lcom/stripe/transaction/PaymentCollectionDeviceCapability;)V", "", "domesticDebitAids", "getDomesticDebitAids$delegate", "getDomesticDebitAids", "()Ljava/util/List;", "setDomesticDebitAids", "(Ljava/util/List;)V", "dynamicCurrencyConversionOfferPresented", "getDynamicCurrencyConversionOfferPresented", "setDynamicCurrencyConversionOfferPresented", "(Z)V", "dynamicCurrencyConversionSelected", "getDynamicCurrencyConversionSelected", "()Ljava/lang/Boolean;", "setDynamicCurrencyConversionSelected", "(Ljava/lang/Boolean;)V", "Lcom/stripe/restclient/IntegrationType;", "integrationType", "getIntegrationType", "()Lcom/stripe/restclient/IntegrationType;", "setIntegrationType", "(Lcom/stripe/restclient/IntegrationType;)V", "Lkotlinx/coroutines/Job;", "interstitialJob", "getInterstitialJob", "()Lkotlinx/coroutines/Job;", "setInterstitialJob", "(Lkotlinx/coroutines/Job;)V", "isInTransaction", "isInValidTransaction", "localNetworkSessionToken", "getLocalNetworkSessionToken$delegate", "getLocalNetworkSessionToken", "setLocalNetworkSessionToken", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "nonCardPaymentMethodType", "getNonCardPaymentMethodType", "()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "setNonCardPaymentMethodType", "(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;)V", "paymentIntentId", "getPaymentIntentId", "Lcom/stripe/core/transaction/ConfirmRefundParams;", "refundParams", "getRefundParams", "()Lcom/stripe/core/transaction/ConfirmRefundParams;", "setRefundParams", "(Lcom/stripe/core/transaction/ConfirmRefundParams;)V", "Lcom/stripe/proto/model/common/DeviceInfo;", "remotePosDeviceInfo", "getRemotePosDeviceInfo$delegate", "getRemotePosDeviceInfo", "()Lcom/stripe/proto/model/common/DeviceInfo;", "setRemotePosDeviceInfo", "(Lcom/stripe/proto/model/common/DeviceInfo;)V", "Lcom/stripe/proto/model/common/VersionInfoPb;", "remotePosSdkVersionInfo", "getRemotePosSdkVersionInfo$delegate", "getRemotePosSdkVersionInfo", "()Lcom/stripe/proto/model/common/VersionInfoPb;", "setRemotePosSdkVersionInfo", "(Lcom/stripe/proto/model/common/VersionInfoPb;)V", "remotePosSecondarySdkVersionInfo", "getRemotePosSecondarySdkVersionInfo$delegate", "getRemotePosSecondarySdkVersionInfo", "setRemotePosSecondarySdkVersionInfo", "remotePosSupportsExtendedTransactions", "getRemotePosSupportsExtendedTransactions", "settings", "Lcom/stripe/transaction/Settings;", "getSettings", "()Lcom/stripe/transaction/Settings;", "stripeAccountId", "getStripeAccountId", "transactionStateSummaryFlow", "Lkotlinx/coroutines/flow/Flow;", "getTransactionStateSummaryFlow", "()Lkotlinx/coroutines/flow/Flow;", "clearRemotePosInfo", "", "clearTipAmount", "clearTransactionContext", "getCancelableOperationContext", "Lcom/stripe/core/transaction/CancelableOperationContext;", "getRequestId", "opType", "Lcom/stripe/restclient/TransactionOpType;", "isInterstitialJobCancelable", "resetContext", "resetTransactionState", "setCancelableOperationContext", "cancelableOperation", "Lcom/stripe/stripeterminal/external/callable/Cancelable;", "cancelableOperationType", "Lcom/stripe/core/transaction/CancelableOperationType;", "setPaymentIntentId", "setRequestId", "requestId", "updateCardStatus", "cardStatus", "updateState", RemoteConfigConstants.ResponseFieldKey.STATE, "Companion", "TransactionContext", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TransactionRepository implements CoreTransactionRepository {
    private static String _accountId;
    private static String _connectionToken;
    private static String _localNetworkSessionToken;
    private static DeviceInfo _remotePosDeviceInfo;
    private static VersionInfoPb _remotePosSdkVersionInfo;
    private static VersionInfoPb _remotePosSecondarySdkVersionInfo;
    private final MutableStateFlow<TransactionStateSummary> _transactionStateSummaryFlow;
    private final StateFlow<ContactCardSlotState> cardStatusFlow;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final SettingsRepository settingsRepository;
    private final Flow<TransactionStateSummary> transactionStateSummaryFlow;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static TransactionContext currentTransactionContext = new TransactionContext(null, null, null, null, null, null, null, null, null, false, null, null, null, 8191, null);
    private static final MutableStateFlow<ContactCardSlotState> _cardStatusFlow = StateFlowKt.MutableStateFlow(ContactCardSlotState.EMPTY);
    private static PaymentCollectionDeviceCapability _devicePaymentCapability = PaymentCollectionDeviceCapabilityKt.getDEFAULT_PAYMENT_COLLECTION_CAPABILITY();
    private static List<String> _domesticDebitAids = CollectionsKt.emptyList();

    @Inject
    public TransactionRepository(SettingsRepository settingsRepository, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(settingsRepository, "settingsRepository");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        this.settingsRepository = settingsRepository;
        this.logger = loggerFactory.create(Reflection.getOrCreateKotlinClass(TransactionRepository.class));
        MutableStateFlow<TransactionStateSummary> MutableStateFlow = StateFlowKt.MutableStateFlow(TransactionStateSummary.Empty.INSTANCE);
        this._transactionStateSummaryFlow = MutableStateFlow;
        this.transactionStateSummaryFlow = FlowKt.asStateFlow(MutableStateFlow);
        this.cardStatusFlow = FlowKt.asStateFlow(_cardStatusFlow);
    }

    public final Settings getSettings() {
        return this.settingsRepository.getSettings();
    }

    /* JADX INFO: compiled from: TransactionRepository.kt */
    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/core/transaction/TransactionRepository$Companion;", "", "()V", "_accountId", "", "_cardStatusFlow", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;", "_connectionToken", "_devicePaymentCapability", "Lcom/stripe/transaction/PaymentCollectionDeviceCapability;", "_domesticDebitAids", "", "_localNetworkSessionToken", "_remotePosDeviceInfo", "Lcom/stripe/proto/model/common/DeviceInfo;", "_remotePosSdkVersionInfo", "Lcom/stripe/proto/model/common/VersionInfoPb;", "_remotePosSecondarySdkVersionInfo", "currentTransactionContext", "Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final Flow<TransactionStateSummary> getTransactionStateSummaryFlow() {
        return this.transactionStateSummaryFlow;
    }

    public final StateFlow<ContactCardSlotState> getCardStatusFlow() {
        return this.cardStatusFlow;
    }

    public final void updateCardStatus(ContactCardSlotState cardStatus) {
        Intrinsics.checkNotNullParameter(cardStatus, "cardStatus");
        this.logger.i("updateCardStatus", TuplesKt.to("cardStatus", cardStatus));
        _cardStatusFlow.setValue(cardStatus);
    }

    /* JADX INFO: compiled from: TransactionRepository.kt */
    @Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\bD\n\u0002\u0010\b\n\u0002\b\u0002\b\u0082\b\u0018\u00002\u00020\u0001B©\u0001\u0012\u0014\b\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0015\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a¢\u0006\u0002\u0010\u001bJ\u0015\u0010M\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003HÆ\u0003J\t\u0010N\u001a\u00020\u0015HÆ\u0003J\u0010\u0010O\u001a\u0004\u0018\u00010\u0015HÆ\u0003¢\u0006\u0002\u00101J\u000b\u0010P\u001a\u0004\u0018\u00010\u0018HÆ\u0003J\u000b\u0010Q\u001a\u0004\u0018\u00010\u001aHÆ\u0003J\u000b\u0010R\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010S\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010T\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010U\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u0010V\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u000b\u0010W\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\u0013HÆ\u0003J²\u0001\u0010Z\u001a\u00020\u00002\u0014\b\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÆ\u0001¢\u0006\u0002\u0010[J\u0013\u0010\\\u001a\u00020\u00152\b\u0010]\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010^\u001a\u00020_HÖ\u0001J\t\u0010`\u001a\u00020\u0005HÖ\u0001R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u001e\u0010\u0016\u001a\u0004\u0018\u00010\u0015X\u0086\u000e¢\u0006\u0010\n\u0002\u00104\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\b\n\u0000\u001a\u0004\bI\u0010JR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bK\u0010B\"\u0004\bL\u0010D¨\u0006a"}, d2 = {"Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;", "", "requestIds", "Ljava/util/EnumMap;", "Lcom/stripe/restclient/TransactionOpType;", "", "integrationType", "Lcom/stripe/restclient/IntegrationType;", "collectiblePayment", "Lcom/stripe/transaction/CollectiblePayment;", "cancelableOperationContext", "Lcom/stripe/core/transaction/CancelableOperationContext;", "interstitialJob", "Lkotlinx/coroutines/Job;", "amountTip", "Lcom/stripe/currency/Amount;", "paymentIntentId", "stripeAccountId", "refundParams", "Lcom/stripe/core/transaction/ConfirmRefundParams;", "dynamicCurrencyConversionOfferPresented", "", "dynamicCurrencyConversionSelected", "nonCardPaymentMethodType", "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "allowRedisplay", "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;", "(Ljava/util/EnumMap;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/CollectiblePayment;Lcom/stripe/core/transaction/CancelableOperationContext;Lkotlinx/coroutines/Job;Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/core/transaction/ConfirmRefundParams;ZLjava/lang/Boolean;Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)V", "getAllowRedisplay", "()Lcom/stripe/stripeterminal/external/models/AllowRedisplay;", "setAllowRedisplay", "(Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)V", "getAmountTip", "()Lcom/stripe/currency/Amount;", "setAmountTip", "(Lcom/stripe/currency/Amount;)V", "getCancelableOperationContext", "()Lcom/stripe/core/transaction/CancelableOperationContext;", "setCancelableOperationContext", "(Lcom/stripe/core/transaction/CancelableOperationContext;)V", "getCollectiblePayment", "()Lcom/stripe/transaction/CollectiblePayment;", "setCollectiblePayment", "(Lcom/stripe/transaction/CollectiblePayment;)V", "getDynamicCurrencyConversionOfferPresented", "()Z", "setDynamicCurrencyConversionOfferPresented", "(Z)V", "getDynamicCurrencyConversionSelected", "()Ljava/lang/Boolean;", "setDynamicCurrencyConversionSelected", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getIntegrationType", "()Lcom/stripe/restclient/IntegrationType;", "setIntegrationType", "(Lcom/stripe/restclient/IntegrationType;)V", "getInterstitialJob", "()Lkotlinx/coroutines/Job;", "setInterstitialJob", "(Lkotlinx/coroutines/Job;)V", "getNonCardPaymentMethodType", "()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "setNonCardPaymentMethodType", "(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;)V", "getPaymentIntentId", "()Ljava/lang/String;", "setPaymentIntentId", "(Ljava/lang/String;)V", "getRefundParams", "()Lcom/stripe/core/transaction/ConfirmRefundParams;", "setRefundParams", "(Lcom/stripe/core/transaction/ConfirmRefundParams;)V", "getRequestIds", "()Ljava/util/EnumMap;", "getStripeAccountId", "setStripeAccountId", "component1", "component10", "component11", "component12", "component13", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/util/EnumMap;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/CollectiblePayment;Lcom/stripe/core/transaction/CancelableOperationContext;Lkotlinx/coroutines/Job;Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/core/transaction/ConfirmRefundParams;ZLjava/lang/Boolean;Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;", "equals", "other", "hashCode", "", "toString", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final /* data */ class TransactionContext {
        private AllowRedisplay allowRedisplay;
        private Amount amountTip;
        private CancelableOperationContext cancelableOperationContext;
        private CollectiblePayment collectiblePayment;
        private boolean dynamicCurrencyConversionOfferPresented;
        private Boolean dynamicCurrencyConversionSelected;
        private IntegrationType integrationType;
        private Job interstitialJob;
        private PaymentMethodType nonCardPaymentMethodType;
        private String paymentIntentId;
        private ConfirmRefundParams refundParams;
        private final EnumMap<TransactionOpType, String> requestIds;
        private String stripeAccountId;

        public TransactionContext() {
            this(null, null, null, null, null, null, null, null, null, false, null, null, null, 8191, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ TransactionContext copy$default(TransactionContext transactionContext, EnumMap enumMap, IntegrationType integrationType, CollectiblePayment collectiblePayment, CancelableOperationContext cancelableOperationContext, Job job, Amount amount, String str, String str2, ConfirmRefundParams confirmRefundParams, boolean z, Boolean bool, PaymentMethodType paymentMethodType, AllowRedisplay allowRedisplay, int i, Object obj) {
            if ((i & 1) != 0) {
                enumMap = transactionContext.requestIds;
            }
            return transactionContext.copy(enumMap, (i & 2) != 0 ? transactionContext.integrationType : integrationType, (i & 4) != 0 ? transactionContext.collectiblePayment : collectiblePayment, (i & 8) != 0 ? transactionContext.cancelableOperationContext : cancelableOperationContext, (i & 16) != 0 ? transactionContext.interstitialJob : job, (i & 32) != 0 ? transactionContext.amountTip : amount, (i & 64) != 0 ? transactionContext.paymentIntentId : str, (i & 128) != 0 ? transactionContext.stripeAccountId : str2, (i & 256) != 0 ? transactionContext.refundParams : confirmRefundParams, (i & 512) != 0 ? transactionContext.dynamicCurrencyConversionOfferPresented : z, (i & 1024) != 0 ? transactionContext.dynamicCurrencyConversionSelected : bool, (i & 2048) != 0 ? transactionContext.nonCardPaymentMethodType : paymentMethodType, (i & 4096) != 0 ? transactionContext.allowRedisplay : allowRedisplay);
        }

        public final EnumMap<TransactionOpType, String> component1() {
            return this.requestIds;
        }

        /* JADX INFO: renamed from: component10, reason: from getter */
        public final boolean getDynamicCurrencyConversionOfferPresented() {
            return this.dynamicCurrencyConversionOfferPresented;
        }

        /* JADX INFO: renamed from: component11, reason: from getter */
        public final Boolean getDynamicCurrencyConversionSelected() {
            return this.dynamicCurrencyConversionSelected;
        }

        /* JADX INFO: renamed from: component12, reason: from getter */
        public final PaymentMethodType getNonCardPaymentMethodType() {
            return this.nonCardPaymentMethodType;
        }

        /* JADX INFO: renamed from: component13, reason: from getter */
        public final AllowRedisplay getAllowRedisplay() {
            return this.allowRedisplay;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final IntegrationType getIntegrationType() {
            return this.integrationType;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final CollectiblePayment getCollectiblePayment() {
            return this.collectiblePayment;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final CancelableOperationContext getCancelableOperationContext() {
            return this.cancelableOperationContext;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final Job getInterstitialJob() {
            return this.interstitialJob;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final Amount getAmountTip() {
            return this.amountTip;
        }

        /* JADX INFO: renamed from: component7, reason: from getter */
        public final String getPaymentIntentId() {
            return this.paymentIntentId;
        }

        /* JADX INFO: renamed from: component8, reason: from getter */
        public final String getStripeAccountId() {
            return this.stripeAccountId;
        }

        /* JADX INFO: renamed from: component9, reason: from getter */
        public final ConfirmRefundParams getRefundParams() {
            return this.refundParams;
        }

        public final TransactionContext copy(EnumMap<TransactionOpType, String> requestIds, IntegrationType integrationType, CollectiblePayment collectiblePayment, CancelableOperationContext cancelableOperationContext, Job interstitialJob, Amount amountTip, String paymentIntentId, String stripeAccountId, ConfirmRefundParams refundParams, boolean dynamicCurrencyConversionOfferPresented, Boolean dynamicCurrencyConversionSelected, PaymentMethodType nonCardPaymentMethodType, AllowRedisplay allowRedisplay) {
            Intrinsics.checkNotNullParameter(requestIds, "requestIds");
            return new TransactionContext(requestIds, integrationType, collectiblePayment, cancelableOperationContext, interstitialJob, amountTip, paymentIntentId, stripeAccountId, refundParams, dynamicCurrencyConversionOfferPresented, dynamicCurrencyConversionSelected, nonCardPaymentMethodType, allowRedisplay);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof TransactionContext)) {
                return false;
            }
            TransactionContext transactionContext = (TransactionContext) other;
            return Intrinsics.areEqual(this.requestIds, transactionContext.requestIds) && this.integrationType == transactionContext.integrationType && Intrinsics.areEqual(this.collectiblePayment, transactionContext.collectiblePayment) && Intrinsics.areEqual(this.cancelableOperationContext, transactionContext.cancelableOperationContext) && Intrinsics.areEqual(this.interstitialJob, transactionContext.interstitialJob) && Intrinsics.areEqual(this.amountTip, transactionContext.amountTip) && Intrinsics.areEqual(this.paymentIntentId, transactionContext.paymentIntentId) && Intrinsics.areEqual(this.stripeAccountId, transactionContext.stripeAccountId) && Intrinsics.areEqual(this.refundParams, transactionContext.refundParams) && this.dynamicCurrencyConversionOfferPresented == transactionContext.dynamicCurrencyConversionOfferPresented && Intrinsics.areEqual(this.dynamicCurrencyConversionSelected, transactionContext.dynamicCurrencyConversionSelected) && this.nonCardPaymentMethodType == transactionContext.nonCardPaymentMethodType && this.allowRedisplay == transactionContext.allowRedisplay;
        }

        public int hashCode() {
            int iHashCode = this.requestIds.hashCode() * 31;
            IntegrationType integrationType = this.integrationType;
            int iHashCode2 = (iHashCode + (integrationType == null ? 0 : integrationType.hashCode())) * 31;
            CollectiblePayment collectiblePayment = this.collectiblePayment;
            int iHashCode3 = (iHashCode2 + (collectiblePayment == null ? 0 : collectiblePayment.hashCode())) * 31;
            CancelableOperationContext cancelableOperationContext = this.cancelableOperationContext;
            int iHashCode4 = (iHashCode3 + (cancelableOperationContext == null ? 0 : cancelableOperationContext.hashCode())) * 31;
            Job job = this.interstitialJob;
            int iHashCode5 = (iHashCode4 + (job == null ? 0 : job.hashCode())) * 31;
            Amount amount = this.amountTip;
            int iHashCode6 = (iHashCode5 + (amount == null ? 0 : amount.hashCode())) * 31;
            String str = this.paymentIntentId;
            int iHashCode7 = (iHashCode6 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.stripeAccountId;
            int iHashCode8 = (iHashCode7 + (str2 == null ? 0 : str2.hashCode())) * 31;
            ConfirmRefundParams confirmRefundParams = this.refundParams;
            int iHashCode9 = (((iHashCode8 + (confirmRefundParams == null ? 0 : confirmRefundParams.hashCode())) * 31) + Boolean.hashCode(this.dynamicCurrencyConversionOfferPresented)) * 31;
            Boolean bool = this.dynamicCurrencyConversionSelected;
            int iHashCode10 = (iHashCode9 + (bool == null ? 0 : bool.hashCode())) * 31;
            PaymentMethodType paymentMethodType = this.nonCardPaymentMethodType;
            int iHashCode11 = (iHashCode10 + (paymentMethodType == null ? 0 : paymentMethodType.hashCode())) * 31;
            AllowRedisplay allowRedisplay = this.allowRedisplay;
            return iHashCode11 + (allowRedisplay != null ? allowRedisplay.hashCode() : 0);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("TransactionContext(requestIds=");
            sb.append(this.requestIds).append(", integrationType=").append(this.integrationType).append(", collectiblePayment=").append(this.collectiblePayment).append(", cancelableOperationContext=").append(this.cancelableOperationContext).append(", interstitialJob=").append(this.interstitialJob).append(", amountTip=").append(this.amountTip).append(", paymentIntentId=").append(this.paymentIntentId).append(", stripeAccountId=").append(this.stripeAccountId).append(", refundParams=").append(this.refundParams).append(", dynamicCurrencyConversionOfferPresented=").append(this.dynamicCurrencyConversionOfferPresented).append(", dynamicCurrencyConversionSelected=").append(this.dynamicCurrencyConversionSelected).append(", nonCardPaymentMethodType=");
            sb.append(this.nonCardPaymentMethodType).append(", allowRedisplay=").append(this.allowRedisplay).append(')');
            return sb.toString();
        }

        public TransactionContext(EnumMap<TransactionOpType, String> requestIds, IntegrationType integrationType, CollectiblePayment collectiblePayment, CancelableOperationContext cancelableOperationContext, Job job, Amount amount, String str, String str2, ConfirmRefundParams confirmRefundParams, boolean z, Boolean bool, PaymentMethodType paymentMethodType, AllowRedisplay allowRedisplay) {
            Intrinsics.checkNotNullParameter(requestIds, "requestIds");
            this.requestIds = requestIds;
            this.integrationType = integrationType;
            this.collectiblePayment = collectiblePayment;
            this.cancelableOperationContext = cancelableOperationContext;
            this.interstitialJob = job;
            this.amountTip = amount;
            this.paymentIntentId = str;
            this.stripeAccountId = str2;
            this.refundParams = confirmRefundParams;
            this.dynamicCurrencyConversionOfferPresented = z;
            this.dynamicCurrencyConversionSelected = bool;
            this.nonCardPaymentMethodType = paymentMethodType;
            this.allowRedisplay = allowRedisplay;
        }

        public /* synthetic */ TransactionContext(EnumMap enumMap, IntegrationType integrationType, CollectiblePayment collectiblePayment, CancelableOperationContext cancelableOperationContext, Job job, Amount amount, String str, String str2, ConfirmRefundParams confirmRefundParams, boolean z, Boolean bool, PaymentMethodType paymentMethodType, AllowRedisplay allowRedisplay, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? new EnumMap(TransactionOpType.class) : enumMap, (i & 2) != 0 ? null : integrationType, (i & 4) != 0 ? null : collectiblePayment, (i & 8) != 0 ? null : cancelableOperationContext, (i & 16) != 0 ? null : job, (i & 32) != 0 ? null : amount, (i & 64) != 0 ? null : str, (i & 128) != 0 ? null : str2, (i & 256) != 0 ? null : confirmRefundParams, (i & 512) != 0 ? false : z, (i & 1024) != 0 ? null : bool, (i & 2048) != 0 ? null : paymentMethodType, (i & 4096) != 0 ? null : allowRedisplay);
        }

        public final EnumMap<TransactionOpType, String> getRequestIds() {
            return this.requestIds;
        }

        public final IntegrationType getIntegrationType() {
            return this.integrationType;
        }

        public final void setIntegrationType(IntegrationType integrationType) {
            this.integrationType = integrationType;
        }

        public final CollectiblePayment getCollectiblePayment() {
            return this.collectiblePayment;
        }

        public final void setCollectiblePayment(CollectiblePayment collectiblePayment) {
            this.collectiblePayment = collectiblePayment;
        }

        public final CancelableOperationContext getCancelableOperationContext() {
            return this.cancelableOperationContext;
        }

        public final void setCancelableOperationContext(CancelableOperationContext cancelableOperationContext) {
            this.cancelableOperationContext = cancelableOperationContext;
        }

        public final Job getInterstitialJob() {
            return this.interstitialJob;
        }

        public final void setInterstitialJob(Job job) {
            this.interstitialJob = job;
        }

        public final Amount getAmountTip() {
            return this.amountTip;
        }

        public final void setAmountTip(Amount amount) {
            this.amountTip = amount;
        }

        public final String getPaymentIntentId() {
            return this.paymentIntentId;
        }

        public final void setPaymentIntentId(String str) {
            this.paymentIntentId = str;
        }

        public final String getStripeAccountId() {
            return this.stripeAccountId;
        }

        public final void setStripeAccountId(String str) {
            this.stripeAccountId = str;
        }

        public final ConfirmRefundParams getRefundParams() {
            return this.refundParams;
        }

        public final void setRefundParams(ConfirmRefundParams confirmRefundParams) {
            this.refundParams = confirmRefundParams;
        }

        public final boolean getDynamicCurrencyConversionOfferPresented() {
            return this.dynamicCurrencyConversionOfferPresented;
        }

        public final void setDynamicCurrencyConversionOfferPresented(boolean z) {
            this.dynamicCurrencyConversionOfferPresented = z;
        }

        public final Boolean getDynamicCurrencyConversionSelected() {
            return this.dynamicCurrencyConversionSelected;
        }

        public final void setDynamicCurrencyConversionSelected(Boolean bool) {
            this.dynamicCurrencyConversionSelected = bool;
        }

        public final PaymentMethodType getNonCardPaymentMethodType() {
            return this.nonCardPaymentMethodType;
        }

        public final void setNonCardPaymentMethodType(PaymentMethodType paymentMethodType) {
            this.nonCardPaymentMethodType = paymentMethodType;
        }

        public final AllowRedisplay getAllowRedisplay() {
            return this.allowRedisplay;
        }

        public final void setAllowRedisplay(AllowRedisplay allowRedisplay) {
            this.allowRedisplay = allowRedisplay;
        }
    }

    public final void updateState(TransactionStateSummary state) {
        Intrinsics.checkNotNullParameter(state, "state");
        this.logger.i("updateState", TuplesKt.to(RemoteConfigConstants.ResponseFieldKey.STATE, state));
        this._transactionStateSummaryFlow.setValue(state);
    }

    public final void resetContext() {
        this.logger.i("resetContext()", new Pair[0]);
        clearTransactionContext();
        resetTransactionState();
    }

    public final void clearTipAmount() {
        currentTransactionContext.setAmountTip(null);
    }

    public final void clearTransactionContext() {
        this.logger.i("clearTransactionContext()", new Pair[0]);
        currentTransactionContext = new TransactionContext(null, null, null, null, currentTransactionContext.getInterstitialJob(), null, null, null, null, false, null, null, null, 8175, null);
    }

    public final void clearRemotePosInfo() {
        setRemotePosSdkVersionInfo(null);
        setRemotePosSecondarySdkVersionInfo(null);
        setRemotePosDeviceInfo(null);
    }

    public final void resetTransactionState() {
        updateState(TransactionStateSummary.Empty.INSTANCE);
    }

    public final String getConnectionToken() {
        String str = _connectionToken;
        _connectionToken = null;
        return str;
    }

    public final void setConnectionToken(String str) {
        _connectionToken = str;
    }

    @Override // com.stripe.restclient.CoreTransactionRepository
    public IntegrationType getIntegrationType() {
        return currentTransactionContext.getIntegrationType();
    }

    @Override // com.stripe.restclient.CoreTransactionRepository
    public void setIntegrationType(IntegrationType integrationType) {
        currentTransactionContext.setIntegrationType(integrationType);
    }

    public final boolean isInTransaction() {
        return !Intrinsics.areEqual(this._transactionStateSummaryFlow.getValue(), TransactionStateSummary.Empty.INSTANCE);
    }

    public final boolean isInValidTransaction() {
        return (!isInTransaction() || Intrinsics.areEqual(this._transactionStateSummaryFlow.getValue(), TransactionStateSummary.UnrecoverableError.INSTANCE) || (this._transactionStateSummaryFlow.getValue() instanceof TransactionStateSummary.Timeout) || Intrinsics.areEqual(this._transactionStateSummaryFlow.getValue(), TransactionStateSummary.Cancelled.INSTANCE)) ? false : true;
    }

    public final boolean getAllowExtendedTransactions() {
        return (getRemotePosSdkVersionInfo() == null || getRemotePosSupportsExtendedTransactions()) && getDevicePaymentCapability().getSupportExtendedTransaction();
    }

    private final boolean getRemotePosSupportsExtendedTransactions() {
        if (getIntegrationType() == IntegrationType.SERVER_DRIVEN) {
            return true;
        }
        VersionInfoPb remotePosSdkVersionInfo = getRemotePosSdkVersionInfo();
        Intrinsics.checkNotNull(remotePosSdkVersionInfo);
        return TransactionRepositoryKt.allowExtendedTransactions(remotePosSdkVersionInfo);
    }

    public final VersionInfoPb getRemotePosSdkVersionInfo() {
        return _remotePosSdkVersionInfo;
    }

    public final void setRemotePosSdkVersionInfo(VersionInfoPb versionInfoPb) {
        _remotePosSdkVersionInfo = versionInfoPb;
    }

    public final VersionInfoPb getRemotePosSecondarySdkVersionInfo() {
        return _remotePosSecondarySdkVersionInfo;
    }

    public final void setRemotePosSecondarySdkVersionInfo(VersionInfoPb versionInfoPb) {
        _remotePosSecondarySdkVersionInfo = versionInfoPb;
    }

    public final DeviceInfo getRemotePosDeviceInfo() {
        return _remotePosDeviceInfo;
    }

    public final void setRemotePosDeviceInfo(DeviceInfo deviceInfo) {
        _remotePosDeviceInfo = deviceInfo;
    }

    public final PaymentCollectionDeviceCapability getDevicePaymentCapability() {
        return _devicePaymentCapability;
    }

    public final void setDevicePaymentCapability(PaymentCollectionDeviceCapability paymentCollectionDeviceCapability) {
        Intrinsics.checkNotNullParameter(paymentCollectionDeviceCapability, "<set-?>");
        _devicePaymentCapability = paymentCollectionDeviceCapability;
    }

    public final String getLocalNetworkSessionToken() {
        return _localNetworkSessionToken;
    }

    public final void setLocalNetworkSessionToken(String str) {
        _localNetworkSessionToken = str;
    }

    public final String getAccountId() {
        return _accountId;
    }

    public final void setAccountId(String str) {
        _accountId = str;
    }

    public final CollectiblePayment getCollectiblePayment() {
        return currentTransactionContext.getCollectiblePayment();
    }

    public final void setCollectiblePayment(CollectiblePayment collectiblePayment) {
        currentTransactionContext.setCollectiblePayment(collectiblePayment);
    }

    public final List<String> getDomesticDebitAids() {
        return _domesticDebitAids;
    }

    public final void setDomesticDebitAids(List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        _domesticDebitAids = list;
    }

    public final void setCancelableOperationContext(Cancelable cancelableOperation, CancelableOperationType cancelableOperationType) {
        Intrinsics.checkNotNullParameter(cancelableOperation, "cancelableOperation");
        Intrinsics.checkNotNullParameter(cancelableOperationType, "cancelableOperationType");
        this.logger.d("setCancelableOperationContext", TuplesKt.to("cancelableOperationType", cancelableOperationType));
        currentTransactionContext.setCancelableOperationContext(new CancelableOperationContext(cancelableOperation, cancelableOperationType));
    }

    public final CancelableOperationContext getCancelableOperationContext() {
        return currentTransactionContext.getCancelableOperationContext();
    }

    public final Job getInterstitialJob() {
        return currentTransactionContext.getInterstitialJob();
    }

    public final void setInterstitialJob(Job job) {
        currentTransactionContext.setInterstitialJob(job);
    }

    public final boolean isInterstitialJobCancelable() {
        Job interstitialJob = getInterstitialJob();
        if (interstitialJob != null) {
            return interstitialJob.isActive();
        }
        return false;
    }

    @Override // com.stripe.restclient.CoreTransactionRepository
    public void setRequestId(TransactionOpType opType, String requestId) {
        Intrinsics.checkNotNullParameter(opType, "opType");
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        currentTransactionContext.getRequestIds().put(opType, requestId);
    }

    public final String getRequestId(TransactionOpType opType) {
        Intrinsics.checkNotNullParameter(opType, "opType");
        String str = currentTransactionContext.getRequestIds().get(opType);
        return str == null ? "" : str;
    }

    public final Amount getAmountTip() {
        return currentTransactionContext.getAmountTip();
    }

    public final void setAmountTip(Amount amount) {
        currentTransactionContext.setAmountTip(amount);
    }

    public final String getPaymentIntentId() {
        return currentTransactionContext.getPaymentIntentId();
    }

    public final String getStripeAccountId() {
        return currentTransactionContext.getStripeAccountId();
    }

    public final void setPaymentIntentId(String paymentIntentId, String stripeAccountId) {
        this.logger.i("setPaymentIntentId: " + paymentIntentId, new Pair[0]);
        currentTransactionContext.setPaymentIntentId(paymentIntentId);
        currentTransactionContext.setStripeAccountId(stripeAccountId);
    }

    public final ConfirmRefundParams getRefundParams() {
        return currentTransactionContext.getRefundParams();
    }

    public final void setRefundParams(ConfirmRefundParams confirmRefundParams) {
        currentTransactionContext.setRefundParams(confirmRefundParams);
    }

    public final boolean getDynamicCurrencyConversionOfferPresented() {
        return currentTransactionContext.getDynamicCurrencyConversionOfferPresented();
    }

    public final void setDynamicCurrencyConversionOfferPresented(boolean z) {
        currentTransactionContext.setDynamicCurrencyConversionOfferPresented(z);
    }

    public final Boolean getDynamicCurrencyConversionSelected() {
        return currentTransactionContext.getDynamicCurrencyConversionSelected();
    }

    public final void setDynamicCurrencyConversionSelected(Boolean bool) {
        currentTransactionContext.setDynamicCurrencyConversionSelected(bool);
    }

    public final PaymentMethodType getNonCardPaymentMethodType() {
        return currentTransactionContext.getNonCardPaymentMethodType();
    }

    public final void setNonCardPaymentMethodType(PaymentMethodType paymentMethodType) {
        currentTransactionContext.setNonCardPaymentMethodType(paymentMethodType);
    }

    public final AllowRedisplay getAllowRedisplay() {
        return currentTransactionContext.getAllowRedisplay();
    }

    public final void setAllowRedisplay(AllowRedisplay allowRedisplay) {
        currentTransactionContext.setAllowRedisplay(allowRedisplay);
    }
}
