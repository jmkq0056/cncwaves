package com.stripe.stripeterminal.internal.common.resourcerepository;

import com.stripe.hardware.emv.TransactionResult;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.jvmcore.terminal.api.ActivateReaderResponse;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.paymentcollection.OnlineAuthStateListener;
import com.stripe.proto.api.sdk.ActivateTerminalResponse;
import com.stripe.proto.model.rest.ReaderCollectedData;
import com.stripe.proto.model.sdk.PaymentMethod;
import com.stripe.proto.terminal.terminal.pub.message.config.BluetoothAutoReconnectConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.UsbAutoReconnectConfigPb;
import com.stripe.stripeterminal.external.api.ApiError;
import com.stripe.stripeterminal.external.models.CollectedData;
import com.stripe.stripeterminal.external.models.ConnectionConfiguration;
import com.stripe.stripeterminal.external.models.CreateConfiguration;
import com.stripe.stripeterminal.external.models.Location;
import com.stripe.stripeterminal.external.models.NetworkStatus;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.PaymentIntentParameters;
import com.stripe.stripeterminal.external.models.ReadReusableCardParameters;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.Refund;
import com.stripe.stripeterminal.external.models.RefundParameters;
import com.stripe.stripeterminal.external.models.SetupIntent;
import com.stripe.stripeterminal.external.models.SetupIntentCancellationParameters;
import com.stripe.stripeterminal.external.models.SetupIntentParameters;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.connectivity.StripeConnectivityRepository;
import com.stripe.stripeterminal.internal.common.proto.ProtoConverter;
import com.stripe.stripeterminal.internal.common.remotereadercontrollers.ActivateReaderInvalidOfflineConnectionTokenException;
import com.stripe.stripeterminal.internal.common.remotereadercontrollers.ProxyRemoteReaderController;
import com.stripe.stripeterminal.internal.common.tokenrepositories.ConnectionTokenRepository;
import com.stripe.stripeterminal.internal.models.PaymentMethodData;
import com.stripe.transaction.CollectiblePayment;
import com.stripe.transaction.ExtendedActionConstants;
import com.stripe.transaction.payment.Payment;
import com.stripe.transaction.payment.RemotePayment;
import com.sun.jna.Callback;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.Deferred;

