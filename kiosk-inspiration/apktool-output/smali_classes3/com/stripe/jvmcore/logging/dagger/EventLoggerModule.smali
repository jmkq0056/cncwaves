.class public final Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;
.super Ljava/lang/Object;
.source "EventLoggerModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule$WireEventLogger;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001)BI\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\nJV\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u000e\u0008\u0001\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00102\u000e\u0008\u0001\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00122\u000e\u0008\u0001\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00122\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J.\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00102\u0006\u0010\u0018\u001a\u00020\u00192\u000e\u0008\u0001\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u001e\u001a\u00020\u001fH\u0007JH\u0010 \u001a\u00020!2\u000e\u0008\u0001\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0008\u0008\u0001\u0010\'\u001a\u00020(2\u0006\u0010\u0018\u001a\u00020\u0019H\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u0012\u0010\t\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000b\u00a8\u0006*"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;",
        "",
        "eventsFile",
        "",
        "legacyEventsFile",
        "overrideMaxBatchBytes",
        "",
        "overrideMaxEntryBytes",
        "overrideMaxFileBytes",
        "overridePruneFileBytes",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "provideBatchDispatcher",
        "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;",
        "Lcom/stripe/proto/api/gator/LogEvent;",
        "collector",
        "Lcom/stripe/jvmcore/batchdispatcher/Collector;",
        "gator",
        "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;",
        "clientLogger",
        "scheduler",
        "Lcom/stripe/jvmcore/batchdispatcher/Scheduler;",
        "observabilityFeatureFlags",
        "Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "provideCollector",
        "filesDir",
        "Ldagger/Lazy;",
        "Ljava/io/File;",
        "loggerExceptionListener",
        "Lcom/stripe/loggingmodels/LoggerExceptionListener;",
        "provideEventLogger",
        "Lcom/stripe/jvmcore/logging/EventLogger;",
        "batchDispatcher",
        "clock",
        "Lcom/stripe/time/Clock;",
        "protoFlattener",
        "Lcom/stripe/jvmcore/proto/ProtoFlattener;",
        "io",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "WireEventLogger",
        "logging"
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
.field private final eventsFile:Ljava/lang/String;

.field private final legacyEventsFile:Ljava/lang/String;

.field private final overrideMaxBatchBytes:Ljava/lang/Long;

.field private final overrideMaxEntryBytes:Ljava/lang/Long;

.field private final overrideMaxFileBytes:Ljava/lang/Long;

