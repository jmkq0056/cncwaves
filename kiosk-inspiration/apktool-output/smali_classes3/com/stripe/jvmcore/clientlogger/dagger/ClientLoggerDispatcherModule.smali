.class public final Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;
.super Ljava/lang/Object;
.source "ClientLoggerDispatcherModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001BI\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\nJ@\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u000f\u001a\u00020\u00102\u000e\u0008\u0001\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00122\u000e\u0008\u0001\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00142\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u0016H\u0007J.\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00122\u0006\u0010\u000f\u001a\u00020\u00102\u000e\u0008\u0001\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u001b\u001a\u00020\u001cH\u0007J>\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u00142\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020 0\u00192\u0008\u0008\u0001\u0010!\u001a\u00020\"2\u000e\u0008\u0001\u0010#\u001a\u0008\u0012\u0004\u0012\u00020%0$2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J6\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00142\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020 0\u00192\u0008\u0008\u0001\u0010!\u001a\u00020\"2\u000e\u0008\u0001\u0010#\u001a\u0008\u0012\u0004\u0012\u00020%0$H\u0007J8\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020(0\u00142\u0006\u0010\u001f\u001a\u00020 2\u0008\u0008\u0001\u0010!\u001a\u00020\"2\u000e\u0008\u0001\u0010#\u001a\u0008\u0012\u0004\u0012\u00020%0$2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J>\u0010)\u001a\u0008\u0012\u0004\u0012\u00020*0\u00142\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020 0\u00192\u0008\u0008\u0001\u0010!\u001a\u00020\"2\u000e\u0008\u0001\u0010#\u001a\u0008\u0012\u0004\u0012\u00020%0$2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u0012\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000b\u00a8\u0006+"
    }
    d2 = {
        "Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;",
        "",
        "eventsFile",
        "",
        "dispatchIntervalMillis",
        "",
        "overrideMaxBatchBytes",
        "overrideMaxEntryBytes",
        "overrideMaxFileBytes",
        "overridePruneFileBytes",
        "(Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "provideBatchDispatcher",
        "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "collector",
        "Lcom/stripe/jvmcore/batchdispatcher/Collector;",
        "dispatcher",
        "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;",
        "scheduler",
        "Lcom/stripe/jvmcore/batchdispatcher/Scheduler;",
        "provideClientLoggerObservabilityDataCollector",
        "filesDir",
        "Ldagger/Lazy;",
        "Ljava/io/File;",
        "loggerExceptionListener",
        "Lcom/stripe/loggingmodels/LoggerExceptionListener;",
        "providesClientLoggerEventDispatcher",
        "Lcom/stripe/proto/api/gator/ProxyEventPb;",
        "api",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;",
        "io",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "isNetworkAvailable",
        "Ljavax/inject/Provider;",
        "",
        "providesClientLoggerObservabilityDataDispatcher",
        "providesClientLoggerSchemaEventDispatcher",
        "Lcom/stripe/proto/api/gator/LogEvent;",
        "providesClientLoggerTraceDispatcher",
        "Lcom/stripe/proto/api/gator/ProxySpanPb;",
        "clientlogger"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final dispatchIntervalMillis:J

.field private final eventsFile:Ljava/lang/String;

.field private final overrideMaxBatchBytes:Ljava/lang/Long;

.field private final overrideMaxEntryBytes:Ljava/lang/Long;

.field private final overrideMaxFileBytes:Ljava/lang/Long;

.field private final overridePruneFileBytes:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 10

    const/16 v8, 0x3f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;-><init>(Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1

    const-string v0, "eventsFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;->eventsFile:Ljava/lang/String;

    .line 42
    iput-wide p2, p0, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;->dispatchIntervalMillis:J

    .line 45
    iput-object p4, p0, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;->overrideMaxBatchBytes:Ljava/lang/Long;

    .line 46
    iput-object p5, p0, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;->overrideMaxEntryBytes:Ljava/lang/Long;

    .line 47
    iput-object p6, p0, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;->overrideMaxFileBytes:Ljava/lang/Long;

    .line 48
    iput-object p7, p0, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;->overridePruneFileBytes:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    .line 41
    const-string p1, "observabilitydata_wire"

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    .line 42
    invoke-static {}, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModuleKt;->access$getDEFAULT_DISPATCH_INTERVAL_MILLIS$p()J

    move-result-wide p2

    :cond_1
    and-int/lit8 p9, p8, 0x4

    const/4 v0, 0x0

    if-eqz p9, :cond_2

    move-object p4, v0

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    move-object p5, v0

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    move-object p6, v0

    :cond_4
    and-int/lit8 p8, p8, 0x20

    if-eqz p8, :cond_5

    move-object p9, v0

    move-object p7, p5

    move-object p8, p6

    move-object p6, p4

    goto :goto_0

    :cond_5
    move-object p9, p7

    move-object p8, p6

    move-object p6, p4

    move-object p7, p5

    :goto_0
    move-wide p4, p2

    move-object p2, p0

    move-object p3, p1

    .line 40
    invoke-direct/range {p2 .. p9}, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;-><init>(Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method public static final synthetic access$getEventsFile$p(Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;->eventsFile:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final provideBatchDispatcher(Lcom/stripe/logwriter/LogWriter;Lcom/stripe/jvmcore/batchdispatcher/Collector;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Scheduler;)Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;
    .locals 1
    .param p2    # Lcom/stripe/jvmcore/batchdispatcher/Collector;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ClientLogger;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ClientLogger;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/jvmcore/batchdispatcher/Scheduler;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ClientLogger;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/logwriter/LogWriter;",
            "Lcom/stripe/jvmcore/batchdispatcher/Collector<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;",
            ">;",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;",
            ">;",
            "Lcom/stripe/jvmcore/batchdispatcher/Scheduler;",
            ")",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "logWriter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collector"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scheduler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    new-instance v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    invoke-direct {v0, p2, p3, p4, p1}, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;-><init>(Lcom/stripe/jvmcore/batchdispatcher/Collector;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Scheduler;Lcom/stripe/logwriter/LogWriter;)V

    return-object v0
.end method

.method public final provideClientLoggerObservabilityDataCollector(Lcom/stripe/logwriter/LogWriter;Ldagger/Lazy;Lcom/stripe/loggingmodels/LoggerExceptionListener;)Lcom/stripe/jvmcore/batchdispatcher/Collector;
    .locals 19
    .param p2    # Ldagger/Lazy;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ForApplication;
        .end annotation
    .end param
    .annotation runtime Lcom/stripe/jvmcore/dagger/ClientLogger;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/logwriter/LogWriter;",
            "Ldagger/Lazy<",
            "Ljava/io/File;",
            ">;",
            "Lcom/stripe/loggingmodels/LoggerExceptionListener;",
            ")",
            "Lcom/stripe/jvmcore/batchdispatcher/Collector<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v1, p2

    const-string v2, "logWriter"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "filesDir"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "loggerExceptionListener"

    move-object/from16 v5, p3

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    new-instance v2, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;

    .line 123
    new-instance v3, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileProtoSerializer;

    .line 124
    sget-object v4, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 125
    new-instance v7, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;

    const/16 v16, 0xff

    const/16 v17, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v7 .. v17}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TraceData;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v7, Lcom/squareup/wire/Message;

    .line 126
    new-instance v8, Lcom/stripe/jvmcore/clientlogger/dagger/WireLogger;

    iget-object v9, v0, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;->eventsFile:Ljava/lang/String;

    invoke-direct {v8, v6, v9}, Lcom/stripe/jvmcore/clientlogger/dagger/WireLogger;-><init>(Lcom/stripe/logwriter/LogWriter;Ljava/lang/String;)V

    check-cast v8, Lcom/stripe/logwriter/LogWriter;

    .line 123
    invoke-direct {v3, v4, v7, v8}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileProtoSerializer;-><init>(Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/Message;Lcom/stripe/logwriter/LogWriter;)V

    check-cast v3, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Serializer;

    move-object v4, v2

    move-object v2, v3

    .line 128
    new-instance v3, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;

    .line 129
    iget-object v7, v0, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;->overrideMaxBatchBytes:Ljava/lang/Long;

    .line 130
    iget-object v8, v0, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;->overrideMaxEntryBytes:Ljava/lang/Long;

    .line 131
    iget-object v9, v0, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;->overrideMaxFileBytes:Ljava/lang/Long;

    .line 132
    iget-object v10, v0, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;->overridePruneFileBytes:Ljava/lang/Long;

    .line 128
    invoke-direct {v3, v7, v8, v9, v10}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 134
    new-instance v7, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule$provideClientLoggerObservabilityDataCollector$1;

    invoke-direct {v7, v0}, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule$provideClientLoggerObservabilityDataCollector$1;-><init>(Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v7}, Lcom/stripe/jvmcore/dagger/LazyExtKt;->lazilyMap(Ldagger/Lazy;Lkotlin/jvm/functions/Function1;)Ldagger/Lazy;

    move-result-object v1

    move-object/from16 v18, v4

    move-object v4, v1

    move-object/from16 v1, v18

    .line 122
    invoke-direct/range {v1 .. v6}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;-><init>(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Serializer;Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;Ldagger/Lazy;Lcom/stripe/loggingmodels/LoggerExceptionListener;Lcom/stripe/logwriter/LogWriter;)V

    move-object v2, v1

    check-cast v2, Lcom/stripe/jvmcore/batchdispatcher/Collector;

    return-object v2
.end method

.method public final providesClientLoggerEventDispatcher(Ldagger/Lazy;Lkotlinx/coroutines/CoroutineDispatcher;Ljavax/inject/Provider;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;
    .locals 1
    .param p2    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation runtime Lcom/stripe/jvmcore/dagger/IO;
        .end annotation
    .end param
    .param p3    # Ljavax/inject/Provider;
        .annotation runtime Lcom/stripe/jvmcore/dagger/IsNetworkAvailable;
        .end annotation
    .end param
    .annotation runtime Lcom/stripe/jvmcore/dagger/ClientLogger;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;",
            ">;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/stripe/logwriter/LogWriter;",
            ")",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/api/gator/ProxyEventPb;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "api"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "io"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isNetworkAvailable"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance v0, Lcom/stripe/jvmcore/clientlogger/ClientLoggerEventDispatcher;

    invoke-direct {v0, p2, p1, p4, p3}, Lcom/stripe/jvmcore/clientlogger/ClientLoggerEventDispatcher;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Ldagger/Lazy;Lcom/stripe/logwriter/LogWriter;Ljavax/inject/Provider;)V

    check-cast v0, Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;

    return-object v0
.end method

.method public final providesClientLoggerObservabilityDataDispatcher(Ldagger/Lazy;Lkotlinx/coroutines/CoroutineDispatcher;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;
    .locals 1
    .param p2    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation runtime Lcom/stripe/jvmcore/dagger/IO;
        .end annotation
    .end param
    .param p3    # Ljavax/inject/Provider;
        .annotation runtime Lcom/stripe/jvmcore/dagger/IsNetworkAvailable;
        .end annotation
    .end param
    .annotation runtime Lcom/stripe/jvmcore/dagger/ClientLogger;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;",
            ">;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "api"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "io"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isNetworkAvailable"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    new-instance v0, Lcom/stripe/jvmcore/clientlogger/ClientLoggerObservabilityDataDispatcher;

    invoke-direct {v0, p2, p1, p3}, Lcom/stripe/jvmcore/clientlogger/ClientLoggerObservabilityDataDispatcher;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Ldagger/Lazy;Ljavax/inject/Provider;)V

    check-cast v0, Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;

    return-object v0
.end method

.method public final providesClientLoggerSchemaEventDispatcher(Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;Lkotlinx/coroutines/CoroutineDispatcher;Ljavax/inject/Provider;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;
    .locals 1
    .param p2    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation runtime Lcom/stripe/jvmcore/dagger/IO;
        .end annotation
    .end param
    .param p3    # Ljavax/inject/Provider;
        .annotation runtime Lcom/stripe/jvmcore/dagger/IsNetworkAvailable;
        .end annotation
    .end param
    .annotation runtime Lcom/stripe/jvmcore/dagger/ClientLogger;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/stripe/logwriter/LogWriter;",
            ")",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/api/gator/LogEvent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "api"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "io"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isNetworkAvailable"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/stripe/jvmcore/clientlogger/ClientLoggerSchemaEventDispatcher;

    invoke-direct {v0, p2, p1, p4, p3}, Lcom/stripe/jvmcore/clientlogger/ClientLoggerSchemaEventDispatcher;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;Lcom/stripe/logwriter/LogWriter;Ljavax/inject/Provider;)V

    check-cast v0, Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;

    return-object v0
.end method

.method public final providesClientLoggerTraceDispatcher(Ldagger/Lazy;Lkotlinx/coroutines/CoroutineDispatcher;Ljavax/inject/Provider;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;
    .locals 1
    .param p2    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation runtime Lcom/stripe/jvmcore/dagger/IO;
        .end annotation
    .end param
    .param p3    # Ljavax/inject/Provider;
        .annotation runtime Lcom/stripe/jvmcore/dagger/IsNetworkAvailable;
        .end annotation
    .end param
    .annotation runtime Lcom/stripe/jvmcore/dagger/ClientLogger;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;",
            ">;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/stripe/logwriter/LogWriter;",
            ")",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "api"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "io"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isNetworkAvailable"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    new-instance v0, Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher;

    invoke-direct {v0, p2, p1, p4, p3}, Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Ldagger/Lazy;Lcom/stripe/logwriter/LogWriter;Ljavax/inject/Provider;)V

    check-cast v0, Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;

    return-object v0
.end method
