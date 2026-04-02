package com.stripe.stripeterminal.internal.common.resourcerepository;

import com.squareup.wire.Message;
import com.stripe.core.transaction.TransactionRepository;
import com.stripe.currency.Amount;
import com.stripe.hardware.emv.ApplicationId;
import com.stripe.hardware.emv.Messages;
import com.stripe.hardware.emv.TlvMap;
import com.stripe.hardware.emv.TransactionResult;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.terminal.log.Log;
import com.stripe.jvmcore.restclient.AuthenticatedRestClient;
import com.stripe.jvmcore.restclient.CustomHeadersProvider;
import com.stripe.jvmcore.restclient.RestRequest;
import com.stripe.jvmcore.terminal.api.ActivateReaderResponse;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.offlinemode.OfflineEventHandler;
import com.stripe.offlinemode.helpers.OfflineConfigHelper;
import com.stripe.offlinemode.helpers.OfflinePaymentMethodValidator;
import com.stripe.offlinemode.helpers.OfflineRequestHelper;
import com.stripe.offlinemode.log.OfflineTrace;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.paymentcollection.OnlineAuthFailureReason;
import com.stripe.paymentcollection.OnlineAuthState;
import com.stripe.paymentcollection.OnlineAuthStateListener;
import com.stripe.proto.api.rest.ConfirmPaymentIntentRequest;
import com.stripe.proto.api.rest.ConfirmSetupIntentRequest;
import com.stripe.proto.api.rest.CreatePaymentIntentRequest;
import com.stripe.proto.api.rest.CreateSetupIntentRequest;
import com.stripe.proto.api.rest.RequestedPaymentMethod;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter;
import com.stripe.proto.terminal.terminal.pub.message.config.BluetoothAutoReconnectConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.UsbAutoReconnectConfigPb;
import com.stripe.stripeterminal.external.models.AllowRedisplay;
import com.stripe.stripeterminal.external.models.CollectedData;
import com.stripe.stripeterminal.external.models.ConnectionConfiguration;
import com.stripe.stripeterminal.external.models.CreateConfiguration;
import com.stripe.stripeterminal.external.models.Location;
import com.stripe.stripeterminal.external.models.OfflineBehavior;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.PaymentIntentParameters;
import com.stripe.stripeterminal.external.models.PaymentIntentStatus;
import com.stripe.stripeterminal.external.models.PaymentMethod;
import com.stripe.stripeterminal.external.models.ReadReusableCardParameters;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.Refund;
import com.stripe.stripeterminal.external.models.RefundParameters;
import com.stripe.stripeterminal.external.models.SetupIntent;
import com.stripe.stripeterminal.external.models.SetupIntentCancellationParameters;
import com.stripe.stripeterminal.external.models.SetupIntentParameters;
import com.stripe.stripeterminal.external.models.SetupIntentStatus;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.adapter.OfflineAdapterKt;
import com.stripe.stripeterminal.internal.common.api.ApiRequestFactory;
import com.stripe.stripeterminal.internal.common.p000enum.EmvProcessingMethod;
import com.stripe.stripeterminal.internal.models.PaymentMethodData;
import com.stripe.stripeterminal.internal.models.ReadMethod;
import com.stripe.transaction.ChargeAttempt;
import com.stripe.transaction.ChargeAttemptManager;
import com.stripe.transaction.CollectiblePayment;
import com.stripe.transaction.payment.Payment;
import com.sun.jna.Callback;
import com.sun.jna.platform.win32.WinError;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Deferred;