/* JADX INFO: compiled from: RemoteReaderResourceRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
@Singleton
@Metadata(d1 = {"\u0000\u0088\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 b2\u00020\u0001:\u0001bB'\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJX\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152>\u0010\u0016\u001a:\u0012\u0015\u0012\u0013\u0018\u00010\u0018¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(\u001b\u0012\u0015\u0012\u0013\u0018\u00010\u001c¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u00020\u001e0\u0017j\u0002`\u001fH\u0016J \u0010 \u001a\b\u0012\u0004\u0012\u00020\"0!2\u0006\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010$H\u0016J\u0010\u0010&\u001a\u00020\u001e2\u0006\u0010'\u001a\u00020(H\u0016J\u0010\u0010)\u001a\u00020\u001e2\u0006\u0010'\u001a\u00020(H\u0016J\u0010\u0010*\u001a\u00020\u001e2\u0006\u0010'\u001a\u00020(H\u0016J\u0010\u0010+\u001a\u00020\"2\u0006\u0010,\u001a\u00020\"H\u0016J\b\u0010-\u001a\u00020\u001eH\u0016J\u0018\u0010.\u001a\u00020/2\u0006\u0010,\u001a\u00020/2\u0006\u00100\u001a\u000201H\u0016J\u001a\u00102\u001a\u0002032\u0006\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010$H\u0016Jq\u00104\u001a\u00020\"2\u0006\u00105\u001a\u00020\"2\u000e\u00106\u001a\n\u0012\u0006\u0012\u0004\u0018\u000108072\u0018\u00109\u001a\u0014\u0012\u0004\u0012\u00020$\u0012\n\u0012\b\u0012\u0004\u0012\u00020;0!0:2\f\u0010<\u001a\b\u0012\u0004\u0012\u00020=072\u0006\u0010>\u001a\u0002032\u0006\u0010?\u001a\u00020@2\b\u0010A\u001a\u0004\u0018\u00010B2\b\u0010C\u001a\u0004\u0018\u00010$H\u0016¢\u0006\u0002\u0010DJ<\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020H2\b\u0010I\u001a\u0004\u0018\u0001082\u0018\u00109\u001a\u0014\u0012\u0004\u0012\u00020$\u0012\n\u0012\b\u0012\u0004\u0012\u00020;0!0:2\u0006\u0010?\u001a\u00020@H\u0016JR\u0010J\u001a\u00020/2\u0006\u0010,\u001a\u00020/2\b\u0010I\u001a\u0004\u0018\u0001082\u0018\u00109\u001a\u0014\u0012\u0004\u0012\u00020$\u0012\n\u0012\b\u0012\u0004\u0012\u00020;0!0:2\f\u0010<\u001a\b\u0012\u0004\u0012\u00020=072\u0006\u0010>\u001a\u0002032\u0006\u0010?\u001a\u00020@H\u0016J\u0018\u0010K\u001a\u00020\"2\u0006\u0010L\u001a\u00020M2\u0006\u0010N\u001a\u00020OH\u0016J\u0010\u0010P\u001a\u00020Q2\u0006\u0010R\u001a\u00020=H\u0016J\u0018\u0010S\u001a\u00020/2\u0006\u0010T\u001a\u00020U2\u0006\u0010N\u001a\u00020OH\u0016J\b\u0010V\u001a\u00020$H\u0002J\"\u0010W\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020Y0X2\f\u0010Z\u001a\b\u0012\u0004\u0012\u00020$0[H\u0016J\u0018\u0010\\\u001a\u00020]2\u0006\u0010^\u001a\u00020_2\u0006\u0010R\u001a\u00020=H\u0016J\"\u0010`\u001a\u00020\"2\u0006\u00105\u001a\u00020\"2\b\u0010I\u001a\u0004\u0018\u0001082\u0006\u0010a\u001a\u000203H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\fj\u0002`\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006c"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;", "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;", "proxyReaderController", "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;", "connectionTokenRepository", "Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;", "stripeConnectivityRepository", "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "activateReader", "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "connectionConfiguration", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "setReconnectParams", "Lkotlin/Function2;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;", "Lkotlin/ParameterName;", "name", "bluetoothConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;", "usbConfig", "", "Lcom/stripe/offlinemode/helpers/SetReconnectParams;", "awaitActionRequiredPaymentIntentCompletion", "Lkotlinx/coroutines/Deferred;", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "paymentIntentId", "", "accountId", "cancelConfirmPaymentIntent", Callback.METHOD_NAME, "Lcom/stripe/stripeterminal/external/callable/Callback;", "cancelConfirmRefund", "cancelConfirmSetupIntent", "cancelPaymentIntent", "intent", "cancelPaymentIntentActionRequired", "cancelSetupIntent", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", "params", "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;", "completePaymentIntentActionRequired", "", "confirmPaymentIntent", "paymentIntent", "getCollectiblePayment", "Lkotlin/Function0;", "Lcom/stripe/transaction/CollectiblePayment;", "handleAuthResponse", "Lkotlin/Function1;", "Lcom/stripe/hardware/emv/TransactionResult;", "collectScaPaymentMethodData", "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "immediateRecollectForSca", "authStateListener", "Lcom/stripe/paymentcollection/OnlineAuthStateListener;", "amountSurcharge", "", "returnUrl", "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "confirmRefund", "Lcom/stripe/stripeterminal/external/models/Refund;", "refundParams", "Lcom/stripe/stripeterminal/external/models/RefundParameters;", "collectiblePayment", "confirmSetupIntent", "createPaymentIntent", "paymentIntentParameters", "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;", "createConfiguration", "Lcom/stripe/stripeterminal/external/models/CreateConfiguration;", "createReaderCollectedData", "Lcom/stripe/stripeterminal/external/models/CollectedData;", "paymentMethodData", "createSetupIntent", "setupIntentParameters", "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;", "getConnectionToken", "getReaderLocations", "", "Lcom/stripe/stripeterminal/external/models/Location;", "deviceSerials", "", "readReusableCard", "Lcom/stripe/stripeterminal/external/models/PaymentMethod;", "readReusableCardParams", "Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;", "updatePaymentIntent", "requestDynamicCurrencyConversion", "Companion", "resourcerepository_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RemoteReaderResourceRepository implements ResourceRepository {
    public static final String OFFLINE_CONN_TOKEN = "psst_offline_token";
    private final ConnectionTokenRepository connectionTokenRepository;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final ProxyRemoteReaderController proxyReaderController;
    private final StripeConnectivityRepository stripeConnectivityRepository;

    /* JADX INFO: compiled from: RemoteReaderResourceRepository.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TerminalErrorCode.values().length];
            try {
                iArr[TerminalErrorCode.CONNECTION_TOKEN_PROVIDER_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public PaymentIntent updatePaymentIntent(PaymentIntent paymentIntent, CollectiblePayment collectiblePayment, boolean requestDynamicCurrencyConversion) {
        Intrinsics.checkNotNullParameter(paymentIntent, "paymentIntent");
        return paymentIntent;
    }

    @Inject
    public RemoteReaderResourceRepository(ProxyRemoteReaderController proxyReaderController, ConnectionTokenRepository connectionTokenRepository, StripeConnectivityRepository stripeConnectivityRepository, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(proxyReaderController, "proxyReaderController");
        Intrinsics.checkNotNullParameter(connectionTokenRepository, "connectionTokenRepository");
        Intrinsics.checkNotNullParameter(stripeConnectivityRepository, "stripeConnectivityRepository");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        this.proxyReaderController = proxyReaderController;
        this.connectionTokenRepository = connectionTokenRepository;
        this.stripeConnectivityRepository = stripeConnectivityRepository;
        this.logger = loggerFactory.create(Reflection.getOrCreateKotlinClass(RemoteReaderResourceRepository.class));
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public ActivateReaderResponse activateReader(Reader reader, ConnectionConfiguration connectionConfiguration, Function2<? super BluetoothAutoReconnectConfigPb, ? super UsbAutoReconnectConfigPb, Unit> setReconnectParams) throws TerminalException {
        ActivateTerminalResponse activateTerminalResponseActivateReader;
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(connectionConfiguration, "connectionConfiguration");
        Intrinsics.checkNotNullParameter(setReconnectParams, "setReconnectParams");
        this.logger.d("activateReader", new Pair[0]);
        String connectionToken = getConnectionToken();
        try {
            activateTerminalResponseActivateReader = this.proxyReaderController.activateReader(reader, connectionToken, connectionConfiguration);
        } catch (TerminalException e) {
            if ((e.getCause() instanceof ActivateReaderInvalidOfflineConnectionTokenException) && Intrinsics.areEqual(connectionToken, "psst_offline_token")) {
                this.logger.i("activateReader failed while using offline conn token, retrying with new token", new Pair[0]);
                activateTerminalResponseActivateReader = this.proxyReaderController.activateReader(reader, this.connectionTokenRepository.getTokenAndRefresh(), connectionConfiguration);
            } else {
                throw e;
            }
        }
        String str = activateTerminalResponseActivateReader.account_id;
        boolean z = activateTerminalResponseActivateReader.livemode;
        String str2 = activateTerminalResponseActivateReader.sdk_rpc_session;
        long j = activateTerminalResponseActivateReader.canonical_reader_version;
        return new ActivateReaderResponse(str, z, "", null, null, str2, null, Long.valueOf(j), activateTerminalResponseActivateReader.location);
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public PaymentIntent createPaymentIntent(PaymentIntentParameters paymentIntentParameters, CreateConfiguration createConfiguration) {
        Intrinsics.checkNotNullParameter(paymentIntentParameters, "paymentIntentParameters");
        Intrinsics.checkNotNullParameter(createConfiguration, "createConfiguration");
        this.logger.d("createPaymentIntent", new Pair[0]);
        return this.proxyReaderController.createPaymentIntent(paymentIntentParameters, createConfiguration);
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public SetupIntent createSetupIntent(SetupIntentParameters setupIntentParameters, CreateConfiguration createConfiguration) {
        Intrinsics.checkNotNullParameter(setupIntentParameters, "setupIntentParameters");
        Intrinsics.checkNotNullParameter(createConfiguration, "createConfiguration");
        this.logger.d("createSetupIntent", new Pair[0]);
        return this.proxyReaderController.createSetupIntent(setupIntentParameters, createConfiguration);
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public Refund confirmRefund(RefundParameters refundParams, CollectiblePayment collectiblePayment, Function1<? super String, ? extends Deferred<TransactionResult>> handleAuthResponse, OnlineAuthStateListener authStateListener) throws TerminalException {
        PaymentMethod sdkSource;
        Intrinsics.checkNotNullParameter(refundParams, "refundParams");
        Intrinsics.checkNotNullParameter(handleAuthResponse, "handleAuthResponse");
        Intrinsics.checkNotNullParameter(authStateListener, "authStateListener");
        this.logger.d("confirmRefund", new Pair[0]);
        Payment payment = collectiblePayment != null ? collectiblePayment.getPayment() : null;
        RemotePayment remotePayment = payment instanceof RemotePayment ? (RemotePayment) payment : null;
        if (remotePayment == null || (sdkSource = remotePayment.getSdkSource()) == null) {
            throw new TerminalException(TerminalErrorCode.MISSING_REQUIRED_PARAMETER, "Confirming a refund requires a collected refund payment method", null, null, 12, null);
        }
        return this.proxyReaderController.confirmInteracRefund(refundParams, sdkSource, getDefaultRefundReason());
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public PaymentIntent confirmPaymentIntent(PaymentIntent paymentIntent, Function0<CollectiblePayment> getCollectiblePayment, Function1<? super String, ? extends Deferred<TransactionResult>> handleAuthResponse, Function0<PaymentMethodData> collectScaPaymentMethodData, boolean immediateRecollectForSca, OnlineAuthStateListener authStateListener, Long amountSurcharge, String returnUrl) throws TerminalException {
        Intrinsics.checkNotNullParameter(paymentIntent, "paymentIntent");
        Intrinsics.checkNotNullParameter(getCollectiblePayment, "getCollectiblePayment");
        Intrinsics.checkNotNullParameter(handleAuthResponse, "handleAuthResponse");
        Intrinsics.checkNotNullParameter(collectScaPaymentMethodData, "collectScaPaymentMethodData");
        Intrinsics.checkNotNullParameter(authStateListener, "authStateListener");
        this.logger.d("confirmPaymentIntent", new Pair[0]);
        try {
            PaymentIntent paymentIntentConfirmPayment = this.proxyReaderController.confirmPayment(paymentIntent, amountSurcharge, returnUrl);
            this.proxyReaderController.finishConfirmPayment();
            return paymentIntentConfirmPayment;
        } catch (TerminalException e) {
            ExtendedActionConstants extendedActionConstants = ExtendedActionConstants.INSTANCE;
            ApiError apiError = e.getApiError();
            if (extendedActionConstants.isExtendedActionError(apiError != null ? apiError.getCode() : null) && immediateRecollectForSca) {
                paymentIntent.setPaymentMethodData(collectScaPaymentMethodData.invoke());
                return confirmPaymentIntent(paymentIntent, getCollectiblePayment, handleAuthResponse, collectScaPaymentMethodData, immediateRecollectForSca, authStateListener, amountSurcharge, returnUrl);
            }
            this.proxyReaderController.finishConfirmPayment();
            throw e;
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public SetupIntent confirmSetupIntent(SetupIntent intent, CollectiblePayment collectiblePayment, Function1<? super String, ? extends Deferred<TransactionResult>> handleAuthResponse, Function0<PaymentMethodData> collectScaPaymentMethodData, boolean immediateRecollectForSca, OnlineAuthStateListener authStateListener) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(handleAuthResponse, "handleAuthResponse");
        Intrinsics.checkNotNullParameter(collectScaPaymentMethodData, "collectScaPaymentMethodData");
        Intrinsics.checkNotNullParameter(authStateListener, "authStateListener");
        this.logger.d("confirmSetupIntent", new Pair[0]);
        return this.proxyReaderController.confirmSetupIntent(intent);
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public PaymentIntent cancelPaymentIntent(PaymentIntent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        this.logger.d("cancelPaymentIntent", new Pair[0]);
        return this.proxyReaderController.cancelPaymentIntent(intent);
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public SetupIntent cancelSetupIntent(SetupIntent intent, SetupIntentCancellationParameters params) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(params, "params");
        this.logger.d("cancelSetupIntent", new Pair[0]);
        return this.proxyReaderController.cancelSetupIntent(intent, params);
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public com.stripe.stripeterminal.external.models.PaymentMethod readReusableCard(ReadReusableCardParameters readReusableCardParams, PaymentMethodData paymentMethodData) {
        Intrinsics.checkNotNullParameter(readReusableCardParams, "readReusableCardParams");
        Intrinsics.checkNotNullParameter(paymentMethodData, "paymentMethodData");
        throw new UnsupportedOperationException("Not implemented");
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public Map<String, Location> getReaderLocations(List<String> deviceSerials) {
        Intrinsics.checkNotNullParameter(deviceSerials, "deviceSerials");
        throw new UnsupportedOperationException("Not implemented");
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public Deferred<PaymentIntent> awaitActionRequiredPaymentIntentCompletion(String paymentIntentId, String accountId) {
        Intrinsics.checkNotNullParameter(paymentIntentId, "paymentIntentId");
        throw new UnsupportedOperationException("Not implemented");
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public boolean completePaymentIntentActionRequired(String paymentIntentId, String accountId) {
        Intrinsics.checkNotNullParameter(paymentIntentId, "paymentIntentId");
        throw new UnsupportedOperationException("Not implemented");
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public void cancelPaymentIntentActionRequired() {
        throw new UnsupportedOperationException("Not implemented");
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public CollectedData createReaderCollectedData(PaymentMethodData paymentMethodData) throws TerminalException {
        CollectedData sdkCollectedData;
        Intrinsics.checkNotNullParameter(paymentMethodData, "paymentMethodData");
        ReaderCollectedData ipCollectedData = paymentMethodData.getIpCollectedData();
        if (ipCollectedData == null || (sdkCollectedData = ProtoConverter.INSTANCE.toSdkCollectedData(ipCollectedData)) == null) {
            throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "PaymentMethodData missing ipCollectedData", null, null, 12, null);
        }
        return sdkCollectedData;
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public void cancelConfirmPaymentIntent(com.stripe.stripeterminal.external.callable.Callback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.proxyReaderController.cancelConfirmPaymentIntent(callback);
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public void cancelConfirmSetupIntent(com.stripe.stripeterminal.external.callable.Callback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.proxyReaderController.cancelConfirmSetupIntent(callback);
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public void cancelConfirmRefund(com.stripe.stripeterminal.external.callable.Callback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.proxyReaderController.cancelConfirmInteracRefund(callback);
    }

    private final String getConnectionToken() throws TerminalException {
        if (this.stripeConnectivityRepository.networkStatus() == NetworkStatus.OFFLINE) {
            this.logger.i("Network status offline, using offline token", new Pair[0]);
            return "psst_offline_token";
        }
        try {
            return this.connectionTokenRepository.getTokenAndRefresh();
        } catch (TerminalException e) {
            if (WhenMappings.$EnumSwitchMapping$0[e.getErrorCode().ordinal()] == 1) {
                this.logger.i("Failed to fetch connection Token, fallback to offline token", new Pair[0]);
                return "psst_offline_token";
            }
            throw e;
        }
    }
}
