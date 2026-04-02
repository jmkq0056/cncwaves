.class public final Lcom/stripe/stripeterminal/TerminalSdkManager;
.super Ljava/lang/Object;
.source "TerminalSdkManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTerminalSdkManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TerminalSdkManager.kt\ncom/stripe/stripeterminal/TerminalSdkManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,289:1\n1855#2,2:290\n*S KotlinDebug\n*F\n+ 1 TerminalSdkManager.kt\ncom/stripe/stripeterminal/TerminalSdkManager\n*L\n247#1:290,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u00011B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0002J\u0006\u0010\u0018\u001a\u00020\u0017JN\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010$\u001a\u00020%2\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020\u00170\'J\u0006\u0010\u0013\u001a\u00020)J\u0006\u0010\u0015\u001a\u00020)J\u0006\u0010*\u001a\u00020\u0017J\u000e\u0010+\u001a\u00020\u00172\u0006\u0010,\u001a\u00020-J\u0006\u0010.\u001a\u00020\u0017J\u0006\u0010/\u001a\u00020\u0017J\u0008\u00100\u001a\u00020\u0017H\u0002R\u0016\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\u00020\u0004X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u000e\u0010\t\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u00062"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/TerminalSdkManager;",
        "",
        "()V",
        "AUTO_SUBMIT_LOGS_DELAY",
        "Lkotlin/time/Duration;",
        "J",
        "EVENTS_FILE_NAME",
        "",
        "FLUSH_PENDING_LOGS_DELAY",
        "IDENTIFIER",
        "LEGACY_TRACES_FILE_NAME",
        "LOGGER",
        "Lcom/stripe/jvmcore/logging/terminal/log/Log;",
        "METRICS_FILE_NAME",
        "TRACES_FILE_NAME",
        "initCoroutineContext",
        "Lkotlinx/coroutines/CompletableJob;",
        "instance",
        "Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;",
        "isObserverRegistered",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isTerminalInitialized",
        "checkAppDelegateInitialized",
        "",
        "destroyTerminal",
        "initTerminalSession",
        "context",
        "Landroid/content/Context;",
        "logLevel",
        "Lcom/stripe/loggingmodels/LogLevel;",
        "tokenProvider",
        "Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;",
        "listener",
        "Lcom/stripe/stripeterminal/external/callable/TerminalListener;",
        "offlineListener",
        "Lcom/stripe/stripeterminal/external/callable/OfflineListener;",
        "dependencies",
        "Lcom/stripe/stripeterminal/dagger/Dependencies;",
        "onSessionInitialized",
        "Lkotlin/Function1;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
        "",
        "pauseTerminal",
        "registerObserver",
        "application",
        "Landroid/app/Application;",
        "resumeTerminal",
        "startTerminal",
        "submitStoredLogEvents",
        "Instance",
        "sdkmanager_publish"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final AUTO_SUBMIT_LOGS_DELAY:J

.field private static final EVENTS_FILE_NAME:Ljava/lang/String; = "terminal_sdk_wire_events"

.field private static final FLUSH_PENDING_LOGS_DELAY:J

.field private static final IDENTIFIER:Ljava/lang/String; = "sdk_init"

.field public static final INSTANCE:Lcom/stripe/stripeterminal/TerminalSdkManager;

.field private static final LEGACY_TRACES_FILE_NAME:Ljava/lang/String; = "terminal_sdk_wire_traces"

.field private static final LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

.field private static final METRICS_FILE_NAME:Ljava/lang/String; = "terminal_sdk_wire_metrics"

.field private static final TRACES_FILE_NAME:Ljava/lang/String; = "terminal_sdk_wire_traces_2"

.field private static final initCoroutineContext:Lkotlinx/coroutines/CompletableJob;

.field private static instance:Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;

