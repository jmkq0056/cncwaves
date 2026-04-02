package com.stripe.stripeterminal.internal.common.adapter.connection;

import com.stripe.core.hardware.Reader;
import com.stripe.core.hardware.reactive.RxJavaHelper;
import com.stripe.core.hardware.reactive.status.ReactiveReaderStatusListener;
import com.stripe.hardware.status.DisconnectCause;
import com.stripe.hardware.status.ReaderInfo;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.PendingTimer;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.loggingmodels.Outcome;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.connectivity.ConnectivityDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.connectivity.UsbScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer;
import com.stripe.stripeterminal.external.models.Reader;
import com.sun.jna.platform.win32.WinError;
import com.sun.jna.platform.win32.WinUser;
import io.reactivex.rxjava3.core.Scheduler;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: UsbReaderReconnector.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000 32\u00020\u0001:\u0003345Bo\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\"\u0010\u0004\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0005j\u0002`\n\u0012\u0016\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\fj\u0002`\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016¢\u0006\u0002\u0010\u0017J\n\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0002J\u0014\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020!0 2\u0006\u0010\"\u001a\u00020#J \u0010$\u001a\u00020%*\b\u0012\u0004\u0012\u00020!0&2\u0006\u0010'\u001a\u00020(H\u0082@¢\u0006\u0002\u0010)J\f\u0010*\u001a\u00020+*\u00020\u001eH\u0002J\u001b\u0010,\u001a\u00020+*\u00020\u001e2\b\u0010-\u001a\u0004\u0018\u00010.H\u0002¢\u0006\u0002\u0010/J\u0018\u00100\u001a\u000201*\b\u0012\u0004\u0012\u00020!0&H\u0082@¢\u0006\u0002\u00102R\u0016\u0010\u0018\u001a\u00020\u0019X\u0082\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\n\u0002\u0010\u001aR*\u0010\u0004\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0005j\u0002`\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\fj\u0002`\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u001c\u001a\u00020\u0019X\u0082\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\n\u0002\u0010\u001aR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u00066"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;", "", "readerStatusListener", "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;", "connectivityHealthLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope$Builder;", "Lcom/stripe/stripeterminal/internal/common/log/UsbConnectivityHealthLogger;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "readerEventScheduler", "Lio/reactivex/rxjava3/core/Scheduler;", "reconnectionMaxTimeoutInSeconds", "", "reconnectionMaxAttempts", "attemptDelayMillis", "", "(Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;Lio/reactivex/rxjava3/core/Scheduler;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V", "attemptDelay", "Lkotlin/time/Duration;", "J", "maxAttempts", "operationTimeout", "initializeHealthMetrics", "Lcom/stripe/jvmcore/logging/PendingTimer;", "reconnect", "Lkotlinx/coroutines/flow/Flow;", "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent;", "disconnectedReader", "Lcom/stripe/stripeterminal/external/models/Reader;", "attemptToReconnect", "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ConnectionAttemptResult;", "Lkotlinx/coroutines/flow/FlowCollector;", "usbReader", "Lcom/stripe/core/hardware/Reader;", "(Lkotlinx/coroutines/flow/FlowCollector;Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "finalizeHealthMetricsForCancel", "", "finalizeHealthMetricsForResult", "reconnected", "", "(Lcom/stripe/jvmcore/logging/PendingTimer;Ljava/lang/Boolean;)V", "getReaderInfo", "Lcom/stripe/hardware/status/ReaderInfo;", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "ConnectionAttemptResult", "ReconnectionEvent", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UsbReaderReconnector {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long DEFAULT_ATTEMPT_DELAY;
    public static final int DEFAULT_RECONNECTION_MAX_ATTEMPTS = 4;
    private static final long DEFAULT_RECONNECTION_TIMEOUT;
    public static final String OUTCOME_TAG_KEY = "reconnection_outcome";
    private final long attemptDelay;
    private final HealthLogger<ConnectivityDomain, ConnectivityDomain.Builder, UsbScope, UsbScope.Builder> connectivityHealthLogger;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final int maxAttempts;
    private final long operationTimeout;
    private final Scheduler readerEventScheduler;
    private final ReactiveReaderStatusListener readerStatusListener;

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$attemptToReconnect$1, reason: invalid class name */
    /* JADX INFO: compiled from: UsbReaderReconnector.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector", f = "UsbReaderReconnector.kt", i = {}, l = {WinError.ERROR_LOCK_FAILED}, m = "attemptToReconnect", n = {}, s = {})
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
            return UsbReaderReconnector.this.attemptToReconnect(null, null, this);
        }
    }

    public UsbReaderReconnector(ReactiveReaderStatusListener readerStatusListener, HealthLogger<ConnectivityDomain, ConnectivityDomain.Builder, UsbScope, UsbScope.Builder> connectivityHealthLogger, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger, Scheduler readerEventScheduler, Integer num, Integer num2, Long l) {
        long duration;
        long duration2;
        Intrinsics.checkNotNullParameter(readerStatusListener, "readerStatusListener");
        Intrinsics.checkNotNullParameter(connectivityHealthLogger, "connectivityHealthLogger");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(readerEventScheduler, "readerEventScheduler");
        this.readerStatusListener = readerStatusListener;
        this.connectivityHealthLogger = connectivityHealthLogger;
        this.logger = logger;
        this.readerEventScheduler = readerEventScheduler;
        if (num != null) {
            Duration.Companion companion = Duration.INSTANCE;
            duration = DurationKt.toDuration(num.intValue(), DurationUnit.SECONDS);
        } else {
            duration = DEFAULT_RECONNECTION_TIMEOUT;
        }
        this.operationTimeout = duration;
        this.maxAttempts = num2 != null ? num2.intValue() : 4;
        if (l != null) {
            Duration.Companion companion2 = Duration.INSTANCE;
            duration2 = DurationKt.toDuration(l.longValue(), DurationUnit.MILLISECONDS);
        } else {
            duration2 = DEFAULT_ATTEMPT_DELAY;
        }
        this.attemptDelay = duration2;
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$reconnect$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: UsbReaderReconnector.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$reconnect$1", f = "UsbReaderReconnector.kt", i = {1, 1, 1, 2, 2}, l = {58, 65, WinError.ERROR_SEM_TIMEOUT}, m = "invokeSuspend", n = {"$this$flow", "pendingTimer", "reconnected", "pendingTimer", "reconnected"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1"})
    static final class C03851 extends SuspendLambda implements Function2<FlowCollector<? super ReconnectionEvent>, Continuation<? super Unit>, Object> {
        final /* synthetic */ Reader $disconnectedReader;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;
        final /* synthetic */ UsbReaderReconnector this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03851(Reader reader, UsbReaderReconnector usbReaderReconnector, Continuation<? super C03851> continuation) {
            super(2, continuation);
            this.$disconnectedReader = reader;
            this.this$0 = usbReaderReconnector;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C03851 c03851 = new C03851(this.$disconnectedReader, this.this$0, continuation);
            c03851.L$0 = obj;
            return c03851;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(FlowCollector<? super ReconnectionEvent> flowCollector, Continuation<? super Unit> continuation) {
            return ((C03851) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x00a5, code lost:
        
            if (r4.emit(com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector.ReconnectionEvent.FailedToReconnect.INSTANCE, r14) == r0) goto L42;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x00cb, code lost:
        
            if (r7.emit(com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector.ReconnectionEvent.FailedToReconnect.INSTANCE, r14) == r0) goto L42;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0093 A[Catch: CancellationException -> 0x0036, TRY_LEAVE, TryCatch #0 {CancellationException -> 0x0036, blocks: (B:13:0x0032, B:27:0x008f, B:29:0x0093), top: B:46:0x0032 }] */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00ac A[Catch: CancellationException -> 0x00b6, TRY_ENTER, TRY_LEAVE, TryCatch #1 {CancellationException -> 0x00b6, blocks: (B:8:0x0019, B:34:0x00ac, B:23:0x0068), top: B:48:0x0009 }] */
        /* JADX WARN: Type inference failed for: r1v0, types: [int] */
        /* JADX WARN: Type inference failed for: r1v12, types: [com.stripe.jvmcore.logging.PendingTimer] */
        /* JADX WARN: Type inference failed for: r1v17 */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r15) {
            /*
                Method dump skipped, instruction units count: 209
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector.C03851.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$reconnect$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: UsbReaderReconnector.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
        @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$reconnect$1$1", f = "UsbReaderReconnector.kt", i = {0, 0, 2, 4, 4, 6, 6}, l = {71, 74, 90, WinUser.SM_MOUSEHORIZONTALWHEELPRESENT, 100, 104, 109}, m = "invokeSuspend", n = {"$this$withTimeoutOrNull", "reconnectionAttempt", OfflineStorageConstantsKt.READER, "$this$withTimeoutOrNull", "reconnectionAttempt", "$this$withTimeoutOrNull", "reconnectionAttempt"}, s = {"L$0", "I$0", "L$0", "L$0", "I$0", "L$0", "I$0"})
        static final class C00581 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ FlowCollector<ReconnectionEvent> $$this$flow;
            final /* synthetic */ Reader $disconnectedReader;
            final /* synthetic */ Reader.UsbReader $disconnectedUsbReader;
            final /* synthetic */ Ref.ObjectRef<Boolean> $reconnected;
            int I$0;
            private /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ UsbReaderReconnector this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C00581(UsbReaderReconnector usbReaderReconnector, FlowCollector<? super ReconnectionEvent> flowCollector, Reader.UsbReader usbReader, com.stripe.stripeterminal.external.models.Reader reader, Ref.ObjectRef<Boolean> objectRef, Continuation<? super C00581> continuation) {
                super(2, continuation);
                this.this$0 = usbReaderReconnector;
                this.$$this$flow = flowCollector;
                this.$disconnectedUsbReader = usbReader;
                this.$disconnectedReader = reader;
                this.$reconnected = objectRef;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                C00581 c00581 = new C00581(this.this$0, this.$$this$flow, this.$disconnectedUsbReader, this.$disconnectedReader, this.$reconnected, continuation);
                c00581.L$0 = obj;
                return c00581;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C00581) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX WARN: Code restructure failed: missing block: B:34:0x0157, code lost:
            
                if (r26.$$this$flow.emit(new com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector.ReconnectionEvent.ReconnectedToReader(r2), r26) != r1) goto L36;
             */
            /* JADX WARN: Code restructure failed: missing block: B:45:0x01a2, code lost:
            
                if (r26.$$this$flow.emit(com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector.ReconnectionEvent.FailedToReconnect.INSTANCE, r26) == r1) goto L50;
             */
            /* JADX WARN: Code restructure failed: missing block: B:49:0x01c2, code lost:
            
                if (kotlinx.coroutines.DelayKt.m2320delayVtjQ1oo(r26.this$0.attemptDelay, r26) == r1) goto L50;
             */
            /* JADX WARN: Removed duplicated region for block: B:16:0x0072  */
            /* JADX WARN: Removed duplicated region for block: B:21:0x0091  */
            /* JADX WARN: Removed duplicated region for block: B:26:0x00b1  */
            /* JADX WARN: Removed duplicated region for block: B:29:0x0109  */
            /* JADX WARN: Removed duplicated region for block: B:33:0x0144 A[PHI: r2
              0x0144: PHI (r2v14 com.stripe.stripeterminal.external.models.Reader) = (r2v7 com.stripe.stripeterminal.external.models.Reader), (r2v21 com.stripe.stripeterminal.external.models.Reader) binds: [B:10:0x0037, B:31:0x0140] A[DONT_GENERATE, DONT_INLINE]] */
            /* JADX WARN: Removed duplicated region for block: B:37:0x0164  */
            /* JADX WARN: Removed duplicated region for block: B:44:0x0192  */
            /* JADX WARN: Removed duplicated region for block: B:48:0x01ae  */
            /* JADX WARN: Type inference failed for: r2v13, types: [T, java.lang.Boolean] */
            /* JADX WARN: Type inference failed for: r2v9, types: [T, java.lang.Boolean] */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0166 -> B:14:0x0068). Please report as a decompilation issue!!! */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x01c2 -> B:51:0x01c5). Please report as a decompilation issue!!! */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invokeSuspend(java.lang.Object r27) {
                /*
                    Method dump skipped, instruction units count: 492
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector.C03851.C00581.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }
    }

    public final Flow<ReconnectionEvent> reconnect(com.stripe.stripeterminal.external.models.Reader disconnectedReader) {
        Intrinsics.checkNotNullParameter(disconnectedReader, "disconnectedReader");
        return FlowKt.flow(new C03851(disconnectedReader, this, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PendingTimer initializeHealthMetrics() {
        return this.connectivityHealthLogger.startTimer(MapsKt.mapOf(TuplesKt.to("maxTimeoutInSeconds", String.valueOf(Duration.m2193getInWholeSecondsimpl(this.operationTimeout))), TuplesKt.to("maxAttempts", String.valueOf(this.maxAttempts)), TuplesKt.to("attemptDelay", String.valueOf(Duration.m2190getInWholeMillisecondsimpl(this.attemptDelay)))), new Function2<UsbScope.Builder, Timer, Unit>() { // from class: com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector.initializeHealthMetrics.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(UsbScope.Builder builder, Timer timer) {
                invoke2(builder, timer);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(UsbScope.Builder startTimer, Timer event) {
                Intrinsics.checkNotNullParameter(startTimer, "$this$startTimer");
                Intrinsics.checkNotNullParameter(event, "event");
                startTimer.reconnection_attempt = event;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void finalizeHealthMetricsForCancel(PendingTimer pendingTimer) {
        HealthLogger.endTimer$default(this.connectivityHealthLogger, pendingTimer, Outcome.GenericError.INSTANCE, null, null, 12, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void finalizeHealthMetricsForResult(PendingTimer pendingTimer, Boolean bool) {
        if (bool == null) {
            this.logger.d("Reconnect timed out", new Pair[0]);
            HealthLogger.endTimer$default(this.connectivityHealthLogger, pendingTimer, Outcome.GenericError.INSTANCE, MapsKt.mapOf(TuplesKt.to("reconnection_outcome", "hit_timeout")), null, 8, null);
        } else if (bool.booleanValue()) {
            this.logger.d("Reconnect succeeded", new Pair[0]);
            HealthLogger.endTimer$default(this.connectivityHealthLogger, pendingTimer, Outcome.Ok.INSTANCE, MapsKt.mapOf(TuplesKt.to("reconnection_outcome", "reconnected")), null, 8, null);
        } else {
            this.logger.d("Reconnect exceeded max attempts", new Pair[0]);
            HealthLogger.endTimer$default(this.connectivityHealthLogger, pendingTimer, Outcome.GenericError.INSTANCE, MapsKt.mapOf(TuplesKt.to("reconnection_outcome", "hit_max_retries")), null, 8, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object attemptToReconnect(kotlinx.coroutines.flow.FlowCollector<? super com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector.ReconnectionEvent> r8, com.stripe.core.hardware.Reader r9, kotlin.coroutines.Continuation<? super com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector.ConnectionAttemptResult> r10) {
        /*
            r7 = this;
            boolean r0 = r10 instanceof com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector.AnonymousClass1
            if (r0 == 0) goto L14
            r0 = r10
            com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$attemptToReconnect$1 r0 = (com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r10 = r0.label
            int r10 = r10 - r2
            r0.label = r10
            goto L19
        L14:
            com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$attemptToReconnect$1 r0 = new com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$attemptToReconnect$1
            r0.<init>(r10)
        L19:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L32
            if (r2 != r3) goto L2a
            kotlin.ResultKt.throwOnFailure(r10)
            goto L7f
        L2a:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L32:
            kotlin.ResultKt.throwOnFailure(r10)
            com.stripe.core.hardware.reactive.RxJavaHelper r10 = com.stripe.core.hardware.reactive.RxJavaHelper.INSTANCE
            r2 = 2
            io.reactivex.rxjava3.core.ObservableSource[] r2 = new io.reactivex.rxjava3.core.ObservableSource[r2]
            com.stripe.core.hardware.reactive.status.ReactiveReaderStatusListener r4 = r7.readerStatusListener
            io.reactivex.rxjava3.core.Observable r4 = r4.getReaderConnectObservable()
            com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$attemptToReconnect$2<T, R> r5 = new io.reactivex.rxjava3.functions.Function() { // from class: com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector.attemptToReconnect.2
                static {
                    /*
                        com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$attemptToReconnect$2 r0 = new com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$attemptToReconnect$2
                        r0.<init>()
                        
                        // error: 0x0005: SPUT (r0 I:com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$attemptToReconnect$2<T, R>) com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector.attemptToReconnect.2.INSTANCE com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$attemptToReconnect$2
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector.AnonymousClass2.<clinit>():void");
                }

                {
                    /*
                        r0 = this;
                        r0.<init>()
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector.AnonymousClass2.<init>():void");
                }

                @Override // io.reactivex.rxjava3.functions.Function
                public final com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector.ConnectionAttemptResult.ConnectedToReader apply(com.stripe.core.hardware.Reader r2) {
                    /*
                        r1 = this;
                        java.lang.String r0 = "it"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
                        com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$ConnectionAttemptResult$ConnectedToReader r0 = new com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$ConnectionAttemptResult$ConnectedToReader
                        r0.<init>(r2)
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector.AnonymousClass2.apply(com.stripe.core.hardware.Reader):com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$ConnectionAttemptResult$ConnectedToReader");
                }

                @Override // io.reactivex.rxjava3.functions.Function
                public /* bridge */ /* synthetic */ java.lang.Object apply(java.lang.Object r1) {
                    /*
                        r0 = this;
                        com.stripe.core.hardware.Reader r1 = (com.stripe.core.hardware.Reader) r1
                        com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$ConnectionAttemptResult$ConnectedToReader r1 = r0.apply(r1)
                        return r1
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector.AnonymousClass2.apply(java.lang.Object):java.lang.Object");
                }
            }
            io.reactivex.rxjava3.functions.Function r5 = (io.reactivex.rxjava3.functions.Function) r5
            io.reactivex.rxjava3.core.Observable r4 = r4.map(r5)
            r5 = 0
            r2[r5] = r4
            com.stripe.core.hardware.reactive.status.ReactiveReaderStatusListener r4 = r7.readerStatusListener
            io.reactivex.rxjava3.core.Observable r4 = r4.getReaderDisconnectObservable()
            com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$attemptToReconnect$3<T> r5 = new io.reactivex.rxjava3.functions.Predicate() { // from class: com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector.attemptToReconnect.3
                static {
                    /*
                        com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$attemptToReconnect$3 r0 = new com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$attemptToReconnect$3
                        r0.<init>()
                        
                        // error: 0x0005: SPUT (r0 I:com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$attemptToReconnect$3<T>) com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector.attemptToReconnect.3.INSTANCE com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$attemptToReconnect$3
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector.AnonymousClass3.<clinit>():void");
                }

                {
                    /*
                        r0 = this;
                        r0.<init>()
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector.AnonymousClass3.<init>():void");
                }

                @Override // io.reactivex.rxjava3.functions.Predicate
                public final boolean test(com.stripe.hardware.status.DisconnectCause r2) {
                    /*
                        r1 = this;
                        java.lang.String r0 = "it"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
                        com.stripe.hardware.status.DisconnectCause r0 = com.stripe.hardware.status.DisconnectCause.COMM_LINK_UNINITIALIZED
                        if (r2 == r0) goto Lb
                        r2 = 1
                        return r2
                    Lb:
                        r2 = 0
                        return r2
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector.AnonymousClass3.test(com.stripe.hardware.status.DisconnectCause):boolean");
                }

                @Override // io.reactivex.rxjava3.functions.Predicate
                public /* bridge */ /* synthetic */ boolean test(java.lang.Object r1) {
                    /*
                        r0 = this;
                        com.stripe.hardware.status.DisconnectCause r1 = (com.stripe.hardware.status.DisconnectCause) r1
                        boolean r1 = r0.test(r1)
                        return r1
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector.AnonymousClass3.test(java.lang.Object):boolean");
                }
            }
            io.reactivex.rxjava3.functions.Predicate r5 = (io.reactivex.rxjava3.functions.Predicate) r5
            io.reactivex.rxjava3.core.Observable r4 = r4.filter(r5)
            com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$attemptToReconnect$4<T, R> r5 = new io.reactivex.rxjava3.functions.Function() { // from class: com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector.attemptToReconnect.4
                static {
                    /*
                        com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$attemptToReconnect$4 r0 = new com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$attemptToReconnect$4
                        r0.<init>()
                        
                        // error: 0x0005: SPUT (r0 I:com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$attemptToReconnect$4<T, R>) com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector.attemptToReconnect.4.INSTANCE com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$attemptToReconnect$4
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector.AnonymousClass4.<clinit>():void");
                }

                {
                    /*
                        r0 = this;
                        r0.<init>()
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector.AnonymousClass4.<init>():void");
                }

                @Override // io.reactivex.rxjava3.functions.Function
                public final com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector.ConnectionAttemptResult.CouldNotConnect apply(com.stripe.hardware.status.DisconnectCause r2) {
                    /*
                        r1 = this;
                        java.lang.String r0 = "it"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
                        com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$ConnectionAttemptResult$CouldNotConnect r0 = new com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$ConnectionAttemptResult$CouldNotConnect
                        r0.<init>(r2)
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector.AnonymousClass4.apply(com.stripe.hardware.status.DisconnectCause):com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$ConnectionAttemptResult$CouldNotConnect");
                }

                @Override // io.reactivex.rxjava3.functions.Function
                public /* bridge */ /* synthetic */ java.lang.Object apply(java.lang.Object r1) {
                    /*
                        r0 = this;
                        com.stripe.hardware.status.DisconnectCause r1 = (com.stripe.hardware.status.DisconnectCause) r1
                        com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$ConnectionAttemptResult$CouldNotConnect r1 = r0.apply(r1)
                        return r1
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector.AnonymousClass4.apply(java.lang.Object):java.lang.Object");
                }
            }
            io.reactivex.rxjava3.functions.Function r5 = (io.reactivex.rxjava3.functions.Function) r5
            io.reactivex.rxjava3.core.Observable r4 = r4.map(r5)
            r2[r3] = r4
            io.reactivex.rxjava3.core.Observable r2 = io.reactivex.rxjava3.core.Observable.ambArray(r2)
            java.lang.String r4 = "ambArray(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r4)
            io.reactivex.rxjava3.core.Scheduler r4 = r7.readerEventScheduler
            com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$attemptToReconnect$5 r5 = new com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$attemptToReconnect$5
            r6 = 0
            r5.<init>(r8, r9, r6)
            kotlin.jvm.functions.Function1 r5 = (kotlin.jvm.functions.Function1) r5
            r0.label = r3
            java.lang.Object r10 = r10.awaitFirstWithBlock(r2, r4, r5, r0)
            if (r10 != r1) goto L7f
            return r1
        L7f:
            java.lang.String r8 = "awaitFirstWithBlock(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r10, r8)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector.attemptToReconnect(kotlinx.coroutines.flow.FlowCollector, com.stripe.core.hardware.Reader, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$attemptToReconnect$5, reason: invalid class name */
    /* JADX INFO: compiled from: UsbReaderReconnector.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$attemptToReconnect$5", f = "UsbReaderReconnector.kt", i = {}, l = {168}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass5 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ FlowCollector<ReconnectionEvent> $this_attemptToReconnect;
        final /* synthetic */ com.stripe.core.hardware.Reader $usbReader;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass5(FlowCollector<? super ReconnectionEvent> flowCollector, com.stripe.core.hardware.Reader reader, Continuation<? super AnonymousClass5> continuation) {
            super(1, continuation);
            this.$this_attemptToReconnect = flowCollector;
            this.$usbReader = reader;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass5(this.$this_attemptToReconnect, this.$usbReader, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((AnonymousClass5) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (this.$this_attemptToReconnect.emit(new ReconnectionEvent.UpdateConnectivity.StartConnectAttempt(this.$usbReader), this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$getReaderInfo$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: UsbReaderReconnector.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$getReaderInfo$2", f = "UsbReaderReconnector.kt", i = {}, l = {WinError.ERROR_ATOMIC_LOCKS_NOT_SUPPORTED}, m = "invokeSuspend", n = {}, s = {})
    static final class C03832 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ FlowCollector<ReconnectionEvent> $this_getReaderInfo;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C03832(FlowCollector<? super ReconnectionEvent> flowCollector, Continuation<? super C03832> continuation) {
            super(1, continuation);
            this.$this_getReaderInfo = flowCollector;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new C03832(this.$this_getReaderInfo, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((C03832) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (this.$this_getReaderInfo.emit(ReconnectionEvent.UpdateConnectivity.GetReaderInfo.INSTANCE, this) == coroutine_suspended) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public final Object getReaderInfo(FlowCollector<? super ReconnectionEvent> flowCollector, Continuation<? super ReaderInfo> continuation) {
        return RxJavaHelper.INSTANCE.awaitFirstWithBlock(this.readerStatusListener.getReaderInfoObservable(), this.readerEventScheduler, new C03832(flowCollector, null), continuation);
    }

    /* JADX INFO: compiled from: UsbReaderReconnector.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\br\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ConnectionAttemptResult;", "", "ConnectedToReader", "CouldNotConnect", "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ConnectionAttemptResult$ConnectedToReader;", "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ConnectionAttemptResult$CouldNotConnect;", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private interface ConnectionAttemptResult {

        /* JADX INFO: compiled from: UsbReaderReconnector.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ConnectionAttemptResult$ConnectedToReader;", "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ConnectionAttemptResult;", OfflineStorageConstantsKt.READER, "Lcom/stripe/core/hardware/Reader;", "(Lcom/stripe/core/hardware/Reader;)V", "getReader", "()Lcom/stripe/core/hardware/Reader;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class ConnectedToReader implements ConnectionAttemptResult {
            private final com.stripe.core.hardware.Reader reader;

            public static /* synthetic */ ConnectedToReader copy$default(ConnectedToReader connectedToReader, com.stripe.core.hardware.Reader reader, int i, Object obj) {
                if ((i & 1) != 0) {
                    reader = connectedToReader.reader;
                }
                return connectedToReader.copy(reader);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final com.stripe.core.hardware.Reader getReader() {
                return this.reader;
            }

            public final ConnectedToReader copy(com.stripe.core.hardware.Reader reader) {
                Intrinsics.checkNotNullParameter(reader, "reader");
                return new ConnectedToReader(reader);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof ConnectedToReader) && Intrinsics.areEqual(this.reader, ((ConnectedToReader) other).reader);
            }

            public int hashCode() {
                return this.reader.hashCode();
            }

            public String toString() {
                return "ConnectedToReader(reader=" + this.reader + ')';
            }

            public ConnectedToReader(com.stripe.core.hardware.Reader reader) {
                Intrinsics.checkNotNullParameter(reader, "reader");
                this.reader = reader;
            }

            public final com.stripe.core.hardware.Reader getReader() {
                return this.reader;
            }
        }

        /* JADX INFO: compiled from: UsbReaderReconnector.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ConnectionAttemptResult$CouldNotConnect;", "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ConnectionAttemptResult;", "disconnectCause", "Lcom/stripe/hardware/status/DisconnectCause;", "(Lcom/stripe/hardware/status/DisconnectCause;)V", "getDisconnectCause", "()Lcom/stripe/hardware/status/DisconnectCause;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class CouldNotConnect implements ConnectionAttemptResult {
            private final DisconnectCause disconnectCause;

            public static /* synthetic */ CouldNotConnect copy$default(CouldNotConnect couldNotConnect, DisconnectCause disconnectCause, int i, Object obj) {
                if ((i & 1) != 0) {
                    disconnectCause = couldNotConnect.disconnectCause;
                }
                return couldNotConnect.copy(disconnectCause);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final DisconnectCause getDisconnectCause() {
                return this.disconnectCause;
            }

            public final CouldNotConnect copy(DisconnectCause disconnectCause) {
                Intrinsics.checkNotNullParameter(disconnectCause, "disconnectCause");
                return new CouldNotConnect(disconnectCause);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof CouldNotConnect) && this.disconnectCause == ((CouldNotConnect) other).disconnectCause;
            }

            public int hashCode() {
                return this.disconnectCause.hashCode();
            }

            public String toString() {
                return "CouldNotConnect(disconnectCause=" + this.disconnectCause + ')';
            }

            public CouldNotConnect(DisconnectCause disconnectCause) {
                Intrinsics.checkNotNullParameter(disconnectCause, "disconnectCause");
                this.disconnectCause = disconnectCause;
            }

            public final DisconnectCause getDisconnectCause() {
                return this.disconnectCause;
            }
        }
    }

    /* JADX INFO: compiled from: UsbReaderReconnector.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\bÀ\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent;", "", "FailedToReconnect", "ReconnectedToReader", "UpdateConnectivity", "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$FailedToReconnect;", "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$ReconnectedToReader;", "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$UpdateConnectivity;", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface ReconnectionEvent {

        /* JADX INFO: compiled from: UsbReaderReconnector.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$ReconnectedToReader;", "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "(Lcom/stripe/stripeterminal/external/models/Reader;)V", "getReader", "()Lcom/stripe/stripeterminal/external/models/Reader;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class ReconnectedToReader implements ReconnectionEvent {
            private final com.stripe.stripeterminal.external.models.Reader reader;

            public static /* synthetic */ ReconnectedToReader copy$default(ReconnectedToReader reconnectedToReader, com.stripe.stripeterminal.external.models.Reader reader, int i, Object obj) {
                if ((i & 1) != 0) {
                    reader = reconnectedToReader.reader;
                }
                return reconnectedToReader.copy(reader);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final com.stripe.stripeterminal.external.models.Reader getReader() {
                return this.reader;
            }

            public final ReconnectedToReader copy(com.stripe.stripeterminal.external.models.Reader reader) {
                Intrinsics.checkNotNullParameter(reader, "reader");
                return new ReconnectedToReader(reader);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof ReconnectedToReader) && Intrinsics.areEqual(this.reader, ((ReconnectedToReader) other).reader);
            }

            public int hashCode() {
                return this.reader.hashCode();
            }

            public String toString() {
                return "ReconnectedToReader(reader=" + this.reader + ')';
            }

            public ReconnectedToReader(com.stripe.stripeterminal.external.models.Reader reader) {
                Intrinsics.checkNotNullParameter(reader, "reader");
                this.reader = reader;
            }

            public final com.stripe.stripeterminal.external.models.Reader getReader() {
                return this.reader;
            }
        }

        /* JADX INFO: compiled from: UsbReaderReconnector.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$FailedToReconnect;", "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class FailedToReconnect implements ReconnectionEvent {
            public static final FailedToReconnect INSTANCE = new FailedToReconnect();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof FailedToReconnect)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -403086227;
            }

            public String toString() {
                return "FailedToReconnect";
            }

            private FailedToReconnect() {
            }
        }

        /* JADX INFO: compiled from: UsbReaderReconnector.kt */
        @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\bÀ\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$UpdateConnectivity;", "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent;", "EndConnectAttempt", "GetReaderInfo", "StartConnectAttempt", "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$UpdateConnectivity$EndConnectAttempt;", "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$UpdateConnectivity$GetReaderInfo;", "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$UpdateConnectivity$StartConnectAttempt;", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public interface UpdateConnectivity extends ReconnectionEvent {

            /* JADX INFO: compiled from: UsbReaderReconnector.kt */
            @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$UpdateConnectivity$StartConnectAttempt;", "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$UpdateConnectivity;", OfflineStorageConstantsKt.READER, "Lcom/stripe/core/hardware/Reader;", "(Lcom/stripe/core/hardware/Reader;)V", "getReader", "()Lcom/stripe/core/hardware/Reader;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final /* data */ class StartConnectAttempt implements UpdateConnectivity {
                private final com.stripe.core.hardware.Reader reader;

                public static /* synthetic */ StartConnectAttempt copy$default(StartConnectAttempt startConnectAttempt, com.stripe.core.hardware.Reader reader, int i, Object obj) {
                    if ((i & 1) != 0) {
                        reader = startConnectAttempt.reader;
                    }
                    return startConnectAttempt.copy(reader);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final com.stripe.core.hardware.Reader getReader() {
                    return this.reader;
                }

                public final StartConnectAttempt copy(com.stripe.core.hardware.Reader reader) {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    return new StartConnectAttempt(reader);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    return (other instanceof StartConnectAttempt) && Intrinsics.areEqual(this.reader, ((StartConnectAttempt) other).reader);
                }

                public int hashCode() {
                    return this.reader.hashCode();
                }

                public String toString() {
                    return "StartConnectAttempt(reader=" + this.reader + ')';
                }

                public StartConnectAttempt(com.stripe.core.hardware.Reader reader) {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    this.reader = reader;
                }

                public final com.stripe.core.hardware.Reader getReader() {
                    return this.reader;
                }
            }

            /* JADX INFO: compiled from: UsbReaderReconnector.kt */
            @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$UpdateConnectivity$GetReaderInfo;", "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$UpdateConnectivity;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final /* data */ class GetReaderInfo implements UpdateConnectivity {
                public static final GetReaderInfo INSTANCE = new GetReaderInfo();

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof GetReaderInfo)) {
                        return false;
                    }
                    return true;
                }

                public int hashCode() {
                    return -678650869;
                }

                public String toString() {
                    return "GetReaderInfo";
                }

                private GetReaderInfo() {
                }
            }

            /* JADX INFO: compiled from: UsbReaderReconnector.kt */
            @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$UpdateConnectivity$EndConnectAttempt;", "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$UpdateConnectivity;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final /* data */ class EndConnectAttempt implements UpdateConnectivity {
                public static final EndConnectAttempt INSTANCE = new EndConnectAttempt();

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof EndConnectAttempt)) {
                        return false;
                    }
                    return true;
                }

                public int hashCode() {
                    return 1347770946;
                }

                public String toString() {
                    return "EndConnectAttempt";
                }

                private EndConnectAttempt() {
                }
            }
        }
    }

    /* JADX INFO: compiled from: UsbReaderReconnector.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u0004X\u0080\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\b\u001a\u00020\tX\u0080T¢\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u00020\u0004X\u0080\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u000b\u0010\u0006R\u000e\u0010\f\u001a\u00020\rX\u0080T¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u000e"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$Companion;", "", "()V", "DEFAULT_ATTEMPT_DELAY", "Lkotlin/time/Duration;", "getDEFAULT_ATTEMPT_DELAY-UwyO8pc$adapter_release", "()J", "J", "DEFAULT_RECONNECTION_MAX_ATTEMPTS", "", "DEFAULT_RECONNECTION_TIMEOUT", "getDEFAULT_RECONNECTION_TIMEOUT-UwyO8pc$adapter_release", "OUTCOME_TAG_KEY", "", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: getDEFAULT_ATTEMPT_DELAY-UwyO8pc$adapter_release, reason: not valid java name */
        public final long m510getDEFAULT_ATTEMPT_DELAYUwyO8pc$adapter_release() {
            return UsbReaderReconnector.DEFAULT_ATTEMPT_DELAY;
        }

        /* JADX INFO: renamed from: getDEFAULT_RECONNECTION_TIMEOUT-UwyO8pc$adapter_release, reason: not valid java name */
        public final long m511getDEFAULT_RECONNECTION_TIMEOUTUwyO8pc$adapter_release() {
            return UsbReaderReconnector.DEFAULT_RECONNECTION_TIMEOUT;
        }
    }

    static {
        Duration.Companion companion = Duration.INSTANCE;
        DEFAULT_ATTEMPT_DELAY = DurationKt.toDuration(1, DurationUnit.SECONDS);
        Duration.Companion companion2 = Duration.INSTANCE;
        DEFAULT_RECONNECTION_TIMEOUT = DurationKt.toDuration(30, DurationUnit.SECONDS);
    }
}
