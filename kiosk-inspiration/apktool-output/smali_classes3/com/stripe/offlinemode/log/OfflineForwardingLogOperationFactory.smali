.class public final Lcom/stripe/offlinemode/log/OfflineForwardingLogOperationFactory;
.super Ljava/lang/Object;
.source "OfflineForwardingLogOperationFactory.kt"

# interfaces
.implements Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/offlinemode/log/OfflineForwardingLogOperationFactory$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory<",
        "Lcom/stripe/offlinemode/log/OfflineTrace;",
        "Lcom/stripe/offlinemode/log/OfflineForwardingLogOperation;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOfflineForwardingLogOperationFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OfflineForwardingLogOperationFactory.kt\ncom/stripe/offlinemode/log/OfflineForwardingLogOperationFactory\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,56:1\n1#2:57\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \r2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\rB\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0002H\u0016R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/offlinemode/log/OfflineForwardingLogOperationFactory;",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory;",
        "Lcom/stripe/offlinemode/log/OfflineTrace;",
        "Lcom/stripe/offlinemode/log/OfflineForwardingLogOperation;",
        "traceLogger",
        "Lcom/stripe/loggingmodels/TraceLogger;",
        "offlineTraceManager",
        "Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;",
        "gson",
        "Lcom/google/gson/Gson;",
        "(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;Lcom/google/gson/Gson;)V",
        "create",
        "request",
        "Companion",
        "offlinemode_release"
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
.field public static final Companion:Lcom/stripe/offlinemode/log/OfflineForwardingLogOperationFactory$Companion;

.field private static final TAG_ENTITY_ID:Ljava/lang/String; = "EntityId"

.field private static final TAG_OFFLINE_ID:Ljava/lang/String; = "OfflineId"

.field private static final TAG_REQUEST_TYPE:Ljava/lang/String; = "RequestType"


# instance fields
.field private final gson:Lcom/google/gson/Gson;

.field private final offlineTraceManager:Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;

.field private final traceLogger:Lcom/stripe/loggingmodels/TraceLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/offlinemode/log/OfflineForwardingLogOperationFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/offlinemode/log/OfflineForwardingLogOperationFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/offlinemode/log/OfflineForwardingLogOperationFactory;->Companion:Lcom/stripe/offlinemode/log/OfflineForwardingLogOperationFactory$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;Lcom/google/gson/Gson;)V
    .locals 1

    const-string v0, "traceLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineTraceManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/stripe/offlinemode/log/OfflineForwardingLogOperationFactory;->traceLogger:Lcom/stripe/loggingmodels/TraceLogger;

    .line 13
    iput-object p2, p0, Lcom/stripe/offlinemode/log/OfflineForwardingLogOperationFactory;->offlineTraceManager:Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;

    .line 14
    iput-object p3, p0, Lcom/stripe/offlinemode/log/OfflineForwardingLogOperationFactory;->gson:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Lcom/stripe/loggingmodels/ApplicationTrace;)Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;
    .locals 0

    .line 11
    check-cast p1, Lcom/stripe/offlinemode/log/OfflineTrace;

    invoke-virtual {p0, p1}, Lcom/stripe/offlinemode/log/OfflineForwardingLogOperationFactory;->create(Lcom/stripe/offlinemode/log/OfflineTrace;)Lcom/stripe/offlinemode/log/OfflineForwardingLogOperation;

    move-result-object p1

    check-cast p1, Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;

    return-object p1
.end method

