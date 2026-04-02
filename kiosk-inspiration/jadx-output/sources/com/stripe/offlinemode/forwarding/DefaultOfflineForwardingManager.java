package com.stripe.offlinemode.forwarding;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.stripe.jvmcore.dagger.IsNetworkAvailable;
import com.stripe.jvmcore.dagger.Offline;
import com.stripe.jvmcore.dagger.OfflineForwarding;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.offlinemode.forwarding.HaltForwardingException;
import com.stripe.offlinemode.helpers.OfflineConfigHelper;
import com.stripe.offlinemode.log.OfflineForwardingTraceLogger;
import com.stripe.offlinemode.log.OfflineMetricTags;
import com.stripe.offlinemode.models.OfflineForwardingRequest;
import com.stripe.offlinemode.models.OfflineForwardingResponse;
import com.stripe.offlinemode.storage.OfflineRepository;
import com.stripe.proto.model.offline_mode.OfflineApiRequest;
import com.stripe.proto.model.offline_mode.OfflineConnection;
import com.stripe.proto.model.offline_mode.OfflineLocation;
import com.stripe.proto.model.offline_mode.OfflineReader;
import com.stripe.proto.model.rest.ReceivedAccountIdFromConnectionToken;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.EndToEndScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain;
import com.stripe.stripeterminal.external.api.ApiError;
import com.stripe.stripeterminal.external.callable.OfflineListener;
import com.stripe.stripeterminal.external.models.NetworkStatus;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.PaymentIntentStatus;
import com.stripe.stripeterminal.external.models.SetupIntent;
import com.stripe.stripeterminal.external.models.SetupIntentStatus;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.time.Clock;
import com.sun.jna.platform.win32.WinError;
import com.sun.jna.platform.win32.WinUser;
import java.util.Map;
import java.util.concurrent.CancellationException;
import javax.inject.Provider;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.AdaptedFunctionReference;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: compiled from: DefaultOfflineForwardingManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000æ\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0002\u0018\u0000 X2\u00020\u0001:\u0001XB¹\u0001\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\u000e\b\u0001\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\b\b\u0001\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\"\u0010\u0016\u001a\u001e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u0017j\u0002`\u001c\u0012\"\u0010\u001d\u001a\u001e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001f0\u0017j\u0002` \u0012\u0006\u0010!\u001a\u00020\"\u0012\u0006\u0010#\u001a\u00020$¢\u0006\u0002\u0010%J\u0016\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/H\u0082@¢\u0006\u0002\u00100J \u00101\u001a\u0002022\u0006\u0010.\u001a\u00020/2\b\b\u0002\u00103\u001a\u000204H\u0082@¢\u0006\u0002\u00105J\u0016\u00106\u001a\u0002072\u0006\u00108\u001a\u00020-H\u0082@¢\u0006\u0002\u00109J&\u0010:\u001a\u0002022\u0006\u0010;\u001a\u00020<2\u0006\u0010.\u001a\u00020/2\u0006\u00103\u001a\u000204H\u0082@¢\u0006\u0002\u0010=J \u0010>\u001a\u0004\u0018\u0001022\u0006\u0010?\u001a\u00020@2\u0006\u0010.\u001a\u00020/H\u0082@¢\u0006\u0002\u0010AJ\u0018\u0010B\u001a\u00020\b2\u0006\u0010C\u001a\u00020D2\u0006\u0010?\u001a\u00020@H\u0002J\r\u0010E\u001a\u00020\bH\u0001¢\u0006\u0002\bFJ\u001e\u0010G\u001a\u0002072\u0006\u0010H\u001a\u00020I2\u0006\u0010?\u001a\u00020@H\u0082@¢\u0006\u0002\u0010JJ\u0016\u0010K\u001a\u0002072\u0006\u00108\u001a\u000202H\u0082@¢\u0006\u0002\u0010LJ\b\u0010M\u001a\u000207H\u0016J\u0012\u0010N\u001a\u0002072\b\u0010O\u001a\u0004\u0018\u00010PH\u0016J\u001a\u0010Q\u001a\u00020@2\u0006\u0010?\u001a\u00020R2\b\b\u0002\u0010S\u001a\u00020PH\u0002J\u0010\u0010T\u001a\u0002072\u0006\u0010.\u001a\u00020/H\u0002J\f\u0010U\u001a\u00020P*\u00020RH\u0002J\u001a\u0010V\u001a\u000e\u0012\u0004\u0012\u00020P\u0012\u0004\u0012\u00020P0W*\u0004\u0018\u00010RH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\u001d\u001a\u001e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001f0\u0017j\u0002` X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\u0016\u001a\u001e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u0017j\u0002`\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020'X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010*\u001a\u00020\b8BX\u0082\u000e¢\u0006\b\n\u0000\u001a\u0004\b*\u0010+R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006Y"}, d2 = {"Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;", "Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;", "apiClient", "Lcom/stripe/offlinemode/forwarding/OfflineForwardingApiClient;", "offlineRepository", "Lcom/stripe/offlinemode/storage/OfflineRepository;", "networkConnectivityFlow", "Lkotlinx/coroutines/flow/Flow;", "", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/stripe/stripeterminal/external/callable/OfflineListener;", "networkStatusProvider", "Ljavax/inject/Provider;", "Lcom/stripe/stripeterminal/external/models/NetworkStatus;", "offlineForwardingDelayCalculator", "Lcom/stripe/offlinemode/forwarding/OfflineForwardingDelayCalculator;", "offlineConfigHelper", "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;", "clock", "Lcom/stripe/time/Clock;", "endToEndLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope$Builder;", "Lcom/stripe/offlinemode/log/OfflineEndToEndLogger;", "discreteLogger", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;", "Lcom/stripe/offlinemode/log/OfflineDiscreteLogger;", "traceLogger", "Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;", "offlineCredentialsProvider", "Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;", "(Lcom/stripe/offlinemode/forwarding/OfflineForwardingApiClient;Lcom/stripe/offlinemode/storage/OfflineRepository;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/stripeterminal/external/callable/OfflineListener;Ljavax/inject/Provider;Lcom/stripe/offlinemode/forwarding/OfflineForwardingDelayCalculator;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;)V", "exceptionHandler", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "forwardingJob", "Lkotlinx/coroutines/Job;", "isFirstInitialization", "()Z", "forward", "Lcom/stripe/offlinemode/models/OfflineForwardingResponse;", "request", "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;", "(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "forwardAndRetryTransientErrors", "Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;", "attempt", "", "(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "handleForwardResponse", "", "response", "(Lcom/stripe/offlinemode/models/OfflineForwardingResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "handleForwardingException", "exception", "Lcom/stripe/offlinemode/forwarding/ForwardingApiException;", "(Lcom/stripe/offlinemode/forwarding/ForwardingApiException;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "intentFromDuplicateConfirmError", "error", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "(Lcom/stripe/stripeterminal/external/models/TerminalException;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "isExpectedError", "type", "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;", "isForwardJobRunning", "isForwardJobRunning$offlinemode_release", "onFailedToForward", "offlineApiRequest", "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;", "(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lcom/stripe/stripeterminal/external/models/TerminalException;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onFinishedForwarding", "(Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "startForwarding", "stopForwarding", "reason", "", "toTerminalException", "", "errorMessage", "validateOfflineData", "logErrorReason", "tags", "", "Companion", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultOfflineForwardingManager implements OfflineForwardingManager {
    private static final int MAX_CONSECUTIVE_FAILURES = 10;
    private static final long ONE_HOUR_MS = 3600000;
    private static final String PAYMENT_INTENT_UNEXPECTED_STATE_ERROR_CODE = "payment_intent_unexpected_state";
    private static final String SETUP_INTENT_UNEXPECTED_STATE_ERROR_CODE = "setup_intent_unexpected_state";
    private static final String TAG_ENTITY_ID = "EntityId";
    private static final String TAG_NOTIFY_INTEGRATION = "NotifyIntegration";
    private static final String TAG_REQUEST_TYPE = "RequestType";
    private final OfflineForwardingApiClient apiClient;
    private final Clock clock;
    private final HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> discreteLogger;
    private final CoroutineDispatcher dispatcher;
    private final HealthLogger<OfflineDomain, OfflineDomain.Builder, EndToEndScope, EndToEndScope.Builder> endToEndLogger;
    private final CoroutineExceptionHandler exceptionHandler;
    private Job forwardingJob;
    private boolean isFirstInitialization;
    private final OfflineListener listener;
    private final Flow<Boolean> networkConnectivityFlow;
    private final Provider<NetworkStatus> networkStatusProvider;
    private final OfflineConfigHelper offlineConfigHelper;
    private final OfflineCredentialsProvider offlineCredentialsProvider;
    private final OfflineForwardingDelayCalculator offlineForwardingDelayCalculator;
    private final OfflineRepository offlineRepository;
    private final OfflineForwardingTraceLogger traceLogger;

    /* JADX INFO: compiled from: DefaultOfflineForwardingManager.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[OfflineApiRequest.ApiRequestType.values().length];
            try {
                iArr[OfflineApiRequest.ApiRequestType.CREATE_PAYMENT_INTENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[OfflineApiRequest.ApiRequestType.PROCESS_PAYMENT_INTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[OfflineApiRequest.ApiRequestType.CREATE_SETUP_INTENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[OfflineApiRequest.ApiRequestType.CONFIRM_SETUP_INTENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager$forward$1, reason: invalid class name */
    /* JADX INFO: compiled from: DefaultOfflineForwardingManager.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager", f = "DefaultOfflineForwardingManager.kt", i = {0, 0}, l = {361}, m = "forward", n = {"this", "request"}, s = {"L$0", "L$1"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DefaultOfflineForwardingManager.this.forward(null, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager$forwardAndRetryTransientErrors$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DefaultOfflineForwardingManager.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager", f = "DefaultOfflineForwardingManager.kt", i = {0, 0, 0, 1, 1, 1}, l = {WinUser.WM_SYSKEYUP, 270, 279}, m = "forwardAndRetryTransientErrors", n = {"this", "request", "attempt", "this", "request", "attempt"}, s = {"L$0", "L$1", "I$0", "L$0", "L$1", "I$0"})
    static final class C03051 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C03051(Continuation<? super C03051> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DefaultOfflineForwardingManager.this.forwardAndRetryTransientErrors(null, 0, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager$handleForwardingException$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DefaultOfflineForwardingManager.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager", f = "DefaultOfflineForwardingManager.kt", i = {0, 0, 0, 0, 0, 0, 2, 2, 2}, l = {WinError.ERROR_PARTIAL_COPY, 306, 332, 334}, m = "handleForwardingException", n = {"this", "exception", "request", "networkStatus", "attempt", "failureCount", "this", "request", "failureCount"}, s = {"L$0", "L$1", "L$2", "L$3", "I$0", "I$1", "L$0", "L$1", "I$0"})
    static final class C03061 extends ContinuationImpl {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        C03061(Continuation<? super C03061> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DefaultOfflineForwardingManager.this.handleForwardingException(null, null, 0, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager$intentFromDuplicateConfirmError$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DefaultOfflineForwardingManager.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager", f = "DefaultOfflineForwardingManager.kt", i = {0}, l = {WinError.ERROR_PWD_TOO_RECENT}, m = "intentFromDuplicateConfirmError", n = {"request"}, s = {"L$0"})
    static final class C03071 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C03071(Continuation<? super C03071> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DefaultOfflineForwardingManager.this.intentFromDuplicateConfirmError(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager$onFailedToForward$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DefaultOfflineForwardingManager.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager", f = "DefaultOfflineForwardingManager.kt", i = {0, 0, 1, 1}, l = {WinError.ERROR_INVALID_ADDRESS, 491}, m = "onFailedToForward", n = {"this", "offlineApiRequest", "this", "offlineApiRequest"}, s = {"L$0", "L$1", "L$0", "L$1"})
    static final class C03081 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C03081(Continuation<? super C03081> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DefaultOfflineForwardingManager.this.onFailedToForward(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager$onFinishedForwarding$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DefaultOfflineForwardingManager.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager", f = "DefaultOfflineForwardingManager.kt", i = {0, 1}, l = {443, 448}, m = "onFinishedForwarding", n = {"this", "this"}, s = {"L$0", "L$0"})
    static final class C03091 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C03091(Continuation<? super C03091> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DefaultOfflineForwardingManager.this.onFinishedForwarding(null, this);
        }
    }

    public DefaultOfflineForwardingManager(OfflineForwardingApiClient apiClient, @OfflineForwarding OfflineRepository offlineRepository, @IsNetworkAvailable Flow<Boolean> networkConnectivityFlow, @Offline CoroutineDispatcher dispatcher, OfflineListener listener, Provider<NetworkStatus> networkStatusProvider, OfflineForwardingDelayCalculator offlineForwardingDelayCalculator, OfflineConfigHelper offlineConfigHelper, Clock clock, HealthLogger<OfflineDomain, OfflineDomain.Builder, EndToEndScope, EndToEndScope.Builder> endToEndLogger, HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> discreteLogger, OfflineForwardingTraceLogger traceLogger, OfflineCredentialsProvider offlineCredentialsProvider) {
        Intrinsics.checkNotNullParameter(apiClient, "apiClient");
        Intrinsics.checkNotNullParameter(offlineRepository, "offlineRepository");
        Intrinsics.checkNotNullParameter(networkConnectivityFlow, "networkConnectivityFlow");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(networkStatusProvider, "networkStatusProvider");
        Intrinsics.checkNotNullParameter(offlineForwardingDelayCalculator, "offlineForwardingDelayCalculator");
        Intrinsics.checkNotNullParameter(offlineConfigHelper, "offlineConfigHelper");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(endToEndLogger, "endToEndLogger");
        Intrinsics.checkNotNullParameter(discreteLogger, "discreteLogger");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(offlineCredentialsProvider, "offlineCredentialsProvider");
        this.apiClient = apiClient;
        this.offlineRepository = offlineRepository;
        this.networkConnectivityFlow = networkConnectivityFlow;
        this.dispatcher = dispatcher;
        this.listener = listener;
        this.networkStatusProvider = networkStatusProvider;
        this.offlineForwardingDelayCalculator = offlineForwardingDelayCalculator;
        this.offlineConfigHelper = offlineConfigHelper;
        this.clock = clock;
        this.endToEndLogger = endToEndLogger;
        this.discreteLogger = discreteLogger;
        this.traceLogger = traceLogger;
        this.offlineCredentialsProvider = offlineCredentialsProvider;
        this.exceptionHandler = new DefaultOfflineForwardingManager$special$$inlined$CoroutineExceptionHandler$1(CoroutineExceptionHandler.INSTANCE, this);
        this.isFirstInitialization = true;
    }

    private final boolean isFirstInitialization() {
        boolean z = this.isFirstInitialization;
        this.isFirstInitialization = false;
        return z;
    }

    @Override // com.stripe.offlinemode.forwarding.OfflineForwardingManager
    public void startForwarding() {
        OfflineForwardingTraceLogger offlineForwardingTraceLogger = this.traceLogger;
        Pair<String, ? extends Object>[] pairArr = new Pair[1];
        Job job = this.forwardingJob;
        pairArr[0] = TuplesKt.to("isAlreadyForwarding", job != null ? Boolean.valueOf(job.isActive()) : null);
        offlineForwardingTraceLogger.d("Start forwarding", pairArr);
        Job job2 = this.forwardingJob;
        if (job2 == null || !job2.isActive()) {
            StateFlow<String> activeAccountFlow = this.offlineRepository.getActiveAccountFlow();
            if (isFirstInitialization() && activeAccountFlow.getValue() == null) {
                BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(this.dispatcher), this.exceptionHandler, null, new C03101(null), 2, null);
            }
            this.traceLogger.startSession();
            this.forwardingJob = BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(this.dispatcher), this.exceptionHandler, null, new AnonymousClass2(activeAccountFlow, null), 2, null);
        }
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager$startForwarding$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DefaultOfflineForwardingManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager$startForwarding$1", f = "DefaultOfflineForwardingManager.kt", i = {}, l = {116}, m = "invokeSuspend", n = {}, s = {})
    static final class C03101 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        C03101(Continuation<? super C03101> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C03101 c03101 = DefaultOfflineForwardingManager.this.new C03101(continuation);
            c03101.L$0 = obj;
            return c03101;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C03101) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object objM817constructorimpl;
            String str;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    DefaultOfflineForwardingManager defaultOfflineForwardingManager = DefaultOfflineForwardingManager.this;
                    Result.Companion companion = Result.INSTANCE;
                    OfflineCredentialsProvider offlineCredentialsProvider = defaultOfflineForwardingManager.offlineCredentialsProvider;
                    this.label = 1;
                    obj = offlineCredentialsProvider.retrieveAccountId(this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                objM817constructorimpl = Result.m817constructorimpl(((ReceivedAccountIdFromConnectionToken) obj).account_id);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
            }
            DefaultOfflineForwardingManager defaultOfflineForwardingManager2 = DefaultOfflineForwardingManager.this;
            if (Result.m824isSuccessimpl(objM817constructorimpl) && (str = (String) objM817constructorimpl) != null) {
                defaultOfflineForwardingManager2.offlineRepository.setActiveAccountId(str);
            }
            DefaultOfflineForwardingManager defaultOfflineForwardingManager3 = DefaultOfflineForwardingManager.this;
            Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
            if (thM820exceptionOrNullimpl != null) {
                defaultOfflineForwardingManager3.traceLogger.e("Failed to retrieve active account ID.", thM820exceptionOrNullimpl, new Pair[0]);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager$startForwarding$2, reason: invalid class name */
    /* JADX INFO: compiled from: DefaultOfflineForwardingManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager$startForwarding$2", f = "DefaultOfflineForwardingManager.kt", i = {}, l = {235}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ StateFlow<String> $activeAccountFlow;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(StateFlow<String> stateFlow, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$activeAccountFlow = stateFlow;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DefaultOfflineForwardingManager.this.new AnonymousClass2(this.$activeAccountFlow, continuation);
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
                if (FlowKt.collectLatest(FlowKt.distinctUntilChanged(FlowKt.transformLatest(FlowKt.distinctUntilChanged(FlowKt.combine(DefaultOfflineForwardingManager.this.networkConnectivityFlow, this.$activeAccountFlow, C00542.INSTANCE)), new DefaultOfflineForwardingManager$startForwarding$2$invokeSuspend$$inlined$flatMapLatest$1(null, DefaultOfflineForwardingManager.this))), new AnonymousClass4(DefaultOfflineForwardingManager.this), this) == coroutine_suspended) {
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

        /* JADX INFO: renamed from: com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager$startForwarding$2$2, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: DefaultOfflineForwardingManager.kt */
        @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
        /* synthetic */ class C00542 extends AdaptedFunctionReference implements Function3<Boolean, String, Continuation<? super Pair<? extends Boolean, ? extends String>>, Object>, SuspendFunction {
            public static final C00542 INSTANCE = new C00542();

            C00542() {
                super(3, Pair.class, "<init>", "<init>(Ljava/lang/Object;Ljava/lang/Object;)V", 4);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Object invoke(Boolean bool, String str, Continuation<? super Pair<? extends Boolean, ? extends String>> continuation) {
                return invoke(bool.booleanValue(), str, (Continuation<? super Pair<Boolean, String>>) continuation);
            }

            public final Object invoke(boolean z, String str, Continuation<? super Pair<Boolean, String>> continuation) {
                return AnonymousClass2.invokeSuspend$lambda$0(z, str, continuation);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ Object invokeSuspend$lambda$0(boolean z, String str, Continuation continuation) {
            return new Pair(Boxing.boxBoolean(z), str);
        }

        /* JADX INFO: renamed from: com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager$startForwarding$2$4, reason: invalid class name */
        /* JADX INFO: compiled from: DefaultOfflineForwardingManager.kt */
        @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
        /* synthetic */ class AnonymousClass4 extends FunctionReferenceImpl implements Function2<OfflineForwardingResponse, Continuation<? super Unit>, Object>, SuspendFunction {
            AnonymousClass4(Object obj) {
                super(2, obj, DefaultOfflineForwardingManager.class, "handleForwardResponse", "handleForwardResponse(Lcom/stripe/offlinemode/models/OfflineForwardingResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(OfflineForwardingResponse offlineForwardingResponse, Continuation<? super Unit> continuation) {
                return ((DefaultOfflineForwardingManager) this.receiver).handleForwardResponse(offlineForwardingResponse, continuation);
            }
        }
    }

    @Override // com.stripe.offlinemode.forwarding.OfflineForwardingManager
    public void stopForwarding(String reason) {
        CancellationException cancellationException;
        Job job = this.forwardingJob;
        if (job != null) {
            if (reason != null) {
                Throwable th = new Throwable(reason);
                cancellationException = new CancellationException(th.toString());
                cancellationException.initCause(th);
            } else {
                cancellationException = null;
            }
            job.cancel(cancellationException);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object forwardAndRetryTransientErrors(com.stripe.offlinemode.models.OfflineForwardingRequest r8, int r9, kotlin.coroutines.Continuation<? super com.stripe.offlinemode.models.OfflineForwardingResponse.Success> r10) throws com.stripe.offlinemode.forwarding.HaltForwardingException.TerminalIsOffline, com.stripe.stripeterminal.external.models.TerminalException, com.stripe.offlinemode.forwarding.HaltForwardingException.FailedToFetchCredentials, com.stripe.offlinemode.forwarding.HaltForwardingException.ExceededMaxRetries, com.stripe.stripeterminal.external.models.ConnectionTokenException {
        /*
            Method dump skipped, instruction units count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager.forwardAndRetryTransientErrors(com.stripe.offlinemode.models.OfflineForwardingRequest, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    static /* synthetic */ Object forwardAndRetryTransientErrors$default(DefaultOfflineForwardingManager defaultOfflineForwardingManager, OfflineForwardingRequest offlineForwardingRequest, int i, Continuation continuation, int i2, Object obj) throws TerminalException {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return defaultOfflineForwardingManager.forwardAndRetryTransientErrors(offlineForwardingRequest, i, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00cf A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x010b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0153 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0154 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object handleForwardingException(com.stripe.offlinemode.forwarding.ForwardingApiException r18, com.stripe.offlinemode.models.OfflineForwardingRequest r19, int r20, kotlin.coroutines.Continuation<? super com.stripe.offlinemode.models.OfflineForwardingResponse.Success> r21) throws com.stripe.offlinemode.forwarding.HaltForwardingException.TerminalIsOffline, com.stripe.stripeterminal.external.models.TerminalException, com.stripe.offlinemode.forwarding.HaltForwardingException.FailedToFetchCredentials, com.stripe.offlinemode.forwarding.HaltForwardingException.ExceededMaxRetries, com.stripe.stripeterminal.external.models.ConnectionTokenException {
        /*
            Method dump skipped, instruction units count: 341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager.handleForwardingException(com.stripe.offlinemode.forwarding.ForwardingApiException, com.stripe.offlinemode.models.OfflineForwardingRequest, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object forward(com.stripe.offlinemode.models.OfflineForwardingRequest r14, kotlin.coroutines.Continuation<? super com.stripe.offlinemode.models.OfflineForwardingResponse> r15) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager.forward(com.stripe.offlinemode.models.OfflineForwardingRequest, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00de, code lost:
    
        if (r1.delete(r2, r3) == r4) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00e1, code lost:
    
        r1 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00ed, code lost:
    
        if (r5.updateOfflineConfirmRequestWithOnlineEntity(r21, r2, r3) == r4) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ef, code lost:
    
        return r4;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object onFinishedForwarding(com.stripe.offlinemode.models.OfflineForwardingResponse.Success r21, kotlin.coroutines.Continuation<? super kotlin.Unit> r22) throws com.stripe.stripeterminal.external.models.TerminalException {
        /*
            Method dump skipped, instruction units count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager.onFinishedForwarding(com.stripe.offlinemode.models.OfflineForwardingResponse$Success, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0150 A[LOOP:0: B:44:0x014e->B:45:0x0150, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object onFailedToForward(com.stripe.proto.model.offline_mode.OfflineApiRequest r22, com.stripe.stripeterminal.external.models.TerminalException r23, kotlin.coroutines.Continuation<? super kotlin.Unit> r24) throws java.lang.IllegalAccessException, java.lang.InstantiationException, com.stripe.stripeterminal.external.models.TerminalException {
        /*
            Method dump skipped, instruction units count: 401
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager.onFailedToForward(com.stripe.proto.model.offline_mode.OfflineApiRequest, com.stripe.stripeterminal.external.models.TerminalException, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final boolean isExpectedError(OfflineApiRequest.ApiRequestType type, TerminalException error) {
        String code;
        if (error.getErrorCode() == TerminalErrorCode.OFFLINE_TESTMODE_PAYMENT_IN_LIVEMODE) {
            return true;
        }
        ApiError apiError = error.getApiError();
        if (apiError == null || (code = apiError.getCode()) == null) {
            return false;
        }
        if (this.offlineConfigHelper.isKnownForwardingError(type, code)) {
            return true;
        }
        if (type == OfflineApiRequest.ApiRequestType.PROCESS_PAYMENT_INTENT && Intrinsics.areEqual(code, PAYMENT_INTENT_UNEXPECTED_STATE_ERROR_CODE)) {
            PaymentIntent paymentIntent = error.getPaymentIntent();
            if ((paymentIntent != null ? paymentIntent.getStatus() : null) == PaymentIntentStatus.CANCELED) {
                return true;
            }
        }
        if (type != OfflineApiRequest.ApiRequestType.CONFIRM_SETUP_INTENT || !Intrinsics.areEqual(code, SETUP_INTENT_UNEXPECTED_STATE_ERROR_CODE)) {
            return false;
        }
        SetupIntent setupIntent = error.getSetupIntent();
        return (setupIntent != null ? setupIntent.getStatus() : null) == SetupIntentStatus.CANCELLED;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object handleForwardResponse(OfflineForwardingResponse offlineForwardingResponse, Continuation<? super Unit> continuation) throws IllegalAccessException, InstantiationException, TerminalException {
        if (offlineForwardingResponse instanceof OfflineForwardingResponse.Success) {
            Object objOnFinishedForwarding = onFinishedForwarding((OfflineForwardingResponse.Success) offlineForwardingResponse, continuation);
            return objOnFinishedForwarding == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objOnFinishedForwarding : Unit.INSTANCE;
        }
        if (offlineForwardingResponse instanceof OfflineForwardingResponse.Failure) {
            Object objOnFailedToForward = onFailedToForward(offlineForwardingResponse.getRequest().getOfflineApiRequest(), ((OfflineForwardingResponse.Failure) offlineForwardingResponse).getError(), continuation);
            return objOnFailedToForward == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objOnFailedToForward : Unit.INSTANCE;
        }
        if (offlineForwardingResponse instanceof OfflineForwardingResponse.Cancel) {
            OfflineForwardingTraceLogger.endOperation$default(this.traceLogger, null, "Failed to complete due to a change in network availability or active account.", 1, null);
        }
        return Unit.INSTANCE;
    }

    private final void validateOfflineData(OfflineForwardingRequest request) throws TerminalException {
        IllegalStateException illegalStateException;
        OfflineReader offlineReader = request.getOfflineReader();
        OfflineConnection offlineConnection = request.getOfflineConnection();
        OfflineLocation offlineLocation = request.getOfflineLocation();
        OfflineApiRequest offlineApiRequest = request.getOfflineApiRequest();
        if (!Intrinsics.areEqual(offlineReader.account_id, offlineConnection.account_id) || !Intrinsics.areEqual(offlineConnection.account_id, offlineApiRequest.account_id)) {
            illegalStateException = new IllegalStateException("The offline records for this payment belong to different accounts!");
        } else {
            illegalStateException = (offlineReader.id == offlineConnection.reader_id && offlineConnection.id == offlineApiRequest.connection_id && offlineLocation.id == offlineConnection.location_id) ? null : new IllegalStateException("Attempting to forward mismatched offline records!");
        }
        if (illegalStateException != null) {
            throw toTerminalException(illegalStateException, "Couldn't validate offline records for forwarding.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object intentFromDuplicateConfirmError(com.stripe.stripeterminal.external.models.TerminalException r11, com.stripe.offlinemode.models.OfflineForwardingRequest r12, kotlin.coroutines.Continuation<? super com.stripe.offlinemode.models.OfflineForwardingResponse.Success> r13) throws com.stripe.stripeterminal.external.models.TerminalException {
        /*
            r10 = this;
            boolean r0 = r13 instanceof com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager.C03071
            if (r0 == 0) goto L14
            r0 = r13
            com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager$intentFromDuplicateConfirmError$1 r0 = (com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager.C03071) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r13 = r0.label
            int r13 = r13 - r2
            r0.label = r13
            goto L19
        L14:
            com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager$intentFromDuplicateConfirmError$1 r0 = new com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager$intentFromDuplicateConfirmError$1
            r0.<init>(r13)
        L19:
            r6 = r0
            java.lang.Object r13 = r6.result
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r6.label
            r2 = 1
            if (r1 == 0) goto L39
            if (r1 != r2) goto L31
            java.lang.Object r11 = r6.L$0
            r12 = r11
            com.stripe.offlinemode.models.OfflineForwardingRequest r12 = (com.stripe.offlinemode.models.OfflineForwardingRequest) r12
            kotlin.ResultKt.throwOnFailure(r13)
            goto Lad
        L31:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L39:
            kotlin.ResultKt.throwOnFailure(r13)
            com.stripe.proto.model.offline_mode.OfflineReader r3 = r12.getOfflineReader()
            com.stripe.proto.model.offline_mode.OfflineConnection r4 = r12.getOfflineConnection()
            com.stripe.proto.model.offline_mode.OfflineLocation r5 = r12.getOfflineLocation()
            com.stripe.stripeterminal.external.models.PaymentIntent r13 = r11.getPaymentIntent()
            r1 = 0
            if (r13 == 0) goto L7d
            r7 = 2
            com.stripe.stripeterminal.external.models.PaymentIntentStatus[] r7 = new com.stripe.stripeterminal.external.models.PaymentIntentStatus[r7]
            r8 = 0
            com.stripe.stripeterminal.external.models.PaymentIntentStatus r9 = com.stripe.stripeterminal.external.models.PaymentIntentStatus.SUCCEEDED
            r7[r8] = r9
            com.stripe.stripeterminal.external.models.PaymentIntentStatus r8 = com.stripe.stripeterminal.external.models.PaymentIntentStatus.REQUIRES_CAPTURE
            r7[r2] = r8
            java.util.Set r7 = kotlin.collections.SetsKt.setOf(r7)
            java.lang.Iterable r7 = (java.lang.Iterable) r7
            com.stripe.stripeterminal.external.models.PaymentIntentStatus r8 = r13.getStatus()
            boolean r7 = kotlin.collections.CollectionsKt.contains(r7, r8)
            if (r7 == 0) goto L6c
            goto L6d
        L6c:
            r13 = r1
        L6d:
            if (r13 == 0) goto L7d
            com.stripe.stripeterminal.internal.common.proto.ProtoConverter r7 = com.stripe.stripeterminal.internal.common.proto.ProtoConverter.INSTANCE
            com.stripe.proto.model.rest.PaymentIntent r13 = r7.toProtoPaymentIntent(r13)
            if (r13 == 0) goto L7d
            com.stripe.offlinemode.models.OfflineForwardingResponse$PaymentIntentSuccess r11 = new com.stripe.offlinemode.models.OfflineForwardingResponse$PaymentIntentSuccess
            r11.<init>(r13, r12)
            return r11
        L7d:
            com.stripe.stripeterminal.external.models.SetupIntent r11 = r11.getSetupIntent()
            if (r11 == 0) goto Lc4
            com.stripe.stripeterminal.external.models.SetupIntentStatus r13 = com.stripe.stripeterminal.external.models.SetupIntentStatus.SUCCEEDED
            java.util.Set r13 = kotlin.collections.SetsKt.setOf(r13)
            java.lang.Iterable r13 = (java.lang.Iterable) r13
            com.stripe.stripeterminal.external.models.SetupIntentStatus r7 = r11.getStatus()
            boolean r13 = kotlin.collections.CollectionsKt.contains(r13, r7)
            if (r13 == 0) goto L96
            goto L97
        L96:
            r11 = r1
        L97:
            if (r11 == 0) goto Lc4
            com.stripe.offlinemode.forwarding.OfflineForwardingApiClient r1 = r10.apiClient
            java.lang.String r11 = r11.getId()
            if (r11 == 0) goto Lb5
            r6.L$0 = r12
            r6.label = r2
            r2 = r11
            java.lang.Object r13 = r1.retrieveSetupIntent(r2, r3, r4, r5, r6)
            if (r13 != r0) goto Lad
            return r0
        Lad:
            com.stripe.proto.model.rest.SetupIntent r13 = (com.stripe.proto.model.rest.SetupIntent) r13
            com.stripe.offlinemode.models.OfflineForwardingResponse$SetupIntentSuccess r11 = new com.stripe.offlinemode.models.OfflineForwardingResponse$SetupIntentSuccess
            r11.<init>(r13, r12)
            return r11
        Lb5:
            com.stripe.stripeterminal.external.models.TerminalException r0 = new com.stripe.stripeterminal.external.models.TerminalException
            com.stripe.stripeterminal.external.models.TerminalErrorCode r1 = com.stripe.stripeterminal.external.models.TerminalErrorCode.UNEXPECTED_SDK_ERROR
            r5 = 12
            r6 = 0
            java.lang.String r2 = "SetupIntent ID cannot be null after forwarding."
            r3 = 0
            r4 = 0
            r0.<init>(r1, r2, r3, r4, r5, r6)
            throw r0
        Lc4:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager.intentFromDuplicateConfirmError(com.stripe.stripeterminal.external.models.TerminalException, com.stripe.offlinemode.models.OfflineForwardingRequest, kotlin.coroutines.Continuation):java.lang.Object");
    }

    static /* synthetic */ TerminalException toTerminalException$default(DefaultOfflineForwardingManager defaultOfflineForwardingManager, Throwable th, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "Failed to forward offline payment.";
        }
        return defaultOfflineForwardingManager.toTerminalException(th, str);
    }

    private final TerminalException toTerminalException(Throwable error, String errorMessage) {
        return new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, errorMessage, error, null, 8, null);
    }

    private final String logErrorReason(Throwable th) {
        return th instanceof TerminalException ? ((TerminalException) th).getErrorCode().toLogString() : th instanceof HaltForwardingException.TerminalIsOffline ? "terminal_offline" : th instanceof HaltForwardingException.ExceededMaxRetries ? "exceeded_max_retries" : th instanceof CancellationException ? "scope_cancelled" : "unexpected_error";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Map<String, String> tags(Throwable th) {
        Map<String, String> mapMapOf;
        return (th == null || (mapMapOf = MapsKt.mapOf(TuplesKt.to(OfflineMetricTags.ERROR_REASON, logErrorReason(th)))) == null) ? MapsKt.emptyMap() : mapMapOf;
    }

    public final boolean isForwardJobRunning$offlinemode_release() {
        Job job = this.forwardingJob;
        return job != null && job.isActive();
    }
}