/* JADX INFO: compiled from: OfflineDirectResourceRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000ô\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u008d\u00012\u00020\u0001:\u0002\u008d\u0001B{\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\"\u0010\u0014\u001a\u001e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00190\u0015j\u0002`\u001a\u0012\u0006\u0010\u001b\u001a\u00020\u001c¢\u0006\u0002\u0010\u001dJX\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2>\u0010$\u001a:\u0012\u0015\u0012\u0013\u0018\u00010&¢\u0006\f\b'\u0012\b\b(\u0012\u0004\b\b()\u0012\u0015\u0012\u0013\u0018\u00010*¢\u0006\f\b'\u0012\b\b(\u0012\u0004\b\b(+\u0012\u0004\u0012\u00020,0%j\u0002`-H\u0016J \u0010.\u001a\b\u0012\u0004\u0012\u0002000/2\u0006\u00101\u001a\u0002022\b\u00103\u001a\u0004\u0018\u000102H\u0016J0\u00104\u001a\u0012\u0012\u0004\u0012\u000206\u0012\u0004\u0012\u00020705j\u0002`82\u0006\u00109\u001a\u0002002\u000e\u0010:\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010<0;H\u0002J\u001a\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020@2\b\u0010A\u001a\u0004\u0018\u00010<H\u0002J\u0010\u0010B\u001a\u00020,2\u0006\u0010C\u001a\u00020DH\u0016J\u0010\u0010E\u001a\u00020,2\u0006\u0010C\u001a\u00020DH\u0016J\u0010\u0010F\u001a\u00020,2\u0006\u0010C\u001a\u00020DH\u0016J\u0010\u0010G\u001a\u0002002\u0006\u0010H\u001a\u000200H\u0016J\b\u0010I\u001a\u00020,H\u0016J\u0018\u0010J\u001a\u00020@2\u0006\u0010H\u001a\u00020@2\u0006\u0010K\u001a\u00020LH\u0016J\u001a\u0010M\u001a\u00020N2\u0006\u00101\u001a\u0002022\b\u00103\u001a\u0004\u0018\u000102H\u0016Jq\u0010O\u001a\u0002002\u0006\u00109\u001a\u0002002\u000e\u0010:\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010<0;2\u0018\u0010P\u001a\u0014\u0012\u0004\u0012\u000202\u0012\n\u0012\b\u0012\u0004\u0012\u00020R0/0Q2\f\u0010S\u001a\b\u0012\u0004\u0012\u00020T0;2\u0006\u0010U\u001a\u00020N2\u0006\u0010V\u001a\u00020W2\b\u0010X\u001a\u0004\u0018\u00010Y2\b\u0010Z\u001a\u0004\u0018\u000102H\u0016¢\u0006\u0002\u0010[J<\u0010\\\u001a\u00020]2\u0006\u0010^\u001a\u00020_2\b\u0010A\u001a\u0004\u0018\u00010<2\u0018\u0010P\u001a\u0014\u0012\u0004\u0012\u000202\u0012\n\u0012\b\u0012\u0004\u0012\u00020R0/0Q2\u0006\u0010V\u001a\u00020WH\u0016JR\u0010`\u001a\u00020@2\u0006\u0010H\u001a\u00020@2\b\u0010A\u001a\u0004\u0018\u00010<2\u0018\u0010P\u001a\u0014\u0012\u0004\u0012\u000202\u0012\n\u0012\b\u0012\u0004\u0012\u00020R0/0Q2\f\u0010S\u001a\b\u0012\u0004\u0012\u00020T0;2\u0006\u0010U\u001a\u00020N2\u0006\u0010V\u001a\u00020WH\u0016J\u0018\u0010a\u001a\u0002002\u0006\u0010b\u001a\u00020c2\u0006\u0010d\u001a\u00020eH\u0016J\u0010\u0010f\u001a\u00020g2\u0006\u0010h\u001a\u00020TH\u0016J\u0018\u0010i\u001a\u00020@2\u0006\u0010j\u001a\u00020k2\u0006\u0010d\u001a\u00020eH\u0016J0\u0010l\u001a\u0002Hm\"\n\b\u0000\u0010m\u0018\u0001*\u00020n2\u0006\u0010o\u001a\u00020p2\f\u0010q\u001a\b\u0012\u0004\u0012\u0002Hm0;H\u0082\b¢\u0006\u0002\u0010rJ*\u0010s\u001a\u0002022\u0006\u0010t\u001a\u00020u2\b\u0010v\u001a\u0004\u0018\u0001022\u0006\u0010w\u001a\u00020N2\u0006\u0010x\u001a\u00020NH\u0002J\"\u0010y\u001a\u000e\u0012\u0004\u0012\u000202\u0012\u0004\u0012\u00020{0z2\f\u0010|\u001a\b\u0012\u0004\u0012\u0002020}H\u0016J\u0010\u0010~\u001a\u00020\u007f2\u0006\u0010(\u001a\u000202H\u0002J\u001c\u0010\u0080\u0001\u001a\u00030\u0081\u00012\b\u0010\u0082\u0001\u001a\u00030\u0083\u00012\u0006\u0010h\u001a\u00020TH\u0016J_\u0010\u0084\u0001\u001a\u00020,2\b\u00109\u001a\u0004\u0018\u0001002\b\u0010?\u001a\u0004\u0018\u00010@2\t\b\u0002\u0010\u0085\u0001\u001a\u00020Y2\u0007\u0010\u0086\u0001\u001a\u0002022\u0018\u0010P\u001a\u0014\u0012\u0004\u0012\u000202\u0012\n\u0012\b\u0012\u0004\u0012\u00020R0/0Q2\u0006\u0010V\u001a\u00020W2\n\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0088\u0001H\u0002J$\u0010\u0089\u0001\u001a\u0002002\u0006\u00109\u001a\u0002002\b\u0010A\u001a\u0004\u0018\u00010<2\u0007\u0010\u008a\u0001\u001a\u00020NH\u0016J\u0011\u0010\u008b\u0001\u001a\u00020,2\u0006\u0010H\u001a\u000200H\u0002J\u0011\u0010\u008c\u0001\u001a\u00020,2\u0006\u0010H\u001a\u00020@H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\u0014\u001a\u001e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00190\u0015j\u0002`\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u008e\u0001"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;", "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;", "apiRequestFactory", "Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;", "transactionRepository", "Lcom/stripe/core/transaction/TransactionRepository;", "offlineEventHandler", "Lcom/stripe/offlinemode/OfflineEventHandler;", "statusManager", "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;", "offlineRequestHelper", "Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;", "customHeadersProvider", "Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;", "chargeAttemptManager", "Lcom/stripe/transaction/ChargeAttemptManager;", "authenticatedRestClient", "Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;", "offlineConfigHelper", "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;", "offlineDiscreteLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;", "Lcom/stripe/offlinemode/log/OfflineDiscreteLogger;", "offlinePaymentMethodValidator", "Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;", "(Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/offlinemode/OfflineEventHandler;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;Lcom/stripe/transaction/ChargeAttemptManager;Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;)V", "activateReader", "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "connectionConfiguration", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "setReconnectParams", "Lkotlin/Function2;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;", "Lkotlin/ParameterName;", "name", "bluetoothConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;", "usbConfig", "", "Lcom/stripe/offlinemode/helpers/SetReconnectParams;", "awaitActionRequiredPaymentIntentCompletion", "Lkotlinx/coroutines/Deferred;", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "paymentIntentId", "", "accountId", "buildConfirmPaymentIntentRequest", "Lcom/stripe/jvmcore/restclient/RestRequest;", "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;", "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;", "Lcom/stripe/stripeterminal/internal/common/api/ConfirmPaymentIntentRestRequest;", "paymentIntent", "getCollectiblePayment", "Lkotlin/Function0;", "Lcom/stripe/transaction/CollectiblePayment;", "buildConfirmSetupIntentRequest", "Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;", "setupIntent", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", "collectiblePayment", "cancelConfirmPaymentIntent", Callback.METHOD_NAME, "Lcom/stripe/stripeterminal/external/callable/Callback;", "cancelConfirmRefund", "cancelConfirmSetupIntent", "cancelPaymentIntent", "intent", "cancelPaymentIntentActionRequired", "cancelSetupIntent", "params", "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;", "completePaymentIntentActionRequired", "", "confirmPaymentIntent", "handleAuthResponse", "Lkotlin/Function1;", "Lcom/stripe/hardware/emv/TransactionResult;", "collectScaPaymentMethodData", "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "immediateRecollectForSca", "authStateListener", "Lcom/stripe/paymentcollection/OnlineAuthStateListener;", "amountSurcharge", "", "returnUrl", "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "confirmRefund", "Lcom/stripe/stripeterminal/external/models/Refund;", "refundParams", "Lcom/stripe/stripeterminal/external/models/RefundParameters;", "confirmSetupIntent", "createPaymentIntent", "paymentIntentParameters", "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;", "createConfiguration", "Lcom/stripe/stripeterminal/external/models/CreateConfiguration;", "createReaderCollectedData", "Lcom/stripe/stripeterminal/external/models/CollectedData;", "paymentMethodData", "createSetupIntent", "setupIntentParameters", "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;", "executeWithOfflineTracing", "T", "", "offlineTrace", "Lcom/stripe/offlinemode/log/OfflineTrace;", "operation", "(Lcom/stripe/offlinemode/log/OfflineTrace;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "getAuthorizationResponseCode", "parsedEmvData", "Lcom/stripe/hardware/emv/TlvMap;", "readMethod", "livemode", "isSetupIntent", "getReaderLocations", "", "Lcom/stripe/stripeterminal/external/models/Location;", "deviceSerials", "", "getUnsupportedOpException", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "readReusableCard", "Lcom/stripe/stripeterminal/external/models/PaymentMethod;", "readReusableCardParams", "Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;", "sendAuthResponseCodeToDevice", "tipAmount", "authResponseCode", "declineCode", "Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;", "updatePaymentIntent", "requestDynamicCurrencyConversion", "validatePaymentIntent", "validateSetupIntent", "Companion", "resourcerepository_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OfflineDirectResourceRepository implements ResourceRepository {
    private static final Log LOGGER = Log.INSTANCE.getLogger(OfflineDirectResourceRepository.class);
    private final ApiRequestFactory apiRequestFactory;
    private final AuthenticatedRestClient authenticatedRestClient;
    private final ChargeAttemptManager chargeAttemptManager;
    private final CustomHeadersProvider customHeadersProvider;
    private final OfflineConfigHelper offlineConfigHelper;
    private final HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> offlineDiscreteLogger;
    private final OfflineEventHandler offlineEventHandler;
    private final OfflinePaymentMethodValidator offlinePaymentMethodValidator;
    private final OfflineRequestHelper offlineRequestHelper;
    private final TerminalStatusManager statusManager;
    private final TransactionRepository transactionRepository;

    @Inject
    public OfflineDirectResourceRepository(ApiRequestFactory apiRequestFactory, TransactionRepository transactionRepository, OfflineEventHandler offlineEventHandler, TerminalStatusManager statusManager, OfflineRequestHelper offlineRequestHelper, CustomHeadersProvider customHeadersProvider, ChargeAttemptManager chargeAttemptManager, AuthenticatedRestClient authenticatedRestClient, OfflineConfigHelper offlineConfigHelper, HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> offlineDiscreteLogger, OfflinePaymentMethodValidator offlinePaymentMethodValidator) {
        Intrinsics.checkNotNullParameter(apiRequestFactory, "apiRequestFactory");
        Intrinsics.checkNotNullParameter(transactionRepository, "transactionRepository");
        Intrinsics.checkNotNullParameter(offlineEventHandler, "offlineEventHandler");
        Intrinsics.checkNotNullParameter(statusManager, "statusManager");
        Intrinsics.checkNotNullParameter(offlineRequestHelper, "offlineRequestHelper");
        Intrinsics.checkNotNullParameter(customHeadersProvider, "customHeadersProvider");
        Intrinsics.checkNotNullParameter(chargeAttemptManager, "chargeAttemptManager");
        Intrinsics.checkNotNullParameter(authenticatedRestClient, "authenticatedRestClient");
        Intrinsics.checkNotNullParameter(offlineConfigHelper, "offlineConfigHelper");
        Intrinsics.checkNotNullParameter(offlineDiscreteLogger, "offlineDiscreteLogger");
        Intrinsics.checkNotNullParameter(offlinePaymentMethodValidator, "offlinePaymentMethodValidator");
        this.apiRequestFactory = apiRequestFactory;
        this.transactionRepository = transactionRepository;
        this.offlineEventHandler = offlineEventHandler;
        this.statusManager = statusManager;
        this.offlineRequestHelper = offlineRequestHelper;
        this.customHeadersProvider = customHeadersProvider;
        this.chargeAttemptManager = chargeAttemptManager;
        this.authenticatedRestClient = authenticatedRestClient;
        this.offlineConfigHelper = offlineConfigHelper;
        this.offlineDiscreteLogger = offlineDiscreteLogger;
        this.offlinePaymentMethodValidator = offlinePaymentMethodValidator;
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public ActivateReaderResponse activateReader(Reader reader, ConnectionConfiguration connectionConfiguration, Function2<? super BluetoothAutoReconnectConfigPb, ? super UsbAutoReconnectConfigPb, Unit> setReconnectParams) {
        Object objM817constructorimpl;
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(connectionConfiguration, "connectionConfiguration");
        Intrinsics.checkNotNullParameter(setReconnectParams, "setReconnectParams");
        LOGGER.startOperation(OfflineTrace.OfflineActivateReader.INSTANCE, OfflineTrace.OFFLINE_TRACE_ID);
        try {
            Result.Companion companion = Result.INSTANCE;
            OfflineDirectResourceRepository offlineDirectResourceRepository = this;
            ActivateReaderResponse activateReaderResponseOnActivateReaderRequest = this.offlineEventHandler.onActivateReaderRequest(reader, connectionConfiguration, setReconnectParams);
            this.authenticatedRestClient.setBlankSession();
            objM817constructorimpl = Result.m817constructorimpl(activateReaderResponseOnActivateReaderRequest);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m824isSuccessimpl(objM817constructorimpl)) {
            LOGGER.endOperation(ApplicationTraceResult.INSTANCE.success(), OfflineTrace.OFFLINE_TRACE_ID);
        }
        Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
        if (thM820exceptionOrNullimpl != null) {
            Log log = LOGGER;
            log.e(thM820exceptionOrNullimpl);
            log.endOperation(ApplicationTraceResult.INSTANCE.failure(thM820exceptionOrNullimpl), OfflineTrace.OFFLINE_TRACE_ID);
        }
        ResultKt.throwOnFailure(objM817constructorimpl);
        return (ActivateReaderResponse) objM817constructorimpl;
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public PaymentIntent createPaymentIntent(PaymentIntentParameters paymentIntentParameters, CreateConfiguration createConfiguration) {
        Object objM817constructorimpl;
        Intrinsics.checkNotNullParameter(paymentIntentParameters, "paymentIntentParameters");
        Intrinsics.checkNotNullParameter(createConfiguration, "createConfiguration");
        LOGGER.startOperation(OfflineTrace.OfflineCreatePayment.INSTANCE, OfflineTrace.OFFLINE_TRACE_ID);
        try {
            Result.Companion companion = Result.INSTANCE;
            OfflineDirectResourceRepository offlineDirectResourceRepository = this;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        if (createConfiguration.getOfflineBehavior() == OfflineBehavior.REQUIRE_ONLINE) {
            throw new TerminalException(TerminalErrorCode.NOT_CONNECTED_TO_INTERNET_AND_REQUIRE_ONLINE_SET, "provided createConfiguration does not allow creating payment intents offline", null, null, 12, null);
        }
        CreatePaymentIntentRequest createPaymentIntentRequestCreatePaymentIntent = this.apiRequestFactory.createPaymentIntent(paymentIntentParameters);
        objM817constructorimpl = Result.m817constructorimpl(this.offlineEventHandler.onCreatePaymentIntentRequest(createPaymentIntentRequestCreatePaymentIntent, MapsKt.plus(this.offlineRequestHelper.getHeaders(createPaymentIntentRequestCreatePaymentIntent), this.customHeadersProvider.customHeaders()), this.offlineRequestHelper.getBody(createPaymentIntentRequestCreatePaymentIntent), this.offlineRequestHelper.getUrl(createPaymentIntentRequestCreatePaymentIntent)));
        if (Result.m824isSuccessimpl(objM817constructorimpl)) {
            LOGGER.endOperation(ApplicationTraceResult.INSTANCE.success(), OfflineTrace.OFFLINE_TRACE_ID);
        }
        Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
        if (thM820exceptionOrNullimpl != null) {
            Log log = LOGGER;
            log.e(thM820exceptionOrNullimpl);
            log.endOperation(ApplicationTraceResult.INSTANCE.failure(thM820exceptionOrNullimpl), OfflineTrace.OFFLINE_TRACE_ID);
        }
        ResultKt.throwOnFailure(objM817constructorimpl);
        return (PaymentIntent) objM817constructorimpl;
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public SetupIntent createSetupIntent(SetupIntentParameters setupIntentParameters, CreateConfiguration createConfiguration) {
        Object objM817constructorimpl;
        Intrinsics.checkNotNullParameter(setupIntentParameters, "setupIntentParameters");
        Intrinsics.checkNotNullParameter(createConfiguration, "createConfiguration");
        LOGGER.startOperation(OfflineTrace.OfflineCreateSetupIntent.INSTANCE, OfflineTrace.OFFLINE_TRACE_ID);
        try {
            Result.Companion companion = Result.INSTANCE;
            OfflineDirectResourceRepository offlineDirectResourceRepository = this;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        if (createConfiguration.getOfflineBehavior() == OfflineBehavior.REQUIRE_ONLINE) {
            throw new TerminalException(TerminalErrorCode.NOT_CONNECTED_TO_INTERNET_AND_REQUIRE_ONLINE_SET, "provided createConfiguration does not allow creating payment intents offline", null, null, 12, null);
        }
        CreateSetupIntentRequest createSetupIntentRequestCreateSetupIntent = this.apiRequestFactory.createSetupIntent(setupIntentParameters);
        objM817constructorimpl = Result.m817constructorimpl(this.offlineEventHandler.onCreateSetupIntentRequest(createSetupIntentRequestCreateSetupIntent, MapsKt.plus(this.offlineRequestHelper.getHeaders(createSetupIntentRequestCreateSetupIntent), this.customHeadersProvider.customHeaders()), this.offlineRequestHelper.getBody(createSetupIntentRequestCreateSetupIntent), this.offlineRequestHelper.getUrl(createSetupIntentRequestCreateSetupIntent)));
        if (Result.m824isSuccessimpl(objM817constructorimpl)) {
            LOGGER.endOperation(ApplicationTraceResult.INSTANCE.success(), OfflineTrace.OFFLINE_TRACE_ID);
        }
        Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
        if (thM820exceptionOrNullimpl != null) {
            Log log = LOGGER;
            log.e(thM820exceptionOrNullimpl);
            log.endOperation(ApplicationTraceResult.INSTANCE.failure(thM820exceptionOrNullimpl), OfflineTrace.OFFLINE_TRACE_ID);
        }
        ResultKt.throwOnFailure(objM817constructorimpl);
        return (SetupIntent) objM817constructorimpl;
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public Refund confirmRefund(RefundParameters refundParams, CollectiblePayment collectiblePayment, Function1<? super String, ? extends Deferred<TransactionResult>> handleAuthResponse, OnlineAuthStateListener authStateListener) throws TerminalException {
        Intrinsics.checkNotNullParameter(refundParams, "refundParams");
        Intrinsics.checkNotNullParameter(handleAuthResponse, "handleAuthResponse");
        Intrinsics.checkNotNullParameter(authStateListener, "authStateListener");
        throw getUnsupportedOpException("confirmRefund");
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public PaymentIntent updatePaymentIntent(PaymentIntent paymentIntent, CollectiblePayment collectiblePayment, boolean requestDynamicCurrencyConversion) throws TerminalException {
        Intrinsics.checkNotNullParameter(paymentIntent, "paymentIntent");
        throw new TerminalException(TerminalErrorCode.UNEXPECTED_OPERATION, "Updating PaymentIntents is not supported in offline mode.", null, null, 12, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0135 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.stripe.stripeterminal.external.models.PaymentIntent confirmPaymentIntent(com.stripe.stripeterminal.external.models.PaymentIntent r18, kotlin.jvm.functions.Function0<com.stripe.transaction.CollectiblePayment> r19, kotlin.jvm.functions.Function1<? super java.lang.String, ? extends kotlinx.coroutines.Deferred<com.stripe.hardware.emv.TransactionResult>> r20, kotlin.jvm.functions.Function0<com.stripe.stripeterminal.internal.models.PaymentMethodData> r21, boolean r22, com.stripe.paymentcollection.OnlineAuthStateListener r23, java.lang.Long r24, java.lang.String r25) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 443
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.resourcerepository.OfflineDirectResourceRepository.confirmPaymentIntent(com.stripe.stripeterminal.external.models.PaymentIntent, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function0, boolean, com.stripe.paymentcollection.OnlineAuthStateListener, java.lang.Long, java.lang.String):com.stripe.stripeterminal.external.models.PaymentIntent");
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public SetupIntent confirmSetupIntent(SetupIntent intent, CollectiblePayment collectiblePayment, Function1<? super String, ? extends Deferred<TransactionResult>> handleAuthResponse, Function0<PaymentMethodData> collectScaPaymentMethodData, boolean immediateRecollectForSca, OnlineAuthStateListener authStateListener) {
        Object objM817constructorimpl;
        SetupIntent setupIntentOnConfirmSetupIntentRequest;
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(handleAuthResponse, "handleAuthResponse");
        Intrinsics.checkNotNullParameter(collectScaPaymentMethodData, "collectScaPaymentMethodData");
        Intrinsics.checkNotNullParameter(authStateListener, "authStateListener");
        LOGGER.startOperation(OfflineTrace.OfflineConfirmSetupIntent.INSTANCE, OfflineTrace.OFFLINE_TRACE_ID);
        try {
            Result.Companion companion = Result.INSTANCE;
            OfflineDirectResourceRepository offlineDirectResourceRepository = this;
            try {
                validateSetupIntent(intent);
                ConfirmSetupIntentRequest confirmSetupIntentRequestBuildConfirmSetupIntentRequest = buildConfirmSetupIntentRequest(intent, collectiblePayment);
                Pair<TlvMap, String> pairValidatePaymentMethod = this.offlinePaymentMethodValidator.validatePaymentMethod(confirmSetupIntentRequestBuildConfirmSetupIntentRequest.payment_method_data, intent.isLiveMode(), intent.getCollectedOffline(), true);
                TlvMap tlvMapComponent1 = pairValidatePaymentMethod.component1();
                String authorizationResponseCode = getAuthorizationResponseCode(tlvMapComponent1, pairValidatePaymentMethod.component2(), intent.isLiveMode(), true);
                sendAuthResponseCodeToDevice$default(this, null, intent, 0L, authorizationResponseCode, handleAuthResponse, authStateListener, null, 4, null);
                if (authorizationResponseCode != Messages.ONLINE_AUTHORIZATION_RESPONSE_APPROVE) {
                    intent.setPaymentMethodData(collectScaPaymentMethodData.invoke());
                    setupIntentOnConfirmSetupIntentRequest = confirmSetupIntent(intent, collectiblePayment, handleAuthResponse, collectScaPaymentMethodData, immediateRecollectForSca, authStateListener);
                } else {
                    setupIntentOnConfirmSetupIntentRequest = this.offlineEventHandler.onConfirmSetupIntentRequest(intent, tlvMapComponent1.toBlob(), confirmSetupIntentRequestBuildConfirmSetupIntentRequest, MapsKt.plus(this.offlineRequestHelper.getHeaders(confirmSetupIntentRequestBuildConfirmSetupIntentRequest), this.customHeadersProvider.customHeaders()), this.offlineRequestHelper.getBody(confirmSetupIntentRequestBuildConfirmSetupIntentRequest), this.offlineRequestHelper.getUrl(confirmSetupIntentRequestBuildConfirmSetupIntentRequest));
                }
                objM817constructorimpl = Result.m817constructorimpl(setupIntentOnConfirmSetupIntentRequest);
            } catch (TerminalException e) {
                this.offlinePaymentMethodValidator.emitHealthMetrics(e);
                sendAuthResponseCodeToDevice$default(this, null, intent, 0L, Messages.ONLINE_AUTHORIZATION_RESPONSE_DECLINE, handleAuthResponse, authStateListener, e.getErrorCode(), 4, null);
                throw e;
            } catch (Throwable th) {
                th = th;
                Result.Companion companion2 = Result.INSTANCE;
                objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
            }
        } catch (Throwable th2) {
            th = th2;
        }
        if (Result.m824isSuccessimpl(objM817constructorimpl)) {
            LOGGER.endOperation(ApplicationTraceResult.INSTANCE.success(), OfflineTrace.OFFLINE_TRACE_ID);
        }
        Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
        if (thM820exceptionOrNullimpl != null) {
            Log log = LOGGER;
            log.e(thM820exceptionOrNullimpl);
            log.endOperation(ApplicationTraceResult.INSTANCE.failure(thM820exceptionOrNullimpl), OfflineTrace.OFFLINE_TRACE_ID);
        }
        ResultKt.throwOnFailure(objM817constructorimpl);
        return (SetupIntent) objM817constructorimpl;
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public PaymentIntent cancelPaymentIntent(PaymentIntent intent) throws TerminalException {
        Intrinsics.checkNotNullParameter(intent, "intent");
        throw getUnsupportedOpException("cancelPaymentIntent");
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public SetupIntent cancelSetupIntent(SetupIntent intent, SetupIntentCancellationParameters params) throws TerminalException {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(params, "params");
        throw getUnsupportedOpException("cancelSetupIntent");
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public PaymentMethod readReusableCard(ReadReusableCardParameters readReusableCardParams, PaymentMethodData paymentMethodData) throws TerminalException {
        Intrinsics.checkNotNullParameter(readReusableCardParams, "readReusableCardParams");
        Intrinsics.checkNotNullParameter(paymentMethodData, "paymentMethodData");
        throw getUnsupportedOpException("createCardPaymentMethod");
    }

    private final TerminalException getUnsupportedOpException(String name) {
        return new TerminalException(TerminalErrorCode.UNEXPECTED_OPERATION, name + " is not supported in offline mode.", null, null, 12, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public Map<String, Location> getReaderLocations(List<String> deviceSerials) {
        Object objM817constructorimpl;
        Intrinsics.checkNotNullParameter(deviceSerials, "deviceSerials");
        try {
            Result.Companion companion = Result.INSTANCE;
            OfflineDirectResourceRepository offlineDirectResourceRepository = this;
            objM817constructorimpl = Result.m817constructorimpl(this.offlineEventHandler.onLocationsRequests(deviceSerials));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
        if (thM820exceptionOrNullimpl != null && (!(thM820exceptionOrNullimpl instanceof TerminalException) || ((TerminalException) thM820exceptionOrNullimpl).getErrorCode() != TerminalErrorCode.OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION)) {
            LOGGER.w(thM820exceptionOrNullimpl, "Failed to fetch saved locations", new Pair[0]);
        }
        Map mapEmptyMap = MapsKt.emptyMap();
        if (Result.m823isFailureimpl(objM817constructorimpl)) {
            objM817constructorimpl = mapEmptyMap;
        }
        return (Map) objM817constructorimpl;
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public Deferred<PaymentIntent> awaitActionRequiredPaymentIntentCompletion(String paymentIntentId, String accountId) throws TerminalException {
        Intrinsics.checkNotNullParameter(paymentIntentId, "paymentIntentId");
        throw getUnsupportedOpException("awaitActionRequiredPaymentIntentCompletion");
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public boolean completePaymentIntentActionRequired(String paymentIntentId, String accountId) throws TerminalException {
        Intrinsics.checkNotNullParameter(paymentIntentId, "paymentIntentId");
        throw getUnsupportedOpException("completePaymentIntentActionRequired");
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public void cancelPaymentIntentActionRequired() throws TerminalException {
        throw getUnsupportedOpException("cancelPaymentIntentActionRequired");
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public CollectedData createReaderCollectedData(PaymentMethodData paymentMethodData) throws TerminalException {
        Intrinsics.checkNotNullParameter(paymentMethodData, "paymentMethodData");
        throw getUnsupportedOpException("createReaderCollectedData");
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public void cancelConfirmPaymentIntent(com.stripe.stripeterminal.external.callable.Callback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        callback.onSuccess();
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public void cancelConfirmSetupIntent(com.stripe.stripeterminal.external.callable.Callback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        callback.onSuccess();
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ResourceRepository
    public void cancelConfirmRefund(com.stripe.stripeterminal.external.callable.Callback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        callback.onSuccess();
    }

    private final RestRequest<ConfirmPaymentIntentRequest, ConfirmPaymentIntentRequest.Builder> buildConfirmPaymentIntentRequest(PaymentIntent paymentIntent, Function0<CollectiblePayment> getCollectiblePayment) throws TerminalException {
        RestRequest<ConfirmPaymentIntentRequest, ConfirmPaymentIntentRequest.Builder> restRequestConfirmPaymentIntent$default;
        RequestedPaymentMethod requestedPaymentMethodCopy$default;
        RequestedPaymentMethod.RequestedCardPresent requestedCardPresent;
        Payment payment;
        Amount amountTip = this.transactionRepository.getAmountTip();
        AllowRedisplay allowRedisplay = this.transactionRepository.getAllowRedisplay();
        CollectiblePayment collectiblePaymentInvoke = getCollectiblePayment.invoke();
        if (collectiblePaymentInvoke == null || (payment = collectiblePaymentInvoke.getPayment()) == null || (restRequestConfirmPaymentIntent$default = this.apiRequestFactory.confirmCollectiblePayment(paymentIntent, payment.asRest(), amountTip, null, null, allowRedisplay)) == null) {
            LOGGER.w("Collectible payment is null in confirmPaymentIntent.", new Pair[0]);
            ApiRequestFactory apiRequestFactory = this.apiRequestFactory;
            Reader connectedReader = this.statusManager.getConnectedReader();
            restRequestConfirmPaymentIntent$default = ApiRequestFactory.confirmPaymentIntent$default(apiRequestFactory, paymentIntent, connectedReader != null ? connectedReader.getId() : null, amountTip, null, null, allowRedisplay, 16, null);
        }
        if (!this.offlineConfigHelper.isDeferredAuthorizationCountry()) {
            return restRequestConfirmPaymentIntent$default;
        }
        ConfirmPaymentIntentRequest confirmPaymentIntentRequest = (ConfirmPaymentIntentRequest) restRequestConfirmPaymentIntent$default.getBody();
        RequestedPaymentMethod requestedPaymentMethod = ((ConfirmPaymentIntentRequest) restRequestConfirmPaymentIntent$default.getBody()).payment_method_data;
        if (requestedPaymentMethod != null) {
            RequestedPaymentMethod requestedPaymentMethod2 = ((ConfirmPaymentIntentRequest) restRequestConfirmPaymentIntent$default.getBody()).payment_method_data;
            requestedPaymentMethodCopy$default = RequestedPaymentMethod.copy$default(requestedPaymentMethod, null, (requestedPaymentMethod2 == null || (requestedCardPresent = requestedPaymentMethod2.card_present) == null) ? null : RequestedPaymentMethod.RequestedCardPresent.copy$default(requestedCardPresent, null, null, null, null, EmvProcessingMethod.QUICK_CHIP.getMethod(), null, null, null, null, null, null, null, null, null, null, null, 65519, null), null, null, null, null, null, WinError.ERROR_NO_VOLUME_LABEL, null);
        } else {
            requestedPaymentMethodCopy$default = null;
        }
        return RestRequest.copy$default(restRequestConfirmPaymentIntent$default, ConfirmPaymentIntentRequest.copy$default(confirmPaymentIntentRequest, null, null, requestedPaymentMethodCopy$default, null, null, null, null, null, null, null, null, 2043, null), null, 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final ConfirmSetupIntentRequest buildConfirmSetupIntentRequest(SetupIntent setupIntent, CollectiblePayment collectiblePayment) throws TerminalException {
        ConfirmSetupIntentRequest confirmSetupIntentRequestConfirmSetupIntent;
        RequestedPaymentMethod.RequestedCardPresent requestedCardPresent;
        Payment payment;
        RequestedPaymentMethod requestedPaymentMethodCopy$default;
        AllowRedisplay allowRedisplay = this.transactionRepository.getAllowRedisplay();
        Message messageCopy$default = null;
        if (collectiblePayment != null && (payment = collectiblePayment.getPayment()) != null) {
            List listListOf = CollectionsKt.listOf("latest_attempt");
            String id = setupIntent.getId();
            RequestedPaymentMethod requestedPaymentMethodAsRest = payment.asRest();
            if (requestedPaymentMethodAsRest != null) {
                requestedPaymentMethodCopy$default = RequestedPaymentMethod.copy$default(requestedPaymentMethodAsRest, null, null, null, null, null, allowRedisplay != null ? allowRedisplay.getValue() : null, null, 95, null);
            } else {
                requestedPaymentMethodCopy$default = null;
            }
            confirmSetupIntentRequestConfirmSetupIntent = new ConfirmSetupIntentRequest(listListOf, requestedPaymentMethodCopy$default, null, null, null, id, null, 92, null);
        } else {
            LOGGER.w("Collectible payment is null in confirmPaymentIntent.", new Pair[0]);
            confirmSetupIntentRequestConfirmSetupIntent = this.apiRequestFactory.confirmSetupIntent(setupIntent, allowRedisplay);
        }
        ConfirmSetupIntentRequest confirmSetupIntentRequest = confirmSetupIntentRequestConfirmSetupIntent;
        if (!this.offlineConfigHelper.isDeferredAuthorizationCountry()) {
            return confirmSetupIntentRequest;
        }
        RequestedPaymentMethod requestedPaymentMethod = confirmSetupIntentRequest.payment_method_data;
        if (requestedPaymentMethod != null) {
            RequestedPaymentMethod requestedPaymentMethod2 = confirmSetupIntentRequest.payment_method_data;
            if (requestedPaymentMethod2 != null && (requestedCardPresent = requestedPaymentMethod2.card_present) != null) {
                messageCopy$default = RequestedPaymentMethod.RequestedCardPresent.copy$default(requestedCardPresent, null, null, null, null, EmvProcessingMethod.QUICK_CHIP.getMethod(), null, null, null, null, null, null, null, null, null, null, null, 65519, null);
            }
            messageCopy$default = RequestedPaymentMethod.copy$default(requestedPaymentMethod, null, messageCopy$default, null, null, null, null, null, WinError.ERROR_NO_VOLUME_LABEL, null);
        }
        return ConfirmSetupIntentRequest.copy$default(confirmSetupIntentRequest, null, messageCopy$default, null, null, null, null, null, WinError.ERROR_NO_VOLUME_LABEL, null);
    }

    private final void validatePaymentIntent(PaymentIntent intent) throws TerminalException {
        if (intent.getOfflineBehavior() == OfflineBehavior.REQUIRE_ONLINE) {
            throw new TerminalException(TerminalErrorCode.NOT_CONNECTED_TO_INTERNET_AND_REQUIRE_ONLINE_SET, "Provided PaymentIntent has offlineBehavior set to REQUIRE_ONLINE. Cannot process offline.", null, null, 12, null);
        }
        if (intent.getStatus() != PaymentIntentStatus.REQUIRES_PAYMENT_METHOD && intent.getStatus() != PaymentIntentStatus.REQUIRES_CONFIRMATION) {
            throw new TerminalException(TerminalErrorCode.CONFIRM_INVALID_PAYMENT_INTENT, "Only PaymentIntents with " + PaymentIntentStatus.REQUIRES_PAYMENT_METHOD + " or " + PaymentIntentStatus.REQUIRES_CONFIRMATION + " status may be confirmed.", null, null, 12, null);
        }
    }

    private final void validateSetupIntent(SetupIntent intent) throws TerminalException {
        if (intent.getOfflineBehavior() == OfflineBehavior.REQUIRE_ONLINE) {
            throw new TerminalException(TerminalErrorCode.NOT_CONNECTED_TO_INTERNET_AND_REQUIRE_ONLINE_SET, "Provided SetupIntent has offlineBehavior set to REQUIRE_ONLINE. Cannot process offline.", null, null, 12, null);
        }
        if (intent.getStatus() == SetupIntentStatus.SUCCEEDED) {
            throw new TerminalException(TerminalErrorCode.CONFIRM_INVALID_SETUP_INTENT, "Provided SetupIntent already has requires_capture status and cannot be processed again.", null, null, 12, null);
        }
    }

    private final String getAuthorizationResponseCode(TlvMap parsedEmvData, String readMethod, boolean livemode, boolean isSetupIntent) throws IllegalAccessException, InstantiationException, TerminalException {
        String id;
        boolean z = Intrinsics.areEqual(readMethod, ReadMethod.CONTACTLESS_EMV.getMethod()) && this.offlineConfigHelper.supportsSca() && !parsedEmvData.isMobileWallet() && !isSetupIntent;
        boolean z2 = Intrinsics.areEqual(readMethod, ReadMethod.CONTACTLESS_EMV.getMethod()) && livemode && this.offlineConfigHelper.isCardDenylistedForOffline(parsedEmvData.getFirst6(), parsedEmvData.getLast4(), parsedEmvData.getCardholderName()) && !parsedEmvData.isMobileWallet();
        if (!z && !z2) {
            return Messages.ONLINE_AUTHORIZATION_RESPONSE_APPROVE;
        }
        ApplicationId applicationId = parsedEmvData.getApplicationId();
        if ((applicationId == null || (id = applicationId.getId()) == null) && (id = parsedEmvData.get(TlvMap.TAG_APPLICATION_ID)) == null) {
            throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Failed to retrieve application ID from card EMV data.", null, null, 12, null);
        }
        String strSwitchInterfaceAuthorizationResponseCodeForAid = this.offlineConfigHelper.switchInterfaceAuthorizationResponseCodeForAid(id);
        if (strSwitchInterfaceAuthorizationResponseCodeForAid != null) {
            LOGGER.i("Prompting cardholder to switch interface " + (z ? "to avoid SCA soft-decline" : "to evaluate cardholder name") + '.', new Pair[0]);
            return strSwitchInterfaceAuthorizationResponseCodeForAid;
        }
        HealthLogger.incrementCounter$default(this.offlineDiscreteLogger, null, null, null, new Function2<DiscreteScope.Builder, Counter, Unit>() { // from class: com.stripe.stripeterminal.internal.common.resourcerepository.OfflineDirectResourceRepository$getAuthorizationResponseCode$2$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(DiscreteScope.Builder builder, Counter counter) {
                invoke2(builder, counter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DiscreteScope.Builder incrementCounter, Counter it) {
                Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                Intrinsics.checkNotNullParameter(it, "it");
                incrementCounter.missing_offline_arc_for_aid = it;
            }
        }, 7, null);
        if (z) {
            LOGGER.w("Attempted to force SCA flow for unrecognized AID: " + id + ". Succeeding transaction.", new Pair[0]);
            return Messages.ONLINE_AUTHORIZATION_RESPONSE_APPROVE;
        }
        LOGGER.w("Attempted to force SCA flow to evaluate cardholder name for unrecognized AID: " + id + ". Declining transaction.", new Pair[0]);
        throw new TerminalException(TerminalErrorCode.TEST_CARD_IN_LIVEMODE, "Your card was declined. Your request was in live mode, but used a known test card.", null, null, 12, null);
    }

    private final /* synthetic */ <T> T executeWithOfflineTracing(OfflineTrace offlineTrace, Function0<? extends T> operation) {
        T t;
        LOGGER.startOperation(offlineTrace, OfflineTrace.OFFLINE_TRACE_ID);
        try {
            Result.Companion companion = Result.INSTANCE;
            OfflineDirectResourceRepository offlineDirectResourceRepository = this;
            t = (T) Result.m817constructorimpl(operation.invoke());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            t = (T) Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m824isSuccessimpl(t)) {
            LOGGER.endOperation(ApplicationTraceResult.INSTANCE.success(), OfflineTrace.OFFLINE_TRACE_ID);
        }
        Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(t);
        if (thM820exceptionOrNullimpl != null) {
            Log log = LOGGER;
            log.e(thM820exceptionOrNullimpl);
            log.endOperation(ApplicationTraceResult.INSTANCE.failure(thM820exceptionOrNullimpl), OfflineTrace.OFFLINE_TRACE_ID);
        }
        ResultKt.throwOnFailure(t);
        return t;
    }

    static /* synthetic */ void sendAuthResponseCodeToDevice$default(OfflineDirectResourceRepository offlineDirectResourceRepository, PaymentIntent paymentIntent, SetupIntent setupIntent, long j, String str, Function1 function1, OnlineAuthStateListener onlineAuthStateListener, TerminalErrorCode terminalErrorCode, int i, Object obj) throws TerminalException {
        if ((i & 4) != 0) {
            j = 0;
        }
        offlineDirectResourceRepository.sendAuthResponseCodeToDevice(paymentIntent, setupIntent, j, str, function1, onlineAuthStateListener, terminalErrorCode);
    }

    private final void sendAuthResponseCodeToDevice(PaymentIntent paymentIntent, SetupIntent setupIntent, long tipAmount, String authResponseCode, Function1<? super String, ? extends Deferred<TransactionResult>> handleAuthResponse, OnlineAuthStateListener authStateListener, TerminalErrorCode declineCode) throws TerminalException {
        String strRequireOnlineOrOfflineId;
        ChargeAttempt.ExtendedAttempt extendedAttempt;
        OnlineAuthState.ConfirmationResponseReceived.Failed failed;
        if (Intrinsics.areEqual(authResponseCode, Messages.ONLINE_AUTHORIZATION_RESPONSE_APPROVE)) {
            if (paymentIntent != null) {
                long amount = paymentIntent.getAmount() + tipAmount;
                String currency = paymentIntent.getCurrency();
                if (currency == null) {
                    currency = "";
                }
                extendedAttempt = new ChargeAttempt.CompletedAttempt.SuccessfulCharge("", "", new Amount(amount, currency), null, null);
            } else if (setupIntent != null) {
                extendedAttempt = ChargeAttempt.CompletedAttempt.SuccessfulSetupIntent.INSTANCE;
            } else {
                throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "PaymentIntent or SetupIntent should always be defined.", null, null, 12, null);
            }
            failed = new OnlineAuthState.ConfirmationResponseReceived.Success(Messages.ONLINE_AUTHORIZATION_RESPONSE_APPROVE, extendedAttempt);
        } else if (Intrinsics.areEqual(authResponseCode, Messages.ONLINE_AUTHORIZATION_RESPONSE_DECLINE)) {
            extendedAttempt = new ChargeAttempt.CompletedAttempt.DeclinedCharge(String.valueOf(declineCode));
            failed = new OnlineAuthState.ConfirmationResponseReceived.Failed(OnlineAuthFailureReason.DECLINED, Messages.ONLINE_AUTHORIZATION_RESPONSE_DECLINE, extendedAttempt);
        } else {
            if (paymentIntent != null) {
                strRequireOnlineOrOfflineId = OfflineAdapterKt.requireOnlineOrOfflineId(paymentIntent);
            } else if (setupIntent != null) {
                strRequireOnlineOrOfflineId = OfflineAdapterKt.requireOnlineOrOfflineId(setupIntent);
            } else {
                throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "PaymentIntent or SetupIntent should always be defined.", null, null, 12, null);
            }
            extendedAttempt = new ChargeAttempt.ExtendedAttempt(strRequireOnlineOrOfflineId, ChargeAttempt.ExtendedAttempt.Requirement.OFFLINE_PIN_REQUIRED);
            failed = new OnlineAuthState.ConfirmationResponseReceived.Failed(OnlineAuthFailureReason.SCA_NEEDED, authResponseCode, extendedAttempt);
        }
        handleAuthResponse.invoke(authResponseCode);
        this.chargeAttemptManager.setChargeAttempt(extendedAttempt);
        authStateListener.onOnlineAuthStateChanged(failed);
    }
}
