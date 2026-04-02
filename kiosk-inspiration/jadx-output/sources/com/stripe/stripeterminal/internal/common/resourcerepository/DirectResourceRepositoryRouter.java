package com.stripe.stripeterminal.internal.common.resourcerepository;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.hardware.emv.TransactionResult;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.terminal.api.ActivateReaderResponse;
import com.stripe.jvmcore.terminal.tokenrepositories.SessionTokenRepository;
import com.stripe.offlinemode.helpers.OfflineConfigHelper;
import com.stripe.offlinemode.log.OfflineMetricTags;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.paymentcollection.OnlineAuthStateListener;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain;
import com.stripe.proto.terminal.terminal.pub.message.config.BluetoothAutoReconnectConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.UsbAutoReconnectConfigPb;
import com.stripe.stripeterminal.external.models.CollectedData;
import com.stripe.stripeterminal.external.models.ConnectionConfiguration;
import com.stripe.stripeterminal.external.models.CreateConfiguration;
import com.stripe.stripeterminal.external.models.Location;
import com.stripe.stripeterminal.external.models.NetworkStatus;
import com.stripe.stripeterminal.external.models.OfflineBehavior;
import com.stripe.stripeterminal.external.models.OfflineDetails;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.PaymentIntentParameters;
import com.stripe.stripeterminal.external.models.PaymentMethod;
import com.stripe.stripeterminal.external.models.ReadReusableCardParameters;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.Refund;
import com.stripe.stripeterminal.external.models.RefundParameters;
import com.stripe.stripeterminal.external.models.SetupIntent;
import com.stripe.stripeterminal.external.models.SetupIntentCancellationParameters;
import com.stripe.stripeterminal.external.models.SetupIntentOfflineDetails;
import com.stripe.stripeterminal.external.models.SetupIntentParameters;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.connectivity.StripeConnectivityRepository;
import com.stripe.stripeterminal.internal.common.connectivity.StripeConnectivityStatus;
import com.stripe.stripeterminal.internal.models.PaymentMethodData;
import com.stripe.transaction.CollectiblePayment;
import com.sun.jna.Callback;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Deferred;

