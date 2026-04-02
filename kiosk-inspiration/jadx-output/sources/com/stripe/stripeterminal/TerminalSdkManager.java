package com.stripe.stripeterminal;

import android.app.Application;
import android.content.Context;
import androidx.lifecycle.ProcessLifecycleOwner;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.stripe.core.stripeterminal.storage.EventEntity;
import com.stripe.core.stripeterminal.storage.LogPointEntity;
import com.stripe.core.stripeterminal.storage.StripeTerminalDatabase;
import com.stripe.core.stripeterminal.storage.TraceEntity;
import com.stripe.jvmcore.clientlogger.dagger.ClientLoggerDispatcherModule;
import com.stripe.jvmcore.logging.dagger.MetricLoggerCollectorModule;
import com.stripe.jvmcore.logging.dagger.TraceLoggerCollectorModule;
import com.stripe.jvmcore.logging.terminal.dagger.LogLevelModule;
import com.stripe.jvmcore.logging.terminal.log.Log;
import com.stripe.jvmcore.logging.terminal.log.LogFlusher;
import com.stripe.loggingmodels.LogLevel;
import com.stripe.stripeterminal.dagger.ContextModule;
import com.stripe.stripeterminal.dagger.Dependencies;
import com.stripe.stripeterminal.dagger.OfflineModule;
import com.stripe.stripeterminal.dagger.TerminalModule;
import com.stripe.stripeterminal.external.callable.ConnectionTokenProvider;
import com.stripe.stripeterminal.external.callable.OfflineListener;
import com.stripe.stripeterminal.external.callable.TerminalListener;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.CurrentActivityTracker;
import com.stripe.stripeterminal.internal.common.LocationHandler;
import com.stripe.stripeterminal.internal.common.adapter.CotsAdapter;
import com.stripe.stripeterminal.internal.common.log.SdkRequest;
import com.stripe.stripeterminal.internal.common.log.SdkResponse;
import com.stripe.stripeterminal.internal.common.storage.DatabaseProvider;
import com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: compiled from: TerminalSdkManager.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001:\u00011B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0002J\u0006\u0010\u0018\u001a\u00020\u0017JN\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010$\u001a\u00020%2\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020\u00170'J\u0006\u0010\u0013\u001a\u00020)J\u0006\u0010\u0015\u001a\u00020)J\u0006\u0010*\u001a\u00020\u0017J\u000e\u0010+\u001a\u00020\u00172\u0006\u0010,\u001a\u00020-J\u0006\u0010.\u001a\u00020\u0017J\u0006\u0010/\u001a\u00020\u0017J\b\u00100\u001a\u00020\u0017H\u0002R\u0016\u0010\u0003\u001a\u00020\u0004X\u0082\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\n\u0002\u0010\u0005R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\u00020\u0004X\u0082\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\n\u0002\u0010\u0005R\u000e\u0010\t\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u00062"}, d2 = {"Lcom/stripe/stripeterminal/TerminalSdkManager;", "", "()V", "AUTO_SUBMIT_LOGS_DELAY", "Lkotlin/time/Duration;", "J", "EVENTS_FILE_NAME", "", "FLUSH_PENDING_LOGS_DELAY", "IDENTIFIER", "LEGACY_TRACES_FILE_NAME", "LOGGER", "Lcom/stripe/jvmcore/logging/terminal/log/Log;", "METRICS_FILE_NAME", "TRACES_FILE_NAME", "initCoroutineContext", "Lkotlinx/coroutines/CompletableJob;", "instance", "Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;", "isObserverRegistered", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isTerminalInitialized", "checkAppDelegateInitialized", "", "destroyTerminal", "initTerminalSession", "context", "Landroid/content/Context;", "logLevel", "Lcom/stripe/loggingmodels/LogLevel;", "tokenProvider", "Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/stripe/stripeterminal/external/callable/TerminalListener;", "offlineListener", "Lcom/stripe/stripeterminal/external/callable/OfflineListener;", "dependencies", "Lcom/stripe/stripeterminal/dagger/Dependencies;", "onSessionInitialized", "Lkotlin/Function1;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", "", "pauseTerminal", "registerObserver", "application", "Landroid/app/Application;", "resumeTerminal", "startTerminal", "submitStoredLogEvents", "Instance", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TerminalSdkManager {
    private static final long AUTO_SUBMIT_LOGS_DELAY;
    private static final String EVENTS_FILE_NAME = "terminal_sdk_wire_events";
    private static final long FLUSH_PENDING_LOGS_DELAY;
    private static final String IDENTIFIER = "sdk_init";
    private static final String LEGACY_TRACES_FILE_NAME = "terminal_sdk_wire_traces";
    private static final String METRICS_FILE_NAME = "terminal_sdk_wire_metrics";
    private static final String TRACES_FILE_NAME = "terminal_sdk_wire_traces_2";
    private static final CompletableJob initCoroutineContext;
    private static Instance instance;
    public static final TerminalSdkManager INSTANCE = new TerminalSdkManager();
    private static final AtomicBoolean isObserverRegistered = new AtomicBoolean(false);
    private static final AtomicBoolean isTerminalInitialized = new AtomicBoolean(false);
    private static final Log LOGGER = Log.INSTANCE.getLogger(TerminalSdkManager.class);

    private TerminalSdkManager() {
    }

    static {
        Duration.Companion companion = Duration.INSTANCE;
        long duration = DurationKt.toDuration(60, DurationUnit.SECONDS);
        FLUSH_PENDING_LOGS_DELAY = duration;
        AUTO_SUBMIT_LOGS_DELAY = Duration.m2210timesUwyO8pc(duration, 5);
        initCoroutineContext = SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null);
    }

    public final boolean isObserverRegistered() {
        return isObserverRegistered.get();
    }

    public final boolean isTerminalInitialized() {
        return isTerminalInitialized.get();
    }

    public final void registerObserver(Application application) {
        Intrinsics.checkNotNullParameter(application, "application");
        if (isObserverRegistered.compareAndSet(false, true)) {
            TerminalLifecycleObserver companion = TerminalLifecycleObserver.INSTANCE.getInstance(application, this);
            application.registerActivityLifecycleCallbacks(companion);
            ProcessLifecycleOwner.INSTANCE.get().getLifecycle().addObserver(companion);
            application.registerActivityLifecycleCallbacks(CurrentActivityTracker.INSTANCE);
            application.registerComponentCallbacks(companion);
        }
    }

    public static /* synthetic */ void initTerminalSession$default(TerminalSdkManager terminalSdkManager, Context context, LogLevel logLevel, ConnectionTokenProvider connectionTokenProvider, TerminalListener terminalListener, OfflineListener offlineListener, Dependencies dependencies, Function1 function1, int i, Object obj) throws TerminalException {
        if ((i & 2) != 0) {
            logLevel = LogLevel.NONE;
        }
        terminalSdkManager.initTerminalSession(context, logLevel, connectionTokenProvider, terminalListener, offlineListener, dependencies, function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void initTerminalSession(final Context context, LogLevel logLevel, ConnectionTokenProvider tokenProvider, TerminalListener listener, OfflineListener offlineListener, Dependencies dependencies, Function1<? super TerminalSession, Unit> onSessionInitialized) throws TerminalException {
        Unit unit;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        Intrinsics.checkNotNullParameter(tokenProvider, "tokenProvider");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(dependencies, "dependencies");
        Intrinsics.checkNotNullParameter(onSessionInitialized, "onSessionInitialized");
        if (instance != null) {
            throw new IllegalStateException("You can only call initTerminal *before* requesting the Terminal instance for the first time. If you are trying to switch accounts in your app, refer to the documentation for the `clearCachedCredentials` method.".toString());
        }
        checkAppDelegateInitialized();
        DatabaseProvider databaseProvider = DatabaseProvider.INSTANCE;
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        databaseProvider.createInstance(applicationContext);
        Long l = null;
        Long l2 = null;
        Long l3 = null;
        Long l4 = null;
        TerminalComponent terminalComponentCreate = DaggerTerminalComponent.factory().create(dependencies, new TerminalModule(tokenProvider, listener), new OfflineModule(offlineListener), new ContextModule(context), new LogLevelModule(logLevel), new MetricLoggerCollectorModule(METRICS_FILE_NAME, null, l, l2, l3, 30, null), new TraceLoggerCollectorModule(TRACES_FILE_NAME, l, l2, l3, l4, 30, null), new ClientLoggerDispatcherModule(EVENTS_FILE_NAME, 0L, l4, null, 0 == true ? 1 : 0, null, 62, null));
        TerminalExtensionsKt.initLoggers$default(terminalComponentCreate, new Function0<File>() { // from class: com.stripe.stripeterminal.TerminalSdkManager.initTerminalSession.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final File invoke() {
                return new File(context.getFilesDir(), TerminalSdkManager.LEGACY_TRACES_FILE_NAME);
            }
        }, null, 2, null);
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(initCoroutineContext), null, null, new AnonymousClass3(null), 3, null);
        try {
            Log log = LOGGER;
            log.startOperation(SdkRequest.INSTANCE.initialize(), IDENTIFIER);
            terminalComponentCreate.getApiLevelValidator().logSdkVersions(log);
            terminalComponentCreate.getApiLevelValidator().validateMinSdkVersion();
            terminalComponentCreate.getRootAccessDetector().detectRootAccess(new Function0<Unit>() { // from class: com.stripe.stripeterminal.TerminalSdkManager.initTerminalSession.4
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    TerminalSdkManager.LOGGER.d(null, TuplesKt.to("device_rooted", "TRUE"));
                }
            });
            CotsAdapter cotsAdapter = terminalComponentCreate.getCotsAdapter();
            if (cotsAdapter != null) {
                log.i("taptopay module detected", new Pair[0]);
                cotsAdapter.initKeystore();
            }
            StackTraceElement[] stackTrace = new Throwable().getStackTrace();
            Intrinsics.checkNotNullExpressionValue(stackTrace, "getStackTrace(...)");
            StackTraceElement stackTraceElement = (StackTraceElement) ArraysKt.getOrNull(stackTrace, 1);
            if (stackTraceElement != null) {
                Pair<String, ? extends Object>[] pairArr = new Pair[1];
                pairArr[0] = TuplesKt.to("app_language", Intrinsics.areEqual(stackTraceElement.getFileName(), "Terminal.kt") ? "JAVA" : "KOTLIN");
                log.d(null, pairArr);
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            if (unit == null) {
                log.d(null, TuplesKt.to("app_language", "UNKNOWN"));
            }
            LocationHandler locationHandler = terminalComponentCreate.getLocationHandler();
            LogFlusher traceFlusher = terminalComponentCreate.getTraceFlusher();
            List listListOf = CollectionsKt.listOf((Object[]) new ExecutorService[]{terminalComponentCreate.getConnectionExecutorService(), terminalComponentCreate.getTransactionExecutorService()});
            TerminalSession terminalSession = terminalComponentCreate.getTerminalSession();
            instance = new Instance(locationHandler, traceFlusher, listListOf, terminalSession);
            onSessionInitialized.invoke(terminalSession);
            submitStoredLogEvents();
            locationHandler.startListening();
            terminalSession.resume();
            log.endOperation(SdkResponse.INSTANCE.success(), IDENTIFIER);
        } catch (TerminalException e) {
            Log log2 = LOGGER;
            log2.e(e);
            log2.endOperation(SdkResponse.INSTANCE.failure(e), IDENTIFIER);
            throw e;
        } catch (Throwable th) {
            Log log3 = LOGGER;
            log3.e(th);
            log3.endOperation(SdkResponse.INSTANCE.failure(new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Unknown sdk error during initialization", th, null, 8, null)), IDENTIFIER);
            throw th;
        }
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.TerminalSdkManager$initTerminalSession$3, reason: invalid class name */
    /* JADX INFO: compiled from: TerminalSdkManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.TerminalSdkManager$initTerminalSession$3", f = "TerminalSdkManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(continuation);
            anonymousClass3.L$0 = obj;
            return anonymousClass3;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
            TerminalExtensionsKt.m504flushPendingLogsLoopexY8QGI$default(coroutineScope, TerminalSdkManager.LOGGER, TerminalSdkManager.FLUSH_PENDING_LOGS_DELAY, null, 4, null);
            TerminalExtensionsKt.m502autoSubmitLoopexY8QGI$default(coroutineScope, TerminalSdkManager.LOGGER, TerminalSdkManager.AUTO_SUBMIT_LOGS_DELAY, null, 4, null);
            return Unit.INSTANCE;
        }
    }

    public final void startTerminal() {
        submitStoredLogEvents();
    }

    public final void resumeTerminal() {
        Instance instance2 = instance;
        if (instance2 != null) {
            instance2.getLocationHandler().stopListening();
            instance2.getSession().pause();
        }
    }

    public final void pauseTerminal() {
        Instance instance2 = instance;
        if (instance2 != null) {
            instance2.getLocationHandler().stopListening();
            instance2.getSession().pause();
        }
    }

    public final void destroyTerminal() {
        Instance instance2 = instance;
        instance = null;
        if (instance2 != null) {
            instance2.getLocationHandler().stopListening();
            instance2.getSession().destroy();
            instance2.getLogFlusher().stopExecutingJobs();
            initCoroutineContext.cancel(new CancellationException("Terminal destroyed."));
            DatabaseProvider.INSTANCE.destroyInstance();
            Iterator<T> it = instance2.getExecutors().iterator();
            while (it.hasNext()) {
                ((ExecutorService) it.next()).shutdown();
            }
        }
        LOGGER.onShutDown();
    }

    private final void checkAppDelegateInitialized() {
        if (isObserverRegistered()) {
            return;
        }
        LOGGER.w("TerminalApplicationDelegate::onCreate was not called before initTerminal.", new Pair[0]);
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.TerminalSdkManager$submitStoredLogEvents$1, reason: invalid class name */
    /* JADX INFO: compiled from: TerminalSdkManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.TerminalSdkManager$submitStoredLogEvents$1", f = "TerminalSdkManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Instance instance;
            LogFlusher logFlusher;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            StripeTerminalDatabase databaseProvider = DatabaseProvider.INSTANCE.getInstance();
            if (databaseProvider != null && (instance = TerminalSdkManager.instance) != null && (logFlusher = instance.getLogFlusher()) != null) {
                List<EventEntity> all = databaseProvider.eventDao().getAll();
                List<TraceEntity> all2 = databaseProvider.traceDao().getAll();
                databaseProvider.eventDao().deleteAll();
                List<EventEntity> list = all;
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(((EventEntity) it.next()).toModel());
                }
                logFlusher.submitEvents(arrayList);
                databaseProvider.traceDao().deleteAll();
                List<TraceEntity> list2 = all2;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
                for (TraceEntity traceEntity : list2) {
                    List<LogPointEntity> logPointsForTrace = databaseProvider.logPointDao().getLogPointsForTrace(traceEntity.getId());
                    ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(logPointsForTrace, 10));
                    Iterator<T> it2 = logPointsForTrace.iterator();
                    while (it2.hasNext()) {
                        arrayList3.add(((LogPointEntity) it2.next()).toModel());
                    }
                    arrayList2.add(traceEntity.toModel(arrayList3));
                }
                logFlusher.submitTraces(arrayList2);
                databaseProvider.logPointDao().deleteAll();
            }
            return Unit.INSTANCE;
        }
    }

    private final void submitStoredLogEvents() {
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new AnonymousClass1(null), 3, null);
    }

    /* JADX INFO: compiled from: TerminalSdkManager.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0082\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\u000f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J\t\u0010\u0017\u001a\u00020\nHÆ\u0003J7\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006 "}, d2 = {"Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;", "", "locationHandler", "Lcom/stripe/stripeterminal/internal/common/LocationHandler;", "logFlusher", "Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;", "executors", "", "Ljava/util/concurrent/ExecutorService;", "session", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", "(Lcom/stripe/stripeterminal/internal/common/LocationHandler;Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;Ljava/util/List;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V", "getExecutors", "()Ljava/util/List;", "getLocationHandler", "()Lcom/stripe/stripeterminal/internal/common/LocationHandler;", "getLogFlusher", "()Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;", "getSession", "()Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final /* data */ class Instance {
        private final List<ExecutorService> executors;
        private final LocationHandler locationHandler;
        private final LogFlusher logFlusher;
        private final TerminalSession session;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Instance copy$default(Instance instance, LocationHandler locationHandler, LogFlusher logFlusher, List list, TerminalSession terminalSession, int i, Object obj) {
            if ((i & 1) != 0) {
                locationHandler = instance.locationHandler;
            }
            if ((i & 2) != 0) {
                logFlusher = instance.logFlusher;
            }
            if ((i & 4) != 0) {
                list = instance.executors;
            }
            if ((i & 8) != 0) {
                terminalSession = instance.session;
            }
            return instance.copy(locationHandler, logFlusher, list, terminalSession);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final LocationHandler getLocationHandler() {
            return this.locationHandler;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final LogFlusher getLogFlusher() {
            return this.logFlusher;
        }

        public final List<ExecutorService> component3() {
            return this.executors;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final TerminalSession getSession() {
            return this.session;
        }

        public final Instance copy(LocationHandler locationHandler, LogFlusher logFlusher, List<? extends ExecutorService> executors, TerminalSession session) {
            Intrinsics.checkNotNullParameter(locationHandler, "locationHandler");
            Intrinsics.checkNotNullParameter(logFlusher, "logFlusher");
            Intrinsics.checkNotNullParameter(executors, "executors");
            Intrinsics.checkNotNullParameter(session, "session");
            return new Instance(locationHandler, logFlusher, executors, session);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Instance)) {
                return false;
            }
            Instance instance = (Instance) other;
            return Intrinsics.areEqual(this.locationHandler, instance.locationHandler) && Intrinsics.areEqual(this.logFlusher, instance.logFlusher) && Intrinsics.areEqual(this.executors, instance.executors) && Intrinsics.areEqual(this.session, instance.session);
        }

        public int hashCode() {
            return (((((this.locationHandler.hashCode() * 31) + this.logFlusher.hashCode()) * 31) + this.executors.hashCode()) * 31) + this.session.hashCode();
        }

        public String toString() {
            return "Instance(locationHandler=" + this.locationHandler + ", logFlusher=" + this.logFlusher + ", executors=" + this.executors + ", session=" + this.session + ')';
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Instance(LocationHandler locationHandler, LogFlusher logFlusher, List<? extends ExecutorService> executors, TerminalSession session) {
            Intrinsics.checkNotNullParameter(locationHandler, "locationHandler");
            Intrinsics.checkNotNullParameter(logFlusher, "logFlusher");
            Intrinsics.checkNotNullParameter(executors, "executors");
            Intrinsics.checkNotNullParameter(session, "session");
            this.locationHandler = locationHandler;
            this.logFlusher = logFlusher;
            this.executors = executors;
            this.session = session;
        }

        public final LocationHandler getLocationHandler() {
            return this.locationHandler;
        }

        public final LogFlusher getLogFlusher() {
            return this.logFlusher;
        }

        public final List<ExecutorService> getExecutors() {
            return this.executors;
        }

        public final TerminalSession getSession() {
            return this.session;
        }
    }
}
