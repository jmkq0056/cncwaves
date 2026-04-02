.class public final Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule;
.super Ljava/lang/Object;
.source "JvmCoreLogModule.kt"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/stripe/logwriter/dagger/LogWriterModule;,
        Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u0007J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0007J\u0008\u0010\n\u001a\u00020\u000bH\u0007J%\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0001\u00a2\u0006\u0002\u0008\u0014J@\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0016\u0010\u001b\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u001cj\u0002`\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0007J,\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\t0#2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010$\u001a\u00020\u000bH\u0007J4\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t0&2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\'\u001a\u00020(2\u0006\u0010$\u001a\u00020\u000bH\u0007J(\u0010)\u001a\u00020*2\u0006\u0010\u0010\u001a\u00020\u00112\u0016\u0010\u001b\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u001cj\u0002`\u001dH\u0007J\u0081\u0001\u0010+\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u001cj\u0002`\u001d2\u0006\u0010\u0010\u001a\u00020\u00112\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010-\u001a\u00020.2\u0017\u0010/\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t0&\u00a2\u0006\u0002\u000802\u0017\u00101\u001a\u0013\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\t0#\u00a2\u0006\u0002\u000802\u0017\u00102\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u00080H\u0007J\u0008\u00103\u001a\u00020(H\u0007\u00a8\u00064"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule;",
        "",
        "()V",
        "provideApplicationTraceHelper",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "provideDefaultLogRepository",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;",
        "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;",
        "provideGson",
        "Lcom/google/gson/Gson;",
        "provideLogFlusher",
        "Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;",
        "logUploader",
        "Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "executorService",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "provideLogFlusher$wiring",
        "provideLogInitializer",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogInitializer;",
        "traceLogger",
        "Lcom/stripe/loggingmodels/TraceLogger;",
        "metricLogger",
        "Lcom/stripe/loggingmodels/MetricLogger;",
        "terminalLogger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "terminalLogWriter",
        "Lcom/stripe/logwriter/LogLevelAwareWriter;",
        "eventLoggerInitializer",
        "Lcom/stripe/loggingmodels/StructuredEventLoggerInitializer;",
        "provideLogOperationCollector",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;",
        "gson",
        "provideLogOperationFactory",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory;",
        "traceManager",
        "Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;",
        "provideLoggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "provideTerminalLogger",
        "logRepository",
        "clock",
        "Lcom/stripe/time/Clock;",
        "operationFactory",
        "Lkotlin/jvm/JvmSuppressWildcards;",
        "operationCollector",
        "applicationTraceHelper",
        "provideTraceManager",
        "wiring"
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
.field public static final INSTANCE:Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule;

    invoke-direct {v0}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule;->INSTANCE:Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideApplicationTraceHelper()Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 121
    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/helpers/DefaultApplicationTraceHelper;

    invoke-direct {v0}, Lcom/stripe/jvmcore/logging/terminal/helpers/DefaultApplicationTraceHelper;-><init>()V

    check-cast v0, Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;

    return-object v0
.end method

.method public final provideDefaultLogRepository()Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository<",
            "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 88
    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogRepository;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogRepository;-><init>(Lcom/stripe/jvmcore/logging/terminal/contracts/LogReferenceIdGenerator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;

    return-object v0
.end method

.method public final provideGson()Lcom/google/gson/Gson;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/Reusable;
    .end annotation

    .line 59
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    return-object v0
.end method

.method public final provideLogFlusher$wiring(Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;Lcom/stripe/logwriter/LogWriter;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;
    .locals 9
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "logUploader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executorService"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v1, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;

    const/16 v7, 0x8

    const/4 v8, 0x0

    const-wide/16 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v8}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;-><init>(Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;Lcom/stripe/logwriter/LogWriter;Ljava/util/concurrent/ScheduledExecutorService;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;

    return-object v1
.end method

.method public final provideLogInitializer(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/loggingmodels/MetricLogger;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;Lcom/stripe/logwriter/LogLevelAwareWriter;Lcom/stripe/loggingmodels/StructuredEventLoggerInitializer;)Lcom/stripe/jvmcore/logging/terminal/contracts/LogInitializer;
    .locals 7
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/loggingmodels/TraceLogger;",
            "Lcom/stripe/loggingmodels/MetricLogger;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;",
            "Lcom/stripe/logwriter/LogLevelAwareWriter;",
            "Lcom/stripe/loggingmodels/StructuredEventLoggerInitializer;",
            ")",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogInitializer;"
        }
    .end annotation

    const-string v0, "traceLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminalLogger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminalLogWriter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventLoggerInitializer"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance v1, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogInitializer;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogInitializer;-><init>(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/loggingmodels/MetricLogger;Lcom/stripe/loggingmodels/StructuredEventLoggerInitializer;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;Lcom/stripe/logwriter/LogLevelAwareWriter;)V

    check-cast v1, Lcom/stripe/jvmcore/logging/terminal/contracts/LogInitializer;

    return-object v1
.end method

.method public final provideLogOperationCollector(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/loggingmodels/MetricLogger;Lcom/google/gson/Gson;)Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/loggingmodels/TraceLogger;",
            "Lcom/stripe/loggingmodels/MetricLogger;",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector<",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "traceLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationCollector;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationCollector;-><init>(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/loggingmodels/MetricLogger;Lcom/google/gson/Gson;)V

    check-cast v0, Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;

    return-object v0
.end method

.method public final provideLogOperationFactory(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/loggingmodels/MetricLogger;Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;Lcom/google/gson/Gson;)Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/loggingmodels/TraceLogger;",
            "Lcom/stripe/loggingmodels/MetricLogger;",
            "Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "traceLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationFactory;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationFactory;-><init>(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/loggingmodels/MetricLogger;Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;Lcom/google/gson/Gson;)V

    check-cast v0, Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory;

    return-object v0
.end method

.method public final provideLoggerFactory(Lcom/stripe/logwriter/LogWriter;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/logwriter/LogWriter;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "logWriter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminalLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLoggerFactory;

    invoke-direct {v0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLoggerFactory;-><init>(Lcom/stripe/logwriter/LogWriter;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    check-cast v0, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    return-object v0
.end method

.method public final provideTerminalLogger(Lcom/stripe/logwriter/LogWriter;Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory;Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .locals 9
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/logwriter/LogWriter;",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository<",
            "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;",
            ">;",
            "Lcom/stripe/time/Clock;",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;",
            ">;",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector<",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;",
            ">;",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "logWriter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operationFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operationCollector"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applicationTraceHelper"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    new-instance v1, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;

    .line 133
    const-string v2, "_"

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 132
    invoke-direct/range {v1 .. v8}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;-><init>(Ljava/lang/String;Lcom/stripe/logwriter/LogWriter;Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory;Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;)V

    check-cast v1, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-object v1
.end method

.method public final provideTraceManager()Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 55
    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;

    invoke-direct {v0}, Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;-><init>()V

    return-object v0
.end method