.field private static final isObserverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final isTerminalInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/stripe/stripeterminal/TerminalSdkManager;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/TerminalSdkManager;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/TerminalSdkManager;->INSTANCE:Lcom/stripe/stripeterminal/TerminalSdkManager;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/stripe/stripeterminal/TerminalSdkManager;->isObserverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/stripe/stripeterminal/TerminalSdkManager;->isTerminalInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    const-class v1, Lcom/stripe/stripeterminal/TerminalSdkManager;

    invoke-virtual {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;->getLogger(Ljava/lang/Class;)Lcom/stripe/jvmcore/logging/terminal/log/Log;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/TerminalSdkManager;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    .line 49
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/16 v0, 0x3c

    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/stripe/stripeterminal/TerminalSdkManager;->FLUSH_PENDING_LOGS_DELAY:J

    const/4 v2, 0x5

    .line 50
    invoke-static {v0, v1, v2}, Lkotlin/time/Duration;->times-UwyO8pc(JI)J

    move-result-wide v0

    sput-wide v0, Lcom/stripe/stripeterminal/TerminalSdkManager;->AUTO_SUBMIT_LOGS_DELAY:J

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 51
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/TerminalSdkManager;->initCoroutineContext:Lkotlinx/coroutines/CompletableJob;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAUTO_SUBMIT_LOGS_DELAY$p()J
    .locals 2

    .line 44
    sget-wide v0, Lcom/stripe/stripeterminal/TerminalSdkManager;->AUTO_SUBMIT_LOGS_DELAY:J

    return-wide v0
.end method

.method public static final synthetic access$getFLUSH_PENDING_LOGS_DELAY$p()J
    .locals 2

    .line 44
    sget-wide v0, Lcom/stripe/stripeterminal/TerminalSdkManager;->FLUSH_PENDING_LOGS_DELAY:J

    return-wide v0
.end method

.method public static final synthetic access$getInstance$p()Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;
    .locals 1

    .line 44
    sget-object v0, Lcom/stripe/stripeterminal/TerminalSdkManager;->instance:Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;

    return-object v0
.end method

.method public static final synthetic access$getLOGGER$p()Lcom/stripe/jvmcore/logging/terminal/log/Log;
    .locals 1

    .line 44
    sget-object v0, Lcom/stripe/stripeterminal/TerminalSdkManager;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    return-object v0
.end method

.method private final checkAppDelegateInitialized()V
    .locals 3

    .line 254
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/TerminalSdkManager;->isObserverRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    sget-object v0, Lcom/stripe/stripeterminal/TerminalSdkManager;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "TerminalApplicationDelegate::onCreate was not called before initTerminal."

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    :cond_0
    return-void
.end method

.method public static synthetic initTerminalSession$default(Lcom/stripe/stripeterminal/TerminalSdkManager;Landroid/content/Context;Lcom/stripe/loggingmodels/LogLevel;Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lcom/stripe/stripeterminal/external/callable/TerminalListener;Lcom/stripe/stripeterminal/external/callable/OfflineListener;Lcom/stripe/stripeterminal/dagger/Dependencies;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 8

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    .line 94
    sget-object p2, Lcom/stripe/loggingmodels/LogLevel;->NONE:Lcom/stripe/loggingmodels/LogLevel;

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 92
    invoke-virtual/range {v0 .. v7}, Lcom/stripe/stripeterminal/TerminalSdkManager;->initTerminalSession(Landroid/content/Context;Lcom/stripe/loggingmodels/LogLevel;Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lcom/stripe/stripeterminal/external/callable/TerminalListener;Lcom/stripe/stripeterminal/external/callable/OfflineListener;Lcom/stripe/stripeterminal/dagger/Dependencies;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final submitStoredLogEvents()V
    .locals 7

    .line 260
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/stripe/stripeterminal/TerminalSdkManager$submitStoredLogEvents$1;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/stripe/stripeterminal/TerminalSdkManager$submitStoredLogEvents$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final destroyTerminal()V
    .locals 4

    .line 236
    sget-object v0, Lcom/stripe/stripeterminal/TerminalSdkManager;->instance:Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;

    const/4 v1, 0x0

    .line 237
    sput-object v1, Lcom/stripe/stripeterminal/TerminalSdkManager;->instance:Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->getLocationHandler()Lcom/stripe/stripeterminal/internal/common/LocationHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->stopListening()V

    .line 241
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->getSession()Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->destroy()V

    .line 242
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->getLogFlusher()Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;

    move-result-object v1

    invoke-interface {v1}, Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;->stopExecutingJobs()V

    .line 243
    sget-object v1, Lcom/stripe/stripeterminal/TerminalSdkManager;->initCoroutineContext:Lkotlinx/coroutines/CompletableJob;

    new-instance v2, Ljava/util/concurrent/CancellationException;

    const-string v3, "Terminal destroyed."

    invoke-direct {v2, v3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lkotlinx/coroutines/CompletableJob;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 245
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/storage/DatabaseProvider;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/storage/DatabaseProvider;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/storage/DatabaseProvider;->destroyInstance()V

    .line 247
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->getExecutors()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 290
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ExecutorService;

    .line 247
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_0

    .line 250
    :cond_0
    sget-object v0, Lcom/stripe/stripeterminal/TerminalSdkManager;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->onShutDown()V

    return-void
.end method

.method public final initTerminalSession(Landroid/content/Context;Lcom/stripe/loggingmodels/LogLevel;Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lcom/stripe/stripeterminal/external/callable/TerminalListener;Lcom/stripe/stripeterminal/external/callable/OfflineListener;Lcom/stripe/stripeterminal/dagger/Dependencies;Lkotlin/jvm/functions/Function1;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/stripe/loggingmodels/LogLevel;",
            "Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;",
            "Lcom/stripe/stripeterminal/external/callable/TerminalListener;",
            "Lcom/stripe/stripeterminal/external/callable/OfflineListener;",
            "Lcom/stripe/stripeterminal/dagger/Dependencies;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p7

    const-string v5, "sdk_init"

    const-string v6, "context"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "logLevel"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "tokenProvider"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "listener"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "dependencies"

    move-object/from16 v8, p6

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "onSessionInitialized"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    sget-object v6, Lcom/stripe/stripeterminal/TerminalSdkManager;->instance:Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;

    if-nez v6, :cond_4

    .line 108
    invoke-direct/range {p0 .. p0}, Lcom/stripe/stripeterminal/TerminalSdkManager;->checkAppDelegateInitialized()V

    .line 110
    sget-object v6, Lcom/stripe/stripeterminal/internal/common/storage/DatabaseProvider;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/storage/DatabaseProvider;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v9, "getApplicationContext(...)"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/stripe/stripeterminal/internal/common/storage/DatabaseProvider;->createInstance(Landroid/content/Context;)V

    .line 112
    invoke-static {}, Lcom/stripe/stripeterminal/DaggerTerminalComponent;->factory()Lcom/stripe/stripeterminal/TerminalComponent$Factory;

    move-result-object v7

    .line 115
    new-instance v9, Lcom/stripe/stripeterminal/dagger/TerminalModule;

    invoke-direct {v9, v2, v3}, Lcom/stripe/stripeterminal/dagger/TerminalModule;-><init>(Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lcom/stripe/stripeterminal/external/callable/TerminalListener;)V

    .line 116
    new-instance v10, Lcom/stripe/stripeterminal/dagger/OfflineModule;

    move-object/from16 v2, p5

    invoke-direct {v10, v2}, Lcom/stripe/stripeterminal/dagger/OfflineModule;-><init>(Lcom/stripe/stripeterminal/external/callable/OfflineListener;)V

    .line 117
    new-instance v11, Lcom/stripe/stripeterminal/dagger/ContextModule;

    invoke-direct {v11, v0}, Lcom/stripe/stripeterminal/dagger/ContextModule;-><init>(Landroid/content/Context;)V

    .line 118
    new-instance v12, Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;

    invoke-direct {v12, v1}, Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;-><init>(Lcom/stripe/loggingmodels/LogLevel;)V

    .line 119
    new-instance v13, Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;

    const/16 v19, 0x1e

    const/16 v20, 0x0

    const-string v14, "terminal_sdk_wire_metrics"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v13 .. v20}, Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 120
    new-instance v14, Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;

    const/16 v20, 0x1e

    const/16 v21, 0x0

    const-string v15, "terminal_sdk_wire_traces_2"

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v21}, Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 121
    new-instance v15, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;

    const/16 v23, 0x3e

    const/16 v24, 0x0

    const-string v16, "terminal_sdk_wire_events"

    const-wide/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;-><init>(Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 113
    invoke-interface/range {v7 .. v15}, Lcom/stripe/stripeterminal/TerminalComponent$Factory;->create(Lcom/stripe/stripeterminal/dagger/Dependencies;Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/stripeterminal/dagger/ContextModule;Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;)Lcom/stripe/stripeterminal/TerminalComponent;

    move-result-object v1

    .line 125
    new-instance v2, Lcom/stripe/stripeterminal/TerminalSdkManager$initTerminalSession$2;

    invoke-direct {v2, v0}, Lcom/stripe/stripeterminal/TerminalSdkManager$initTerminalSession$2;-><init>(Landroid/content/Context;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3, v0}, Lcom/stripe/stripeterminal/TerminalExtensionsKt;->initLoggers$default(Lcom/stripe/stripeterminal/TerminalComponent;Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)V

    .line 129
    sget-object v2, Lcom/stripe/stripeterminal/TerminalSdkManager;->initCoroutineContext:Lkotlinx/coroutines/CompletableJob;

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance v6, Lcom/stripe/stripeterminal/TerminalSdkManager$initTerminalSession$3;

    invoke-direct {v6, v0}, Lcom/stripe/stripeterminal/TerminalSdkManager$initTerminalSession$3;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 p1, v2

    move-object/from16 p4, v6

    move/from16 p5, v7

    move-object/from16 p6, v8

    move-object/from16 p2, v9

    move-object/from16 p3, v10

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 141
    :try_start_0
    sget-object v2, Lcom/stripe/stripeterminal/TerminalSdkManager;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    sget-object v6, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;

    invoke-virtual {v6}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;->initialize()Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    move-result-object v6

    check-cast v6, Lcom/stripe/loggingmodels/ApplicationTrace;

    invoke-virtual {v2, v6, v5}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->startOperation(Lcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;)V

    .line 144
    invoke-interface {v1}, Lcom/stripe/stripeterminal/TerminalComponent;->getApiLevelValidator()Lcom/stripe/stripeterminal/internal/common/introspection/ApiLevelValidator;

    move-result-object v6

    move-object v7, v2

    check-cast v7, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    invoke-interface {v6, v7}, Lcom/stripe/stripeterminal/internal/common/introspection/ApiLevelValidator;->logSdkVersions(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    .line 145
    invoke-interface {v1}, Lcom/stripe/stripeterminal/TerminalComponent;->getApiLevelValidator()Lcom/stripe/stripeterminal/internal/common/introspection/ApiLevelValidator;

    move-result-object v6

    invoke-interface {v6}, Lcom/stripe/stripeterminal/internal/common/introspection/ApiLevelValidator;->validateMinSdkVersion()V

    .line 148
    invoke-interface {v1}, Lcom/stripe/stripeterminal/TerminalComponent;->getRootAccessDetector()Lcom/stripe/stripeterminal/internal/common/introspection/RootAccessDetector;

    move-result-object v6

    sget-object v7, Lcom/stripe/stripeterminal/TerminalSdkManager$initTerminalSession$4;->INSTANCE:Lcom/stripe/stripeterminal/TerminalSdkManager$initTerminalSession$4;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface {v6, v7}, Lcom/stripe/stripeterminal/internal/common/introspection/RootAccessDetector;->detectRootAccess(Lkotlin/jvm/functions/Function0;)V

    .line 152
    invoke-interface {v1}, Lcom/stripe/stripeterminal/TerminalComponent;->getCotsAdapter()Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 153
    const-string v8, "taptopay module detected"

    new-array v9, v7, [Lkotlin/Pair;

    invoke-virtual {v2, v8, v9}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 154
    invoke-virtual {v6}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->initKeystore()V

    .line 158
    :cond_0
    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    const-string v8, "getStackTrace(...)"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, [Ljava/lang/Object;

    const/4 v8, 0x1

    invoke-static {v6, v8}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/StackTraceElement;
    :try_end_0
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "app_language"

    if-eqz v6, :cond_2

    .line 159
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    const-string v10, "Terminal.kt"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 160
    new-array v10, v8, [Lkotlin/Pair;

    if-eqz v6, :cond_1

    const-string v6, "JAVA"

    goto :goto_0

    :cond_1
    const-string v6, "KOTLIN"

    :goto_0
    invoke-static {v9, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v10, v7

    invoke-virtual {v2, v0, v10}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 158
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_2
    move-object v6, v0

    :goto_1
    if-nez v6, :cond_3

    .line 161
    new-array v6, v8, [Lkotlin/Pair;

    const-string v10, "UNKNOWN"

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-virtual {v2, v0, v6}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 163
    :cond_3
    invoke-interface {v1}, Lcom/stripe/stripeterminal/TerminalComponent;->getLocationHandler()Lcom/stripe/stripeterminal/internal/common/LocationHandler;

    move-result-object v0

    .line 164
    invoke-interface {v1}, Lcom/stripe/stripeterminal/TerminalComponent;->getTraceFlusher()Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;

    move-result-object v6

    .line 166
    new-array v3, v3, [Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Lcom/stripe/stripeterminal/TerminalComponent;->getConnectionExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    aput-object v9, v3, v7

    .line 167
    invoke-interface {v1}, Lcom/stripe/stripeterminal/TerminalComponent;->getTransactionExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    aput-object v7, v3, v8

    .line 165
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 169
    invoke-interface {v1}, Lcom/stripe/stripeterminal/TerminalComponent;->getTerminalSession()Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    move-result-object v1

    .line 171
    new-instance v7, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;

    invoke-direct {v7, v0, v6, v3, v1}, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;-><init>(Lcom/stripe/stripeterminal/internal/common/LocationHandler;Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;Ljava/util/List;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V

    sput-object v7, Lcom/stripe/stripeterminal/TerminalSdkManager;->instance:Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;

    .line 178
    invoke-interface {v4, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-direct/range {p0 .. p0}, Lcom/stripe/stripeterminal/TerminalSdkManager;->submitStoredLogEvents()V

    .line 181
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->startListening()V

    .line 182
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->resume()V

    .line 184
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;->success()Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;

    move-result-object v0

    check-cast v0, Lcom/stripe/loggingmodels/ApplicationTraceResult;

    invoke-virtual {v2, v0, v5}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 191
    sget-object v1, Lcom/stripe/stripeterminal/TerminalSdkManager;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    invoke-virtual {v1, v0}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->e(Ljava/lang/Throwable;)V

    .line 192
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 193
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v4, 0x8

    const/4 v6, 0x0

    .line 192
    const-string v7, "Unknown sdk error during initialization"

    const/4 v8, 0x0

    move-object/from16 p4, v0

    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move/from16 p6, v4

    move-object/from16 p7, v6

    move-object/from16 p3, v7

    move-object/from16 p5, v8

    invoke-direct/range {p1 .. p7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 197
    sget-object v3, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;

    invoke-virtual {v3, v2}, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;->failure(Lcom/stripe/stripeterminal/external/models/TerminalException;)Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;

    move-result-object v2

    check-cast v2, Lcom/stripe/loggingmodels/ApplicationTraceResult;

    invoke-virtual {v1, v2, v5}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    .line 199
    throw v0

    :catch_0
    move-exception v0

    .line 186
    sget-object v1, Lcom/stripe/stripeterminal/TerminalSdkManager;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->e(Ljava/lang/Throwable;)V

    .line 187
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;

    invoke-virtual {v2, v0}, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;->failure(Lcom/stripe/stripeterminal/external/models/TerminalException;)Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;

    move-result-object v2

    check-cast v2, Lcom/stripe/loggingmodels/ApplicationTraceResult;

    invoke-virtual {v1, v2, v5}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    .line 189
    throw v0

    .line 101
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can only call initTerminal *before* requesting the Terminal instance for the first time. If you are trying to switch accounts in your app, refer to the documentation for the `clearCachedCredentials` method."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isObserverRegistered()Z
    .locals 1

    .line 70
    sget-object v0, Lcom/stripe/stripeterminal/TerminalSdkManager;->isObserverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final isTerminalInitialized()Z
    .locals 1

    .line 72
    sget-object v0, Lcom/stripe/stripeterminal/TerminalSdkManager;->isTerminalInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final pauseTerminal()V
    .locals 2

    .line 224
    sget-object v0, Lcom/stripe/stripeterminal/TerminalSdkManager;->instance:Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->getLocationHandler()Lcom/stripe/stripeterminal/internal/common/LocationHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->stopListening()V

    .line 226
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->getSession()Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->pause()V

    :cond_0
    return-void
.end method

.method public final registerObserver(Landroid/app/Application;)V
    .locals 3

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    sget-object v0, Lcom/stripe/stripeterminal/TerminalSdkManager;->isObserverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    sget-object v0, Lcom/stripe/stripeterminal/TerminalLifecycleObserver;->Companion:Lcom/stripe/stripeterminal/TerminalLifecycleObserver$Companion;

    invoke-virtual {v0, p1, p0}, Lcom/stripe/stripeterminal/TerminalLifecycleObserver$Companion;->getInstance(Landroid/app/Application;Lcom/stripe/stripeterminal/TerminalSdkManager;)Lcom/stripe/stripeterminal/TerminalLifecycleObserver;

    move-result-object v0

    .line 85
    move-object v1, v0

    check-cast v1, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 86
    sget-object v1, Landroidx/lifecycle/ProcessLifecycleOwner;->Companion:Landroidx/lifecycle/ProcessLifecycleOwner$Companion;

    invoke-virtual {v1}, Landroidx/lifecycle/ProcessLifecycleOwner$Companion;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 87
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/CurrentActivityTracker;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/CurrentActivityTracker;

    check-cast v1, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 88
    check-cast v0, Landroid/content/ComponentCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public final resumeTerminal()V
    .locals 2

    .line 214
    sget-object v0, Lcom/stripe/stripeterminal/TerminalSdkManager;->instance:Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->getLocationHandler()Lcom/stripe/stripeterminal/internal/common/LocationHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->stopListening()V

    .line 216
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->getSession()Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->pause()V

    :cond_0
    return-void
.end method

.method public final startTerminal()V
    .locals 0

    .line 207
    invoke-direct {p0}, Lcom/stripe/stripeterminal/TerminalSdkManager;->submitStoredLogEvents()V

    return-void
.end method
