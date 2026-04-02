package com.stripe.offlinemode;

import androidx.core.view.InputDeviceCompat;
import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.device.ActiveLocationConfigRepository;
import com.stripe.device.OfflineLocationConfigs;
import com.stripe.jvmcore.dagger.Offline;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.jvmcore.terminal.api.PosInfo;
import com.stripe.jvmcore.terminal.api.PosInfoFactory;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.offlinemode.forwarding.OfflineForwardingManager;
import com.stripe.offlinemode.helpers.OfflineConfigHelper;
import com.stripe.offlinemode.log.OfflineDeclineReasons;
import com.stripe.offlinemode.log.OfflineMetricTags;
import com.stripe.offlinemode.storage.OfflineRepository;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.api.rest.ConfirmPaymentIntentRequest;
import com.stripe.proto.api.rest.ConfirmSetupIntentRequest;
import com.stripe.proto.api.rest.CreatePaymentIntentRequest;
import com.stripe.proto.api.rest.CreateSetupIntentRequest;
import com.stripe.proto.api.rest.RequestedPaymentMethod;
import com.stripe.proto.model.merchant.ApiLocationPb;
import com.stripe.proto.model.offline_mode.NameValuePair;
import com.stripe.proto.model.offline_mode.OfflineApiRequest;
import com.stripe.proto.model.offline_mode.OfflineConnection;
import com.stripe.proto.model.offline_mode.OfflineLocation;
import com.stripe.proto.model.offline_mode.OfflineReader;
import com.stripe.proto.model.rest.Method;
import com.stripe.proto.model.rest.SetupIntent;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter;
import com.stripe.stripeterminal.external.models.CaptureMethod;
import com.stripe.stripeterminal.external.models.ConnectionConfiguration;
import com.stripe.stripeterminal.external.models.Location;
import com.stripe.stripeterminal.external.models.NetworkStatus;
import com.stripe.stripeterminal.external.models.OfflineDetails;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.PaymentIntentStatus;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.SetupIntentOfflineDetails;
import com.stripe.stripeterminal.external.models.SetupIntentStatus;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.external.models.Tip;
import com.stripe.stripeterminal.internal.common.adapter.BbposAdapter;
import com.stripe.stripeterminal.internal.common.adapter.OfflineAdapterKt;
import com.stripe.stripeterminal.internal.common.extensions.PaymentIntentExtensionsKt;
import com.stripe.stripeterminal.internal.common.extensions.ReaderExtensionsKt;
import com.stripe.stripeterminal.internal.common.extensions.SetupIntentExtensionsKt;
import com.stripe.stripeterminal.internal.common.proto.ProtoConverter;
import com.stripe.time.Clock;
import com.sun.jna.platform.win32.WinError;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference0Impl;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: DefaultOfflineEventHandler.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000¬\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0014\u0018\u0000 }2\u00020\u0001:\u0002}~B\u0097\u0001\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0001\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u000e\b\u0001\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013\u0012\"\u0010\u0015\u001a\u001e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a0\u0016j\u0002`\u001b\u0012\u0016\u0010\u001c\u001a\u0012\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001f0\u001dj\u0002` ¢\u0006\u0002\u0010!J\u0016\u0010-\u001a\u00020&2\f\u0010.\u001a\b\u0012\u0004\u0012\u00020&0/H\u0016Jb\u00100\u001a\u0002012\u0006\u00102\u001a\u0002032\b\u00104\u001a\u0004\u0018\u0001052\b\u00106\u001a\u0004\u0018\u0001052\u0018\u00107\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u00020509082\u0012\u0010:\u001a\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u0002050;2\u0006\u0010<\u001a\u0002052\u0006\u0010=\u001a\u00020>H\u0002JR\u0010?\u001a\u000e\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u00020)092\u0006\u00102\u001a\u0002032\u0018\u00107\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u00020509082\u0012\u0010:\u001a\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u0002050;2\u0006\u0010<\u001a\u000205H\u0002J\u0010\u0010@\u001a\u00020&2\u0006\u0010A\u001a\u000205H\u0016J\b\u0010B\u001a\u00020&H\u0016J'\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020>2\b\u0010H\u001a\u0004\u0018\u00010)H\u0002¢\u0006\u0002\u0010IJ \u0010J\u001a\u00020K2\u0006\u0010L\u001a\u00020M2\u0006\u0010G\u001a\u00020>2\u0006\u0010H\u001a\u00020)H\u0002J\b\u0010N\u001a\u00020&H\u0007JX\u0010O\u001a\u00020P2\u0006\u0010Q\u001a\u00020R2\u0006\u0010S\u001a\u00020*2>\u0010T\u001a:\u0012\u0015\u0012\u0013\u0018\u00010V¢\u0006\f\bW\u0012\b\bX\u0012\u0004\b\b(Y\u0012\u0015\u0012\u0013\u0018\u00010Z¢\u0006\f\bW\u0012\b\bX\u0012\u0004\b\b([\u0012\u0004\u0012\u00020&0Uj\u0002`\\H\u0016JV\u0010]\u001a\u00020^2\u0006\u0010_\u001a\u00020^2\u0006\u0010`\u001a\u0002052\u0006\u0010a\u001a\u00020b2\u0012\u0010:\u001a\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u0002050;2\u0018\u00107\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u00020509082\u0006\u0010<\u001a\u000205H\u0016JV\u0010c\u001a\u00020d2\u0006\u0010_\u001a\u00020d2\u0006\u0010`\u001a\u0002052\u0006\u0010e\u001a\u00020f2\u0012\u0010:\u001a\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u0002050;2\u0018\u00107\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u00020509082\u0006\u0010<\u001a\u000205H\u0016JF\u0010g\u001a\u00020^2\u0006\u0010h\u001a\u00020F2\u0012\u0010:\u001a\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u0002050;2\u0018\u00107\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u00020509082\u0006\u0010<\u001a\u000205H\u0016JF\u0010i\u001a\u00020d2\u0006\u0010h\u001a\u00020M2\u0012\u0010:\u001a\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u0002050;2\u0018\u00107\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u00020509082\u0006\u0010<\u001a\u000205H\u0016J\"\u0010j\u001a\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u00020k0;2\f\u0010l\u001a\b\u0012\u0004\u0012\u00020508H\u0016J \u0010m\u001a\u00020&2\u0006\u0010n\u001a\u0002052\u0006\u0010Q\u001a\u00020R2\u0006\u0010S\u001a\u00020*H\u0016J\b\u0010o\u001a\u00020#H\u0002J\u0010\u0010p\u001a\u00020&2\u0006\u0010n\u001a\u000205H\u0002J\u0010\u0010q\u001a\u00020&2\u0006\u0010S\u001a\u00020*H\u0002J\b\u0010r\u001a\u00020&H\u0016J\u0010\u0010s\u001a\u00020&2\u0006\u0010A\u001a\u000205H\u0016J!\u0010t\u001a\u00020&2\b\u0010u\u001a\u0004\u0018\u0001052\b\u0010v\u001a\u0004\u0018\u00010>H\u0002¢\u0006\u0002\u0010wJ,\u0010x\u001a\u0002Hy\"\u0006\b\u0000\u0010y\u0018\u00012\u0006\u0010z\u001a\u0002052\f\u0010{\u001a\b\u0012\u0004\u0012\u0002Hy0/H\u0082\b¢\u0006\u0002\u0010|R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u001c\u001a\u0012\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001f0\u001dj\u0002` X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\u0015\u001a\u001e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a0\u0016j\u0002`\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010%\u001a\b\u0012\u0004\u0012\u00020&0\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020#X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010(\u001a\u00020)*\u00020*8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b+\u0010,¨\u0006\u007f"}, d2 = {"Lcom/stripe/offlinemode/DefaultOfflineEventHandler;", "Lcom/stripe/offlinemode/OfflineEventHandler;", "clock", "Lcom/stripe/time/Clock;", "offlineRepository", "Lcom/stripe/offlinemode/storage/OfflineRepository;", "offlineIdGenerator", "Lcom/stripe/offlinemode/OfflineIdGenerator;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "activeLocationConfigRepository", "Lcom/stripe/device/ActiveLocationConfigRepository;", "posInfoFactory", "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;", "offlineForwardingManager", "Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;", "offlineConfigHelper", "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;", "stripeNetworkStatusFlow", "Lkotlinx/coroutines/flow/Flow;", "Lcom/stripe/stripeterminal/external/models/NetworkStatus;", "offlineDiscreteLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;", "Lcom/stripe/offlinemode/log/OfflineDiscreteLogger;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/time/Clock;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/offlinemode/OfflineIdGenerator;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/device/ActiveLocationConfigRepository;Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lkotlinx/coroutines/flow/Flow;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "enqueueActivateReaderJob", "Lkotlinx/coroutines/Job;", "onlineTransitionFlow", "restartForwardingFlow", "", "restartForwardingOfflinePaymentsJob", "supportsOffline", "", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "getSupportsOffline", "(Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)Z", "activateReaderWhenOnline", "enqueueActivateReader", "Lkotlin/Function0;", "buildBaseConfirmRequest", "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;", "type", "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;", "entityId", "", "offlineId", "requestParams", "", "Lkotlin/Pair;", "requestHeaders", "", BbposAdapter.ENDPOINT_TAG_KEY, "createdAt", "", "buildBaseCreateRequest", "cancelPendingActivations", "reason", "clear", "createPaymentIntent", "Lcom/stripe/proto/model/rest/PaymentIntent;", "createPaymentIntentRequest", "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;", "timestampMs", "livemode", "(Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;JLjava/lang/Boolean;)Lcom/stripe/proto/model/rest/PaymentIntent;", "createSetupIntent", "Lcom/stripe/proto/model/rest/SetupIntent;", "createSetupIntentRequest", "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;", "listenForLocationOfflineConfig", "onActivateReaderRequest", "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "connectionConfiguration", "setReconnectParams", "Lkotlin/Function2;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;", "Lkotlin/ParameterName;", "name", "bluetoothConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;", "usbConfig", "Lcom/stripe/offlinemode/helpers/SetReconnectParams;", "onConfirmPaymentIntentRequest", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "intent", "emvData", "confirmPaymentIntentRequest", "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;", "onConfirmSetupIntentRequest", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", "confirmSetupIntentRequest", "Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;", "onCreatePaymentIntentRequest", "request", "onCreateSetupIntentRequest", "onLocationsRequests", "Lcom/stripe/stripeterminal/external/models/Location;", "deviceSerials", "onReaderActivated", "accountId", "resumeForwardingOfflinePayments", "setAccountId", "setOfflineSetupIntentSupport", "startForwardingOfflinePayments", "stopForwardingOfflinePayments", "validatePaymentAmount", FirebaseAnalytics.Param.CURRENCY, BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "(Ljava/lang/String;Ljava/lang/Long;)V", "wrapErrorsAsTerminalException", "T", "errorMessage", "block", "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "Companion", "ParsedReaderInfo", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultOfflineEventHandler implements OfflineEventHandler {
    private static final long FORCE_RESUME_INTERVAL_MS = 600000;
    private static final long LOCATION_CONFIG_RETRY_INTERVAL_MS = 60000;
    private static final long ONE_SECOND_MS = 1000;
    private static final String PAYMENT_OFFLINE_ID_KEY = "payment_method_options[card_present][offline][id]";
    private static final String PAYMENT_STORED_AT_KEY = "payment_method_data[card_present][offline][stored_at]";
    private final ActiveLocationConfigRepository activeLocationConfigRepository;
    private final Clock clock;
    private Job enqueueActivateReaderJob;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final OfflineConfigHelper offlineConfigHelper;
    private final HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> offlineDiscreteLogger;
    private final OfflineForwardingManager offlineForwardingManager;
    private final OfflineIdGenerator offlineIdGenerator;
    private final OfflineRepository offlineRepository;
    private final Flow<NetworkStatus> onlineTransitionFlow;
    private final PosInfoFactory posInfoFactory;
    private final Flow<Unit> restartForwardingFlow;
    private Job restartForwardingOfflinePaymentsJob;
    private final CoroutineScope scope;
    private final Flow<NetworkStatus> stripeNetworkStatusFlow;

    /* JADX WARN: Multi-variable type inference failed */
    public DefaultOfflineEventHandler(Clock clock, @Offline OfflineRepository offlineRepository, OfflineIdGenerator offlineIdGenerator, @Offline CoroutineScope scope, ActiveLocationConfigRepository activeLocationConfigRepository, PosInfoFactory posInfoFactory, OfflineForwardingManager offlineForwardingManager, OfflineConfigHelper offlineConfigHelper, @Offline final Flow<? extends NetworkStatus> stripeNetworkStatusFlow, HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> offlineDiscreteLogger, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(offlineRepository, "offlineRepository");
        Intrinsics.checkNotNullParameter(offlineIdGenerator, "offlineIdGenerator");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(activeLocationConfigRepository, "activeLocationConfigRepository");
        Intrinsics.checkNotNullParameter(posInfoFactory, "posInfoFactory");
        Intrinsics.checkNotNullParameter(offlineForwardingManager, "offlineForwardingManager");
        Intrinsics.checkNotNullParameter(offlineConfigHelper, "offlineConfigHelper");
        Intrinsics.checkNotNullParameter(stripeNetworkStatusFlow, "stripeNetworkStatusFlow");
        Intrinsics.checkNotNullParameter(offlineDiscreteLogger, "offlineDiscreteLogger");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.clock = clock;
        this.offlineRepository = offlineRepository;
        this.offlineIdGenerator = offlineIdGenerator;
        this.scope = scope;
        this.activeLocationConfigRepository = activeLocationConfigRepository;
        this.posInfoFactory = posInfoFactory;
        this.offlineForwardingManager = offlineForwardingManager;
        this.offlineConfigHelper = offlineConfigHelper;
        this.stripeNetworkStatusFlow = stripeNetworkStatusFlow;
        this.offlineDiscreteLogger = offlineDiscreteLogger;
        this.logger = logger;
        this.restartForwardingOfflinePaymentsJob = resumeForwardingOfflinePayments();
        final Flow<NetworkStatus> flow = new Flow<NetworkStatus>() { // from class: com.stripe.offlinemode.DefaultOfflineEventHandler$special$$inlined$filter$1

            /* JADX INFO: renamed from: com.stripe.offlinemode.DefaultOfflineEventHandler$special$$inlined$filter$1$2, reason: invalid class name */
            /* JADX INFO: compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", PrinterTextParser.TAGS_ALIGN_RIGHT, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$filter$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* JADX INFO: renamed from: com.stripe.offlinemode.DefaultOfflineEventHandler$special$$inlined$filter$1$2$1, reason: invalid class name */
                /* JADX INFO: compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "com.stripe.offlinemode.DefaultOfflineEventHandler$special$$inlined$filter$1$2", f = "DefaultOfflineEventHandler.kt", i = {}, l = {219}, m = "emit", n = {}, s = {})
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    Object L$1;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.$this_unsafeFlow = flowCollector;
                }

                /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r6, kotlin.coroutines.Continuation r7) {
                    /*
                        r5 = this;
                        boolean r0 = r7 instanceof com.stripe.offlinemode.DefaultOfflineEventHandler$special$$inlined$filter$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L14
                        r0 = r7
                        com.stripe.offlinemode.DefaultOfflineEventHandler$special$$inlined$filter$1$2$1 r0 = (com.stripe.offlinemode.DefaultOfflineEventHandler$special$$inlined$filter$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r1 = r1 & r2
                        if (r1 == 0) goto L14
                        int r7 = r0.label
                        int r7 = r7 - r2
                        r0.label = r7
                        goto L19
                    L14:
                        com.stripe.offlinemode.DefaultOfflineEventHandler$special$$inlined$filter$1$2$1 r0 = new com.stripe.offlinemode.DefaultOfflineEventHandler$special$$inlined$filter$1$2$1
                        r0.<init>(r7)
                    L19:
                        java.lang.Object r7 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L32
                        if (r2 != r3) goto L2a
                        kotlin.ResultKt.throwOnFailure(r7)
                        goto L4a
                    L2a:
                        java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                        java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                        r6.<init>(r7)
                        throw r6
                    L32:
                        kotlin.ResultKt.throwOnFailure(r7)
                        kotlinx.coroutines.flow.FlowCollector r7 = r5.$this_unsafeFlow
                        r2 = r0
                        kotlin.coroutines.Continuation r2 = (kotlin.coroutines.Continuation) r2
                        r2 = r6
                        com.stripe.stripeterminal.external.models.NetworkStatus r2 = (com.stripe.stripeterminal.external.models.NetworkStatus) r2
                        com.stripe.stripeterminal.external.models.NetworkStatus r4 = com.stripe.stripeterminal.external.models.NetworkStatus.ONLINE
                        if (r2 != r4) goto L4a
                        r0.label = r3
                        java.lang.Object r6 = r7.emit(r6, r0)
                        if (r6 != r1) goto L4a
                        return r1
                    L4a:
                        kotlin.Unit r6 = kotlin.Unit.INSTANCE
                        return r6
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.DefaultOfflineEventHandler$special$$inlined$filter$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super NetworkStatus> flowCollector, Continuation continuation) {
                Object objCollect = stripeNetworkStatusFlow.collect(new AnonymousClass2(flowCollector), continuation);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }
        };
        this.onlineTransitionFlow = flow;
        this.restartForwardingFlow = FlowKt.merge(CollectionsKt.listOf((Object[]) new Flow[]{new Flow<Unit>() { // from class: com.stripe.offlinemode.DefaultOfflineEventHandler$special$$inlined$map$1

            /* JADX INFO: renamed from: com.stripe.offlinemode.DefaultOfflineEventHandler$special$$inlined$map$1$2, reason: invalid class name */
            /* JADX INFO: compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", PrinterTextParser.TAGS_ALIGN_RIGHT, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* JADX INFO: renamed from: com.stripe.offlinemode.DefaultOfflineEventHandler$special$$inlined$map$1$2$1, reason: invalid class name */
                /* JADX INFO: compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "com.stripe.offlinemode.DefaultOfflineEventHandler$special$$inlined$map$1$2", f = "DefaultOfflineEventHandler.kt", i = {}, l = {219}, m = "emit", n = {}, s = {})
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.$this_unsafeFlow = flowCollector;
                }

                /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r5, kotlin.coroutines.Continuation r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof com.stripe.offlinemode.DefaultOfflineEventHandler$special$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L14
                        r0 = r6
                        com.stripe.offlinemode.DefaultOfflineEventHandler$special$$inlined$map$1$2$1 r0 = (com.stripe.offlinemode.DefaultOfflineEventHandler$special$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r1 = r1 & r2
                        if (r1 == 0) goto L14
                        int r6 = r0.label
                        int r6 = r6 - r2
                        r0.label = r6
                        goto L19
                    L14:
                        com.stripe.offlinemode.DefaultOfflineEventHandler$special$$inlined$map$1$2$1 r0 = new com.stripe.offlinemode.DefaultOfflineEventHandler$special$$inlined$map$1$2$1
                        r0.<init>(r6)
                    L19:
                        java.lang.Object r6 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L32
                        if (r2 != r3) goto L2a
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L47
                    L2a:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L32:
                        kotlin.ResultKt.throwOnFailure(r6)
                        kotlinx.coroutines.flow.FlowCollector r6 = r4.$this_unsafeFlow
                        r2 = r0
                        kotlin.coroutines.Continuation r2 = (kotlin.coroutines.Continuation) r2
                        com.stripe.stripeterminal.external.models.NetworkStatus r5 = (com.stripe.stripeterminal.external.models.NetworkStatus) r5
                        kotlin.Unit r5 = kotlin.Unit.INSTANCE
                        r0.label = r3
                        java.lang.Object r5 = r6.emit(r5, r0)
                        if (r5 != r1) goto L47
                        return r1
                    L47:
                        kotlin.Unit r5 = kotlin.Unit.INSTANCE
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.DefaultOfflineEventHandler$special$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super Unit> flowCollector, Continuation continuation) {
                Object objCollect = flow.collect(new AnonymousClass2(flowCollector), continuation);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }
        }, FlowKt.flow(new DefaultOfflineEventHandler$restartForwardingFlow$2(null))}));
    }

    private final void setAccountId(String accountId) {
        this.offlineRepository.setActiveAccountId(accountId);
    }

    private final void setOfflineSetupIntentSupport(ConnectionConfiguration connectionConfiguration) {
        boolean supportsOfflineSetupIntents;
        OfflineRepository offlineRepository = this.offlineRepository;
        if (connectionConfiguration instanceof ConnectionConfiguration.EmbeddedConnectionConfiguration) {
            supportsOfflineSetupIntents = ((ConnectionConfiguration.EmbeddedConnectionConfiguration) connectionConfiguration).getSupportsOfflineSetupIntents();
        } else {
            if (!(connectionConfiguration instanceof ConnectionConfiguration.BluetoothConnectionConfiguration ? true : connectionConfiguration instanceof ConnectionConfiguration.InternetConnectionConfiguration ? true : connectionConfiguration instanceof ConnectionConfiguration.HandoffConnectionConfiguration ? true : connectionConfiguration instanceof ConnectionConfiguration.TapToPayConnectionConfiguration ? true : connectionConfiguration instanceof ConnectionConfiguration.UsbConnectionConfiguration)) {
                throw new NoWhenBranchMatchedException();
            }
            supportsOfflineSetupIntents = true;
        }
        offlineRepository.setCurrentConnectionSupportsOfflineSetupIntents(supportsOfflineSetupIntents);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2 */
    @Override // com.stripe.offlinemode.OfflineReaderSetup
    public void onReaderActivated(String accountId, Reader reader, ConnectionConfiguration connectionConfiguration) {
        Object objM817constructorimpl;
        DefaultOfflineEventHandler defaultOfflineEventHandler;
        DefaultOfflineEventHandler defaultOfflineEventHandler2;
        ParsedReaderInfo parsedReaderInfo;
        String str;
        ApiLocationPb protoLocation;
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Reader reader2 = reader;
        Intrinsics.checkNotNullParameter(reader2, "reader");
        Intrinsics.checkNotNullParameter(connectionConfiguration, "connectionConfiguration");
        try {
            Result.Companion companion = Result.INSTANCE;
            try {
                if (this.offlineRepository.getIsSupported() && getSupportsOffline(connectionConfiguration)) {
                    if (connectionConfiguration instanceof ConnectionConfiguration.InternetConnectionConfiguration) {
                        String id = reader2.getId();
                        if (id == null) {
                            throw new IllegalArgumentException("Required value was null.".toString());
                        }
                        String serialNumber = reader2.getSerialNumber();
                        if (serialNumber == null) {
                            throw new IllegalArgumentException("Required value was null.".toString());
                        }
                        Location location = reader2.getLocation();
                        String id2 = location != null ? location.getId() : null;
                        if (id2 == null) {
                            throw new IllegalArgumentException("Required value was null.".toString());
                        }
                        String ipAddress = reader2.getIpAddress();
                        if (ipAddress == null) {
                            throw new IllegalArgumentException("Required value was null.".toString());
                        }
                        String baseUrl = reader2.getBaseUrl();
                        if (baseUrl == null) {
                            throw new IllegalArgumentException("Required value was null.".toString());
                        }
                        String label = reader2.getLabel();
                        if (label != null) {
                            parsedReaderInfo = new ParsedReaderInfo(id, serialNumber, null, null, null, null, id2, ipAddress, baseUrl, label, 60, null);
                        } else {
                            throw new IllegalArgumentException("Required value was null.".toString());
                        }
                    } else {
                        if (!(connectionConfiguration instanceof ConnectionConfiguration.BluetoothConnectionConfiguration ? true : connectionConfiguration instanceof ConnectionConfiguration.EmbeddedConnectionConfiguration ? true : connectionConfiguration instanceof ConnectionConfiguration.HandoffConnectionConfiguration ? true : connectionConfiguration instanceof ConnectionConfiguration.TapToPayConnectionConfiguration ? true : connectionConfiguration instanceof ConnectionConfiguration.UsbConnectionConfiguration)) {
                            throw new NoWhenBranchMatchedException();
                        }
                        String id3 = reader2.getId();
                        if (id3 == null) {
                            throw new IllegalArgumentException("Required value was null.".toString());
                        }
                        String serialNumber2 = reader2.getSerialNumber();
                        if (serialNumber2 == null) {
                            throw new IllegalArgumentException("Required value was null.".toString());
                        }
                        String firmwareVersion = reader2.getFirmwareVersion();
                        if (firmwareVersion == null) {
                            throw new IllegalArgumentException("Required value was null.".toString());
                        }
                        String configVersion = reader2.getConfigVersion();
                        if (configVersion == null) {
                            throw new IllegalArgumentException("Required value was null.".toString());
                        }
                        String pinKeysetId = reader2.getPinKeysetId();
                        if (pinKeysetId == null) {
                            pinKeysetId = "";
                        }
                        String pinKeyProfileId = reader2.getPinKeyProfileId();
                        if (pinKeyProfileId == null) {
                            pinKeyProfileId = "";
                        }
                        if (reader2.getIsSimulated()) {
                            str = "tml_simulated";
                        } else {
                            Location location2 = reader2.getLocation();
                            String id4 = location2 != null ? location2.getId() : null;
                            if (id4 == null) {
                                throw new IllegalArgumentException("Required value was null.".toString());
                            }
                            str = id4;
                        }
                        parsedReaderInfo = new ParsedReaderInfo(id3, serialNumber2, firmwareVersion, configVersion, pinKeysetId, pinKeyProfileId, str, null, null, null, 896, null);
                    }
                    ParsedReaderInfo parsedReaderInfo2 = parsedReaderInfo;
                    setAccountId(accountId);
                    setOfflineSetupIntentSupport(connectionConfiguration);
                    long jCurrentTimeMillis = this.clock.currentTimeMillis();
                    PosInfo posInfoCreateForLocalPos = this.posInfoFactory.createForLocalPos();
                    OfflineLocation offlineLocationByStripeId = this.offlineRepository.getOfflineLocationByStripeId(parsedReaderInfo2.getCurrentLocationId());
                    if (offlineLocationByStripeId != null) {
                        SimpleLogger<ApplicationTrace, ApplicationTraceResult> simpleLogger = this.logger;
                        Pair<String, ? extends Object>[] pairArr = new Pair[6];
                        pairArr[0] = new Pair<>("offlineEnabled", Boolean.valueOf(offlineLocationByStripeId.offline_enabled));
                        pairArr[1] = new Pair<>("tippingConfig", offlineLocationByStripeId.tipping_config);
                        pairArr[2] = new Pair<>("bluetoothAutoReconnectConfig", offlineLocationByStripeId.bluetooth_auto_reconnect_config);
                        pairArr[3] = new Pair<>("usbAutoReconnectConfig", offlineLocationByStripeId.usb_auto_reconnect_config);
                        pairArr[4] = new Pair<>("locationDatabaseId", Long.valueOf(offlineLocationByStripeId.id));
                        ApiLocationPb apiLocationPb = offlineLocationByStripeId.full_location;
                        pairArr[5] = new Pair<>("locationStripeId", apiLocationPb != null ? apiLocationPb.id : null);
                        simpleLogger.i("Found previously saved offline location for reader. Carrying over configs.", pairArr);
                    } else {
                        offlineLocationByStripeId = null;
                    }
                    OfflineRepository offlineRepository = this.offlineRepository;
                    OfflineLocation offlineLocation = offlineLocationByStripeId;
                    OfflineReader offlineReader = new OfflineReader(parsedReaderInfo2.getSerialNumber(), parsedReaderInfo2.getId(), jCurrentTimeMillis, accountId, 0L, jCurrentTimeMillis, null, parsedReaderInfo2.getLabel(), null, 336, null);
                    try {
                        OfflineConnection offlineConnection = new OfflineConnection(parsedReaderInfo2.getFirmwareVersion(), parsedReaderInfo2.getConfigVersion(), parsedReaderInfo2.getPinKeySetId(), accountId, 0L, 0L, jCurrentTimeMillis, reader.getDeviceType().getDeviceName(), posInfoCreateForLocalPos.getVersionInfo(), posInfoCreateForLocalPos.getDeviceInfo(), reader.toDeviceInfo(), ReaderExtensionsKt.getConnectionType(reader), null, 0L, parsedReaderInfo2.getIp(), parsedReaderInfo2.getUrl(), null, 77872, null);
                        Location location3 = reader.getLocation();
                        long jSaveOfflineConnectionEntities = offlineRepository.saveOfflineConnectionEntities(offlineReader, offlineConnection, new OfflineLocation(0L, accountId, jCurrentTimeMillis, jCurrentTimeMillis, offlineLocation != null ? offlineLocation.tipping_config : null, offlineLocation != null ? offlineLocation.bluetooth_auto_reconnect_config : null, offlineLocation != null ? offlineLocation.usb_auto_reconnect_config : null, (location3 == null || (protoLocation = ProtoConverter.INSTANCE.toProtoLocation(location3)) == null) ? null : ApiLocationPb.copy$default(protoLocation, parsedReaderInfo2.getCurrentLocationId(), null, null, null, null, null, null, null, null, false, null, null, null, null, null, null, null, 131070, null), offlineLocation != null ? offlineLocation.offline_enabled : false, null, InputDeviceCompat.SOURCE_DPAD, null));
                        DefaultOfflineEventHandler defaultOfflineEventHandler3 = this;
                        final OfflineRepository offlineRepository2 = defaultOfflineEventHandler3.offlineRepository;
                        new MutablePropertyReference0Impl(offlineRepository2) { // from class: com.stripe.offlinemode.DefaultOfflineEventHandler$onReaderActivated$1$2
                            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
                            public Object get() {
                                return Long.valueOf(((OfflineRepository) this.receiver).getCurrentConnectionId());
                            }

                            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
                            public void set(Object obj) {
                                ((OfflineRepository) this.receiver).setCurrentConnectionId(((Number) obj).longValue());
                            }
                        }.set(Long.valueOf(jSaveOfflineConnectionEntities));
                        defaultOfflineEventHandler3.listenForLocationOfflineConfig();
                        defaultOfflineEventHandler2 = defaultOfflineEventHandler3;
                    } catch (Throwable th) {
                        th = th;
                        reader2 = this;
                        Result.Companion companion2 = Result.INSTANCE;
                        objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
                        defaultOfflineEventHandler = reader2;
                    }
                } else {
                    defaultOfflineEventHandler2 = this;
                }
                objM817constructorimpl = Result.m817constructorimpl(Unit.INSTANCE);
                defaultOfflineEventHandler = defaultOfflineEventHandler2;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            reader2 = this;
        }
        Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
        if (thM820exceptionOrNullimpl != null) {
            defaultOfflineEventHandler.logger.e("Failed to save activated reader.", thM820exceptionOrNullimpl, new Pair[0]);
        }
    }

    private final boolean getSupportsOffline(ConnectionConfiguration connectionConfiguration) {
        if (connectionConfiguration instanceof ConnectionConfiguration.BluetoothConnectionConfiguration ? true : connectionConfiguration instanceof ConnectionConfiguration.UsbConnectionConfiguration ? true : connectionConfiguration instanceof ConnectionConfiguration.InternetConnectionConfiguration) {
            return true;
        }
        if (connectionConfiguration instanceof ConnectionConfiguration.EmbeddedConnectionConfiguration) {
            return ((ConnectionConfiguration.EmbeddedConnectionConfiguration) connectionConfiguration).getSupportsOfflineMode();
        }
        if (connectionConfiguration instanceof ConnectionConfiguration.HandoffConnectionConfiguration ? true : connectionConfiguration instanceof ConnectionConfiguration.TapToPayConnectionConfiguration) {
            return false;
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:0|2|(6:184|3|4|180|(3:183|6|(2:8|(3:10|(1:12)(1:13)|(2:15|(2:17|(2:19|(1:21)(2:22|23))(2:24|25))(2:26|27))(2:28|29))(2:30|31))(2:32|33))(6:37|(1:39)(1:40)|(1:42)(1:43)|(1:45)(1:46)|(1:48)(1:49)|(2:51|(2:53|(2:55|(6:57|58|(1:60)(1:61)|62|(1:64)(1:65)|66)(2:151|152))(2:153|154))(2:155|156))(2:157|158))|67)|(7:69|(2:71|(4:73|(1:75)(1:76)|77|(2:82|83))(2:84|85))(2:86|(2:94|95))|88|89|178|90|91)(6:96|(2:98|(2:100|(2:102|103)(3:144|145|146))(2:147|148))(2:149|150)|163|164|165|(2:167|168)(4:169|(1:171)(1:172)|173|174))|181|104|(5:175|106|(1:108)|109|110)(14:113|114|177|115|(2:120|121)|122|(2:126|127)|128|(1:130)|131|(1:136)(1:135)|137|165|(0)(0))|143|164|165|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x0328, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0329, code lost:
    
        r17 = 0;
     */
    /* JADX WARN: Removed duplicated region for block: B:167:0x03a1  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x03a4  */
    @Override // com.stripe.offlinemode.OfflineEventHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.stripe.jvmcore.terminal.api.ActivateReaderResponse onActivateReaderRequest(com.stripe.stripeterminal.external.models.Reader r41, com.stripe.stripeterminal.external.models.ConnectionConfiguration r42, kotlin.jvm.functions.Function2<? super com.stripe.proto.terminal.terminal.pub.message.config.BluetoothAutoReconnectConfigPb, ? super com.stripe.proto.terminal.terminal.pub.message.config.UsbAutoReconnectConfigPb, kotlin.Unit> r43) throws java.lang.IllegalAccessException, java.lang.InstantiationException, com.stripe.stripeterminal.external.models.TerminalException {
        /*
            Method dump skipped, instruction units count: 1008
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.DefaultOfflineEventHandler.onActivateReaderRequest(com.stripe.stripeterminal.external.models.Reader, com.stripe.stripeterminal.external.models.ConnectionConfiguration, kotlin.jvm.functions.Function2):com.stripe.jvmcore.terminal.api.ActivateReaderResponse");
    }

    @Override // com.stripe.offlinemode.OfflineEventHandler
    public PaymentIntent onConfirmPaymentIntentRequest(PaymentIntent intent, String emvData, ConfirmPaymentIntentRequest confirmPaymentIntentRequest, Map<String, String> requestHeaders, List<Pair<String, String>> requestParams, String endpoint) throws IllegalAccessException, InstantiationException, TerminalException {
        PaymentIntentStatus paymentIntentStatus;
        RequestedPaymentMethod.RequestedCardPresent requestedCardPresent;
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(emvData, "emvData");
        Intrinsics.checkNotNullParameter(confirmPaymentIntentRequest, "confirmPaymentIntentRequest");
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        Intrinsics.checkNotNullParameter(requestParams, "requestParams");
        Intrinsics.checkNotNullParameter(endpoint, "endpoint");
        validatePaymentAmount(intent.getCurrency(), Long.valueOf(intent.getAmount()));
        long jCurrentTimeMillis = this.clock.currentTimeMillis();
        if (Intrinsics.areEqual(intent.getCaptureMethod(), CaptureMethod.Manual.getKey())) {
            paymentIntentStatus = PaymentIntentStatus.REQUIRES_CAPTURE;
        } else {
            paymentIntentStatus = PaymentIntentStatus.SUCCEEDED;
        }
        PaymentIntentStatus paymentIntentStatus2 = paymentIntentStatus;
        long amount = intent.getAmount();
        Long l = confirmPaymentIntentRequest.amount_tip;
        long jLongValue = amount + (l != null ? l.longValue() : 0L);
        String strOfflineId = OfflineAdapterKt.offlineId(intent);
        RequestedPaymentMethod requestedPaymentMethod = confirmPaymentIntentRequest.payment_method_data;
        PaymentIntent paymentIntentCopyWithVars$default = PaymentIntentExtensionsKt.copyWithVars$default(intent, null, jLongValue, 0L, 0L, null, 0L, 0L, null, null, null, null, 0L, null, null, null, null, null, false, null, null, null, null, null, null, paymentIntentStatus2, null, null, null, null, null, null, null, new OfflineDetails(strOfflineId, jCurrentTimeMillis, emvData, new Tip(confirmPaymentIntentRequest.amount_tip), (requestedPaymentMethod == null || (requestedCardPresent = requestedPaymentMethod.card_present) == null) ? null : requestedCardPresent.read_method), false, null, -16777219, 6, null);
        try {
            OfflineRepository offlineRepository = this.offlineRepository;
            OfflineApiRequest.ApiRequestType apiRequestType = OfflineApiRequest.ApiRequestType.PROCESS_PAYMENT_INTENT;
            String id = intent.getId();
            OfflineDetails offlineDetails = intent.getOfflineDetails();
            OfflineApiRequest offlineApiRequestBuildBaseConfirmRequest = buildBaseConfirmRequest(apiRequestType, id, offlineDetails != null ? offlineDetails.getId() : null, requestParams, requestHeaders, endpoint, jCurrentTimeMillis);
            offlineRepository.saveOfflineApiRequest(offlineApiRequestBuildBaseConfirmRequest.copy((WinError.ERROR_ACCOUNT_DISABLED & 1) != 0 ? offlineApiRequestBuildBaseConfirmRequest.type : null, (WinError.ERROR_ACCOUNT_DISABLED & 2) != 0 ? offlineApiRequestBuildBaseConfirmRequest.account_id : null, (WinError.ERROR_ACCOUNT_DISABLED & 4) != 0 ? offlineApiRequestBuildBaseConfirmRequest.offline_id : null, (WinError.ERROR_ACCOUNT_DISABLED & 8) != 0 ? offlineApiRequestBuildBaseConfirmRequest.stripe_entity_id : null, (WinError.ERROR_ACCOUNT_DISABLED & 16) != 0 ? offlineApiRequestBuildBaseConfirmRequest.connection_id : 0L, (WinError.ERROR_ACCOUNT_DISABLED & 32) != 0 ? offlineApiRequestBuildBaseConfirmRequest.id : 0L, (WinError.ERROR_ACCOUNT_DISABLED & 64) != 0 ? offlineApiRequestBuildBaseConfirmRequest.headers : null, (WinError.ERROR_ACCOUNT_DISABLED & 128) != 0 ? offlineApiRequestBuildBaseConfirmRequest.params : null, (WinError.ERROR_ACCOUNT_DISABLED & 256) != 0 ? offlineApiRequestBuildBaseConfirmRequest.endpoint : null, (WinError.ERROR_ACCOUNT_DISABLED & 512) != 0 ? offlineApiRequestBuildBaseConfirmRequest.payment_intent : ProtoConverter.INSTANCE.toProtoPaymentIntent(paymentIntentCopyWithVars$default), (WinError.ERROR_ACCOUNT_DISABLED & 1024) != 0 ? offlineApiRequestBuildBaseConfirmRequest.created_at : 0L, (WinError.ERROR_ACCOUNT_DISABLED & 2048) != 0 ? offlineApiRequestBuildBaseConfirmRequest.setup_intent : null, (WinError.ERROR_ACCOUNT_DISABLED & 4096) != 0 ? offlineApiRequestBuildBaseConfirmRequest.unknownFields() : null));
            return paymentIntentCopyWithVars$default;
        } catch (TerminalException e) {
            HealthLogger.incrementCounter$default(this.offlineDiscreteLogger, null, MapsKt.mapOf(TuplesKt.to(OfflineMetricTags.DECLINE_REASON, OfflineDeclineReasons.INSERT_ERROR), TuplesKt.to(OfflineMetricTags.INSERT_ERROR, e.getErrorCode().name())), null, new Function2<DiscreteScope.Builder, Counter, Unit>() { // from class: com.stripe.offlinemode.DefaultOfflineEventHandler.onConfirmPaymentIntentRequest.1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(DiscreteScope.Builder builder, Counter counter) {
                    invoke2(builder, counter);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(DiscreteScope.Builder incrementCounter, Counter it) {
                    Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                    Intrinsics.checkNotNullParameter(it, "it");
                    incrementCounter.offline_decline = it;
                }
            }, 5, null);
            throw e;
        }
    }

    @Override // com.stripe.offlinemode.OfflineEventHandler
    public PaymentIntent onCreatePaymentIntentRequest(CreatePaymentIntentRequest request, Map<String, String> requestHeaders, List<Pair<String, String>> requestParams, String endpoint) throws IllegalAccessException, InstantiationException, TerminalException {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        Intrinsics.checkNotNullParameter(requestParams, "requestParams");
        Intrinsics.checkNotNullParameter(endpoint, "endpoint");
        validatePaymentAmount(request.currency, request.amount);
        Pair<OfflineApiRequest, Boolean> pairBuildBaseCreateRequest = buildBaseCreateRequest(OfflineApiRequest.ApiRequestType.CREATE_PAYMENT_INTENT, requestParams, requestHeaders, endpoint);
        OfflineApiRequest offlineApiRequestComponent1 = pairBuildBaseCreateRequest.component1();
        OfflineApiRequest offlineApiRequest = offlineApiRequestComponent1;
        com.stripe.proto.model.rest.PaymentIntent paymentIntentCreatePaymentIntent = createPaymentIntent(request, offlineApiRequest.created_at, Boolean.valueOf(pairBuildBaseCreateRequest.component2().booleanValue()));
        OfflineApiRequest offlineApiRequestCopy = offlineApiRequest.copy((WinError.ERROR_ACCOUNT_DISABLED & 1) != 0 ? offlineApiRequest.type : null, (WinError.ERROR_ACCOUNT_DISABLED & 2) != 0 ? offlineApiRequest.account_id : null, (WinError.ERROR_ACCOUNT_DISABLED & 4) != 0 ? offlineApiRequest.offline_id : null, (WinError.ERROR_ACCOUNT_DISABLED & 8) != 0 ? offlineApiRequest.stripe_entity_id : null, (WinError.ERROR_ACCOUNT_DISABLED & 16) != 0 ? offlineApiRequest.connection_id : 0L, (WinError.ERROR_ACCOUNT_DISABLED & 32) != 0 ? offlineApiRequest.id : 0L, (WinError.ERROR_ACCOUNT_DISABLED & 64) != 0 ? offlineApiRequest.headers : null, (WinError.ERROR_ACCOUNT_DISABLED & 128) != 0 ? offlineApiRequest.params : null, (WinError.ERROR_ACCOUNT_DISABLED & 256) != 0 ? offlineApiRequest.endpoint : null, (WinError.ERROR_ACCOUNT_DISABLED & 512) != 0 ? offlineApiRequest.payment_intent : paymentIntentCreatePaymentIntent, (WinError.ERROR_ACCOUNT_DISABLED & 1024) != 0 ? offlineApiRequest.created_at : 0L, (WinError.ERROR_ACCOUNT_DISABLED & 2048) != 0 ? offlineApiRequest.setup_intent : null, (WinError.ERROR_ACCOUNT_DISABLED & 4096) != 0 ? offlineApiRequest.unknownFields() : null);
        this.offlineRepository.saveOfflineApiRequest(offlineApiRequestCopy);
        PaymentIntent paymentIntentCopy$default = PaymentIntent.copy$default(ProtoConverter.INSTANCE.toSdkPaymentIntent(paymentIntentCreatePaymentIntent), null, 0L, 0L, 0L, null, 0L, 0L, null, null, null, null, null, 0L, null, null, null, null, null, false, null, null, null, null, null, null, null, PaymentIntentStatus.REQUIRES_PAYMENT_METHOD, null, null, null, null, null, null, null, null, null, -67108865, 15, null);
        paymentIntentCopy$default.setOfflineDetails(OfflineDetails.INSTANCE.make(offlineApiRequestCopy.offline_id, offlineApiRequestCopy.created_at, null, null, true));
        return paymentIntentCopy$default;
    }

    @Override // com.stripe.offlinemode.helpers.OfflineSessionManager
    public void activateReaderWhenOnline(Function0<Unit> enqueueActivateReader) {
        Intrinsics.checkNotNullParameter(enqueueActivateReader, "enqueueActivateReader");
        Job job = this.enqueueActivateReaderJob;
        if (job != null && job.isActive()) {
            JobKt__JobKt.cancel$default(job, "Enqueuing a new activate reader job.", null, 2, null);
        }
        new MutablePropertyReference0Impl(this) { // from class: com.stripe.offlinemode.DefaultOfflineEventHandler.activateReaderWhenOnline.4
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return ((DefaultOfflineEventHandler) this.receiver).enqueueActivateReaderJob;
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ((DefaultOfflineEventHandler) this.receiver).enqueueActivateReaderJob = (Job) obj;
            }
        }.set(BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new AnonymousClass2(enqueueActivateReader, null), 3, null));
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.DefaultOfflineEventHandler$activateReaderWhenOnline$2, reason: invalid class name */
    /* JADX INFO: compiled from: DefaultOfflineEventHandler.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.DefaultOfflineEventHandler$activateReaderWhenOnline$2", f = "DefaultOfflineEventHandler.kt", i = {}, l = {WinError.ERROR_INVALID_IMAGE_HASH}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function0<Unit> $enqueueActivateReader;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Function0<Unit> function0, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$enqueueActivateReader = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DefaultOfflineEventHandler.this.new AnonymousClass2(this.$enqueueActivateReader, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (FlowKt.first(DefaultOfflineEventHandler.this.onlineTransitionFlow, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            this.$enqueueActivateReader.invoke();
            return Unit.INSTANCE;
        }
    }

    @Override // com.stripe.offlinemode.helpers.OfflineSessionManager
    public void cancelPendingActivations(String reason) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        Job job = this.enqueueActivateReaderJob;
        if (job != null) {
            JobKt__JobKt.cancel$default(job, reason, null, 2, null);
        }
    }

    private final com.stripe.proto.model.rest.PaymentIntent createPaymentIntent(CreatePaymentIntentRequest createPaymentIntentRequest, long timestampMs, Boolean livemode) {
        com.stripe.proto.model.rest.PaymentIntent paymentIntentCopy$default;
        com.stripe.proto.model.rest.PaymentIntent paymentIntent = new com.stripe.proto.model.rest.PaymentIntent(null, Long.valueOf(timestampMs / ((long) 1000)), null, createPaymentIntentRequest.amount, createPaymentIntentRequest.currency, null, createPaymentIntentRequest.statement_descriptor, createPaymentIntentRequest.description, createPaymentIntentRequest.receipt_email, livemode, null, createPaymentIntentRequest.metadata, null, null, null, null, createPaymentIntentRequest.application_fee_amount, null, null, null, null, createPaymentIntentRequest.customer, createPaymentIntentRequest.transfer_group, null, null, null, null, createPaymentIntentRequest.on_behalf_of, createPaymentIntentRequest.setup_future_usage, null, null, null, null, null, -409013212, 3, null);
        String str = createPaymentIntentRequest.capture_method;
        return (str == null || (paymentIntentCopy$default = com.stripe.proto.model.rest.PaymentIntent.copy$default(paymentIntent, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, Method.valueOf(str), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -262145, 3, null)) == null) ? paymentIntent : paymentIntentCopy$default;
    }

    private final SetupIntent createSetupIntent(CreateSetupIntentRequest createSetupIntentRequest, long timestampMs, boolean livemode) {
        String str = createSetupIntentRequest.description;
        Map<String, String> map = createSetupIntentRequest.metadata;
        return new SetupIntent(null, null, createSetupIntentRequest.customer, str, null, map, null, null, null, null, createSetupIntentRequest.usage, Long.valueOf(timestampMs / ((long) 1000)), null, Boolean.valueOf(livemode), null, null, null, createSetupIntentRequest.on_behalf_of, null, null, null, 1954771, null);
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.DefaultOfflineEventHandler$listenForLocationOfflineConfig$1, reason: invalid class name */
    /* JADX INFO: compiled from: DefaultOfflineEventHandler.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.DefaultOfflineEventHandler$listenForLocationOfflineConfig$1", f = "DefaultOfflineEventHandler.kt", i = {}, l = {WinError.ERROR_DRIVER_FAILED_PRIOR_UNLOAD}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DefaultOfflineEventHandler.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: com.stripe.offlinemode.DefaultOfflineEventHandler$listenForLocationOfflineConfig$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: DefaultOfflineEventHandler.kt */
        @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u008a@"}, d2 = {"<anonymous>", "", "<name for destructuring parameter 0>", "Lkotlin/Pair;", "", "Lcom/stripe/device/OfflineLocationConfigs;"}, k = 3, mv = {1, 9, 0}, xi = 48)
        @DebugMetadata(c = "com.stripe.offlinemode.DefaultOfflineEventHandler$listenForLocationOfflineConfig$1$1", f = "DefaultOfflineEventHandler.kt", i = {}, l = {WinError.ERROR_HIBERNATION_FAILURE}, m = "invokeSuspend", n = {}, s = {})
        static final class C00511 extends SuspendLambda implements Function2<Pair<? extends String, ? extends OfflineLocationConfigs>, Continuation<? super Unit>, Object> {
            /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ DefaultOfflineEventHandler this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00511(DefaultOfflineEventHandler defaultOfflineEventHandler, Continuation<? super C00511> continuation) {
                super(2, continuation);
                this.this$0 = defaultOfflineEventHandler;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                C00511 c00511 = new C00511(this.this$0, continuation);
                c00511.L$0 = obj;
                return c00511;
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Pair<? extends String, ? extends OfflineLocationConfigs> pair, Continuation<? super Unit> continuation) {
                return invoke2((Pair<String, OfflineLocationConfigs>) pair, continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Pair<String, OfflineLocationConfigs> pair, Continuation<? super Unit> continuation) {
                return ((C00511) create(pair, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                try {
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj);
                        Pair pair = (Pair) this.L$0;
                        String str = (String) pair.component1();
                        OfflineLocationConfigs offlineLocationConfigs = (OfflineLocationConfigs) pair.component2();
                        this.label = 1;
                        if (this.this$0.offlineRepository.updateOfflineLocationWithConfig(str, offlineLocationConfigs, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                } catch (TerminalException e) {
                    this.this$0.logger.e("Failed to update location with offline config.", e, new Pair[0]);
                }
                return Unit.INSTANCE;
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (FlowKt.collectLatest(DefaultOfflineEventHandler.this.activeLocationConfigRepository.getActiveLocationConfigFlow(), new C00511(DefaultOfflineEventHandler.this, null), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.DefaultOfflineEventHandler$resumeForwardingOfflinePayments$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DefaultOfflineEventHandler.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.DefaultOfflineEventHandler$resumeForwardingOfflinePayments$1", f = "DefaultOfflineEventHandler.kt", i = {}, l = {WinError.ERROR_EXTRANEOUS_INFORMATION}, m = "invokeSuspend", n = {}, s = {})
    static final class C02881 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C02881(Continuation<? super C02881> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DefaultOfflineEventHandler.this.new C02881(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02881) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: com.stripe.offlinemode.DefaultOfflineEventHandler$resumeForwardingOfflinePayments$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: DefaultOfflineEventHandler.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", "", "it"}, k = 3, mv = {1, 9, 0}, xi = 48)
        @DebugMetadata(c = "com.stripe.offlinemode.DefaultOfflineEventHandler$resumeForwardingOfflinePayments$1$1", f = "DefaultOfflineEventHandler.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class C00521 extends SuspendLambda implements Function2<Unit, Continuation<? super Unit>, Object> {
            int label;
            final /* synthetic */ DefaultOfflineEventHandler this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00521(DefaultOfflineEventHandler defaultOfflineEventHandler, Continuation<? super C00521> continuation) {
                super(2, continuation);
                this.this$0 = defaultOfflineEventHandler;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C00521(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Unit unit, Continuation<? super Unit> continuation) {
                return ((C00521) create(unit, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.this$0.offlineForwardingManager.startForwarding();
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (FlowKt.collectLatest(DefaultOfflineEventHandler.this.restartForwardingFlow, new C00521(DefaultOfflineEventHandler.this, null), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    private final Job resumeForwardingOfflinePayments() {
        return BuildersKt__Builders_commonKt.launch$default(this.scope, null, CoroutineStart.LAZY, new C02881(null), 1, null);
    }

    private final void validatePaymentAmount(String currency, Long amount) throws IllegalAccessException, InstantiationException, TerminalException {
        try {
            if (currency == null) {
                throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Payment currency cannot be null", null, null, 12, null);
            }
            if (amount == null) {
                throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Payment amount cannot be null", null, null, 12, null);
            }
            Long maxTransactionLimit = this.offlineConfigHelper.getMaxTransactionLimit(currency);
            if (maxTransactionLimit == null) {
                throw new TerminalException(TerminalErrorCode.INVALID_OFFLINE_CURRENCY, "Payment currency (" + currency + ") is not configured for offline transactions.", null, null, 12, null);
            }
            long jLongValue = maxTransactionLimit.longValue();
            if (jLongValue < amount.longValue()) {
                throw new TerminalException(TerminalErrorCode.AMOUNT_EXCEEDS_MAX_OFFLINE_AMOUNT, "Payment amount (" + amount + ") must not exceed maximum limit (" + jLongValue + ") allowed offline.", null, null, 12, null);
            }
        } catch (TerminalException e) {
            HealthLogger.incrementCounter$default(this.offlineDiscreteLogger, null, MapsKt.mapOf(TuplesKt.to(OfflineMetricTags.DECLINE_REASON, "amount_error")), null, new Function2<DiscreteScope.Builder, Counter, Unit>() { // from class: com.stripe.offlinemode.DefaultOfflineEventHandler.validatePaymentAmount.1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(DiscreteScope.Builder builder, Counter counter) {
                    invoke2(builder, counter);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(DiscreteScope.Builder incrementCounter, Counter it) {
                    Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                    Intrinsics.checkNotNullParameter(it, "it");
                    incrementCounter.offline_decline = it;
                }
            }, 5, null);
            throw e;
        }
    }

    @Override // com.stripe.offlinemode.helpers.OfflineSessionManager
    public void clear() {
        this.offlineRepository.clearCache();
    }

    @Override // com.stripe.offlinemode.helpers.OfflineSessionManager
    public void startForwardingOfflinePayments() {
        Job job = this.restartForwardingOfflinePaymentsJob;
        if (!job.start() && !job.isActive()) {
            Job jobResumeForwardingOfflinePayments = resumeForwardingOfflinePayments();
            this.restartForwardingOfflinePaymentsJob = jobResumeForwardingOfflinePayments;
            jobResumeForwardingOfflinePayments.start();
        }
        this.offlineForwardingManager.startForwarding();
    }

    @Override // com.stripe.offlinemode.helpers.OfflineSessionManager
    public void stopForwardingOfflinePayments(String reason) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        JobKt__JobKt.cancel$default(this.restartForwardingOfflinePaymentsJob, reason, null, 2, null);
        this.offlineForwardingManager.stopForwarding(reason);
    }

    @Override // com.stripe.offlinemode.OfflineEventHandler
    public Map<String, Location> onLocationsRequests(List<String> deviceSerials) throws TerminalException {
        Intrinsics.checkNotNullParameter(deviceSerials, "deviceSerials");
        Map savedLocationsMap$default = OfflineRepository.getSavedLocationsMap$default(this.offlineRepository, null, deviceSerials, 1, null);
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(savedLocationsMap$default.size()));
        for (Map.Entry entry : savedLocationsMap$default.entrySet()) {
            linkedHashMap.put(entry.getKey(), ProtoConverter.INSTANCE.toSdkLocation((ApiLocationPb) entry.getValue()));
        }
        return linkedHashMap;
    }

    @Override // com.stripe.offlinemode.OfflineEventHandler
    public com.stripe.stripeterminal.external.models.SetupIntent onCreateSetupIntentRequest(CreateSetupIntentRequest request, Map<String, String> requestHeaders, List<Pair<String, String>> requestParams, String endpoint) throws TerminalException {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        Intrinsics.checkNotNullParameter(requestParams, "requestParams");
        Intrinsics.checkNotNullParameter(endpoint, "endpoint");
        Pair<OfflineApiRequest, Boolean> pairBuildBaseCreateRequest = buildBaseCreateRequest(OfflineApiRequest.ApiRequestType.CREATE_SETUP_INTENT, requestParams, requestHeaders, endpoint);
        OfflineApiRequest offlineApiRequestComponent1 = pairBuildBaseCreateRequest.component1();
        OfflineApiRequest offlineApiRequest = offlineApiRequestComponent1;
        SetupIntent setupIntentCreateSetupIntent = createSetupIntent(request, offlineApiRequest.created_at, pairBuildBaseCreateRequest.component2().booleanValue());
        OfflineApiRequest offlineApiRequestCopy = offlineApiRequest.copy((WinError.ERROR_ACCOUNT_DISABLED & 1) != 0 ? offlineApiRequest.type : null, (WinError.ERROR_ACCOUNT_DISABLED & 2) != 0 ? offlineApiRequest.account_id : null, (WinError.ERROR_ACCOUNT_DISABLED & 4) != 0 ? offlineApiRequest.offline_id : null, (WinError.ERROR_ACCOUNT_DISABLED & 8) != 0 ? offlineApiRequest.stripe_entity_id : null, (WinError.ERROR_ACCOUNT_DISABLED & 16) != 0 ? offlineApiRequest.connection_id : 0L, (WinError.ERROR_ACCOUNT_DISABLED & 32) != 0 ? offlineApiRequest.id : 0L, (WinError.ERROR_ACCOUNT_DISABLED & 64) != 0 ? offlineApiRequest.headers : null, (WinError.ERROR_ACCOUNT_DISABLED & 128) != 0 ? offlineApiRequest.params : null, (WinError.ERROR_ACCOUNT_DISABLED & 256) != 0 ? offlineApiRequest.endpoint : null, (WinError.ERROR_ACCOUNT_DISABLED & 512) != 0 ? offlineApiRequest.payment_intent : null, (WinError.ERROR_ACCOUNT_DISABLED & 1024) != 0 ? offlineApiRequest.created_at : 0L, (WinError.ERROR_ACCOUNT_DISABLED & 2048) != 0 ? offlineApiRequest.setup_intent : setupIntentCreateSetupIntent, (WinError.ERROR_ACCOUNT_DISABLED & 4096) != 0 ? offlineApiRequest.unknownFields() : null);
        this.offlineRepository.saveOfflineApiRequest(offlineApiRequestCopy);
        com.stripe.stripeterminal.external.models.SetupIntent setupIntentCopy$default = com.stripe.stripeterminal.external.models.SetupIntent.copy$default(ProtoConverter.INSTANCE.toSdkSetupIntent(setupIntentCreateSetupIntent), null, null, null, null, null, null, null, null, null, SetupIntentStatus.REQUIRES_PAYMENT_METHOD, null, null, null, 0L, null, false, null, null, null, null, 1048063, null);
        setupIntentCopy$default.setOfflineDetails(SetupIntentOfflineDetails.INSTANCE.make(offlineApiRequestCopy.offline_id, offlineApiRequestCopy.created_at, null, true));
        return setupIntentCopy$default;
    }

    @Override // com.stripe.offlinemode.OfflineEventHandler
    public com.stripe.stripeterminal.external.models.SetupIntent onConfirmSetupIntentRequest(com.stripe.stripeterminal.external.models.SetupIntent intent, String emvData, ConfirmSetupIntentRequest confirmSetupIntentRequest, Map<String, String> requestHeaders, List<Pair<String, String>> requestParams, String endpoint) throws IllegalAccessException, InstantiationException, TerminalException {
        RequestedPaymentMethod.RequestedCardPresent requestedCardPresent;
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(emvData, "emvData");
        Intrinsics.checkNotNullParameter(confirmSetupIntentRequest, "confirmSetupIntentRequest");
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        Intrinsics.checkNotNullParameter(requestParams, "requestParams");
        Intrinsics.checkNotNullParameter(endpoint, "endpoint");
        long jCurrentTimeMillis = this.clock.currentTimeMillis();
        SetupIntentStatus setupIntentStatus = SetupIntentStatus.SUCCEEDED;
        SetupIntentOfflineDetails offlineDetails = intent.getOfflineDetails();
        String id = offlineDetails != null ? offlineDetails.getId() : null;
        RequestedPaymentMethod requestedPaymentMethod = confirmSetupIntentRequest.payment_method_data;
        com.stripe.stripeterminal.external.models.SetupIntent setupIntentCopyWithVars$default = SetupIntentExtensionsKt.copyWithVars$default(intent, null, null, null, null, null, null, null, null, setupIntentStatus, null, null, null, 0L, false, null, null, null, null, null, new SetupIntentOfflineDetails(id, jCurrentTimeMillis, emvData, (requestedPaymentMethod == null || (requestedCardPresent = requestedPaymentMethod.card_present) == null) ? null : requestedCardPresent.read_method), false, null, 3669759, null);
        try {
            OfflineRepository offlineRepository = this.offlineRepository;
            OfflineApiRequest.ApiRequestType apiRequestType = OfflineApiRequest.ApiRequestType.CONFIRM_SETUP_INTENT;
            String id2 = intent.getId();
            SetupIntentOfflineDetails offlineDetails2 = intent.getOfflineDetails();
            OfflineApiRequest offlineApiRequestBuildBaseConfirmRequest = buildBaseConfirmRequest(apiRequestType, id2, offlineDetails2 != null ? offlineDetails2.getId() : null, requestParams, requestHeaders, endpoint, jCurrentTimeMillis);
            offlineRepository.saveOfflineApiRequest(offlineApiRequestBuildBaseConfirmRequest.copy((WinError.ERROR_ACCOUNT_DISABLED & 1) != 0 ? offlineApiRequestBuildBaseConfirmRequest.type : null, (WinError.ERROR_ACCOUNT_DISABLED & 2) != 0 ? offlineApiRequestBuildBaseConfirmRequest.account_id : null, (WinError.ERROR_ACCOUNT_DISABLED & 4) != 0 ? offlineApiRequestBuildBaseConfirmRequest.offline_id : null, (WinError.ERROR_ACCOUNT_DISABLED & 8) != 0 ? offlineApiRequestBuildBaseConfirmRequest.stripe_entity_id : null, (WinError.ERROR_ACCOUNT_DISABLED & 16) != 0 ? offlineApiRequestBuildBaseConfirmRequest.connection_id : 0L, (WinError.ERROR_ACCOUNT_DISABLED & 32) != 0 ? offlineApiRequestBuildBaseConfirmRequest.id : 0L, (WinError.ERROR_ACCOUNT_DISABLED & 64) != 0 ? offlineApiRequestBuildBaseConfirmRequest.headers : null, (WinError.ERROR_ACCOUNT_DISABLED & 128) != 0 ? offlineApiRequestBuildBaseConfirmRequest.params : null, (WinError.ERROR_ACCOUNT_DISABLED & 256) != 0 ? offlineApiRequestBuildBaseConfirmRequest.endpoint : null, (WinError.ERROR_ACCOUNT_DISABLED & 512) != 0 ? offlineApiRequestBuildBaseConfirmRequest.payment_intent : null, (WinError.ERROR_ACCOUNT_DISABLED & 1024) != 0 ? offlineApiRequestBuildBaseConfirmRequest.created_at : 0L, (WinError.ERROR_ACCOUNT_DISABLED & 2048) != 0 ? offlineApiRequestBuildBaseConfirmRequest.setup_intent : ProtoConverter.INSTANCE.toProtoSetupIntent(setupIntentCopyWithVars$default), (WinError.ERROR_ACCOUNT_DISABLED & 4096) != 0 ? offlineApiRequestBuildBaseConfirmRequest.unknownFields() : null));
            return setupIntentCopyWithVars$default;
        } catch (TerminalException e) {
            HealthLogger.incrementCounter$default(this.offlineDiscreteLogger, null, MapsKt.mapOf(TuplesKt.to(OfflineMetricTags.DECLINE_REASON, OfflineDeclineReasons.INSERT_ERROR), TuplesKt.to(OfflineMetricTags.INSERT_ERROR, e.getErrorCode().name())), null, new Function2<DiscreteScope.Builder, Counter, Unit>() { // from class: com.stripe.offlinemode.DefaultOfflineEventHandler.onConfirmSetupIntentRequest.1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(DiscreteScope.Builder builder, Counter counter) {
                    invoke2(builder, counter);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(DiscreteScope.Builder incrementCounter, Counter it) {
                    Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                    Intrinsics.checkNotNullParameter(it, "it");
                    incrementCounter.offline_decline = it;
                }
            }, 5, null);
            throw e;
        }
    }

    private final Pair<OfflineApiRequest, Boolean> buildBaseCreateRequest(OfflineApiRequest.ApiRequestType type, List<Pair<String, String>> requestParams, Map<String, String> requestHeaders, String endpoint) throws TerminalException {
        ApiLocationPb apiLocationPb;
        Boolean bool;
        String strGenerateOfflineId = this.offlineIdGenerator.generateOfflineId(type);
        long jCurrentTimeMillis = this.clock.currentTimeMillis();
        long currentConnectionId = this.offlineRepository.getCurrentConnectionId();
        OfflineLocation offlineLocationForConnection = this.offlineRepository.getOfflineLocationForConnection(this.offlineRepository.getOfflineConnection(currentConnectionId));
        List<Pair> listPlus = CollectionsKt.plus((Collection<? extends Pair>) requestParams, TuplesKt.to(PAYMENT_OFFLINE_ID_KEY, strGenerateOfflineId));
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listPlus, 10));
        for (Pair pair : listPlus) {
            arrayList.add(new NameValuePair((String) pair.component1(), (String) pair.component2(), null, 4, null));
        }
        return TuplesKt.to(new OfflineApiRequest(type, this.offlineRepository.getActiveAccountId(), strGenerateOfflineId, null, currentConnectionId, 0L, requestHeaders, arrayList, endpoint, null, jCurrentTimeMillis, null, null, 6696, null), Boolean.valueOf((offlineLocationForConnection == null || (apiLocationPb = offlineLocationForConnection.full_location) == null || (bool = apiLocationPb.livemode) == null) ? true : bool.booleanValue()));
    }

    private final OfflineApiRequest buildBaseConfirmRequest(OfflineApiRequest.ApiRequestType type, String entityId, String offlineId, List<Pair<String, String>> requestParams, Map<String, String> requestHeaders, String endpoint, long createdAt) {
        List<Pair> listPlus = CollectionsKt.plus((Collection<? extends Pair>) requestParams, TuplesKt.to(PAYMENT_STORED_AT_KEY, String.valueOf(createdAt / ONE_SECOND_MS)));
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listPlus, 10));
        for (Pair pair : listPlus) {
            arrayList.add(new NameValuePair((String) pair.component1(), (String) pair.component2(), null, 4, null));
        }
        return new OfflineApiRequest(type, this.offlineRepository.getActiveAccountId(), offlineId, entityId, this.offlineRepository.getCurrentConnectionId(), 0L, requestHeaders, arrayList, endpoint, null, createdAt, null, null, 6688, null);
    }

    private final /* synthetic */ <T> T wrapErrorsAsTerminalException(String errorMessage, Function0<? extends T> block) throws TerminalException {
        try {
            return block.invoke();
        } catch (Throwable th) {
            throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, errorMessage, th, null, 8, null);
        }
    }

    /* JADX INFO: compiled from: DefaultOfflineEventHandler.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b!\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0082\b\u0018\u00002\u00020\u0001Bg\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003\u0012\b\b\u0002\u0010\n\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\f\u001a\u00020\u0003¢\u0006\u0002\u0010\rJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0003HÆ\u0003Jm\u0010#\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u0003HÆ\u0001J\u0013\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010'\u001a\u00020(HÖ\u0001J\t\u0010)\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000fR\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000fR\u0011\u0010\f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000fR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000fR\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u000f¨\u0006*"}, d2 = {"Lcom/stripe/offlinemode/DefaultOfflineEventHandler$ParsedReaderInfo;", "", OfflineStorageConstantsKt.ID, "", "serialNumber", "firmwareVersion", "configVersion", "pinKeySetId", "pinKeyProfileId", "currentLocationId", "ip", ImagesContract.URL, "label", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getConfigVersion", "()Ljava/lang/String;", "getCurrentLocationId", "getFirmwareVersion", "getId", "getIp", "getLabel", "getPinKeyProfileId", "getPinKeySetId", "getSerialNumber", "getUrl", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "", "toString", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final /* data */ class ParsedReaderInfo {
        private final String configVersion;
        private final String currentLocationId;
        private final String firmwareVersion;
        private final String id;
        private final String ip;
        private final String label;
        private final String pinKeyProfileId;
        private final String pinKeySetId;
        private final String serialNumber;
        private final String url;

        public static /* synthetic */ ParsedReaderInfo copy$default(ParsedReaderInfo parsedReaderInfo, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, int i, Object obj) {
            if ((i & 1) != 0) {
                str = parsedReaderInfo.id;
            }
            if ((i & 2) != 0) {
                str2 = parsedReaderInfo.serialNumber;
            }
            if ((i & 4) != 0) {
                str3 = parsedReaderInfo.firmwareVersion;
            }
            if ((i & 8) != 0) {
                str4 = parsedReaderInfo.configVersion;
            }
            if ((i & 16) != 0) {
                str5 = parsedReaderInfo.pinKeySetId;
            }
            if ((i & 32) != 0) {
                str6 = parsedReaderInfo.pinKeyProfileId;
            }
            if ((i & 64) != 0) {
                str7 = parsedReaderInfo.currentLocationId;
            }
            if ((i & 128) != 0) {
                str8 = parsedReaderInfo.ip;
            }
            if ((i & 256) != 0) {
                str9 = parsedReaderInfo.url;
            }
            if ((i & 512) != 0) {
                str10 = parsedReaderInfo.label;
            }
            String str11 = str9;
            String str12 = str10;
            String str13 = str7;
            String str14 = str8;
            String str15 = str5;
            String str16 = str6;
            return parsedReaderInfo.copy(str, str2, str3, str4, str15, str16, str13, str14, str11, str12);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getId() {
            return this.id;
        }

        /* JADX INFO: renamed from: component10, reason: from getter */
        public final String getLabel() {
            return this.label;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getSerialNumber() {
            return this.serialNumber;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getFirmwareVersion() {
            return this.firmwareVersion;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final String getConfigVersion() {
            return this.configVersion;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final String getPinKeySetId() {
            return this.pinKeySetId;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final String getPinKeyProfileId() {
            return this.pinKeyProfileId;
        }

        /* JADX INFO: renamed from: component7, reason: from getter */
        public final String getCurrentLocationId() {
            return this.currentLocationId;
        }

        /* JADX INFO: renamed from: component8, reason: from getter */
        public final String getIp() {
            return this.ip;
        }

        /* JADX INFO: renamed from: component9, reason: from getter */
        public final String getUrl() {
            return this.url;
        }

        public final ParsedReaderInfo copy(String id, String serialNumber, String firmwareVersion, String configVersion, String pinKeySetId, String pinKeyProfileId, String currentLocationId, String ip, String url, String label) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(serialNumber, "serialNumber");
            Intrinsics.checkNotNullParameter(firmwareVersion, "firmwareVersion");
            Intrinsics.checkNotNullParameter(configVersion, "configVersion");
            Intrinsics.checkNotNullParameter(pinKeySetId, "pinKeySetId");
            Intrinsics.checkNotNullParameter(pinKeyProfileId, "pinKeyProfileId");
            Intrinsics.checkNotNullParameter(currentLocationId, "currentLocationId");
            Intrinsics.checkNotNullParameter(ip, "ip");
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(label, "label");
            return new ParsedReaderInfo(id, serialNumber, firmwareVersion, configVersion, pinKeySetId, pinKeyProfileId, currentLocationId, ip, url, label);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ParsedReaderInfo)) {
                return false;
            }
            ParsedReaderInfo parsedReaderInfo = (ParsedReaderInfo) other;
            return Intrinsics.areEqual(this.id, parsedReaderInfo.id) && Intrinsics.areEqual(this.serialNumber, parsedReaderInfo.serialNumber) && Intrinsics.areEqual(this.firmwareVersion, parsedReaderInfo.firmwareVersion) && Intrinsics.areEqual(this.configVersion, parsedReaderInfo.configVersion) && Intrinsics.areEqual(this.pinKeySetId, parsedReaderInfo.pinKeySetId) && Intrinsics.areEqual(this.pinKeyProfileId, parsedReaderInfo.pinKeyProfileId) && Intrinsics.areEqual(this.currentLocationId, parsedReaderInfo.currentLocationId) && Intrinsics.areEqual(this.ip, parsedReaderInfo.ip) && Intrinsics.areEqual(this.url, parsedReaderInfo.url) && Intrinsics.areEqual(this.label, parsedReaderInfo.label);
        }

        public int hashCode() {
            return (((((((((((((((((this.id.hashCode() * 31) + this.serialNumber.hashCode()) * 31) + this.firmwareVersion.hashCode()) * 31) + this.configVersion.hashCode()) * 31) + this.pinKeySetId.hashCode()) * 31) + this.pinKeyProfileId.hashCode()) * 31) + this.currentLocationId.hashCode()) * 31) + this.ip.hashCode()) * 31) + this.url.hashCode()) * 31) + this.label.hashCode();
        }

        public String toString() {
            return "ParsedReaderInfo(id=" + this.id + ", serialNumber=" + this.serialNumber + ", firmwareVersion=" + this.firmwareVersion + ", configVersion=" + this.configVersion + ", pinKeySetId=" + this.pinKeySetId + ", pinKeyProfileId=" + this.pinKeyProfileId + ", currentLocationId=" + this.currentLocationId + ", ip=" + this.ip + ", url=" + this.url + ", label=" + this.label + ')';
        }

        public ParsedReaderInfo(String id, String serialNumber, String firmwareVersion, String configVersion, String pinKeySetId, String pinKeyProfileId, String currentLocationId, String ip, String url, String label) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(serialNumber, "serialNumber");
            Intrinsics.checkNotNullParameter(firmwareVersion, "firmwareVersion");
            Intrinsics.checkNotNullParameter(configVersion, "configVersion");
            Intrinsics.checkNotNullParameter(pinKeySetId, "pinKeySetId");
            Intrinsics.checkNotNullParameter(pinKeyProfileId, "pinKeyProfileId");
            Intrinsics.checkNotNullParameter(currentLocationId, "currentLocationId");
            Intrinsics.checkNotNullParameter(ip, "ip");
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(label, "label");
            this.id = id;
            this.serialNumber = serialNumber;
            this.firmwareVersion = firmwareVersion;
            this.configVersion = configVersion;
            this.pinKeySetId = pinKeySetId;
            this.pinKeyProfileId = pinKeyProfileId;
            this.currentLocationId = currentLocationId;
            this.ip = ip;
            this.url = url;
            this.label = label;
        }

        public /* synthetic */ ParsedReaderInfo(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4, (i & 16) != 0 ? "" : str5, (i & 32) != 0 ? "" : str6, (i & 64) != 0 ? "" : str7, (i & 128) != 0 ? "" : str8, (i & 256) != 0 ? "" : str9, (i & 512) != 0 ? "" : str10);
        }

        public final String getId() {
            return this.id;
        }

        public final String getSerialNumber() {
            return this.serialNumber;
        }

        public final String getFirmwareVersion() {
            return this.firmwareVersion;
        }

        public final String getConfigVersion() {
            return this.configVersion;
        }

        public final String getPinKeySetId() {
            return this.pinKeySetId;
        }

        public final String getPinKeyProfileId() {
            return this.pinKeyProfileId;
        }

        public final String getCurrentLocationId() {
            return this.currentLocationId;
        }

        public final String getIp() {
            return this.ip;
        }

        public final String getUrl() {
            return this.url;
        }

        public final String getLabel() {
            return this.label;
        }
    }

    public final void listenForLocationOfflineConfig() {
        BuildersKt__Builders_commonKt.launch$default(this.scope, new DefaultOfflineEventHandler$listenForLocationOfflineConfig$$inlined$CoroutineExceptionHandler$1(CoroutineExceptionHandler.INSTANCE, this), null, new AnonymousClass1(null), 2, null);
    }
}
