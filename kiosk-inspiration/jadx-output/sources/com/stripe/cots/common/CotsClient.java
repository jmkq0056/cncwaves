package com.stripe.cots.common;

import android.content.Context;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.remoteconfig.RemoteConfigComponent;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.squareup.wire.Message;
import com.stripe.core.aidlrpc.AidlRpcException;
import com.stripe.core.aidlrpc.AidlRpcListener;
import com.stripe.core.aidlrpcclient.AidlConnectionListener;
import com.stripe.core.aidlrpcclient.AidlRpcClient;
import com.stripe.core.aidlrpcclient.AidlServiceConnection;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.cots.aidlservice.CotsCancelCollectPaymentMethodRequest;
import com.stripe.cots.aidlservice.CotsCancelCollectPaymentMethodResponse;
import com.stripe.cots.aidlservice.CotsCollectPinRequest;
import com.stripe.cots.aidlservice.CotsCollectPinResponse;
import com.stripe.cots.aidlservice.CotsKillAidlServerRequest;
import com.stripe.cots.aidlservice.CotsKillAidlServerResponse;
import com.stripe.cots.aidlservice.CotsSetFakedContactlessOutcomeRequest;
import com.stripe.cots.aidlservice.CotsSetFakedContactlessOutcomeResponse;
import com.stripe.cots.common.compatibility.PreFlightChecks;
import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.jvmcore.logging.terminal.log.Log;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.proto.model.common.DeviceInfo;
import com.stripe.proto.model.common.VersionInfoPb;
import com.stripe.proto.net.rpc.base.RpcResponse;
import com.sun.jna.platform.win32.WinError;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;