.field private final overridePruneFileBytes:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 9

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1

    const-string v0, "eventsFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legacyEventsFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;->eventsFile:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;->legacyEventsFile:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;->overrideMaxBatchBytes:Ljava/lang/Long;

    .line 51
    iput-object p4, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;->overrideMaxEntryBytes:Ljava/lang/Long;

    .line 52
    iput-object p5, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;->overrideMaxFileBytes:Ljava/lang/Long;

    .line 53
    iput-object p6, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;->overridePruneFileBytes:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 44
    const-string p1, "events_json_wire"

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    .line 47
    const-string p2, "events_wire"

    :cond_1
    and-int/lit8 p8, p7, 0x4

    const/4 v0, 0x0

    if-eqz p8, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    move-object p8, v0

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    goto :goto_0

    :cond_5
    move-object p8, p6

    move-object p7, p5

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 43
    :goto_0
    invoke-direct/range {p2 .. p8}, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method public static final synthetic access$getEventsFile$p(Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;->eventsFile:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getLegacyEventsFile$p(Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;->legacyEventsFile:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final provideBatchDispatcher(Lcom/stripe/jvmcore/batchdispatcher/Collector;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Scheduler;Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;
    .locals 2
    .param p1    # Lcom/stripe/jvmcore/batchdispatcher/Collector;
        .annotation runtime Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule$WireEventLogger;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Gator;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ClientLogger;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/batchdispatcher/Collector<",
            "Lcom/stripe/proto/api/gator/LogEvent;",
            ">;",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/api/gator/LogEvent;",
            ">;",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/api/gator/LogEvent;",
            ">;",
            "Lcom/stripe/jvmcore/batchdispatcher/Scheduler;",
            "Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;",
            "Lcom/stripe/logwriter/LogWriter;",
            ")",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/api/gator/LogEvent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "collector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientLogger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scheduler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observabilityFeatureFlags"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    .line 77
    new-instance v1, Lcom/stripe/jvmcore/logging/CompositeDispatcher;

    invoke-direct {v1, p3, p2, p5}, Lcom/stripe/jvmcore/logging/CompositeDispatcher;-><init>(Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;)V

    check-cast v1, Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;

    .line 75
    invoke-direct {v0, p1, v1, p4, p6}, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;-><init>(Lcom/stripe/jvmcore/batchdispatcher/Collector;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Scheduler;Lcom/stripe/logwriter/LogWriter;)V

    return-object v0
.end method

.method public final provideCollector(Lcom/stripe/logwriter/LogWriter;Ldagger/Lazy;Lcom/stripe/loggingmodels/LoggerExceptionListener;)Lcom/stripe/jvmcore/batchdispatcher/Collector;
    .locals 9
    .param p2    # Ldagger/Lazy;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ForApplication;
        .end annotation
    .end param
    .annotation runtime Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule$WireEventLogger;
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
            "Lcom/stripe/proto/api/gator/LogEvent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "logWriter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filesDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerExceptionListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    new-instance v1, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;

    .line 99
    new-instance v0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileProtoSerializer;

    .line 100
    sget-object v2, Lcom/stripe/proto/api/gator/LogEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 101
    new-instance v3, Lcom/stripe/proto/api/gator/LogEvent;

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/stripe/proto/api/gator/LogEvent;-><init>(Lcom/stripe/proto/model/common/InstantPb;Ljava/util/Map;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v3, Lcom/squareup/wire/Message;

    .line 102
    new-instance v4, Lcom/stripe/jvmcore/logging/dagger/WireLogger;

    iget-object v5, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;->eventsFile:Ljava/lang/String;

    invoke-direct {v4, p1, v5}, Lcom/stripe/jvmcore/logging/dagger/WireLogger;-><init>(Lcom/stripe/logwriter/LogWriter;Ljava/lang/String;)V

    check-cast v4, Lcom/stripe/logwriter/LogWriter;

    .line 99
    invoke-direct {v0, v2, v3, v4}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileProtoSerializer;-><init>(Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/Message;Lcom/stripe/logwriter/LogWriter;)V

    move-object v2, v0

    check-cast v2, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Serializer;

    .line 104
    new-instance v3, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;

    .line 105
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;->overrideMaxBatchBytes:Ljava/lang/Long;

    .line 106
    iget-object v4, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;->overrideMaxEntryBytes:Ljava/lang/Long;

    .line 107
    iget-object v5, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;->overrideMaxFileBytes:Ljava/lang/Long;

    .line 108
    iget-object v6, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;->overridePruneFileBytes:Ljava/lang/Long;

    .line 104
    invoke-direct {v3, v0, v4, v5, v6}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 110
    new-instance v0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule$provideCollector$1;

    invoke-direct {v0, p0}, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule$provideCollector$1;-><init>(Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p2, v0}, Lcom/stripe/jvmcore/dagger/LazyExtKt;->lazilyMap(Ldagger/Lazy;Lkotlin/jvm/functions/Function1;)Ldagger/Lazy;

    move-result-object v4

    move-object v6, p1

    move-object v5, p3

    .line 98
    invoke-direct/range {v1 .. v6}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;-><init>(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Serializer;Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;Ldagger/Lazy;Lcom/stripe/loggingmodels/LoggerExceptionListener;Lcom/stripe/logwriter/LogWriter;)V

    check-cast v1, Lcom/stripe/jvmcore/batchdispatcher/Collector;

    return-object v1
.end method

.method public final provideEventLogger(Ldagger/Lazy;Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/proto/ProtoFlattener;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/logging/EventLogger;
    .locals 11
    .param p1    # Ldagger/Lazy;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ForApplication;
        .end annotation
    .end param
    .param p5    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation runtime Lcom/stripe/jvmcore/dagger/IO;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Ljava/io/File;",
            ">;",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/api/gator/LogEvent;",
            ">;",
            "Lcom/stripe/time/Clock;",
            "Lcom/stripe/jvmcore/proto/ProtoFlattener;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/stripe/logwriter/LogWriter;",
            ")",
            "Lcom/stripe/jvmcore/logging/EventLogger;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    move-object/from16 v0, p5

    const-string v1, "filesDir"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "batchDispatcher"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "clock"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "protoFlattener"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "io"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "logWriter"

    move-object/from16 v10, p6

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    new-instance v2, Lcom/stripe/jvmcore/logging/EventLogger;

    .line 130
    new-instance v1, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule$provideEventLogger$1;

    invoke-direct {v1, p0}, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule$provideEventLogger$1;-><init>(Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v1}, Lcom/stripe/jvmcore/dagger/LazyExtKt;->lazilyMap(Ldagger/Lazy;Lkotlin/jvm/functions/Function1;)Ldagger/Lazy;

    move-result-object v6

    .line 131
    iget-object p1, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;->overrideMaxEntryBytes:Ljava/lang/Long;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    const-wide/32 v3, 0x100000

    :goto_0
    move-wide v7, v3

    .line 132
    move-object p1, v0

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v9

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 126
    invoke-direct/range {v2 .. v10}, Lcom/stripe/jvmcore/logging/EventLogger;-><init>(Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/proto/ProtoFlattener;Ldagger/Lazy;JLkotlinx/coroutines/CoroutineScope;Lcom/stripe/logwriter/LogWriter;)V

    return-object v2
.end method