/* JADX INFO: compiled from: DirectResourceRepositoryRouter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000¸\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001:\u0001~BS\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\"\u0010\n\u001a\u001e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\u000bj\u0002`\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012¢\u0006\u0002\u0010\u0013JX\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00162>\u0010 \u001a:\u0012\u0015\u0012\u0013\u0018\u00010\"¢\u0006\f\b#\u0012\b\b$\u0012\u0004\b\b(%\u0012\u0015\u0012\u0013\u0018\u00010&¢\u0006\f\b#\u0012\b\b$\u0012\u0004\b\b('\u0012\u0004\u0012\u00020(0!j\u0002`)H\u0016J \u0010*\u001a\b\u0012\u0004\u0012\u00020,0+2\u0006\u0010-\u001a\u00020.2\b\u0010/\u001a\u0004\u0018\u00010.H\u0016J\u0010\u00100\u001a\u00020(2\u0006\u00101\u001a\u000202H\u0016J\u0010\u00103\u001a\u00020(2\u0006\u00101\u001a\u000202H\u0016J\u0010\u00104\u001a\u00020(2\u0006\u00101\u001a\u000202H\u0016J\u0010\u00105\u001a\u00020,2\u0006\u00106\u001a\u00020,H\u0016J\b\u00107\u001a\u00020(H\u0016J\u0018\u00108\u001a\u0002092\u0006\u00106\u001a\u0002092\u0006\u0010:\u001a\u00020;H\u0016J\u001a\u0010<\u001a\u00020\u00152\u0006\u0010-\u001a\u00020.2\b\u0010/\u001a\u0004\u0018\u00010.H\u0016Jq\u0010=\u001a\u00020,2\u0006\u0010>\u001a\u00020,2\u000e\u0010?\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010A0@2\u0018\u0010B\u001a\u0014\u0012\u0004\u0012\u00020.\u0012\n\u0012\b\u0012\u0004\u0012\u00020D0+0C2\f\u0010E\u001a\b\u0012\u0004\u0012\u00020F0@2\u0006\u0010G\u001a\u00020\u00152\u0006\u0010H\u001a\u00020I2\b\u0010J\u001a\u0004\u0018\u00010K2\b\u0010L\u001a\u0004\u0018\u00010.H\u0016¢\u0006\u0002\u0010MJ<\u0010N\u001a\u00020O2\u0006\u0010P\u001a\u00020Q2\b\u0010R\u001a\u0004\u0018\u00010A2\u0018\u0010B\u001a\u0014\u0012\u0004\u0012\u00020.\u0012\n\u0012\b\u0012\u0004\u0012\u00020D0+0C2\u0006\u0010H\u001a\u00020IH\u0016JR\u0010S\u001a\u0002092\u0006\u00106\u001a\u0002092\b\u0010R\u001a\u0004\u0018\u00010A2\u0018\u0010B\u001a\u0014\u0012\u0004\u0012\u00020.\u0012\n\u0012\b\u0012\u0004\u0012\u00020D0+0C2\f\u0010E\u001a\b\u0012\u0004\u0012\u00020F0@2\u0006\u0010G\u001a\u00020\u00152\u0006\u0010H\u001a\u00020IH\u0016J\u0018\u0010T\u001a\u00020,2\u0006\u0010U\u001a\u00020V2\u0006\u0010W\u001a\u00020XH\u0016J\u0010\u0010Y\u001a\u00020Z2\u0006\u0010[\u001a\u00020FH\u0016J\u0018\u0010\\\u001a\u0002092\u0006\u0010]\u001a\u00020^2\u0006\u0010W\u001a\u00020XH\u0016J;\u0010_\u001a\u0002H`\"\n\b\u0000\u0010`\u0018\u0001*\u00020a2\u0006\u0010b\u001a\u00020\u00152\u0017\u0010c\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u0002H`0C¢\u0006\u0002\bdH\u0082\b¢\u0006\u0002\u0010eJ\"\u0010f\u001a\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020h0g2\f\u0010i\u001a\b\u0012\u0004\u0012\u00020.0jH\u0016J\u0018\u0010k\u001a\u00020l2\u0006\u0010m\u001a\u00020n2\u0006\u0010[\u001a\u00020FH\u0016JE\u0010o\u001a\u0002H`\"\n\b\u0000\u0010`\u0018\u0001*\u00020a2\u0006\u0010p\u001a\u00020\u00152\b\b\u0002\u0010q\u001a\u00020r2\u0017\u0010c\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u0002H`0C¢\u0006\u0002\bdH\u0082\b¢\u0006\u0002\u0010sJM\u0010t\u001a\u0002H`\"\n\b\u0000\u0010`\u0018\u0001*\u00020a2\u0006\u0010p\u001a\u00020\u00152\u0006\u0010u\u001a\u00020v2\b\u0010w\u001a\u0004\u0018\u00010.2\u0017\u0010c\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u0002H`0C¢\u0006\u0002\bdH\u0082\b¢\u0006\u0002\u0010xJS\u0010y\u001a\u0002H`\"\n\b\u0000\u0010`\u0018\u0001*\u00020a2\u0006\u0010p\u001a\u00020\u00152\u0006\u0010z\u001a\u00020\u00152\u0006\u0010u\u001a\u00020v2\u0006\u0010$\u001a\u00020.2\u0017\u0010c\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u0002H`0C¢\u0006\u0002\bdH\u0082\b¢\u0006\u0002\u0010{J\"\u0010|\u001a\u00020,2\u0006\u0010>\u001a\u00020,2\b\u0010R\u001a\u0004\u0018\u00010A2\u0006\u0010}\u001a\u00020\u0015H\u0016R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\n\u001a\u001e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\u000bj\u0002`\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0014\u001a\u00020\u0015*\u00020\u00168BX\u0082\u0004¢\u0006\f\u0012\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u007f"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;", "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;", "onlineResourceRepository", "Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;", "offlineResourceRepository", "Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;", "stripeConnectivityRepository", "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;", "offlineConfigHelper", "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;", "offlineDiscreteLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;", "Lcom/stripe/offlinemode/log/OfflineDiscreteLogger;", "sessionTokenRepository", "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;", "(Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;)V", "supportsOfflineActivation", "", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "getSupportsOfflineActivation$annotations", "(Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)V", "getSupportsOfflineActivation", "(Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)Z", "activateReader", "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "connectionConfiguration", "setReconnectParams", "Lkotlin/Function2;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;", "Lkotlin/ParameterName;", "name", "bluetoothConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;", "usbConfig", "", "Lcom/stripe/offlinemode/helpers/SetReconnectParams;", "awaitActionRequiredPaymentIntentCompletion", "Lkotlinx/coroutines/Deferred;", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "paymentIntentId", "", "accountId", "cancelConfirmPaymentIntent", Callback.METHOD_NAME, "Lcom/stripe/stripeterminal/external/callable/Callback;", "cancelConfirmRefund", "cancelConfirmSetupIntent", "cancelPaymentIntent", "intent", "cancelPaymentIntentActionRequired", "cancelSetupIntent", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", "params", "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;", "completePaymentIntentActionRequired", "confirmPaymentIntent", "paymentIntent", "getCollectiblePayment", "Lkotlin/Function0;", "Lcom/stripe/transaction/CollectiblePayment;", "handleAuthResponse", "Lkotlin/Function1;", "Lcom/stripe/hardware/emv/TransactionResult;", "collectScaPaymentMethodData", "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "immediateRecollectForSca", "authStateListener", "Lcom/stripe/paymentcollection/OnlineAuthStateListener;", "amountSurcharge", "", "returnUrl", "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "confirmRefund", "Lcom/stripe/stripeterminal/external/models/Refund;", "refundParams", "Lcom/stripe/stripeterminal/external/models/RefundParameters;", "collectiblePayment", "confirmSetupIntent", "createPaymentIntent", "paymentIntentParameters", "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;", "createConfiguration", "Lcom/stripe/stripeterminal/external/models/CreateConfiguration;", "createReaderCollectedData", "Lcom/stripe/stripeterminal/external/models/CollectedData;", "paymentMethodData", "createSetupIntent", "setupIntentParameters", "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;", "doOnlineWithOptionalOfflineRetry", "T", "", "retryNetworkFailuresOffline", FirebaseAnalytics.Param.METHOD, "Lkotlin/ExtensionFunctionType;", "(ZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "getReaderLocations", "", "Lcom/stripe/stripeterminal/external/models/Location;", "deviceSerials", "", "readReusableCard", "Lcom/stripe/stripeterminal/external/models/PaymentMethod;", "readReusableCardParams", "Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;", "route", "offlineEnabled", "routingScheme", "Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;", "(ZLcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "routeConfirmRequest", "offlineBehavior", "Lcom/stripe/stripeterminal/external/models/OfflineBehavior;", "offlineId", "(ZLcom/stripe/stripeterminal/external/models/OfflineBehavior;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "routeCreateRequest", "offlineListenerConfigured", "(ZZLcom/stripe/stripeterminal/external/models/OfflineBehavior;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "updatePaymentIntent", "requestDynamicCurrencyConversion", "RoutingScheme", "resourcerepository_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DirectResourceRepositoryRouter implements ResourceRepository {
    private final OfflineConfigHelper offlineConfigHelper;
    private final HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> offlineDiscreteLogger;
    private final OfflineDirectResourceRepository offlineResourceRepository;
    private final OnlineDirectResourceRepository onlineResourceRepository;
    private final SessionTokenRepository sessionTokenRepository;
    private final StripeConnectivityRepository stripeConnectivityRepository;

    /* JADX INFO: compiled from: DirectResourceRepositoryRouter.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[OfflineBehavior.values().length];
            try {
                iArr[OfflineBehavior.REQUIRE_ONLINE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[OfflineBehavior.PREFER_ONLINE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[OfflineBehavior.FORCE_OFFLINE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[TerminalErrorCode.values().length];
            try {
                iArr2[TerminalErrorCode.STRIPE_API_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[TerminalErrorCode.STRIPE_API_CONNECTION_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[TerminalErrorCode.STRIPE_API_RESPONSE_DECODING_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[TerminalErrorCode.CONNECTION_TOKEN_PROVIDER_ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    private static /* synthetic */ void getSupportsOfflineActivation$annotations(ConnectionConfiguration connectionConfiguration) {
    }

    @Inject
    public DirectResourceRepositoryRouter(OnlineDirectResourceRepository onlineResourceRepository, OfflineDirectResourceRepository offlineResourceRepository, StripeConnectivityRepository stripeConnectivityRepository, OfflineConfigHelper offlineConfigHelper, HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> offlineDiscreteLogger, SessionTokenRepository sessionTokenRepository) {
        Intrinsics.checkNotNullParameter(onlineResourceRepository, "onlineResourceRepository");
        Intrinsics.checkNotNullParameter(offlineResourceRepository, "offlineResourceRepository");
        Intrinsics.checkNotNullParameter(stripeConnectivityRepository, "stripeConnectivityRepository");
        Intrinsics.checkNotNullParameter(offlineConfigHelper, "offlineConfigHelper");
        Intrinsics.checkNotNullParameter(offlineDiscreteLogger, "offlineDiscreteLogger");
        Intrinsics.checkNotNullParameter(sessionTokenRepository, "sessionTokenRepository");
        this.onlineResourceRepository = onlineResourceRepository;
        this.offlineResourceRepository = offlineResourceRepository;
        this.stripeConnectivityRepository = stripeConnectivityRepository;
        this.offlineConfigHelper = offlineConfigHelper;
        this.offlineDiscreteLogger = offlineDiscreteLogger;
        this.sessionTokenRepository = sessionTokenRepository;
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public ActivateReaderResponse activateReader(Reader reader, ConnectionConfiguration connectionConfiguration, Function2<? super BluetoothAutoReconnectConfigPb, ? super UsbAutoReconnectConfigPb, Unit> setReconnectParams) throws IllegalAccessException, InstantiationException, TerminalException {
        Object objM817constructorimpl;
        TerminalErrorCode errorCode;
        OfflineDirectResourceRepository offlineDirectResourceRepository;
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(connectionConfiguration, "connectionConfiguration");
        Intrinsics.checkNotNullParameter(setReconnectParams, "setReconnectParams");
        String serialNumber = reader.getSerialNumber();
        boolean z = false;
        boolean zIsOfflineEnabledForLocationAndReader = serialNumber != null ? this.offlineConfigHelper.isOfflineEnabledForLocationAndReader(connectionConfiguration.getLocationId(), serialNumber) : false;
        if (getSupportsOfflineActivation(connectionConfiguration) && zIsOfflineEnabledForLocationAndReader) {
            z = true;
        }
        RoutingScheme routingScheme = RoutingScheme.USE_NETWORK_STATUS;
        StripeConnectivityStatus value = this.stripeConnectivityRepository.currentState().getValue();
        if (!z) {
            try {
                Result.Companion companion = Result.INSTANCE;
                DirectResourceRepositoryRouter directResourceRepositoryRouter = this;
                objM817constructorimpl = Result.m817constructorimpl(this.onlineResourceRepository.activateReader(reader, connectionConfiguration, setReconnectParams));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
            }
            if (Result.m824isSuccessimpl(objM817constructorimpl)) {
                this.stripeConnectivityRepository.reportNetworkSuccess();
            }
            Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
            if (thM820exceptionOrNullimpl != null) {
                TerminalException terminalException = thM820exceptionOrNullimpl instanceof TerminalException ? (TerminalException) thM820exceptionOrNullimpl : null;
                errorCode = terminalException != null ? terminalException.getErrorCode() : null;
                if ((errorCode != null ? WhenMappings.$EnumSwitchMapping$1[errorCode.ordinal()] : -1) != 2) {
                    this.stripeConnectivityRepository.reportNetworkSuccess();
                }
            }
            ResultKt.throwOnFailure(objM817constructorimpl);
        } else {
            if (value == StripeConnectivityStatus.NO_NETWORK || routingScheme == RoutingScheme.START_OFFLINE || (routingScheme == RoutingScheme.USE_NETWORK_STATUS && value.getNetworkStatus() == NetworkStatus.OFFLINE)) {
                offlineDirectResourceRepository = this.offlineResourceRepository;
            } else if (routingScheme == RoutingScheme.START_ONLINE && !this.sessionTokenRepository.getHasSessionTokenStateFlow().getValue().booleanValue()) {
                offlineDirectResourceRepository = this.offlineResourceRepository;
            } else {
                try {
                    Result.Companion companion3 = Result.INSTANCE;
                    DirectResourceRepositoryRouter directResourceRepositoryRouter2 = this;
                    objM817constructorimpl = Result.m817constructorimpl(this.onlineResourceRepository.activateReader(reader, connectionConfiguration, setReconnectParams));
                } catch (Throwable th2) {
                    Result.Companion companion4 = Result.INSTANCE;
                    objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th2));
                }
                if (Result.m824isSuccessimpl(objM817constructorimpl)) {
                    this.stripeConnectivityRepository.reportNetworkSuccess();
                }
                Throwable thM820exceptionOrNullimpl2 = Result.m820exceptionOrNullimpl(objM817constructorimpl);
                if (thM820exceptionOrNullimpl2 != null) {
                    TerminalException terminalException2 = thM820exceptionOrNullimpl2 instanceof TerminalException ? (TerminalException) thM820exceptionOrNullimpl2 : null;
                    errorCode = terminalException2 != null ? terminalException2.getErrorCode() : null;
                    if ((errorCode != null ? WhenMappings.$EnumSwitchMapping$1[errorCode.ordinal()] : -1) == 2) {
                        this.stripeConnectivityRepository.reportNetworkFailure();
                        HealthLogger.incrementCounter$default(this.offlineDiscreteLogger, null, MapsKt.mapOf(TuplesKt.to(OfflineMetricTags.ERROR_REASON, errorCode.toLogString())), null, DirectResourceRepositoryRouter$doOnlineWithOptionalOfflineRetry$3$1.INSTANCE, 5, null);
                        offlineDirectResourceRepository = this.offlineResourceRepository;
                    } else {
                        this.stripeConnectivityRepository.reportNetworkSuccess();
                    }
                }
                ResultKt.throwOnFailure(objM817constructorimpl);
            }
            objM817constructorimpl = offlineDirectResourceRepository.activateReader(reader, connectionConfiguration, setReconnectParams);
        }
        return (ActivateReaderResponse) objM817constructorimpl;
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public PaymentIntent createPaymentIntent(PaymentIntentParameters paymentIntentParameters, CreateConfiguration createConfiguration) throws IllegalAccessException, InstantiationException, TerminalException {
        RoutingScheme routingScheme;
        Object objM817constructorimpl;
        TerminalErrorCode errorCode;
        Object obj;
        OfflineDirectResourceRepository offlineDirectResourceRepository;
        Object objM817constructorimpl2;
        Intrinsics.checkNotNullParameter(paymentIntentParameters, "paymentIntentParameters");
        Intrinsics.checkNotNullParameter(createConfiguration, "createConfiguration");
        boolean zIsOfflineModeEnabled = this.offlineConfigHelper.isOfflineModeEnabled();
        boolean zIsOfflineListenerSet = this.offlineConfigHelper.isOfflineListenerSet();
        OfflineBehavior offlineBehavior = createConfiguration.getOfflineBehavior();
        if (offlineBehavior == OfflineBehavior.FORCE_OFFLINE) {
            if (!zIsOfflineListenerSet) {
                throw new TerminalException(TerminalErrorCode.FORCE_OFFLINE_WITH_FEATURE_DISABLED, "Failed to create PaymentIntent offline. The provided OfflineListener is missing or incompletely implemented.", null, null, 12, null);
            }
            if (!zIsOfflineModeEnabled) {
                throw new TerminalException(TerminalErrorCode.FORCE_OFFLINE_WITH_FEATURE_DISABLED, "Failed to create PaymentIntent offline. This reader is not configured to operate offline.", null, null, 12, null);
            }
        }
        int i = WhenMappings.$EnumSwitchMapping$0[offlineBehavior.ordinal()];
        if (i == 1) {
            routingScheme = RoutingScheme.START_ONLINE;
        } else if (i == 2) {
            routingScheme = RoutingScheme.USE_NETWORK_STATUS;
        } else {
            if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
            routingScheme = RoutingScheme.START_OFFLINE;
        }
        StripeConnectivityStatus value = this.stripeConnectivityRepository.currentState().getValue();
        if (!zIsOfflineModeEnabled) {
            try {
                Result.Companion companion = Result.INSTANCE;
                DirectResourceRepositoryRouter directResourceRepositoryRouter = this;
                PaymentIntent paymentIntentCreatePaymentIntent = this.onlineResourceRepository.createPaymentIntent(paymentIntentParameters, createConfiguration);
                paymentIntentCreatePaymentIntent.setOfflineBehavior(createConfiguration.getOfflineBehavior());
                objM817constructorimpl = Result.m817constructorimpl(paymentIntentCreatePaymentIntent);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
            }
            if (Result.m824isSuccessimpl(objM817constructorimpl)) {
                this.stripeConnectivityRepository.reportNetworkSuccess();
            }
            Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
            if (thM820exceptionOrNullimpl != null) {
                TerminalException terminalException = thM820exceptionOrNullimpl instanceof TerminalException ? (TerminalException) thM820exceptionOrNullimpl : null;
                errorCode = terminalException != null ? terminalException.getErrorCode() : null;
                if ((errorCode != null ? WhenMappings.$EnumSwitchMapping$1[errorCode.ordinal()] : -1) != 2) {
                    this.stripeConnectivityRepository.reportNetworkSuccess();
                }
            }
            ResultKt.throwOnFailure(objM817constructorimpl);
            obj = objM817constructorimpl;
        } else {
            if (value == StripeConnectivityStatus.NO_NETWORK || routingScheme == RoutingScheme.START_OFFLINE || (routingScheme == RoutingScheme.USE_NETWORK_STATUS && value.getNetworkStatus() == NetworkStatus.OFFLINE)) {
                offlineDirectResourceRepository = this.offlineResourceRepository;
            } else if (routingScheme == RoutingScheme.START_ONLINE && !this.sessionTokenRepository.getHasSessionTokenStateFlow().getValue().booleanValue()) {
                offlineDirectResourceRepository = this.offlineResourceRepository;
            } else {
                try {
                    Result.Companion companion3 = Result.INSTANCE;
                    DirectResourceRepositoryRouter directResourceRepositoryRouter2 = this;
                    PaymentIntent paymentIntentCreatePaymentIntent2 = this.onlineResourceRepository.createPaymentIntent(paymentIntentParameters, createConfiguration);
                    paymentIntentCreatePaymentIntent2.setOfflineBehavior(createConfiguration.getOfflineBehavior());
                    objM817constructorimpl2 = Result.m817constructorimpl(paymentIntentCreatePaymentIntent2);
                } catch (Throwable th2) {
                    Result.Companion companion4 = Result.INSTANCE;
                    objM817constructorimpl2 = Result.m817constructorimpl(ResultKt.createFailure(th2));
                }
                if (Result.m824isSuccessimpl(objM817constructorimpl2)) {
                    this.stripeConnectivityRepository.reportNetworkSuccess();
                }
                Throwable thM820exceptionOrNullimpl2 = Result.m820exceptionOrNullimpl(objM817constructorimpl2);
                if (thM820exceptionOrNullimpl2 != null) {
                    TerminalException terminalException2 = thM820exceptionOrNullimpl2 instanceof TerminalException ? (TerminalException) thM820exceptionOrNullimpl2 : null;
                    errorCode = terminalException2 != null ? terminalException2.getErrorCode() : null;
                    if ((errorCode != null ? WhenMappings.$EnumSwitchMapping$1[errorCode.ordinal()] : -1) == 2) {
                        this.stripeConnectivityRepository.reportNetworkFailure();
                        HealthLogger.incrementCounter$default(this.offlineDiscreteLogger, null, MapsKt.mapOf(TuplesKt.to(OfflineMetricTags.ERROR_REASON, errorCode.toLogString())), null, DirectResourceRepositoryRouter$doOnlineWithOptionalOfflineRetry$3$1.INSTANCE, 5, null);
                        offlineDirectResourceRepository = this.offlineResourceRepository;
                    } else {
                        this.stripeConnectivityRepository.reportNetworkSuccess();
                    }
                }
                ResultKt.throwOnFailure(objM817constructorimpl2);
                obj = objM817constructorimpl2;
            }
            PaymentIntent paymentIntentCreatePaymentIntent3 = offlineDirectResourceRepository.createPaymentIntent(paymentIntentParameters, createConfiguration);
            paymentIntentCreatePaymentIntent3.setOfflineBehavior(createConfiguration.getOfflineBehavior());
            obj = paymentIntentCreatePaymentIntent3;
        }
        return (PaymentIntent) obj;
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public SetupIntent createSetupIntent(SetupIntentParameters setupIntentParameters, CreateConfiguration createConfiguration) throws IllegalAccessException, InstantiationException, TerminalException {
        RoutingScheme routingScheme;
        Object objM817constructorimpl;
        TerminalErrorCode errorCode;
        Object obj;
        OfflineDirectResourceRepository offlineDirectResourceRepository;
        Object objM817constructorimpl2;
        Intrinsics.checkNotNullParameter(setupIntentParameters, "setupIntentParameters");
        Intrinsics.checkNotNullParameter(createConfiguration, "createConfiguration");
        boolean zIsSetupIntentsEnabled = this.offlineConfigHelper.isSetupIntentsEnabled();
        boolean zOfflineListenerHasSetupIntentCallbacks = this.offlineConfigHelper.offlineListenerHasSetupIntentCallbacks();
        OfflineBehavior offlineBehavior = createConfiguration.getOfflineBehavior();
        if (offlineBehavior == OfflineBehavior.FORCE_OFFLINE) {
            if (!zOfflineListenerHasSetupIntentCallbacks) {
                throw new TerminalException(TerminalErrorCode.FORCE_OFFLINE_WITH_FEATURE_DISABLED, "Failed to create SetupIntent offline. The provided OfflineListener is missing or incompletely implemented.", null, null, 12, null);
            }
            if (!zIsSetupIntentsEnabled) {
                throw new TerminalException(TerminalErrorCode.FORCE_OFFLINE_WITH_FEATURE_DISABLED, "Failed to create SetupIntent offline. This reader is not configured to operate offline.", null, null, 12, null);
            }
        }
        int i = WhenMappings.$EnumSwitchMapping$0[offlineBehavior.ordinal()];
        if (i == 1) {
            routingScheme = RoutingScheme.START_ONLINE;
        } else if (i == 2) {
            routingScheme = RoutingScheme.USE_NETWORK_STATUS;
        } else {
            if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
            routingScheme = RoutingScheme.START_OFFLINE;
        }
        StripeConnectivityStatus value = this.stripeConnectivityRepository.currentState().getValue();
        if (!zIsSetupIntentsEnabled) {
            try {
                Result.Companion companion = Result.INSTANCE;
                DirectResourceRepositoryRouter directResourceRepositoryRouter = this;
                SetupIntent setupIntentCreateSetupIntent = this.onlineResourceRepository.createSetupIntent(setupIntentParameters, createConfiguration);
                setupIntentCreateSetupIntent.setOfflineBehavior(createConfiguration.getOfflineBehavior());
                objM817constructorimpl = Result.m817constructorimpl(setupIntentCreateSetupIntent);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
            }
            if (Result.m824isSuccessimpl(objM817constructorimpl)) {
                this.stripeConnectivityRepository.reportNetworkSuccess();
            }
            Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
            if (thM820exceptionOrNullimpl != null) {
                TerminalException terminalException = thM820exceptionOrNullimpl instanceof TerminalException ? (TerminalException) thM820exceptionOrNullimpl : null;
                errorCode = terminalException != null ? terminalException.getErrorCode() : null;
                if ((errorCode != null ? WhenMappings.$EnumSwitchMapping$1[errorCode.ordinal()] : -1) != 2) {
                    this.stripeConnectivityRepository.reportNetworkSuccess();
                }
            }
            ResultKt.throwOnFailure(objM817constructorimpl);
            obj = objM817constructorimpl;
        } else {
            if (value == StripeConnectivityStatus.NO_NETWORK || routingScheme == RoutingScheme.START_OFFLINE || (routingScheme == RoutingScheme.USE_NETWORK_STATUS && value.getNetworkStatus() == NetworkStatus.OFFLINE)) {
                offlineDirectResourceRepository = this.offlineResourceRepository;
            } else if (routingScheme == RoutingScheme.START_ONLINE && !this.sessionTokenRepository.getHasSessionTokenStateFlow().getValue().booleanValue()) {
                offlineDirectResourceRepository = this.offlineResourceRepository;
            } else {
                try {
                    Result.Companion companion3 = Result.INSTANCE;
                    DirectResourceRepositoryRouter directResourceRepositoryRouter2 = this;
                    SetupIntent setupIntentCreateSetupIntent2 = this.onlineResourceRepository.createSetupIntent(setupIntentParameters, createConfiguration);
                    setupIntentCreateSetupIntent2.setOfflineBehavior(createConfiguration.getOfflineBehavior());
                    objM817constructorimpl2 = Result.m817constructorimpl(setupIntentCreateSetupIntent2);
                } catch (Throwable th2) {
                    Result.Companion companion4 = Result.INSTANCE;
                    objM817constructorimpl2 = Result.m817constructorimpl(ResultKt.createFailure(th2));
                }
                if (Result.m824isSuccessimpl(objM817constructorimpl2)) {
                    this.stripeConnectivityRepository.reportNetworkSuccess();
                }
                Throwable thM820exceptionOrNullimpl2 = Result.m820exceptionOrNullimpl(objM817constructorimpl2);
                if (thM820exceptionOrNullimpl2 != null) {
                    TerminalException terminalException2 = thM820exceptionOrNullimpl2 instanceof TerminalException ? (TerminalException) thM820exceptionOrNullimpl2 : null;
                    errorCode = terminalException2 != null ? terminalException2.getErrorCode() : null;
                    if ((errorCode != null ? WhenMappings.$EnumSwitchMapping$1[errorCode.ordinal()] : -1) == 2) {
                        this.stripeConnectivityRepository.reportNetworkFailure();
                        HealthLogger.incrementCounter$default(this.offlineDiscreteLogger, null, MapsKt.mapOf(TuplesKt.to(OfflineMetricTags.ERROR_REASON, errorCode.toLogString())), null, DirectResourceRepositoryRouter$doOnlineWithOptionalOfflineRetry$3$1.INSTANCE, 5, null);
                        offlineDirectResourceRepository = this.offlineResourceRepository;
                    } else {
                        this.stripeConnectivityRepository.reportNetworkSuccess();
                    }
                }
                ResultKt.throwOnFailure(objM817constructorimpl2);
                obj = objM817constructorimpl2;
            }
            SetupIntent setupIntentCreateSetupIntent3 = offlineDirectResourceRepository.createSetupIntent(setupIntentParameters, createConfiguration);
            setupIntentCreateSetupIntent3.setOfflineBehavior(createConfiguration.getOfflineBehavior());
            obj = setupIntentCreateSetupIntent3;
        }
        return (SetupIntent) obj;
    }

    private final /* synthetic */ <T> T routeCreateRequest(boolean offlineEnabled, boolean offlineListenerConfigured, OfflineBehavior offlineBehavior, String name, Function1<? super ResourceRepository, ? extends T> method) throws IllegalAccessException, InstantiationException, TerminalException {
        RoutingScheme routingScheme;
        T t;
        TerminalErrorCode errorCode;
        T t2;
        if (offlineBehavior == OfflineBehavior.FORCE_OFFLINE) {
            if (!offlineListenerConfigured) {
                throw new TerminalException(TerminalErrorCode.FORCE_OFFLINE_WITH_FEATURE_DISABLED, "Failed to create " + name + " offline. The provided OfflineListener is missing or incompletely implemented.", null, null, 12, null);
            }
            if (!offlineEnabled) {
                throw new TerminalException(TerminalErrorCode.FORCE_OFFLINE_WITH_FEATURE_DISABLED, "Failed to create " + name + " offline. This reader is not configured to operate offline.", null, null, 12, null);
            }
        }
        int i = WhenMappings.$EnumSwitchMapping$0[offlineBehavior.ordinal()];
        if (i == 1) {
            routingScheme = RoutingScheme.START_ONLINE;
        } else if (i == 2) {
            routingScheme = RoutingScheme.USE_NETWORK_STATUS;
        } else {
            if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
            routingScheme = RoutingScheme.START_OFFLINE;
        }
        StripeConnectivityStatus value = this.stripeConnectivityRepository.currentState().getValue();
        if (!offlineEnabled) {
            try {
                Result.Companion companion = Result.INSTANCE;
                DirectResourceRepositoryRouter directResourceRepositoryRouter = this;
                t = (T) Result.m817constructorimpl(method.invoke(this.onlineResourceRepository));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                t = (T) Result.m817constructorimpl(ResultKt.createFailure(th));
            }
            if (Result.m824isSuccessimpl(t)) {
                this.stripeConnectivityRepository.reportNetworkSuccess();
            }
            Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(t);
            if (thM820exceptionOrNullimpl != null) {
                TerminalException terminalException = thM820exceptionOrNullimpl instanceof TerminalException ? (TerminalException) thM820exceptionOrNullimpl : null;
                errorCode = terminalException != null ? terminalException.getErrorCode() : null;
                if ((errorCode != null ? WhenMappings.$EnumSwitchMapping$1[errorCode.ordinal()] : -1) != 2) {
                    this.stripeConnectivityRepository.reportNetworkSuccess();
                }
            }
            ResultKt.throwOnFailure(t);
            return t;
        }
        if (value == StripeConnectivityStatus.NO_NETWORK || routingScheme == RoutingScheme.START_OFFLINE || (routingScheme == RoutingScheme.USE_NETWORK_STATUS && value.getNetworkStatus() == NetworkStatus.OFFLINE)) {
            return method.invoke(this.offlineResourceRepository);
        }
        if (routingScheme == RoutingScheme.START_ONLINE && !this.sessionTokenRepository.getHasSessionTokenStateFlow().getValue().booleanValue()) {
            return method.invoke(this.offlineResourceRepository);
        }
        try {
            Result.Companion companion3 = Result.INSTANCE;
            DirectResourceRepositoryRouter directResourceRepositoryRouter2 = this;
            t2 = (T) Result.m817constructorimpl(method.invoke(this.onlineResourceRepository));
        } catch (Throwable th2) {
            Result.Companion companion4 = Result.INSTANCE;
            t2 = (T) Result.m817constructorimpl(ResultKt.createFailure(th2));
        }
        if (Result.m824isSuccessimpl(t2)) {
            this.stripeConnectivityRepository.reportNetworkSuccess();
        }
        Throwable thM820exceptionOrNullimpl2 = Result.m820exceptionOrNullimpl(t2);
        if (thM820exceptionOrNullimpl2 != null) {
            TerminalException terminalException2 = thM820exceptionOrNullimpl2 instanceof TerminalException ? (TerminalException) thM820exceptionOrNullimpl2 : null;
            errorCode = terminalException2 != null ? terminalException2.getErrorCode() : null;
            if ((errorCode != null ? WhenMappings.$EnumSwitchMapping$1[errorCode.ordinal()] : -1) == 2) {
                this.stripeConnectivityRepository.reportNetworkFailure();
                HealthLogger.incrementCounter$default(this.offlineDiscreteLogger, null, MapsKt.mapOf(TuplesKt.to(OfflineMetricTags.ERROR_REASON, errorCode.toLogString())), null, DirectResourceRepositoryRouter$doOnlineWithOptionalOfflineRetry$3$1.INSTANCE, 5, null);
                return method.invoke(this.offlineResourceRepository);
            }
            this.stripeConnectivityRepository.reportNetworkSuccess();
        }
        ResultKt.throwOnFailure(t2);
        return t2;
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public PaymentIntent confirmPaymentIntent(PaymentIntent paymentIntent, Function0<CollectiblePayment> getCollectiblePayment, Function1<? super String, ? extends Deferred<TransactionResult>> handleAuthResponse, Function0<PaymentMethodData> collectScaPaymentMethodData, boolean immediateRecollectForSca, OnlineAuthStateListener authStateListener, Long amountSurcharge, String returnUrl) throws IllegalAccessException, InstantiationException, TerminalException {
        RoutingScheme routingScheme;
        Object objM817constructorimpl;
        TerminalErrorCode errorCode;
        OfflineDirectResourceRepository offlineDirectResourceRepository;
        Object objM817constructorimpl2;
        Intrinsics.checkNotNullParameter(paymentIntent, "paymentIntent");
        Intrinsics.checkNotNullParameter(getCollectiblePayment, "getCollectiblePayment");
        Intrinsics.checkNotNullParameter(handleAuthResponse, "handleAuthResponse");
        Intrinsics.checkNotNullParameter(collectScaPaymentMethodData, "collectScaPaymentMethodData");
        Intrinsics.checkNotNullParameter(authStateListener, "authStateListener");
        boolean zIsOfflineModeEnabled = this.offlineConfigHelper.isOfflineModeEnabled();
        OfflineBehavior offlineBehavior = paymentIntent.getOfflineBehavior();
        OfflineDetails offlineDetails = paymentIntent.getOfflineDetails();
        String id = offlineDetails != null ? offlineDetails.getId() : null;
        if (id == null || id.length() == 0) {
            routingScheme = offlineBehavior == OfflineBehavior.REQUIRE_ONLINE ? RoutingScheme.START_ONLINE : RoutingScheme.USE_NETWORK_STATUS;
        } else {
            routingScheme = RoutingScheme.START_OFFLINE;
        }
        StripeConnectivityStatus value = this.stripeConnectivityRepository.currentState().getValue();
        if (!zIsOfflineModeEnabled) {
            try {
                Result.Companion companion = Result.INSTANCE;
                DirectResourceRepositoryRouter directResourceRepositoryRouter = this;
                objM817constructorimpl = Result.m817constructorimpl(this.onlineResourceRepository.confirmPaymentIntent(paymentIntent, getCollectiblePayment, handleAuthResponse, collectScaPaymentMethodData, immediateRecollectForSca, authStateListener, amountSurcharge, returnUrl));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
            }
            if (Result.m824isSuccessimpl(objM817constructorimpl)) {
                this.stripeConnectivityRepository.reportNetworkSuccess();
            }
            Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
            if (thM820exceptionOrNullimpl != null) {
                TerminalException terminalException = thM820exceptionOrNullimpl instanceof TerminalException ? (TerminalException) thM820exceptionOrNullimpl : null;
                errorCode = terminalException != null ? terminalException.getErrorCode() : null;
                if ((errorCode != null ? WhenMappings.$EnumSwitchMapping$1[errorCode.ordinal()] : -1) != 2) {
                    this.stripeConnectivityRepository.reportNetworkSuccess();
                }
            }
            ResultKt.throwOnFailure(objM817constructorimpl);
        } else {
            if (value == StripeConnectivityStatus.NO_NETWORK || routingScheme == RoutingScheme.START_OFFLINE || (routingScheme == RoutingScheme.USE_NETWORK_STATUS && value.getNetworkStatus() == NetworkStatus.OFFLINE)) {
                offlineDirectResourceRepository = this.offlineResourceRepository;
            } else if (routingScheme == RoutingScheme.START_ONLINE && !this.sessionTokenRepository.getHasSessionTokenStateFlow().getValue().booleanValue()) {
                offlineDirectResourceRepository = this.offlineResourceRepository;
            } else {
                try {
                    Result.Companion companion3 = Result.INSTANCE;
                    DirectResourceRepositoryRouter directResourceRepositoryRouter2 = this;
                    objM817constructorimpl2 = Result.m817constructorimpl(this.onlineResourceRepository.confirmPaymentIntent(paymentIntent, getCollectiblePayment, handleAuthResponse, collectScaPaymentMethodData, immediateRecollectForSca, authStateListener, amountSurcharge, returnUrl));
                } catch (Throwable th2) {
                    Result.Companion companion4 = Result.INSTANCE;
                    objM817constructorimpl2 = Result.m817constructorimpl(ResultKt.createFailure(th2));
                }
                if (Result.m824isSuccessimpl(objM817constructorimpl2)) {
                    this.stripeConnectivityRepository.reportNetworkSuccess();
                }
                Throwable thM820exceptionOrNullimpl2 = Result.m820exceptionOrNullimpl(objM817constructorimpl2);
                if (thM820exceptionOrNullimpl2 != null) {
                    TerminalException terminalException2 = thM820exceptionOrNullimpl2 instanceof TerminalException ? (TerminalException) thM820exceptionOrNullimpl2 : null;
                    errorCode = terminalException2 != null ? terminalException2.getErrorCode() : null;
                    if ((errorCode != null ? WhenMappings.$EnumSwitchMapping$1[errorCode.ordinal()] : -1) == 2) {
                        this.stripeConnectivityRepository.reportNetworkFailure();
                        HealthLogger.incrementCounter$default(this.offlineDiscreteLogger, null, MapsKt.mapOf(TuplesKt.to(OfflineMetricTags.ERROR_REASON, errorCode.toLogString())), null, DirectResourceRepositoryRouter$doOnlineWithOptionalOfflineRetry$3$1.INSTANCE, 5, null);
                        offlineDirectResourceRepository = this.offlineResourceRepository;
                    } else {
                        this.stripeConnectivityRepository.reportNetworkSuccess();
                    }
                }
                ResultKt.throwOnFailure(objM817constructorimpl2);
                objM817constructorimpl = objM817constructorimpl2;
            }
            objM817constructorimpl = offlineDirectResourceRepository.confirmPaymentIntent(paymentIntent, getCollectiblePayment, handleAuthResponse, collectScaPaymentMethodData, immediateRecollectForSca, authStateListener, amountSurcharge, returnUrl);
        }
        return (PaymentIntent) objM817constructorimpl;
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public SetupIntent confirmSetupIntent(SetupIntent intent, CollectiblePayment collectiblePayment, Function1<? super String, ? extends Deferred<TransactionResult>> handleAuthResponse, Function0<PaymentMethodData> collectScaPaymentMethodData, boolean immediateRecollectForSca, OnlineAuthStateListener authStateListener) throws IllegalAccessException, InstantiationException {
        RoutingScheme routingScheme;
        Object objM817constructorimpl;
        TerminalErrorCode errorCode;
        OfflineDirectResourceRepository offlineDirectResourceRepository;
        Object objM817constructorimpl2;
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(handleAuthResponse, "handleAuthResponse");
        Intrinsics.checkNotNullParameter(collectScaPaymentMethodData, "collectScaPaymentMethodData");
        Intrinsics.checkNotNullParameter(authStateListener, "authStateListener");
        boolean zIsSetupIntentsEnabled = this.offlineConfigHelper.isSetupIntentsEnabled();
        OfflineBehavior offlineBehavior = intent.getOfflineBehavior();
        SetupIntentOfflineDetails offlineDetails = intent.getOfflineDetails();
        String id = offlineDetails != null ? offlineDetails.getId() : null;
        if (id == null || id.length() == 0) {
            routingScheme = offlineBehavior == OfflineBehavior.REQUIRE_ONLINE ? RoutingScheme.START_ONLINE : RoutingScheme.USE_NETWORK_STATUS;
        } else {
            routingScheme = RoutingScheme.START_OFFLINE;
        }
        StripeConnectivityStatus value = this.stripeConnectivityRepository.currentState().getValue();
        if (!zIsSetupIntentsEnabled) {
            try {
                Result.Companion companion = Result.INSTANCE;
                DirectResourceRepositoryRouter directResourceRepositoryRouter = this;
                objM817constructorimpl = Result.m817constructorimpl(this.onlineResourceRepository.confirmSetupIntent(intent, collectiblePayment, handleAuthResponse, collectScaPaymentMethodData, immediateRecollectForSca, authStateListener));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
            }
            if (Result.m824isSuccessimpl(objM817constructorimpl)) {
                this.stripeConnectivityRepository.reportNetworkSuccess();
            }
            Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
            if (thM820exceptionOrNullimpl != null) {
                TerminalException terminalException = thM820exceptionOrNullimpl instanceof TerminalException ? (TerminalException) thM820exceptionOrNullimpl : null;
                errorCode = terminalException != null ? terminalException.getErrorCode() : null;
                if ((errorCode != null ? WhenMappings.$EnumSwitchMapping$1[errorCode.ordinal()] : -1) != 2) {
                    this.stripeConnectivityRepository.reportNetworkSuccess();
                }
            }
            ResultKt.throwOnFailure(objM817constructorimpl);
        } else {
            if (value == StripeConnectivityStatus.NO_NETWORK || routingScheme == RoutingScheme.START_OFFLINE || (routingScheme == RoutingScheme.USE_NETWORK_STATUS && value.getNetworkStatus() == NetworkStatus.OFFLINE)) {
                offlineDirectResourceRepository = this.offlineResourceRepository;
            } else if (routingScheme == RoutingScheme.START_ONLINE && !this.sessionTokenRepository.getHasSessionTokenStateFlow().getValue().booleanValue()) {
                offlineDirectResourceRepository = this.offlineResourceRepository;
            } else {
                try {
                    Result.Companion companion3 = Result.INSTANCE;
                    DirectResourceRepositoryRouter directResourceRepositoryRouter2 = this;
                    objM817constructorimpl2 = Result.m817constructorimpl(this.onlineResourceRepository.confirmSetupIntent(intent, collectiblePayment, handleAuthResponse, collectScaPaymentMethodData, immediateRecollectForSca, authStateListener));
                } catch (Throwable th2) {
                    Result.Companion companion4 = Result.INSTANCE;
                    objM817constructorimpl2 = Result.m817constructorimpl(ResultKt.createFailure(th2));
                }
                if (Result.m824isSuccessimpl(objM817constructorimpl2)) {
                    this.stripeConnectivityRepository.reportNetworkSuccess();
                }
                Throwable thM820exceptionOrNullimpl2 = Result.m820exceptionOrNullimpl(objM817constructorimpl2);
                if (thM820exceptionOrNullimpl2 != null) {
                    TerminalException terminalException2 = thM820exceptionOrNullimpl2 instanceof TerminalException ? (TerminalException) thM820exceptionOrNullimpl2 : null;
                    errorCode = terminalException2 != null ? terminalException2.getErrorCode() : null;
                    if ((errorCode != null ? WhenMappings.$EnumSwitchMapping$1[errorCode.ordinal()] : -1) == 2) {
                        this.stripeConnectivityRepository.reportNetworkFailure();
                        HealthLogger.incrementCounter$default(this.offlineDiscreteLogger, null, MapsKt.mapOf(TuplesKt.to(OfflineMetricTags.ERROR_REASON, errorCode.toLogString())), null, DirectResourceRepositoryRouter$doOnlineWithOptionalOfflineRetry$3$1.INSTANCE, 5, null);
                        offlineDirectResourceRepository = this.offlineResourceRepository;
                    } else {
                        this.stripeConnectivityRepository.reportNetworkSuccess();
                    }
                }
                ResultKt.throwOnFailure(objM817constructorimpl2);
                objM817constructorimpl = objM817constructorimpl2;
            }
            objM817constructorimpl = offlineDirectResourceRepository.confirmSetupIntent(intent, collectiblePayment, handleAuthResponse, collectScaPaymentMethodData, immediateRecollectForSca, authStateListener);
        }
        return (SetupIntent) objM817constructorimpl;
    }

    private final /* synthetic */ <T> T routeConfirmRequest(boolean offlineEnabled, OfflineBehavior offlineBehavior, String offlineId, Function1<? super ResourceRepository, ? extends T> method) throws IllegalAccessException, InstantiationException {
        RoutingScheme routingScheme;
        T t;
        TerminalErrorCode errorCode;
        T t2;
        String str = offlineId;
        if (str == null || str.length() == 0) {
            routingScheme = offlineBehavior == OfflineBehavior.REQUIRE_ONLINE ? RoutingScheme.START_ONLINE : RoutingScheme.USE_NETWORK_STATUS;
        } else {
            routingScheme = RoutingScheme.START_OFFLINE;
        }
        StripeConnectivityStatus value = this.stripeConnectivityRepository.currentState().getValue();
        if (!offlineEnabled) {
            try {
                Result.Companion companion = Result.INSTANCE;
                DirectResourceRepositoryRouter directResourceRepositoryRouter = this;
                t = (T) Result.m817constructorimpl(method.invoke(this.onlineResourceRepository));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                t = (T) Result.m817constructorimpl(ResultKt.createFailure(th));
            }
            if (Result.m824isSuccessimpl(t)) {
                this.stripeConnectivityRepository.reportNetworkSuccess();
            }
            Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(t);
            if (thM820exceptionOrNullimpl != null) {
                TerminalException terminalException = thM820exceptionOrNullimpl instanceof TerminalException ? (TerminalException) thM820exceptionOrNullimpl : null;
                errorCode = terminalException != null ? terminalException.getErrorCode() : null;
                if ((errorCode != null ? WhenMappings.$EnumSwitchMapping$1[errorCode.ordinal()] : -1) != 2) {
                    this.stripeConnectivityRepository.reportNetworkSuccess();
                }
            }
            ResultKt.throwOnFailure(t);
            return t;
        }
        if (value == StripeConnectivityStatus.NO_NETWORK || routingScheme == RoutingScheme.START_OFFLINE || (routingScheme == RoutingScheme.USE_NETWORK_STATUS && value.getNetworkStatus() == NetworkStatus.OFFLINE)) {
            return method.invoke(this.offlineResourceRepository);
        }
        if (routingScheme == RoutingScheme.START_ONLINE && !this.sessionTokenRepository.getHasSessionTokenStateFlow().getValue().booleanValue()) {
            return method.invoke(this.offlineResourceRepository);
        }
        try {
            Result.Companion companion3 = Result.INSTANCE;
            DirectResourceRepositoryRouter directResourceRepositoryRouter2 = this;
            t2 = (T) Result.m817constructorimpl(method.invoke(this.onlineResourceRepository));
        } catch (Throwable th2) {
            Result.Companion companion4 = Result.INSTANCE;
            t2 = (T) Result.m817constructorimpl(ResultKt.createFailure(th2));
        }
        if (Result.m824isSuccessimpl(t2)) {
            this.stripeConnectivityRepository.reportNetworkSuccess();
        }
        Throwable thM820exceptionOrNullimpl2 = Result.m820exceptionOrNullimpl(t2);
        if (thM820exceptionOrNullimpl2 != null) {
            TerminalException terminalException2 = thM820exceptionOrNullimpl2 instanceof TerminalException ? (TerminalException) thM820exceptionOrNullimpl2 : null;
            errorCode = terminalException2 != null ? terminalException2.getErrorCode() : null;
            if ((errorCode != null ? WhenMappings.$EnumSwitchMapping$1[errorCode.ordinal()] : -1) == 2) {
                this.stripeConnectivityRepository.reportNetworkFailure();
                HealthLogger.incrementCounter$default(this.offlineDiscreteLogger, null, MapsKt.mapOf(TuplesKt.to(OfflineMetricTags.ERROR_REASON, errorCode.toLogString())), null, DirectResourceRepositoryRouter$doOnlineWithOptionalOfflineRetry$3$1.INSTANCE, 5, null);
                return method.invoke(this.offlineResourceRepository);
            }
            this.stripeConnectivityRepository.reportNetworkSuccess();
        }
        ResultKt.throwOnFailure(t2);
        return t2;
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public Map<String, Location> getReaderLocations(List<String> deviceSerials) throws TerminalException {
        Intrinsics.checkNotNullParameter(deviceSerials, "deviceSerials");
        try {
            return this.onlineResourceRepository.getReaderLocations(deviceSerials);
        } catch (TerminalException e) {
            int i = WhenMappings.$EnumSwitchMapping$1[e.getErrorCode().ordinal()];
            if (i == 1 || i == 2 || i == 3 || i == 4) {
                return this.offlineResourceRepository.getReaderLocations(deviceSerials);
            }
            throw e;
        }
    }

    private final /* synthetic */ <T> T doOnlineWithOptionalOfflineRetry(boolean retryNetworkFailuresOffline, Function1<? super ResourceRepository, ? extends T> method) throws IllegalAccessException, InstantiationException {
        T t;
        try {
            Result.Companion companion = Result.INSTANCE;
            DirectResourceRepositoryRouter directResourceRepositoryRouter = this;
            t = (T) Result.m817constructorimpl(method.invoke(this.onlineResourceRepository));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            t = (T) Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m824isSuccessimpl(t)) {
            this.stripeConnectivityRepository.reportNetworkSuccess();
        }
        Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(t);
        if (thM820exceptionOrNullimpl != null) {
            TerminalException terminalException = thM820exceptionOrNullimpl instanceof TerminalException ? (TerminalException) thM820exceptionOrNullimpl : null;
            TerminalErrorCode errorCode = terminalException != null ? terminalException.getErrorCode() : null;
            if ((errorCode == null ? -1 : WhenMappings.$EnumSwitchMapping$1[errorCode.ordinal()]) != 2) {
                this.stripeConnectivityRepository.reportNetworkSuccess();
            } else if (retryNetworkFailuresOffline) {
                this.stripeConnectivityRepository.reportNetworkFailure();
                HealthLogger.incrementCounter$default(this.offlineDiscreteLogger, null, MapsKt.mapOf(TuplesKt.to(OfflineMetricTags.ERROR_REASON, errorCode.toLogString())), null, DirectResourceRepositoryRouter$doOnlineWithOptionalOfflineRetry$3$1.INSTANCE, 5, null);
                return method.invoke(this.offlineResourceRepository);
            }
        }
        ResultKt.throwOnFailure(t);
        return t;
    }

    static /* synthetic */ Object route$default(DirectResourceRepositoryRouter directResourceRepositoryRouter, boolean z, RoutingScheme routingScheme, Function1 function1, int i, Object obj) throws IllegalAccessException, InstantiationException {
        Object objM817constructorimpl;
        TerminalErrorCode errorCode;
        Object objM817constructorimpl2;
        if ((i & 2) != 0) {
            routingScheme = RoutingScheme.USE_NETWORK_STATUS;
        }
        StripeConnectivityStatus value = directResourceRepositoryRouter.stripeConnectivityRepository.currentState().getValue();
        if (z) {
            if (value == StripeConnectivityStatus.NO_NETWORK || routingScheme == RoutingScheme.START_OFFLINE || (routingScheme == RoutingScheme.USE_NETWORK_STATUS && value.getNetworkStatus() == NetworkStatus.OFFLINE)) {
                return function1.invoke(directResourceRepositoryRouter.offlineResourceRepository);
            }
            if (routingScheme == RoutingScheme.START_ONLINE && !directResourceRepositoryRouter.sessionTokenRepository.getHasSessionTokenStateFlow().getValue().booleanValue()) {
                return function1.invoke(directResourceRepositoryRouter.offlineResourceRepository);
            }
            try {
                Result.Companion companion = Result.INSTANCE;
                objM817constructorimpl2 = Result.m817constructorimpl(function1.invoke(directResourceRepositoryRouter.onlineResourceRepository));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM817constructorimpl2 = Result.m817constructorimpl(ResultKt.createFailure(th));
            }
            if (Result.m824isSuccessimpl(objM817constructorimpl2)) {
                directResourceRepositoryRouter.stripeConnectivityRepository.reportNetworkSuccess();
            }
            Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl2);
            if (thM820exceptionOrNullimpl != null) {
                TerminalException terminalException = thM820exceptionOrNullimpl instanceof TerminalException ? (TerminalException) thM820exceptionOrNullimpl : null;
                errorCode = terminalException != null ? terminalException.getErrorCode() : null;
                if ((errorCode != null ? WhenMappings.$EnumSwitchMapping$1[errorCode.ordinal()] : -1) == 2) {
                    directResourceRepositoryRouter.stripeConnectivityRepository.reportNetworkFailure();
                    HealthLogger.incrementCounter$default(directResourceRepositoryRouter.offlineDiscreteLogger, null, MapsKt.mapOf(TuplesKt.to(OfflineMetricTags.ERROR_REASON, errorCode.toLogString())), null, DirectResourceRepositoryRouter$doOnlineWithOptionalOfflineRetry$3$1.INSTANCE, 5, null);
                    return function1.invoke(directResourceRepositoryRouter.offlineResourceRepository);
                }
                directResourceRepositoryRouter.stripeConnectivityRepository.reportNetworkSuccess();
            }
            ResultKt.throwOnFailure(objM817constructorimpl2);
            return objM817constructorimpl2;
        }
        try {
            Result.Companion companion3 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(function1.invoke(directResourceRepositoryRouter.onlineResourceRepository));
        } catch (Throwable th2) {
            Result.Companion companion4 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th2));
        }
        if (Result.m824isSuccessimpl(objM817constructorimpl)) {
            directResourceRepositoryRouter.stripeConnectivityRepository.reportNetworkSuccess();
        }
        Throwable thM820exceptionOrNullimpl2 = Result.m820exceptionOrNullimpl(objM817constructorimpl);
        if (thM820exceptionOrNullimpl2 != null) {
            TerminalException terminalException2 = thM820exceptionOrNullimpl2 instanceof TerminalException ? (TerminalException) thM820exceptionOrNullimpl2 : null;
            errorCode = terminalException2 != null ? terminalException2.getErrorCode() : null;
            if ((errorCode != null ? WhenMappings.$EnumSwitchMapping$1[errorCode.ordinal()] : -1) != 2) {
                directResourceRepositoryRouter.stripeConnectivityRepository.reportNetworkSuccess();
            }
        }
        ResultKt.throwOnFailure(objM817constructorimpl);
        return objM817constructorimpl;
    }

    private final /* synthetic */ <T> T route(boolean offlineEnabled, RoutingScheme routingScheme, Function1<? super ResourceRepository, ? extends T> method) throws IllegalAccessException, InstantiationException {
        T t;
        TerminalErrorCode errorCode;
        T t2;
        StripeConnectivityStatus value = this.stripeConnectivityRepository.currentState().getValue();
        if (offlineEnabled) {
            if (value == StripeConnectivityStatus.NO_NETWORK || routingScheme == RoutingScheme.START_OFFLINE || (routingScheme == RoutingScheme.USE_NETWORK_STATUS && value.getNetworkStatus() == NetworkStatus.OFFLINE)) {
                return method.invoke(this.offlineResourceRepository);
            }
            if (routingScheme == RoutingScheme.START_ONLINE && !this.sessionTokenRepository.getHasSessionTokenStateFlow().getValue().booleanValue()) {
                return method.invoke(this.offlineResourceRepository);
            }
            try {
                Result.Companion companion = Result.INSTANCE;
                DirectResourceRepositoryRouter directResourceRepositoryRouter = this;
                t2 = (T) Result.m817constructorimpl(method.invoke(this.onlineResourceRepository));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                t2 = (T) Result.m817constructorimpl(ResultKt.createFailure(th));
            }
            if (Result.m824isSuccessimpl(t2)) {
                this.stripeConnectivityRepository.reportNetworkSuccess();
            }
            Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(t2);
            if (thM820exceptionOrNullimpl != null) {
                TerminalException terminalException = thM820exceptionOrNullimpl instanceof TerminalException ? (TerminalException) thM820exceptionOrNullimpl : null;
                errorCode = terminalException != null ? terminalException.getErrorCode() : null;
                if ((errorCode != null ? WhenMappings.$EnumSwitchMapping$1[errorCode.ordinal()] : -1) == 2) {
                    this.stripeConnectivityRepository.reportNetworkFailure();
                    HealthLogger.incrementCounter$default(this.offlineDiscreteLogger, null, MapsKt.mapOf(TuplesKt.to(OfflineMetricTags.ERROR_REASON, errorCode.toLogString())), null, DirectResourceRepositoryRouter$doOnlineWithOptionalOfflineRetry$3$1.INSTANCE, 5, null);
                    return method.invoke(this.offlineResourceRepository);
                }
                this.stripeConnectivityRepository.reportNetworkSuccess();
            }
            ResultKt.throwOnFailure(t2);
            return t2;
        }
        try {
            Result.Companion companion3 = Result.INSTANCE;
            DirectResourceRepositoryRouter directResourceRepositoryRouter2 = this;
            t = (T) Result.m817constructorimpl(method.invoke(this.onlineResourceRepository));
        } catch (Throwable th2) {
            Result.Companion companion4 = Result.INSTANCE;
            t = (T) Result.m817constructorimpl(ResultKt.createFailure(th2));
        }
        if (Result.m824isSuccessimpl(t)) {
            this.stripeConnectivityRepository.reportNetworkSuccess();
        }
        Throwable thM820exceptionOrNullimpl2 = Result.m820exceptionOrNullimpl(t);
        if (thM820exceptionOrNullimpl2 != null) {
            TerminalException terminalException2 = thM820exceptionOrNullimpl2 instanceof TerminalException ? (TerminalException) thM820exceptionOrNullimpl2 : null;
            errorCode = terminalException2 != null ? terminalException2.getErrorCode() : null;
            if ((errorCode != null ? WhenMappings.$EnumSwitchMapping$1[errorCode.ordinal()] : -1) != 2) {
                this.stripeConnectivityRepository.reportNetworkSuccess();
            }
        }
        ResultKt.throwOnFailure(t);
        return t;
    }

    private final boolean getSupportsOfflineActivation(ConnectionConfiguration connectionConfiguration) {
        if (connectionConfiguration instanceof ConnectionConfiguration.BluetoothConnectionConfiguration ? true : connectionConfiguration instanceof ConnectionConfiguration.HandoffConnectionConfiguration ? true : connectionConfiguration instanceof ConnectionConfiguration.InternetConnectionConfiguration ? true : connectionConfiguration instanceof ConnectionConfiguration.TapToPayConnectionConfiguration ? true : connectionConfiguration instanceof ConnectionConfiguration.UsbConnectionConfiguration) {
            return true;
        }
        if (connectionConfiguration instanceof ConnectionConfiguration.EmbeddedConnectionConfiguration) {
            return ((ConnectionConfiguration.EmbeddedConnectionConfiguration) connectionConfiguration).getSupportsOfflineMode();
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: DirectResourceRepositoryRouter.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;", "", "(Ljava/lang/String;I)V", "START_OFFLINE", "START_ONLINE", "USE_NETWORK_STATUS", "resourcerepository_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final class RoutingScheme {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ RoutingScheme[] $VALUES;
        public static final RoutingScheme START_OFFLINE = new RoutingScheme("START_OFFLINE", 0);
        public static final RoutingScheme START_ONLINE = new RoutingScheme("START_ONLINE", 1);
        public static final RoutingScheme USE_NETWORK_STATUS = new RoutingScheme("USE_NETWORK_STATUS", 2);

        private static final /* synthetic */ RoutingScheme[] $values() {
            return new RoutingScheme[]{START_OFFLINE, START_ONLINE, USE_NETWORK_STATUS};
        }

        public static EnumEntries<RoutingScheme> getEntries() {
            return $ENTRIES;
        }

        public static RoutingScheme valueOf(String str) {
            return (RoutingScheme) Enum.valueOf(RoutingScheme.class, str);
        }

        public static RoutingScheme[] values() {
            return (RoutingScheme[]) $VALUES.clone();
        }

        private RoutingScheme(String str, int i) {
        }

        static {
            RoutingScheme[] routingSchemeArr$values = $values();
            $VALUES = routingSchemeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(routingSchemeArr$values);
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public Refund confirmRefund(RefundParameters refundParams, CollectiblePayment collectiblePayment, Function1<? super String, ? extends Deferred<TransactionResult>> handleAuthResponse, OnlineAuthStateListener authStateListener) {
        Object objM817constructorimpl;
        Intrinsics.checkNotNullParameter(refundParams, "refundParams");
        Intrinsics.checkNotNullParameter(handleAuthResponse, "handleAuthResponse");
        Intrinsics.checkNotNullParameter(authStateListener, "authStateListener");
        try {
            Result.Companion companion = Result.INSTANCE;
            DirectResourceRepositoryRouter directResourceRepositoryRouter = this;
            OnlineDirectResourceRepository onlineDirectResourceRepository = this.onlineResourceRepository;
            objM817constructorimpl = Result.m817constructorimpl(this.onlineResourceRepository.confirmRefund(refundParams, collectiblePayment, handleAuthResponse, authStateListener));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m824isSuccessimpl(objM817constructorimpl)) {
            this.stripeConnectivityRepository.reportNetworkSuccess();
        }
        Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
        if (thM820exceptionOrNullimpl != null) {
            TerminalException terminalException = thM820exceptionOrNullimpl instanceof TerminalException ? (TerminalException) thM820exceptionOrNullimpl : null;
            TerminalErrorCode errorCode = terminalException != null ? terminalException.getErrorCode() : null;
            if ((errorCode == null ? -1 : WhenMappings.$EnumSwitchMapping$1[errorCode.ordinal()]) != 2) {
                this.stripeConnectivityRepository.reportNetworkSuccess();
            }
        }
        ResultKt.throwOnFailure(objM817constructorimpl);
        return (Refund) objM817constructorimpl;
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public PaymentIntent updatePaymentIntent(PaymentIntent paymentIntent, CollectiblePayment collectiblePayment, boolean requestDynamicCurrencyConversion) {
        Object objM817constructorimpl;
        Intrinsics.checkNotNullParameter(paymentIntent, "paymentIntent");
        try {
            Result.Companion companion = Result.INSTANCE;
            DirectResourceRepositoryRouter directResourceRepositoryRouter = this;
            OnlineDirectResourceRepository onlineDirectResourceRepository = this.onlineResourceRepository;
            objM817constructorimpl = Result.m817constructorimpl(this.onlineResourceRepository.updatePaymentIntent(paymentIntent, collectiblePayment, requestDynamicCurrencyConversion));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m824isSuccessimpl(objM817constructorimpl)) {
            this.stripeConnectivityRepository.reportNetworkSuccess();
        }
        Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
        if (thM820exceptionOrNullimpl != null) {
            TerminalException terminalException = thM820exceptionOrNullimpl instanceof TerminalException ? (TerminalException) thM820exceptionOrNullimpl : null;
            TerminalErrorCode errorCode = terminalException != null ? terminalException.getErrorCode() : null;
            if ((errorCode == null ? -1 : WhenMappings.$EnumSwitchMapping$1[errorCode.ordinal()]) != 2) {
                this.stripeConnectivityRepository.reportNetworkSuccess();
            }
        }
        ResultKt.throwOnFailure(objM817constructorimpl);
        return (PaymentIntent) objM817constructorimpl;
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public PaymentMethod readReusableCard(ReadReusableCardParameters readReusableCardParams, PaymentMethodData paymentMethodData) {
        Object objM817constructorimpl;
        Intrinsics.checkNotNullParameter(readReusableCardParams, "readReusableCardParams");
        Intrinsics.checkNotNullParameter(paymentMethodData, "paymentMethodData");
        try {
            Result.Companion companion = Result.INSTANCE;
            DirectResourceRepositoryRouter directResourceRepositoryRouter = this;
            objM817constructorimpl = Result.m817constructorimpl(this.onlineResourceRepository.readReusableCard(readReusableCardParams, paymentMethodData));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m824isSuccessimpl(objM817constructorimpl)) {
            this.stripeConnectivityRepository.reportNetworkSuccess();
        }
        Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
        if (thM820exceptionOrNullimpl != null) {
            TerminalException terminalException = thM820exceptionOrNullimpl instanceof TerminalException ? (TerminalException) thM820exceptionOrNullimpl : null;
            TerminalErrorCode errorCode = terminalException != null ? terminalException.getErrorCode() : null;
            if ((errorCode == null ? -1 : WhenMappings.$EnumSwitchMapping$1[errorCode.ordinal()]) != 2) {
                this.stripeConnectivityRepository.reportNetworkSuccess();
            }
        }
        ResultKt.throwOnFailure(objM817constructorimpl);
        return (PaymentMethod) objM817constructorimpl;
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public PaymentIntent cancelPaymentIntent(PaymentIntent intent) {
        Object objM817constructorimpl;
        Intrinsics.checkNotNullParameter(intent, "intent");
        try {
            Result.Companion companion = Result.INSTANCE;
            DirectResourceRepositoryRouter directResourceRepositoryRouter = this;
            objM817constructorimpl = Result.m817constructorimpl(this.onlineResourceRepository.cancelPaymentIntent(intent));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m824isSuccessimpl(objM817constructorimpl)) {
            this.stripeConnectivityRepository.reportNetworkSuccess();
        }
        Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
        if (thM820exceptionOrNullimpl != null) {
            TerminalException terminalException = thM820exceptionOrNullimpl instanceof TerminalException ? (TerminalException) thM820exceptionOrNullimpl : null;
            TerminalErrorCode errorCode = terminalException != null ? terminalException.getErrorCode() : null;
            if ((errorCode == null ? -1 : WhenMappings.$EnumSwitchMapping$1[errorCode.ordinal()]) != 2) {
                this.stripeConnectivityRepository.reportNetworkSuccess();
            }
        }
        ResultKt.throwOnFailure(objM817constructorimpl);
        return (PaymentIntent) objM817constructorimpl;
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public SetupIntent cancelSetupIntent(SetupIntent intent, SetupIntentCancellationParameters params) {
        Object objM817constructorimpl;
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(params, "params");
        try {
            Result.Companion companion = Result.INSTANCE;
            DirectResourceRepositoryRouter directResourceRepositoryRouter = this;
            objM817constructorimpl = Result.m817constructorimpl(this.onlineResourceRepository.cancelSetupIntent(intent, params));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m824isSuccessimpl(objM817constructorimpl)) {
            this.stripeConnectivityRepository.reportNetworkSuccess();
        }
        Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
        if (thM820exceptionOrNullimpl != null) {
            TerminalException terminalException = thM820exceptionOrNullimpl instanceof TerminalException ? (TerminalException) thM820exceptionOrNullimpl : null;
            TerminalErrorCode errorCode = terminalException != null ? terminalException.getErrorCode() : null;
            if ((errorCode == null ? -1 : WhenMappings.$EnumSwitchMapping$1[errorCode.ordinal()]) != 2) {
                this.stripeConnectivityRepository.reportNetworkSuccess();
            }
        }
        ResultKt.throwOnFailure(objM817constructorimpl);
        return (SetupIntent) objM817constructorimpl;
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public Deferred<PaymentIntent> awaitActionRequiredPaymentIntentCompletion(String paymentIntentId, String accountId) {
        Object objM817constructorimpl;
        Intrinsics.checkNotNullParameter(paymentIntentId, "paymentIntentId");
        try {
            Result.Companion companion = Result.INSTANCE;
            DirectResourceRepositoryRouter directResourceRepositoryRouter = this;
            objM817constructorimpl = Result.m817constructorimpl(this.onlineResourceRepository.awaitActionRequiredPaymentIntentCompletion(paymentIntentId, accountId));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m824isSuccessimpl(objM817constructorimpl)) {
            this.stripeConnectivityRepository.reportNetworkSuccess();
        }
        Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
        if (thM820exceptionOrNullimpl != null) {
            TerminalException terminalException = thM820exceptionOrNullimpl instanceof TerminalException ? (TerminalException) thM820exceptionOrNullimpl : null;
            TerminalErrorCode errorCode = terminalException != null ? terminalException.getErrorCode() : null;
            if ((errorCode == null ? -1 : WhenMappings.$EnumSwitchMapping$1[errorCode.ordinal()]) != 2) {
                this.stripeConnectivityRepository.reportNetworkSuccess();
            }
        }
        ResultKt.throwOnFailure(objM817constructorimpl);
        return (Deferred) objM817constructorimpl;
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public boolean completePaymentIntentActionRequired(String paymentIntentId, String accountId) {
        Object objM817constructorimpl;
        Intrinsics.checkNotNullParameter(paymentIntentId, "paymentIntentId");
        try {
            Result.Companion companion = Result.INSTANCE;
            DirectResourceRepositoryRouter directResourceRepositoryRouter = this;
            objM817constructorimpl = Result.m817constructorimpl(Boolean.valueOf(this.onlineResourceRepository.completePaymentIntentActionRequired(paymentIntentId, accountId)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m824isSuccessimpl(objM817constructorimpl)) {
            this.stripeConnectivityRepository.reportNetworkSuccess();
        }
        Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
        if (thM820exceptionOrNullimpl != null) {
            TerminalException terminalException = thM820exceptionOrNullimpl instanceof TerminalException ? (TerminalException) thM820exceptionOrNullimpl : null;
            TerminalErrorCode errorCode = terminalException != null ? terminalException.getErrorCode() : null;
            if ((errorCode == null ? -1 : WhenMappings.$EnumSwitchMapping$1[errorCode.ordinal()]) != 2) {
                this.stripeConnectivityRepository.reportNetworkSuccess();
            }
        }
        ResultKt.throwOnFailure(objM817constructorimpl);
        return ((Boolean) objM817constructorimpl).booleanValue();
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public void cancelPaymentIntentActionRequired() {
        Object objM817constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            DirectResourceRepositoryRouter directResourceRepositoryRouter = this;
            this.onlineResourceRepository.cancelPaymentIntentActionRequired();
            objM817constructorimpl = Result.m817constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m824isSuccessimpl(objM817constructorimpl)) {
            this.stripeConnectivityRepository.reportNetworkSuccess();
        }
        Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
        if (thM820exceptionOrNullimpl != null) {
            TerminalException terminalException = thM820exceptionOrNullimpl instanceof TerminalException ? (TerminalException) thM820exceptionOrNullimpl : null;
            TerminalErrorCode errorCode = terminalException != null ? terminalException.getErrorCode() : null;
            if ((errorCode == null ? -1 : WhenMappings.$EnumSwitchMapping$1[errorCode.ordinal()]) != 2) {
                this.stripeConnectivityRepository.reportNetworkSuccess();
            }
        }
        ResultKt.throwOnFailure(objM817constructorimpl);
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public CollectedData createReaderCollectedData(PaymentMethodData paymentMethodData) {
        Object objM817constructorimpl;
        Intrinsics.checkNotNullParameter(paymentMethodData, "paymentMethodData");
        try {
            Result.Companion companion = Result.INSTANCE;
            DirectResourceRepositoryRouter directResourceRepositoryRouter = this;
            objM817constructorimpl = Result.m817constructorimpl(this.onlineResourceRepository.createReaderCollectedData(paymentMethodData));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m824isSuccessimpl(objM817constructorimpl)) {
            this.stripeConnectivityRepository.reportNetworkSuccess();
        }
        Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
        if (thM820exceptionOrNullimpl != null) {
            TerminalException terminalException = thM820exceptionOrNullimpl instanceof TerminalException ? (TerminalException) thM820exceptionOrNullimpl : null;
            TerminalErrorCode errorCode = terminalException != null ? terminalException.getErrorCode() : null;
            if ((errorCode == null ? -1 : WhenMappings.$EnumSwitchMapping$1[errorCode.ordinal()]) != 2) {
                this.stripeConnectivityRepository.reportNetworkSuccess();
            }
        }
        ResultKt.throwOnFailure(objM817constructorimpl);
        return (CollectedData) objM817constructorimpl;
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public void cancelConfirmPaymentIntent(com.stripe.stripeterminal.external.callable.Callback callback) {
        Object objM817constructorimpl;
        Intrinsics.checkNotNullParameter(callback, "callback");
        try {
            Result.Companion companion = Result.INSTANCE;
            DirectResourceRepositoryRouter directResourceRepositoryRouter = this;
            this.onlineResourceRepository.cancelConfirmPaymentIntent(callback);
            objM817constructorimpl = Result.m817constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m824isSuccessimpl(objM817constructorimpl)) {
            this.stripeConnectivityRepository.reportNetworkSuccess();
        }
        Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
        if (thM820exceptionOrNullimpl != null) {
            TerminalException terminalException = thM820exceptionOrNullimpl instanceof TerminalException ? (TerminalException) thM820exceptionOrNullimpl : null;
            TerminalErrorCode errorCode = terminalException != null ? terminalException.getErrorCode() : null;
            if ((errorCode == null ? -1 : WhenMappings.$EnumSwitchMapping$1[errorCode.ordinal()]) != 2) {
                this.stripeConnectivityRepository.reportNetworkSuccess();
            }
        }
        ResultKt.throwOnFailure(objM817constructorimpl);
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public void cancelConfirmSetupIntent(com.stripe.stripeterminal.external.callable.Callback callback) {
        Object objM817constructorimpl;
        Intrinsics.checkNotNullParameter(callback, "callback");
        try {
            Result.Companion companion = Result.INSTANCE;
            DirectResourceRepositoryRouter directResourceRepositoryRouter = this;
            this.onlineResourceRepository.cancelConfirmSetupIntent(callback);
            objM817constructorimpl = Result.m817constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m824isSuccessimpl(objM817constructorimpl)) {
            this.stripeConnectivityRepository.reportNetworkSuccess();
        }
        Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
        if (thM820exceptionOrNullimpl != null) {
            TerminalException terminalException = thM820exceptionOrNullimpl instanceof TerminalException ? (TerminalException) thM820exceptionOrNullimpl : null;
            TerminalErrorCode errorCode = terminalException != null ? terminalException.getErrorCode() : null;
            if ((errorCode == null ? -1 : WhenMappings.$EnumSwitchMapping$1[errorCode.ordinal()]) != 2) {
                this.stripeConnectivityRepository.reportNetworkSuccess();
            }
        }
        ResultKt.throwOnFailure(objM817constructorimpl);
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public void cancelConfirmRefund(com.stripe.stripeterminal.external.callable.Callback callback) {
        Object objM817constructorimpl;
        Intrinsics.checkNotNullParameter(callback, "callback");
        try {
            Result.Companion companion = Result.INSTANCE;
            DirectResourceRepositoryRouter directResourceRepositoryRouter = this;
            this.onlineResourceRepository.cancelConfirmRefund(callback);
            objM817constructorimpl = Result.m817constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m824isSuccessimpl(objM817constructorimpl)) {
            this.stripeConnectivityRepository.reportNetworkSuccess();
        }
        Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
        if (thM820exceptionOrNullimpl != null) {
            TerminalException terminalException = thM820exceptionOrNullimpl instanceof TerminalException ? (TerminalException) thM820exceptionOrNullimpl : null;
            TerminalErrorCode errorCode = terminalException != null ? terminalException.getErrorCode() : null;
            if ((errorCode == null ? -1 : WhenMappings.$EnumSwitchMapping$1[errorCode.ordinal()]) != 2) {
                this.stripeConnectivityRepository.reportNetworkSuccess();
            }
        }
        ResultKt.throwOnFailure(objM817constructorimpl);
    }
}