/* JADX INFO: compiled from: CotsClient.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000µ\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u001a\u0018\u00002\u00020\u0001:\u0001PB5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0016\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\f¢\u0006\u0002\u0010\rJ@\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020#2\u0006\u0010&\u001a\u00020#2\u0006\u0010'\u001a\u00020#2\u0006\u0010(\u001a\u00020#H\u0096@¢\u0006\u0002\u0010)J\u000e\u0010*\u001a\u00020+H\u0082@¢\u0006\u0002\u0010,J\u000e\u0010-\u001a\u00020+H\u0096@¢\u0006\u0002\u0010,J\b\u0010.\u001a\u00020/H\u0016J\u0018\u00100\u001a\u0004\u0018\u0001012\u0006\u00102\u001a\u000203H\u0096@¢\u0006\u0002\u00104J\u0016\u00105\u001a\u0002062\u0006\u00107\u001a\u00020#H\u0096@¢\u0006\u0002\u00108J\u000e\u00109\u001a\u00020+H\u0096@¢\u0006\u0002\u0010,J\u0010\u0010:\u001a\u0004\u0018\u00010!H\u0096@¢\u0006\u0002\u0010,J\b\u0010;\u001a\u00020+H\u0016J\u0016\u0010<\u001a\u00020+2\u0006\u0010=\u001a\u00020>H\u0096@¢\u0006\u0002\u0010?JT\u0010@\u001a\u0002HA\"\u0012\b\u0000\u0010B*\f\u0012\u0004\u0012\u0002HB\u0012\u0002\b\u00030C\"\u0012\b\u0001\u0010A*\f\u0012\u0004\u0012\u0002HA\u0012\u0002\b\u00030C2\u0006\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u0002HB2\f\u0010G\u001a\b\u0012\u0004\u0012\u0002HA0HH\u0082@¢\u0006\u0002\u0010IJ\u0016\u0010J\u001a\u00020+2\u0006\u0010K\u001a\u00020LH\u0096@¢\u0006\u0002\u0010MJ\u0010\u0010N\u001a\u0004\u0018\u00010OH\u0096@¢\u0006\u0002\u0010,R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00100\u0016X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u001bR\u001b\u0010\u001c\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\u001a\u0004\b\u001c\u0010\u001f*\u0004\b\u001d\u0010\u001eR\u001e\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006Q"}, d2 = {"Lcom/stripe/cots/common/CotsClient;", "Lcom/stripe/cots/common/CotsClientInterface;", "context", "Landroid/content/Context;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "preFlightChecks", "Lcom/stripe/cots/common/compatibility/PreFlightChecks;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/cots/common/compatibility/PreFlightChecks;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "_disconnectFlow", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "", "aidlClient", "Lcom/stripe/core/aidlrpcclient/AidlRpcClient;", "aidlServiceConnection", "Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;", "disconnectFlow", "Lkotlinx/coroutines/flow/SharedFlow;", "getDisconnectFlow", "()Lkotlinx/coroutines/flow/SharedFlow;", "emptyRequestContextProvider", "com/stripe/cots/common/CotsClient$emptyRequestContextProvider$1", "Lcom/stripe/cots/common/CotsClient$emptyRequestContextProvider$1;", "isConnected", "isConnected$delegate", "(Lcom/stripe/cots/common/CotsClient;)Ljava/lang/Object;", "()Z", RemoteConfigComponent.ACTIVATE_FILE_NAME, "Lcom/stripe/cots/aidlservice/CotsReader;", "sessionToken", "", "rpcSessionToken", "clientType", "clientVersion", "deviceUuid", RemoteConfigConstants.RequestFieldKey.COUNTRY_CODE, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "bindIfNeeded", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cancelCollectPayment", "checkDeviceCompatibility", "Lcom/stripe/cots/common/CotsError;", "collectPayment", "Lcom/stripe/cots/aidlservice/CotsContactlessResult;", "parameters", "Lcom/stripe/cots/common/CotsCollectionParameters;", "(Lcom/stripe/cots/common/CotsCollectionParameters;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "collectPin", "Lcom/stripe/cots/aidlservice/CotsCollectPinResponse;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "disconnect", "discover", "initializeKeys", "killAidlServer", "delayMs", "", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "makeRequest", "Response", "Request", "Lcom/squareup/wire/Message;", FirebaseAnalytics.Param.METHOD, "Lcom/stripe/cots/common/CotsServiceRequestName;", "request", "responseAdapter", "Lcom/squareup/wire/ProtoAdapter;", "(Lcom/stripe/cots/common/CotsServiceRequestName;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setFakedContactlessOutcome", "fakedContactlessOutcomeType", "Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;", "(Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateReader", "Lcom/stripe/proto/model/config/ReaderFeatureFlags;", "CoroutineRpcListener", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CotsClient implements CotsClientInterface {
    private final MutableSharedFlow<Boolean> _disconnectFlow;
    private final AidlRpcClient aidlClient;
    private final AidlServiceConnection aidlServiceConnection;
    private final Context context;
    private final SharedFlow<Boolean> disconnectFlow;
    private final CoroutineDispatcher dispatcher;
    private final CotsClient$emptyRequestContextProvider$1 emptyRequestContextProvider;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final PreFlightChecks preFlightChecks;

    /* JADX INFO: renamed from: com.stripe.cots.common.CotsClient$activate$1, reason: invalid class name */
    /* JADX INFO: compiled from: CotsClient.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.cots.common.CotsClient", f = "CotsClient.kt", i = {}, l = {WinError.ERROR_IS_SUBST_TARGET}, m = RemoteConfigComponent.ACTIVATE_FILE_NAME, n = {}, s = {})
    static final class AnonymousClass1 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CotsClient.this.activate(null, null, null, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.cots.common.CotsClient$collectPayment$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CotsClient.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.cots.common.CotsClient", f = "CotsClient.kt", i = {}, l = {WinError.ERROR_INVALID_SEGMENT_NUMBER}, m = "collectPayment", n = {}, s = {})
    static final class C02541 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C02541(Continuation<? super C02541> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CotsClient.this.collectPayment(null, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.cots.common.CotsClient$disconnect$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CotsClient.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.cots.common.CotsClient", f = "CotsClient.kt", i = {0}, l = {160}, m = "disconnect", n = {"this"}, s = {"L$0"})
    static final class C02551 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02551(Continuation<? super C02551> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CotsClient.this.disconnect(this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.cots.common.CotsClient$discover$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CotsClient.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.cots.common.CotsClient", f = "CotsClient.kt", i = {}, l = {115}, m = "discover", n = {}, s = {})
    static final class C02561 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C02561(Continuation<? super C02561> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CotsClient.this.discover(this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.cots.common.CotsClient$makeRequest$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CotsClient.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.cots.common.CotsClient", f = "CotsClient.kt", i = {0, 0, 0, 0, 1, 1, 1, 1}, l = {247, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION}, m = "makeRequest", n = {"this", FirebaseAnalytics.Param.METHOD, "request", "responseAdapter", "this", FirebaseAnalytics.Param.METHOD, "request", "responseAdapter"}, s = {"L$0", "L$1", "L$2", "L$3", "L$0", "L$1", "L$2", "L$3"})
    static final class C02571<Request extends Message<Request, ?>, Response extends Message<Response, ?>> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        C02571(Continuation<? super C02571> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CotsClient.this.makeRequest(null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.cots.common.CotsClient$updateReader$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CotsClient.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.cots.common.CotsClient", f = "CotsClient.kt", i = {}, l = {WinError.ERROR_FILE_CHECKED_OUT}, m = "updateReader", n = {}, s = {})
    static final class C02581 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C02581(Continuation<? super C02581> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CotsClient.this.updateReader(this);
        }
    }

    /* JADX WARN: Type inference failed for: r8v1, types: [com.stripe.cots.common.CotsClient$emptyRequestContextProvider$1] */
    public CotsClient(Context context, CoroutineDispatcher dispatcher, PreFlightChecks preFlightChecks, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(preFlightChecks, "preFlightChecks");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.context = context;
        this.dispatcher = dispatcher;
        this.preFlightChecks = preFlightChecks;
        this.logger = logger;
        ?? r8 = new CrpcClient.CrpcRequestContextProvider() { // from class: com.stripe.cots.common.CotsClient$emptyRequestContextProvider$1
            @Override // com.stripe.jvmcore.crpcclient.CrpcClient.CrpcRequestContextProvider
            public String getLocalIp() {
                return "";
            }

            @Override // com.stripe.jvmcore.crpcclient.CrpcClient.CrpcRequestContextProvider
            public DeviceInfo getDeviceInfo() {
                return new DeviceInfo(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 65535, null);
            }

            @Override // com.stripe.jvmcore.crpcclient.CrpcClient.CrpcRequestContextProvider
            public VersionInfoPb getVersionInfo() {
                return new VersionInfoPb(null, null, 0, null, 15, null);
            }

            @Override // com.stripe.jvmcore.crpcclient.CrpcClient.CrpcRequestContextProvider
            /* JADX INFO: renamed from: getSessionToken */
            public String getToken() {
                return "";
            }
        };
        this.emptyRequestContextProvider = r8;
        MutableSharedFlow<Boolean> mutableSharedFlowMutableSharedFlow$default = SharedFlowKt.MutableSharedFlow$default(0, 0, null, 7, null);
        this._disconnectFlow = mutableSharedFlowMutableSharedFlow$default;
        this.disconnectFlow = FlowKt.asSharedFlow(mutableSharedFlowMutableSharedFlow$default);
        AidlServiceConnection aidlServiceConnection = new AidlServiceConnection(new AidlConnectionListener() { // from class: com.stripe.cots.common.CotsClient$aidlServiceConnection$1
            @Override // com.stripe.core.aidlrpcclient.AidlConnectionListener
            public void onDisconnect(boolean unexpected) throws InterruptedException {
                BuildersKt__BuildersKt.runBlocking$default(null, new CotsClient$aidlServiceConnection$1$onDisconnect$1(this.this$0, unexpected, null), 1, null);
            }
        }, "CotsClient", null, 4, null);
        this.aidlServiceConnection = aidlServiceConnection;
        this.aidlClient = new AidlRpcClient(context, (CrpcClient.CrpcRequestContextProvider) r8, aidlServiceConnection, new LoggerFactory() { // from class: com.stripe.cots.common.CotsClient$$ExternalSyntheticLambda0
            @Override // com.stripe.jvmcore.logging.terminal.log.LoggerFactory
            public final SimpleLogger create(KClass kClass) {
                return CotsClient.aidlClient$lambda$0(kClass);
            }
        });
    }

    @Override // com.stripe.cots.common.CotsClientInterface
    public SharedFlow<Boolean> getDisconnectFlow() {
        return this.disconnectFlow;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SimpleLogger aidlClient$lambda$0(KClass it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Log.INSTANCE.getLogger(AidlRpcClient.class);
    }

    private final boolean isConnected() {
        return this.aidlServiceConnection.isServiceConnected();
    }

    /* JADX INFO: renamed from: com.stripe.cots.common.CotsClient$bindIfNeeded$2, reason: invalid class name */
    /* JADX INFO: compiled from: CotsClient.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.cots.common.CotsClient$bindIfNeeded$2", f = "CotsClient.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CotsClient.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws AidlRpcException {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                AidlRpcClient aidlRpcClient = CotsClient.this.aidlClient;
                String packageName = CotsClient.this.context.getPackageName();
                Intrinsics.checkNotNullExpressionValue(packageName, "getPackageName(...)");
                aidlRpcClient.bindToService("", packageName, "com.stripe.cots.aidlservice.CotsService");
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object bindIfNeeded(Continuation<? super Unit> continuation) {
        if (!isConnected()) {
            Object objWithContext = BuildersKt.withContext(this.dispatcher, new AnonymousClass2(null), continuation);
            return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // com.stripe.cots.common.CotsClientInterface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object discover(kotlin.coroutines.Continuation<? super com.stripe.cots.aidlservice.CotsReader> r6) throws com.stripe.cots.common.ReaderNotConnectedException, com.stripe.core.aidlrpc.AidlRpcException, com.stripe.cots.common.DebuggableException {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.stripe.cots.common.CotsClient.C02561
            if (r0 == 0) goto L14
            r0 = r6
            com.stripe.cots.common.CotsClient$discover$1 r0 = (com.stripe.cots.common.CotsClient.C02561) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r6 = r0.label
            int r6 = r6 - r2
            r0.label = r6
            goto L19
        L14:
            com.stripe.cots.common.CotsClient$discover$1 r0 = new com.stripe.cots.common.CotsClient$discover$1
            r0.<init>(r6)
        L19:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L32
            if (r2 != r3) goto L2a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L52
        L2a:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L32:
            kotlin.ResultKt.throwOnFailure(r6)
            android.content.Context r6 = r5.context
            boolean r6 = com.stripe.cots.common.UtilsKt.isApplicationUnsupported(r6)
            if (r6 != 0) goto L57
            com.stripe.cots.common.CotsServiceRequestName r6 = com.stripe.cots.common.CotsServiceRequestName.DISCOVER
            com.stripe.cots.aidlservice.CotsDiscoverReaderRequest r2 = new com.stripe.cots.aidlservice.CotsDiscoverReaderRequest
            r4 = 0
            r2.<init>(r4, r3, r4)
            com.squareup.wire.Message r2 = (com.squareup.wire.Message) r2
            com.squareup.wire.ProtoAdapter<com.stripe.cots.aidlservice.CotsDiscoverReaderResponse> r4 = com.stripe.cots.aidlservice.CotsDiscoverReaderResponse.ADAPTER
            r0.label = r3
            java.lang.Object r6 = r5.makeRequest(r6, r2, r4, r0)
            if (r6 != r1) goto L52
            return r1
        L52:
            com.stripe.cots.aidlservice.CotsDiscoverReaderResponse r6 = (com.stripe.cots.aidlservice.CotsDiscoverReaderResponse) r6
            com.stripe.cots.aidlservice.CotsReader r6 = r6.cotsReader
            return r6
        L57:
            com.stripe.cots.common.DebuggableException r6 = new com.stripe.cots.common.DebuggableException
            r6.<init>()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.cots.common.CotsClient.discover(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.stripe.cots.common.CotsClientInterface
    public CotsError checkDeviceCompatibility() {
        if (UtilsKt.isApplicationUnsupported(this.context)) {
            return CotsError.DISCOVERY_DEBUG_NOT_ALLOWED;
        }
        return this.preFlightChecks.getDeviceCompatibility();
    }

    @Override // com.stripe.cots.common.CotsClientInterface
    public void initializeKeys() throws NoSuchAlgorithmException, NoSuchProviderException, InvalidAlgorithmParameterException {
        this.preFlightChecks.initialize();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    @Override // com.stripe.cots.common.CotsClientInterface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object activate(java.lang.String r17, java.lang.String r18, java.lang.String r19, java.lang.String r20, java.lang.String r21, java.lang.String r22, kotlin.coroutines.Continuation<? super com.stripe.cots.aidlservice.CotsReader> r23) throws java.lang.IllegalStateException, com.stripe.cots.common.ReaderNotConnectedException, com.stripe.core.aidlrpc.AidlRpcException, com.stripe.cots.common.DebuggableException {
        /*
            r16 = this;
            r0 = r16
            r1 = r23
            boolean r2 = r1 instanceof com.stripe.cots.common.CotsClient.AnonymousClass1
            if (r2 == 0) goto L18
            r2 = r1
            com.stripe.cots.common.CotsClient$activate$1 r2 = (com.stripe.cots.common.CotsClient.AnonymousClass1) r2
            int r3 = r2.label
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r3 & r4
            if (r3 == 0) goto L18
            int r1 = r2.label
            int r1 = r1 - r4
            r2.label = r1
            goto L1d
        L18:
            com.stripe.cots.common.CotsClient$activate$1 r2 = new com.stripe.cots.common.CotsClient$activate$1
            r2.<init>(r1)
        L1d:
            java.lang.Object r1 = r2.result
            java.lang.Object r3 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r4 = r2.label
            r5 = 1
            if (r4 == 0) goto L36
            if (r4 != r5) goto L2e
            kotlin.ResultKt.throwOnFailure(r1)
            goto L5d
        L2e:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L36:
            kotlin.ResultKt.throwOnFailure(r1)
            com.stripe.cots.common.CotsServiceRequestName r1 = com.stripe.cots.common.CotsServiceRequestName.ACTIVATE
            com.stripe.cots.aidlservice.CotsActivateReaderRequest r6 = new com.stripe.cots.aidlservice.CotsActivateReaderRequest
            r14 = 64
            r15 = 0
            r13 = 0
            r7 = r17
            r8 = r18
            r9 = r19
            r10 = r20
            r11 = r21
            r12 = r22
            r6.<init>(r7, r8, r9, r10, r11, r12, r13, r14, r15)
            com.squareup.wire.Message r6 = (com.squareup.wire.Message) r6
            com.squareup.wire.ProtoAdapter<com.stripe.cots.aidlservice.CotsActivateReaderResponse> r4 = com.stripe.cots.aidlservice.CotsActivateReaderResponse.ADAPTER
            r2.label = r5
            java.lang.Object r1 = r0.makeRequest(r1, r6, r4, r2)
            if (r1 != r3) goto L5d
            return r3
        L5d:
            com.stripe.cots.aidlservice.CotsActivateReaderResponse r1 = (com.stripe.cots.aidlservice.CotsActivateReaderResponse) r1
            com.stripe.cots.aidlservice.CotsReader r1 = r1.cotsReader
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.cots.common.CotsClient.activate(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // com.stripe.cots.common.CotsClientInterface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object disconnect(kotlin.coroutines.Continuation<? super kotlin.Unit> r6) throws com.stripe.core.aidlrpc.AidlRpcException {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.stripe.cots.common.CotsClient.C02551
            if (r0 == 0) goto L14
            r0 = r6
            com.stripe.cots.common.CotsClient$disconnect$1 r0 = (com.stripe.cots.common.CotsClient.C02551) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r6 = r0.label
            int r6 = r6 - r2
            r0.label = r6
            goto L19
        L14:
            com.stripe.cots.common.CotsClient$disconnect$1 r0 = new com.stripe.cots.common.CotsClient$disconnect$1
            r0.<init>(r6)
        L19:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            java.lang.Object r0 = r0.L$0
            com.stripe.cots.common.CotsClient r0 = (com.stripe.cots.common.CotsClient) r0
            kotlin.ResultKt.throwOnFailure(r6)
            goto L61
        L2e:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L36:
            kotlin.ResultKt.throwOnFailure(r6)
            com.stripe.jvmcore.logging.terminal.log.SimpleLogger<com.stripe.loggingmodels.ApplicationTrace, com.stripe.loggingmodels.ApplicationTraceResult> r6 = r5.logger
            r2 = 0
            kotlin.Pair[] r2 = new kotlin.Pair[r2]
            java.lang.String r4 = "disconnect"
            r6.d(r4, r2)
            boolean r6 = r5.isConnected()
            if (r6 == 0) goto L66
            com.stripe.cots.common.CotsServiceRequestName r6 = com.stripe.cots.common.CotsServiceRequestName.DISCONNECT
            com.stripe.cots.aidlservice.CotsDisconnectReaderRequest r2 = new com.stripe.cots.aidlservice.CotsDisconnectReaderRequest
            r4 = 0
            r2.<init>(r4, r3, r4)
            com.squareup.wire.Message r2 = (com.squareup.wire.Message) r2
            com.squareup.wire.ProtoAdapter<com.stripe.cots.aidlservice.CotsDisconnectReaderResponse> r4 = com.stripe.cots.aidlservice.CotsDisconnectReaderResponse.ADAPTER
            r0.L$0 = r5
            r0.label = r3
            java.lang.Object r6 = r5.makeRequest(r6, r2, r4, r0)
            if (r6 != r1) goto L60
            return r1
        L60:
            r0 = r5
        L61:
            com.stripe.core.aidlrpcclient.AidlRpcClient r6 = r0.aidlClient
            r6.unbindFromService()
        L66:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.cots.common.CotsClient.disconnect(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    @Override // com.stripe.cots.common.CotsClientInterface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object collectPayment(com.stripe.cots.common.CotsCollectionParameters r19, kotlin.coroutines.Continuation<? super com.stripe.cots.aidlservice.CotsContactlessResult> r20) throws java.lang.IllegalStateException, com.stripe.cots.common.ReaderNotConnectedException, com.stripe.core.aidlrpc.AidlRpcException, com.stripe.cots.common.DebuggableException {
        /*
            r18 = this;
            r0 = r18
            r1 = r20
            boolean r2 = r1 instanceof com.stripe.cots.common.CotsClient.C02541
            if (r2 == 0) goto L18
            r2 = r1
            com.stripe.cots.common.CotsClient$collectPayment$1 r2 = (com.stripe.cots.common.CotsClient.C02541) r2
            int r3 = r2.label
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r3 & r4
            if (r3 == 0) goto L18
            int r1 = r2.label
            int r1 = r1 - r4
            r2.label = r1
            goto L1d
        L18:
            com.stripe.cots.common.CotsClient$collectPayment$1 r2 = new com.stripe.cots.common.CotsClient$collectPayment$1
            r2.<init>(r1)
        L1d:
            java.lang.Object r1 = r2.result
            java.lang.Object r3 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r4 = r2.label
            r5 = 1
            if (r4 == 0) goto L37
            if (r4 != r5) goto L2f
            kotlin.ResultKt.throwOnFailure(r1)
            goto Lb3
        L2f:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L37:
            kotlin.ResultKt.throwOnFailure(r1)
            java.util.List r1 = r19.getTlvEntries()
            java.lang.Iterable r1 = (java.lang.Iterable) r1
            java.util.ArrayList r4 = new java.util.ArrayList
            r6 = 10
            int r6 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r1, r6)
            r4.<init>(r6)
            java.util.Collection r4 = (java.util.Collection) r4
            java.util.Iterator r1 = r1.iterator()
        L51:
            boolean r6 = r1.hasNext()
            if (r6 == 0) goto L7b
            java.lang.Object r6 = r1.next()
            com.stripe.cots.common.CotsTlvEntry r6 = (com.stripe.cots.common.CotsTlvEntry) r6
            com.stripe.cots.aidlservice.CotsTransactionDataObject r7 = new com.stripe.cots.aidlservice.CotsTransactionDataObject
            int r8 = r6.getTag()
            okio.ByteString$Companion r9 = okio.ByteString.INSTANCE
            byte[] r10 = r6.getValue()
            r13 = 3
            r14 = 0
            r11 = 0
            r12 = 0
            okio.ByteString r9 = okio.ByteString.Companion.of$default(r9, r10, r11, r12, r13, r14)
            r11 = 4
            r12 = 0
            r10 = 0
            r7.<init>(r8, r9, r10, r11, r12)
            r4.add(r7)
            goto L51
        L7b:
            r13 = r4
            java.util.List r13 = (java.util.List) r13
            com.stripe.cots.common.CotsServiceRequestName r1 = com.stripe.cots.common.CotsServiceRequestName.COLLECT_PAYMENT
            com.stripe.currency.Amount r4 = r19.getAmount()
            long r9 = r4.getValue()
            com.stripe.currency.Amount r4 = r19.getAmount()
            com.stripe.currency.CurrencyCode r4 = r4.getCurrency()
            java.lang.String r11 = r4.name()
            java.lang.String r12 = r19.getReaderProfile()
            com.stripe.cots.aidlservice.CotsUxConfig r14 = r19.getUxConfig()
            com.stripe.cots.aidlservice.CotsCollectPaymentMethodRequest r8 = new com.stripe.cots.aidlservice.CotsCollectPaymentMethodRequest
            r16 = 32
            r17 = 0
            r15 = 0
            r8.<init>(r9, r11, r12, r13, r14, r15, r16, r17)
            com.squareup.wire.Message r8 = (com.squareup.wire.Message) r8
            com.squareup.wire.ProtoAdapter<com.stripe.cots.aidlservice.CotsCollectPaymentMethodResponse> r4 = com.stripe.cots.aidlservice.CotsCollectPaymentMethodResponse.ADAPTER
            r2.label = r5
            java.lang.Object r1 = r0.makeRequest(r1, r8, r4, r2)
            if (r1 != r3) goto Lb3
            return r3
        Lb3:
            com.stripe.cots.aidlservice.CotsCollectPaymentMethodResponse r1 = (com.stripe.cots.aidlservice.CotsCollectPaymentMethodResponse) r1
            com.stripe.cots.aidlservice.CotsContactlessResult r1 = r1.result
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.cots.common.CotsClient.collectPayment(com.stripe.cots.common.CotsCollectionParameters, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.stripe.cots.common.CotsClientInterface
    public Object collectPin(String str, Continuation<? super CotsCollectPinResponse> continuation) {
        return makeRequest(CotsServiceRequestName.COLLECT_PIN, new CotsCollectPinRequest(str, null, 2, 0 == true ? 1 : 0), CotsCollectPinResponse.ADAPTER, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.stripe.cots.common.CotsClientInterface
    public Object setFakedContactlessOutcome(CotsSetFakedContactlessOutcomeRequest.FakedContactlessOutcomeType fakedContactlessOutcomeType, Continuation<? super Unit> continuation) throws ReaderNotConnectedException, AidlRpcException {
        Object objMakeRequest = makeRequest(CotsServiceRequestName.SET_FAKED_CONTACTLESS_OUTCOME, new CotsSetFakedContactlessOutcomeRequest(fakedContactlessOutcomeType, null, 2, 0 == true ? 1 : 0), CotsSetFakedContactlessOutcomeResponse.ADAPTER, continuation);
        return objMakeRequest == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objMakeRequest : Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.stripe.cots.common.CotsClientInterface
    public Object cancelCollectPayment(Continuation<? super Unit> continuation) throws ReaderNotConnectedException, AidlRpcException {
        if (isConnected()) {
            Object objMakeRequest = makeRequest(CotsServiceRequestName.CANCEL_COLLECT_PAYMENT, new CotsCancelCollectPaymentMethodRequest(null, 1, 0 == true ? 1 : 0), CotsCancelCollectPaymentMethodResponse.ADAPTER, continuation);
            return objMakeRequest == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objMakeRequest : Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // com.stripe.cots.common.CotsClientInterface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object updateReader(kotlin.coroutines.Continuation<? super com.stripe.proto.model.config.ReaderFeatureFlags> r6) throws com.stripe.cots.common.ReaderNotConnectedException, com.stripe.core.aidlrpc.AidlRpcException {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.stripe.cots.common.CotsClient.C02581
            if (r0 == 0) goto L14
            r0 = r6
            com.stripe.cots.common.CotsClient$updateReader$1 r0 = (com.stripe.cots.common.CotsClient.C02581) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r6 = r0.label
            int r6 = r6 - r2
            r0.label = r6
            goto L19
        L14:
            com.stripe.cots.common.CotsClient$updateReader$1 r0 = new com.stripe.cots.common.CotsClient$updateReader$1
            r0.<init>(r6)
        L19:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L32
            if (r2 != r3) goto L2a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4a
        L2a:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L32:
            kotlin.ResultKt.throwOnFailure(r6)
            com.stripe.cots.common.CotsServiceRequestName r6 = com.stripe.cots.common.CotsServiceRequestName.UPDATE_READER
            com.stripe.cots.aidlservice.CotsUpdateReaderRequest r2 = new com.stripe.cots.aidlservice.CotsUpdateReaderRequest
            r4 = 0
            r2.<init>(r4, r3, r4)
            com.squareup.wire.Message r2 = (com.squareup.wire.Message) r2
            com.squareup.wire.ProtoAdapter<com.stripe.cots.aidlservice.CotsUpdateReaderResponse> r4 = com.stripe.cots.aidlservice.CotsUpdateReaderResponse.ADAPTER
            r0.label = r3
            java.lang.Object r6 = r5.makeRequest(r6, r2, r4, r0)
            if (r6 != r1) goto L4a
            return r1
        L4a:
            com.stripe.cots.aidlservice.CotsUpdateReaderResponse r6 = (com.stripe.cots.aidlservice.CotsUpdateReaderResponse) r6
            com.stripe.proto.model.config.ReaderFeatureFlags r6 = r6.reader_feature_flags
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.cots.common.CotsClient.updateReader(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.stripe.cots.common.CotsClientInterface
    public Object killAidlServer(long j, Continuation<? super Unit> continuation) throws ReaderNotConnectedException, AidlRpcException {
        Object objMakeRequest = makeRequest(CotsServiceRequestName.KILL_AIDL_SERVER, new CotsKillAidlServerRequest(j, null, 2, null), CotsKillAidlServerResponse.ADAPTER, continuation);
        return objMakeRequest == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objMakeRequest : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <Request extends com.squareup.wire.Message<Request, ?>, Response extends com.squareup.wire.Message<Response, ?>> java.lang.Object makeRequest(com.stripe.cots.common.CotsServiceRequestName r7, Request r8, com.squareup.wire.ProtoAdapter<Response> r9, kotlin.coroutines.Continuation<? super Response> r10) throws com.stripe.cots.common.ReaderNotConnectedException, com.stripe.core.aidlrpc.AidlRpcException {
        /*
            Method dump skipped, instruction units count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.cots.common.CotsClient.makeRequest(com.stripe.cots.common.CotsServiceRequestName, com.squareup.wire.Message, com.squareup.wire.ProtoAdapter, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: compiled from: CotsClient.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/cots/common/CotsClient$CoroutineRpcListener;", "Lcom/stripe/core/aidlrpc/AidlRpcListener$Stub;", "cont", "Lkotlin/coroutines/Continuation;", "Lcom/stripe/proto/net/rpc/base/RpcResponse;", "(Lkotlin/coroutines/Continuation;)V", "onComplete", "", "completeBytes", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final class CoroutineRpcListener extends AidlRpcListener.Stub {
        private final Continuation<RpcResponse> cont;

        /* JADX WARN: Multi-variable type inference failed */
        public CoroutineRpcListener(Continuation<? super RpcResponse> cont) {
            Intrinsics.checkNotNullParameter(cont, "cont");
            this.cont = cont;
        }

        @Override // com.stripe.core.aidlrpc.AidlRpcListener
        public void onComplete(byte[] completeBytes) throws IOException {
            Intrinsics.checkNotNullParameter(completeBytes, "completeBytes");
            RpcResponse rpcResponseDecode = RpcResponse.ADAPTER.decode(completeBytes);
            Continuation<RpcResponse> continuation = this.cont;
            Result.Companion companion = Result.INSTANCE;
            continuation.resumeWith(Result.m817constructorimpl(rpcResponseDecode));
        }
    }
}
