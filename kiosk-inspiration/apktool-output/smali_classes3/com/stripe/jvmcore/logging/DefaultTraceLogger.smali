.class public final Lcom/stripe/jvmcore/logging/DefaultTraceLogger;
.super Ljava/lang/Object;
.source "DefaultTraceLogger.kt"

# interfaces
.implements Lcom/stripe/loggingmodels/TraceLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/logging/DefaultTraceLogger$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultTraceLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultTraceLogger.kt\ncom/stripe/jvmcore/logging/DefaultTraceLogger\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,364:1\n1549#2:365\n1620#2,3:366\n1549#2:369\n1620#2,3:370\n*S KotlinDebug\n*F\n+ 1 DefaultTraceLogger.kt\ncom/stripe/jvmcore/logging/DefaultTraceLogger\n*L\n227#1:365\n227#1:366,3\n255#1:369\n255#1:370,3\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u0000 92\u00020\u0001:\u00019B3\u0008\u0007\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0018\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0018\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J$\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b0\u001a2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J:\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001b2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001b2\u0014\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001aH\u0016J8\u0010!\u001a\u00020\u001d2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020#2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001b2\u0014\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001aH\u0016J8\u0010$\u001a\u00020\u001d2\u0006\u0010\u0011\u001a\u00020\u00122\u0010\u0010%\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010&2\u0014\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001aH\u0016J.\u0010$\u001a\u00020\u001d2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010%\u001a\u00020\u001b2\u0014\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001aH\u0016J\u0008\u0010\'\u001a\u00020\u001dH\u0016J\u0095\u0001\u0010(\u001a\u00020\u00122\u0006\u0010)\u001a\u00020\u001b2\u0006\u0010*\u001a\u00020\u001b2\u0010\u0010+\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010&2\u0008\u0010,\u001a\u0004\u0018\u00010-2\u0008\u0010.\u001a\u0004\u0018\u00010-2\u0008\u0010/\u001a\u0004\u0018\u00010-2\u0008\u00100\u001a\u0004\u0018\u0001012\u0008\u00102\u001a\u0004\u0018\u00010\u001b2\u0008\u00103\u001a\u0004\u0018\u00010\u001b2\u0014\u00104\u001a\u0010\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001a2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0016\u00a2\u0006\u0002\u00106J\u008b\u0001\u0010(\u001a\u00020\u00122\u0006\u0010)\u001a\u00020\u001b2\u0006\u0010*\u001a\u00020\u001b2\u0006\u0010+\u001a\u00020\u001b2\u0008\u0010,\u001a\u0004\u0018\u00010-2\u0008\u0010.\u001a\u0004\u0018\u00010-2\u0008\u0010/\u001a\u0004\u0018\u00010-2\u0008\u00100\u001a\u0004\u0018\u0001012\u0008\u00102\u001a\u0004\u0018\u00010\u001b2\u0008\u00103\u001a\u0004\u0018\u00010\u001b2\u0014\u00104\u001a\u0010\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001a2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0016\u00a2\u0006\u0002\u00107J\u0018\u00108\u001a\u00020\u001d2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \u000e*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006:"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/DefaultTraceLogger;",
        "Lcom/stripe/loggingmodels/TraceLogger;",
        "proxySpanPbBatchDispatcher",
        "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;",
        "Lcom/stripe/proto/api/gator/ProxySpanPb;",
        "observabilityDataBatchDispatcher",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;",
        "observabilityFeatureFlags",
        "Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;",
        "clock",
        "Lcom/stripe/time/Clock;",
        "(Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;Lcom/stripe/time/Clock;)V",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "kotlin.jvm.PlatformType",
        "buildLegacyTraceData",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData;",
        "trace",
        "Lcom/stripe/loggingmodels/Trace;",
        "traceResult",
        "Lcom/stripe/jvmcore/logging/TraceResult;",
        "buildObservabilityData",
        "buildProxySpanPb",
        "buildSearchIndices",
        "Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;",
        "buildTags",
        "",
        "",
        "endTraceWithErrorMessage",
        "",
        "message",
        "statusCode",
        "httpResponseHeaders",
        "endTraceWithException",
        "t",
        "",
        "endTraceWithSuccess",
        "response",
        "Lcom/squareup/wire/Message;",
        "init",
        "startTrace",
        "service",
        "method",
        "request",
        "rootId",
        "",
        "parentId",
        "currentId",
        "context",
        "Lcom/stripe/loggingmodels/Trace$Context;",
        "httpUrl",
        "httpMethod",
        "httpRequestHeaders",
        "tags",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/loggingmodels/Trace$Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/stripe/loggingmodels/Trace;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/loggingmodels/Trace$Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/stripe/loggingmodels/Trace;",
        "submitTrace",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/stripe/jvmcore/logging/DefaultTraceLogger$Companion;

