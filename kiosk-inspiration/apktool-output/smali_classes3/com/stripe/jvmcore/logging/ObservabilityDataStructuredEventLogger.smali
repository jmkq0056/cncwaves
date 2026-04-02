.class public final Lcom/stripe/jvmcore/logging/ObservabilityDataStructuredEventLogger;
.super Ljava/lang/Object;
.source "ObservabilityDataStructuredEventLogger.kt"

# interfaces
.implements Lcom/stripe/loggingmodels/StructuredEventLogger;
.implements Lcom/stripe/loggingmodels/StructuredEventLoggerInitializer;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B#\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J4\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00160\u0015H\u0016J\u0010\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u0005H\u0002R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/ObservabilityDataStructuredEventLogger;",
        "Lcom/stripe/loggingmodels/StructuredEventLogger;",
        "Lcom/stripe/loggingmodels/StructuredEventLoggerInitializer;",
        "observabilityDataBatchDispatcher",
        "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;",
        "clock",
        "Lcom/stripe/time/Clock;",
        "baseSearchIndicesProvider",
        "Lcom/stripe/jvmcore/logging/BaseSearchIndicesProvider;",
        "(Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/BaseSearchIndicesProvider;)V",
        "init",
        "",
        "log",
        "event",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;",
        "loggerName",
        "",
        "level",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;",
        "searchIndicesReducer",
        "Lkotlin/Function1;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;",
        "logStructuredEvent",
        "payload",
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
.field private final baseSearchIndicesProvider:Lcom/stripe/jvmcore/logging/BaseSearchIndicesProvider;

.field private final clock:Lcom/stripe/time/Clock;

.field private final observabilityDataBatchDispatcher:Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/BaseSearchIndicesProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;",
            ">;",
            "Lcom/stripe/time/Clock;",
            "Lcom/stripe/jvmcore/logging/BaseSearchIndicesProvider;",
            ")V"
        }
    .end annotation

    const-string v0, "observabilityDataBatchDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseSearchIndicesProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/ObservabilityDataStructuredEventLogger;->observabilityDataBatchDispatcher:Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    .line 18
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/ObservabilityDataStructuredEventLogger;->clock:Lcom/stripe/time/Clock;

    .line 19
    iput-object p3, p0, Lcom/stripe/jvmcore/logging/ObservabilityDataStructuredEventLogger;->baseSearchIndicesProvider:Lcom/stripe/jvmcore/logging/BaseSearchIndicesProvider;

    return-void
.end method

.method private final logStructuredEvent(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;)V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/ObservabilityDataStructuredEventLogger;->observabilityDataBatchDispatcher:Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    new-instance v1, Lcom/stripe/jvmcore/logging/ObservabilityDataStructuredEventLogger$logStructuredEvent$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/stripe/jvmcore/logging/ObservabilityDataStructuredEventLogger$logStructuredEvent$1;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->add(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/ObservabilityDataStructuredEventLogger;->observabilityDataBatchDispatcher:Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->init()V

    return-void
.end method

.method public log(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;Lkotlin/jvm/functions/Function1;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;",
            ">;)V"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchIndicesReducer"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/ObservabilityDataStructuredEventLogger;->baseSearchIndicesProvider:Lcom/stripe/jvmcore/logging/BaseSearchIndicesProvider;

    invoke-interface {v0}, Lcom/stripe/jvmcore/logging/BaseSearchIndicesProvider;->getBaseSearchIndices()Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;

    move-result-object v0

    invoke-interface {p4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    move-object v2, p4

    check-cast v2, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;

    .line 34
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;

    .line 35
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;

    .line 36
    iget-object p4, p0, Lcom/stripe/jvmcore/logging/ObservabilityDataStructuredEventLogger;->clock:Lcom/stripe/time/Clock;

    invoke-interface {p4}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v4

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v7, p2

    move-object v6, p3

    move-object v3, v1

    .line 35
    invoke-direct/range {v3 .. v10}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;-><init>(JLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v9, 0xbc

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p1

    .line 34
    invoke-direct/range {v0 .. v10}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TraceData;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    invoke-direct {p0, v0}, Lcom/stripe/jvmcore/logging/ObservabilityDataStructuredEventLogger;->logStructuredEvent(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;)V

    return-void
.end method
