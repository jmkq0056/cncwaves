.class public final Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;
.super Ljava/lang/Object;
.source "TraceLoggerModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B?\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\tJ.\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u000e\u0008\u0001\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u0014H\u0007R\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\nR\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\nR\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\nR\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;",
        "",
        "tracesFile",
        "",
        "overrideMaxBatchBytes",
        "",
        "overrideMaxEntryBytes",
        "overrideMaxFileBytes",
        "overridePruneFileBytes",
        "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "provideCollector",
        "Lcom/stripe/jvmcore/batchdispatcher/Collector;",
        "Lcom/stripe/proto/api/gator/ProxySpanPb;",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "filesDir",
        "Ldagger/Lazy;",
        "Ljava/io/File;",
        "loggerExceptionListener",
        "Lcom/stripe/loggingmodels/LoggerExceptionListener;",
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
.field private final overrideMaxBatchBytes:Ljava/lang/Long;

.field private final overrideMaxEntryBytes:Ljava/lang/Long;

.field private final overrideMaxFileBytes:Ljava/lang/Long;

.field private final overridePruneFileBytes:Ljava/lang/Long;

.field private final tracesFile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1

    const-string v0, "tracesFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;->tracesFile:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;->overrideMaxBatchBytes:Ljava/lang/Long;

    .line 108
    iput-object p3, p0, Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;->overrideMaxEntryBytes:Ljava/lang/Long;

    .line 109
    iput-object p4, p0, Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;->overrideMaxFileBytes:Ljava/lang/Long;

    .line 110
    iput-object p5, p0, Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;->overridePruneFileBytes:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 104
    const-string p1, "traces_wire"

    :cond_0
    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    move-object p7, v0

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    goto :goto_0

    :cond_4
    move-object p7, p5

    move-object p6, p4

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 103
    :goto_0
    invoke-direct/range {p2 .. p7}, Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method public static final synthetic access$getTracesFile$p(Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;)Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;->tracesFile:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final provideCollector(Lcom/stripe/logwriter/LogWriter;Ldagger/Lazy;Lcom/stripe/loggingmodels/LoggerExceptionListener;)Lcom/stripe/jvmcore/batchdispatcher/Collector;
    .locals 12
    .param p2    # Ldagger/Lazy;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ForApplication;
        .end annotation
    .end param
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
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
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

    .line 122
    new-instance v1, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;

    .line 123
    new-instance v0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileProtoSerializer;

    .line 124
    sget-object v2, Lcom/stripe/proto/api/gator/ProxySpanPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 125
    new-instance v3, Lcom/stripe/proto/api/gator/ProxySpanPb;

    const/16 v10, 0x3f

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/stripe/proto/api/gator/ProxySpanPb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/gator/ReportedSpanPb;Lcom/stripe/proto/api/gator/ClientSummaryPb;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v3, Lcom/squareup/wire/Message;

    .line 126
    new-instance v4, Lcom/stripe/jvmcore/logging/dagger/WireLogger;

    iget-object v5, p0, Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;->tracesFile:Ljava/lang/String;

    invoke-direct {v4, p1, v5}, Lcom/stripe/jvmcore/logging/dagger/WireLogger;-><init>(Lcom/stripe/logwriter/LogWriter;Ljava/lang/String;)V

    check-cast v4, Lcom/stripe/logwriter/LogWriter;

    .line 123
    invoke-direct {v0, v2, v3, v4}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileProtoSerializer;-><init>(Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/Message;Lcom/stripe/logwriter/LogWriter;)V

    move-object v2, v0

    check-cast v2, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Serializer;

    .line 128
    new-instance v3, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;

    .line 129
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;->overrideMaxBatchBytes:Ljava/lang/Long;

    .line 130
    iget-object v4, p0, Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;->overrideMaxEntryBytes:Ljava/lang/Long;

    .line 131
    iget-object v5, p0, Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;->overrideMaxFileBytes:Ljava/lang/Long;

    .line 132
    iget-object v6, p0, Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;->overridePruneFileBytes:Ljava/lang/Long;

    .line 128
    invoke-direct {v3, v0, v4, v5, v6}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 134
    new-instance v0, Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule$provideCollector$1;

    invoke-direct {v0, p0}, Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule$provideCollector$1;-><init>(Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p2, v0}, Lcom/stripe/jvmcore/dagger/LazyExtKt;->lazilyMap(Ldagger/Lazy;Lkotlin/jvm/functions/Function1;)Ldagger/Lazy;

    move-result-object v4

    move-object v6, p1

    move-object v5, p3

    .line 122
    invoke-direct/range {v1 .. v6}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;-><init>(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Serializer;Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;Ldagger/Lazy;Lcom/stripe/loggingmodels/LoggerExceptionListener;Lcom/stripe/logwriter/LogWriter;)V

    check-cast v1, Lcom/stripe/jvmcore/batchdispatcher/Collector;

    return-object v1
.end method