.field public static final TAG_KEY_HTTP_METHOD:Ljava/lang/String; = "httpMethod"

.field public static final TAG_KEY_HTTP_REQUEST_HEADERS:Ljava/lang/String; = "httpRequestHeaders"

.field public static final TAG_KEY_HTTP_RESPONSE_HEADERS:Ljava/lang/String; = "httpResponseHeaders"

.field public static final TAG_KEY_HTTP_URL:Ljava/lang/String; = "httpUrl"


# instance fields
.field private final clock:Lcom/stripe/time/Clock;

.field private final moshi:Lcom/squareup/moshi/Moshi;

.field private final observabilityDataBatchDispatcher:Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;",
            ">;"
        }
    .end annotation
.end field

.field private final observabilityFeatureFlags:Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;

.field private final proxySpanPbBatchDispatcher:Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/jvmcore/logging/DefaultTraceLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/jvmcore/logging/DefaultTraceLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/jvmcore/logging/DefaultTraceLogger;->Companion:Lcom/stripe/jvmcore/logging/DefaultTraceLogger$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;Lcom/stripe/time/Clock;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;",
            ">;",
            "Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;",
            "Lcom/stripe/time/Clock;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "proxySpanPbBatchDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observabilityDataBatchDispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observabilityFeatureFlags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/DefaultTraceLogger;->proxySpanPbBatchDispatcher:Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    .line 33
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/DefaultTraceLogger;->observabilityDataBatchDispatcher:Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    .line 34
    iput-object p3, p0, Lcom/stripe/jvmcore/logging/DefaultTraceLogger;->observabilityFeatureFlags:Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;

    .line 35
    iput-object p4, p0, Lcom/stripe/jvmcore/logging/DefaultTraceLogger;->clock:Lcom/stripe/time/Clock;

    .line 45
    new-instance p1, Lcom/squareup/moshi/Moshi$Builder;

    invoke-direct {p1}, Lcom/squareup/moshi/Moshi$Builder;-><init>()V

    .line 46
    new-instance p2, Lcom/squareup/wire/WireJsonAdapterFactory;

    const/4 p3, 0x0

    const/4 p4, 0x3

    const/4 v0, 0x0

    invoke-direct {p2, v0, p3, p4, v0}, Lcom/squareup/wire/WireJsonAdapterFactory;-><init>(Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/squareup/moshi/JsonAdapter$Factory;

    invoke-virtual {p1, p2}, Lcom/squareup/moshi/Moshi$Builder;->add(Lcom/squareup/moshi/JsonAdapter$Factory;)Lcom/squareup/moshi/Moshi$Builder;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/squareup/moshi/Moshi$Builder;->build()Lcom/squareup/moshi/Moshi;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/jvmcore/logging/DefaultTraceLogger;->moshi:Lcom/squareup/moshi/Moshi;

    return-void
.end method

.method private final buildLegacyTraceData(Lcom/stripe/loggingmodels/Trace;Lcom/stripe/jvmcore/logging/TraceResult;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData;
    .locals 5

    .line 249
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;-><init>()V

    .line 250
    invoke-virtual {p1}, Lcom/stripe/loggingmodels/Trace;->getStartTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->start_time_ms(J)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/stripe/jvmcore/logging/DefaultTraceLogger;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v1}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/stripe/loggingmodels/Trace;->getStartTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->total_time_ms(J)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;

    move-result-object v0

    .line 252
    invoke-virtual {p1}, Lcom/stripe/loggingmodels/Trace;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->service(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;

    move-result-object v0

    .line 253
    invoke-virtual {p1}, Lcom/stripe/loggingmodels/Trace;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->method(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;

    move-result-object v0

    .line 254
    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/logging/DefaultTraceLogger;->buildTags(Lcom/stripe/loggingmodels/Trace;Lcom/stripe/jvmcore/logging/TraceResult;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->tags(Ljava/util/Map;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;

    move-result-object v0

    .line 255
    invoke-virtual {p1}, Lcom/stripe/loggingmodels/Trace;->spanPoints()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 369
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 370
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 371
    check-cast v3, Lcom/stripe/loggingmodels/SpanPoint;

    .line 255
    invoke-interface {v3}, Lcom/stripe/loggingmodels/SpanPoint;->toLegacyTraceProto()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb;

    move-result-object v3

    .line 371
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 372
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 255
    invoke-virtual {v0, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->traces(Ljava/util/List;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;

    move-result-object v0

    .line 256
    invoke-virtual {p1}, Lcom/stripe/loggingmodels/Trace;->getRequest()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->request(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;

    move-result-object v0

    .line 257
    invoke-virtual {p2}, Lcom/stripe/jvmcore/logging/TraceResult;->getResponse()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->response(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;

    move-result-object v0

    .line 259
    invoke-virtual {p1}, Lcom/stripe/loggingmodels/Trace;->getRootId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 260
    invoke-virtual {v0, v1, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->root_span_id(J)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;

    .line 262
    :cond_1
    invoke-virtual {p1}, Lcom/stripe/loggingmodels/Trace;->getParentId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 263
    invoke-virtual {v0, v1, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->parent_span_id(J)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;

    .line 265
    :cond_2
    invoke-virtual {p1}, Lcom/stripe/loggingmodels/Trace;->getCurrentId()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 266
    invoke-virtual {v0, v1, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->current_span_id(J)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;

    .line 268
    :cond_3
    invoke-virtual {p2}, Lcom/stripe/jvmcore/logging/TraceResult;->getException()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 269
    invoke-virtual {v0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->exception(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;

    .line 271
    :cond_4
    invoke-virtual {p2}, Lcom/stripe/jvmcore/logging/TraceResult;->getStatusCode()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 272
    invoke-virtual {v0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->status_code(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;

    .line 275
    :cond_5
    invoke-virtual {v0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData;

    move-result-object p1

    return-object p1
.end method

.method private final buildObservabilityData(Lcom/stripe/loggingmodels/Trace;Lcom/stripe/jvmcore/logging/TraceResult;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;
    .locals 11

    .line 237
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;

    .line 238
    iget-object v1, p0, Lcom/stripe/jvmcore/logging/DefaultTraceLogger;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v1}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v1

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 237
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;-><init>(JLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 240
    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/logging/DefaultTraceLogger;->buildLegacyTraceData(Lcom/stripe/loggingmodels/Trace;Lcom/stripe/jvmcore/logging/TraceResult;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData;

    move-result-object v6

    .line 241
    invoke-direct {p0, p1}, Lcom/stripe/jvmcore/logging/DefaultTraceLogger;->buildSearchIndices(Lcom/stripe/loggingmodels/Trace;)Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;

    move-result-object v2

    move-object v1, v0

    .line 236
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;

    const/16 v9, 0xdc

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TraceData;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final buildProxySpanPb(Lcom/stripe/loggingmodels/Trace;Lcom/stripe/jvmcore/logging/TraceResult;)Lcom/stripe/proto/api/gator/ProxySpanPb;
    .locals 42

    .line 204
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/loggingmodels/Trace;->getContext()Lcom/stripe/loggingmodels/Trace$Context;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_3

    .line 206
    invoke-virtual {v0}, Lcom/stripe/loggingmodels/Trace$Context;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v2

    .line 207
    :goto_0
    invoke-virtual {v0}, Lcom/stripe/loggingmodels/Trace$Context;->getSessionId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, v2

    .line 208
    :goto_1
    invoke-virtual {v0}, Lcom/stripe/loggingmodels/Trace$Context;->getActionId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v4, v1

    goto :goto_2

    :cond_2
    move-object v4, v0

    .line 205
    :goto_2
    new-instance v3, Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;

    const/16 v9, 0x18

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    move-object/from16 v30, v3

    .line 214
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/loggingmodels/Trace;->getStartTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    .line 215
    iget-object v2, v0, Lcom/stripe/jvmcore/logging/DefaultTraceLogger;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v2}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcom/stripe/loggingmodels/Trace;->getStartTimeMillis()J

    move-result-wide v4

    sub-long v18, v2, v4

    .line 216
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/loggingmodels/Trace;->getService()Ljava/lang/String;

    move-result-object v20

    .line 217
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/loggingmodels/Trace;->getMethod()Ljava/lang/String;

    move-result-object v21

    .line 218
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/loggingmodels/Trace;->getRequest()Ljava/lang/String;

    move-result-object v22

    .line 219
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/loggingmodels/Trace;->getRootId()Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_4

    :cond_4
    move-wide v5, v3

    .line 220
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/loggingmodels/Trace;->getParentId()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_5

    :cond_5
    move-wide v7, v3

    .line 221
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/loggingmodels/Trace;->getCurrentId()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :cond_6
    move-wide v9, v3

    .line 223
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/jvmcore/logging/TraceResult;->getResponse()Ljava/lang/String;

    move-result-object v24

    .line 224
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/jvmcore/logging/TraceResult;->getException()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move-object/from16 v26, v1

    goto :goto_6

    :cond_7
    move-object/from16 v26, v2

    .line 225
    :goto_6
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/jvmcore/logging/TraceResult;->getStatusCode()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    move-object/from16 v27, v1

    goto :goto_7

    :cond_8
    move-object/from16 v27, v2

    .line 226
    :goto_7
    invoke-direct/range {p0 .. p2}, Lcom/stripe/jvmcore/logging/DefaultTraceLogger;->buildTags(Lcom/stripe/loggingmodels/Trace;Lcom/stripe/jvmcore/logging/TraceResult;)Ljava/util/Map;

    move-result-object v29

    .line 227
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/loggingmodels/Trace;->spanPoints()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 365
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 366
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 367
    check-cast v3, Lcom/stripe/loggingmodels/SpanPoint;

    .line 227
    invoke-interface {v3}, Lcom/stripe/loggingmodels/SpanPoint;->toGatorProto()Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;

    move-result-object v3

    .line 367
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 368
    :cond_9
    move-object/from16 v32, v2

    check-cast v32, Ljava/util/List;

    .line 213
    new-instance v4, Lcom/stripe/proto/api/gator/ReportedSpanPb;

    const v34, 0xa4a0f8

    const/16 v35, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    const/16 v31, 0x0

    const/16 v33, 0x0

    invoke-direct/range {v4 .. v35}, Lcom/stripe/proto/api/gator/ReportedSpanPb;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/trace/RequestInfoPb;Lcom/stripe/proto/model/common/Livemode;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;Ljava/lang/String;Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/util/Map;Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;Ljava/util/List;Ljava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 212
    new-instance v33, Lcom/stripe/proto/api/gator/ProxySpanPb;

    const/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x37

    const/16 v41, 0x0

    move-object/from16 v37, v4

    invoke-direct/range {v33 .. v41}, Lcom/stripe/proto/api/gator/ProxySpanPb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/gator/ReportedSpanPb;Lcom/stripe/proto/api/gator/ClientSummaryPb;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v33
.end method

.method private final buildSearchIndices(Lcom/stripe/loggingmodels/Trace;)Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;
    .locals 17

    .line 279
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;-><init>()V

    .line 281
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/loggingmodels/Trace;->getContext()Lcom/stripe/loggingmodels/Trace$Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/loggingmodels/Trace$Context;->getActionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 282
    invoke-virtual {v0, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->action_id(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;

    .line 284
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/loggingmodels/Trace;->getContext()Lcom/stripe/loggingmodels/Trace$Context;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/loggingmodels/Trace$Context;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 285
    invoke-virtual {v0, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->serial_number(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;

    .line 287
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/loggingmodels/Trace;->getContext()Lcom/stripe/loggingmodels/Trace$Context;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/loggingmodels/Trace$Context;->getSessionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 288
    invoke-virtual {v0, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->session_id(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;

    .line 290
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/loggingmodels/Trace;->getRootId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 291
    invoke-virtual {v0, v1, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->trace_id(J)Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;

    .line 293
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/loggingmodels/Trace;->getParentId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 294
    invoke-virtual {v0, v1, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->parent_span_id(J)Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;

    .line 296
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/loggingmodels/Trace;->getCurrentId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 297
    invoke-virtual {v0, v1, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->current_span_id(J)Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;

    .line 300
    :cond_5
    invoke-virtual {v0}, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;

    move-result-object v0

    .line 302
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;

    const/16 v15, 0x3ff

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v1 .. v16}, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    :cond_6
    return-object v0
.end method

.method private final buildTags(Lcom/stripe/loggingmodels/Trace;Lcom/stripe/jvmcore/logging/TraceResult;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/loggingmodels/Trace;",
            "Lcom/stripe/jvmcore/logging/TraceResult;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 313
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 315
    invoke-virtual {p1}, Lcom/stripe/loggingmodels/Trace;->getHttpUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 316
    const-string v2, "httpUrl"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 318
    :cond_0
    invoke-virtual {p1}, Lcom/stripe/loggingmodels/Trace;->getHttpMethod()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 319
    const-string v2, "httpMethod"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 321
    :cond_1
    invoke-virtual {p1}, Lcom/stripe/loggingmodels/Trace;->getHttpRequestHeaders()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 322
    const-string v2, "httpRequestHeaders"

    invoke-static {v1}, Lcom/stripe/jvmcore/logging/DefaultTraceLoggerKt;->toKeyValuePairsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 324
    :cond_2
    invoke-virtual {p2}, Lcom/stripe/jvmcore/logging/TraceResult;->getHttpResponseHeaders()Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 325
    const-string v1, "httpResponseHeaders"

    invoke-static {p2}, Lcom/stripe/jvmcore/logging/DefaultTraceLoggerKt;->toKeyValuePairsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_3
    invoke-virtual {p1}, Lcom/stripe/loggingmodels/Trace;->getTags()Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private final submitTrace(Lcom/stripe/loggingmodels/Trace;Lcom/stripe/jvmcore/logging/TraceResult;)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/DefaultTraceLogger;->observabilityFeatureFlags:Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;

    invoke-interface {v0}, Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;->getEnableTracesToObservabilityDataEndpoint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/DefaultTraceLogger;->observabilityDataBatchDispatcher:Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/logging/DefaultTraceLogger;->buildObservabilityData(Lcom/stripe/loggingmodels/Trace;Lcom/stripe/jvmcore/logging/TraceResult;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;

    move-result-object p1

    .line 184
    invoke-virtual {v0, p1}, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->add(Ljava/lang/Object;)V

    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/DefaultTraceLogger;->proxySpanPbBatchDispatcher:Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    .line 192
    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/logging/DefaultTraceLogger;->buildProxySpanPb(Lcom/stripe/loggingmodels/Trace;Lcom/stripe/jvmcore/logging/TraceResult;)Lcom/stripe/proto/api/gator/ProxySpanPb;

    move-result-object p1

    .line 191
    invoke-virtual {v0, p1}, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->add(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public endTraceWithErrorMessage(Lcom/stripe/loggingmodels/Trace;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/loggingmodels/Trace;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "trace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    new-instance v0, Lcom/stripe/jvmcore/logging/TraceResult;

    .line 171
    const-string v1, ""

    .line 170
    invoke-direct {v0, v1, p2, p3, p4}, Lcom/stripe/jvmcore/logging/TraceResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 168
    invoke-direct {p0, p1, v0}, Lcom/stripe/jvmcore/logging/DefaultTraceLogger;->submitTrace(Lcom/stripe/loggingmodels/Trace;Lcom/stripe/jvmcore/logging/TraceResult;)V

    return-void
.end method

.method public endTraceWithException(Lcom/stripe/loggingmodels/Trace;Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/loggingmodels/Trace;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "trace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "t"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-static {p2}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 151
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/jvmcore/logging/DefaultTraceLogger;->endTraceWithErrorMessage(Lcom/stripe/loggingmodels/Trace;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public endTraceWithSuccess(Lcom/stripe/loggingmodels/Trace;Lcom/squareup/wire/Message;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/loggingmodels/Trace;",
            "Lcom/squareup/wire/Message<",
            "**>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "trace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 128
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/DefaultTraceLogger;->moshi:Lcom/squareup/moshi/Moshi;

    const-string v1, "moshi"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lcom/stripe/jvmcore/logging/DefaultTraceLoggerKt;->toTraceJson(Lcom/squareup/wire/Message;Lcom/squareup/moshi/Moshi;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    :cond_0
    const-string p2, ""

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/jvmcore/logging/DefaultTraceLogger;->endTraceWithSuccess(Lcom/stripe/loggingmodels/Trace;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public endTraceWithSuccess(Lcom/stripe/loggingmodels/Trace;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/loggingmodels/Trace;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "trace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    new-instance v0, Lcom/stripe/jvmcore/logging/TraceResult;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, v1, p3}, Lcom/stripe/jvmcore/logging/TraceResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 131
    invoke-direct {p0, p1, v0}, Lcom/stripe/jvmcore/logging/DefaultTraceLogger;->submitTrace(Lcom/stripe/loggingmodels/Trace;Lcom/stripe/jvmcore/logging/TraceResult;)V

    return-void
.end method

.method public init()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/DefaultTraceLogger;->proxySpanPbBatchDispatcher:Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->init()V

    .line 54
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/DefaultTraceLogger;->observabilityDataBatchDispatcher:Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->init()V

    return-void
.end method

.method public startTrace(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/loggingmodels/Trace$Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/stripe/loggingmodels/Trace;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/squareup/wire/Message<",
            "**>;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lcom/stripe/loggingmodels/Trace$Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/loggingmodels/Trace;"
        }
    .end annotation

    move-object/from16 v0, p3

    const-string v1, "service"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "method"

    move-object/from16 v4, p2

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "tags"

    move-object/from16 v13, p11

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 80
    iget-object v1, p0, Lcom/stripe/jvmcore/logging/DefaultTraceLogger;->moshi:Lcom/squareup/moshi/Moshi;

    const-string v2, "moshi"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/stripe/jvmcore/logging/DefaultTraceLoggerKt;->toTraceJson(Lcom/squareup/wire/Message;Lcom/squareup/moshi/Moshi;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    move-object v2, p0

    move-object v3, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object v5, v0

    .line 77
    invoke-virtual/range {v2 .. v13}, Lcom/stripe/jvmcore/logging/DefaultTraceLogger;->startTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/loggingmodels/Trace$Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/stripe/loggingmodels/Trace;

    move-result-object p1

    return-object p1
.end method

.method public startTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/loggingmodels/Trace$Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/stripe/loggingmodels/Trace;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lcom/stripe/loggingmodels/Trace$Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/loggingmodels/Trace;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "service"

    move-object/from16 v5, p1

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "method"

    move-object/from16 v6, p2

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "request"

    move-object/from16 v7, p3

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "tags"

    move-object/from16 v2, p11

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    new-instance v2, Lcom/stripe/loggingmodels/Trace;

    .line 105
    iget-object v1, v0, Lcom/stripe/jvmcore/logging/DefaultTraceLogger;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v1}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v3

    .line 116
    iget-object v15, v0, Lcom/stripe/jvmcore/logging/DefaultTraceLogger;->clock:Lcom/stripe/time/Clock;

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v16, p11

    .line 104
    invoke-direct/range {v2 .. v16}, Lcom/stripe/loggingmodels/Trace;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/loggingmodels/Trace$Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/stripe/time/Clock;Ljava/util/Map;)V

    return-object v2
.end method