.method public create(Lcom/stripe/offlinemode/log/OfflineTrace;)Lcom/stripe/offlinemode/log/OfflineForwardingLogOperation;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "request"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    instance-of v2, v1, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v4, v0, Lcom/stripe/offlinemode/log/OfflineForwardingLogOperationFactory;->traceLogger:Lcom/stripe/loggingmodels/TraceLogger;

    .line 20
    invoke-virtual {v1}, Lcom/stripe/offlinemode/log/OfflineTrace;->getService()Ljava/lang/String;

    move-result-object v5

    .line 21
    invoke-virtual {v1}, Lcom/stripe/offlinemode/log/OfflineTrace;->getMethod()Ljava/lang/String;

    move-result-object v6

    .line 22
    new-instance v11, Lcom/stripe/loggingmodels/Trace$Context;

    .line 23
    move-object v2, v1

    check-cast v2, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;

    invoke-virtual {v2}, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->getDeviceSerial()Ljava/lang/String;

    move-result-object v7

    .line 24
    iget-object v8, v0, Lcom/stripe/offlinemode/log/OfflineForwardingLogOperationFactory;->offlineTraceManager:Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;

    invoke-interface {v8}, Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;->sessionId()Ljava/lang/String;

    move-result-object v8

    .line 25
    iget-object v9, v0, Lcom/stripe/offlinemode/log/OfflineForwardingLogOperationFactory;->offlineTraceManager:Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;

    invoke-interface {v9}, Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;->nextTraceId()Ljava/lang/String;

    move-result-object v9

    .line 22
    invoke-direct {v11, v7, v8, v9}, Lcom/stripe/loggingmodels/Trace$Context;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v7, v0, Lcom/stripe/offlinemode/log/OfflineForwardingLogOperationFactory;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v7, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x3

    .line 30
    new-array v1, v1, [Lkotlin/Pair;

    invoke-virtual {v2}, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->getEntityId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string v9, "EntityId"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    goto :goto_0

    :cond_0
    move-object v8, v3

    :goto_0
    const/4 v9, 0x0

    aput-object v8, v1, v9

    .line 31
    invoke-virtual {v2}, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->getOfflineId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    const-string v3, "OfflineId"

    invoke-static {v3, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    :cond_1
    const/4 v8, 0x1

    aput-object v3, v1, v8

    .line 32
    invoke-virtual {v2}, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->getType()Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RequestType"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 29
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 33
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v15

    .line 27
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v16, 0x3b8

    const/16 v17, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 19
    invoke-static/range {v4 .. v17}, Lcom/stripe/loggingmodels/TraceLogger;->startTrace$default(Lcom/stripe/loggingmodels/TraceLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/loggingmodels/Trace$Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/loggingmodels/Trace;

    move-result-object v1

    goto :goto_1

    .line 36
    :cond_2
    iget-object v2, v0, Lcom/stripe/offlinemode/log/OfflineForwardingLogOperationFactory;->traceLogger:Lcom/stripe/loggingmodels/TraceLogger;

    .line 37
    invoke-virtual {v1}, Lcom/stripe/offlinemode/log/OfflineTrace;->getService()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .line 38
    invoke-virtual {v1}, Lcom/stripe/offlinemode/log/OfflineTrace;->getMethod()Ljava/lang/String;

    move-result-object v4

    .line 39
    new-instance v9, Lcom/stripe/loggingmodels/Trace$Context;

    .line 41
    iget-object v6, v0, Lcom/stripe/offlinemode/log/OfflineForwardingLogOperationFactory;->offlineTraceManager:Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;

    invoke-interface {v6}, Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;->sessionId()Ljava/lang/String;

    move-result-object v6

    .line 42
    iget-object v7, v0, Lcom/stripe/offlinemode/log/OfflineForwardingLogOperationFactory;->offlineTraceManager:Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;

    invoke-interface {v7}, Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;->nextTraceId()Ljava/lang/String;

    move-result-object v7

    .line 39
    invoke-direct {v9, v3, v6, v7}, Lcom/stripe/loggingmodels/Trace$Context;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v3, v0, Lcom/stripe/offlinemode/log/OfflineForwardingLogOperationFactory;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v14, 0x7b8

    const/4 v15, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v3, v5

    move-object v5, v1

    .line 36
    invoke-static/range {v2 .. v15}, Lcom/stripe/loggingmodels/TraceLogger;->startTrace$default(Lcom/stripe/loggingmodels/TraceLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/loggingmodels/Trace$Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/loggingmodels/Trace;

    move-result-object v1

    .line 17
    :goto_1
    new-instance v2, Lcom/stripe/offlinemode/log/OfflineForwardingLogOperation;

    invoke-direct {v2, v1}, Lcom/stripe/offlinemode/log/OfflineForwardingLogOperation;-><init>(Lcom/stripe/loggingmodels/Trace;)V

    return-object v2
.end method
