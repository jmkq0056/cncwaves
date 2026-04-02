.class public final Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;
.super Ljava/lang/Object;
.source "ClientLoggerApi.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000c\u001a\u00020\rJ\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\n2\u0006\u0010\u000c\u001a\u00020\u0010J\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\n2\u0006\u0010\u000c\u001a\u00020\u0013J\u0014\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00150\n2\u0006\u0010\u000c\u001a\u00020\u0016J\u0014\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00180\n2\u0006\u0010\u000c\u001a\u00020\u0019J\u0014\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\n2\u0006\u0010\u000c\u001a\u00020\u001cJ\u0014\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\n2\u0006\u0010\u000c\u001a\u00020\u001fR\u0011\u0010\u0006\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;",
        "",
        "lazyClient",
        "Ldagger/Lazy;",
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
        "(Ldagger/Lazy;)V",
        "client",
        "getClient",
        "()Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
        "completeUpload",
        "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/CompleteUploadResponse;",
        "message",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/CompleteUploadRequest;",
        "createUpload",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/CreateUploadResponse;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/CreateUploadRequest;",
        "reportEvent",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportEventResponse;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportEventRequest;",
        "reportHealthMetric",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportHealthMetricResponse;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportHealthMetricRequest;",
        "reportLogEvents",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportLogEventsResponse;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportLogEventsRequest;",
        "reportObservabilityData",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportObservabilityDataResponse;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportObservabilityDataRequest;",
        "reportTrace",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportTraceResponse;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportTraceRequest;",
        "codegen-terminalsdk_release"
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
.field private final lazyClient:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "+",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldagger/Lazy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "+",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
            ">;)V"
        }
    .end annotation

    const-string v0, "lazyClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;->lazyClient:Ldagger/Lazy;

    return-void
.end method


# virtual methods
.method public final completeUpload(Lcom/stripe/proto/terminal/clientlogger/pub/api/CompleteUploadRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/CompleteUploadRequest;",
            ")",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/CompleteUploadResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;->getClient()Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    move-result-object v1

    .line 77
    move-object v4, p1

    check-cast v4, Lcom/squareup/wire/Message;

    .line 78
    sget-object v5, Lcom/stripe/proto/terminal/clientlogger/pub/api/CompleteUploadRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 79
    sget-object v6, Lcom/stripe/proto/terminal/clientlogger/pub/api/CompleteUploadResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v8, 0x20

    const/4 v9, 0x0

    .line 74
    const-string v2, "ClientLoggerService"

    const-string v3, "CompleteUpload"

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->blockingPost$default(Lcom/stripe/jvmcore/crpcclient/CrpcClient;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object p1

    return-object p1
.end method

.method public final createUpload(Lcom/stripe/proto/terminal/clientlogger/pub/api/CreateUploadRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/CreateUploadRequest;",
            ")",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/CreateUploadResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;->getClient()Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    move-result-object v1

    .line 69
    move-object v4, p1

    check-cast v4, Lcom/squareup/wire/Message;

    .line 70
    sget-object v5, Lcom/stripe/proto/terminal/clientlogger/pub/api/CreateUploadRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 71
    sget-object v6, Lcom/stripe/proto/terminal/clientlogger/pub/api/CreateUploadResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v8, 0x20

    const/4 v9, 0x0

    .line 66
    const-string v2, "ClientLoggerService"

    const-string v3, "CreateUpload"

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->blockingPost$default(Lcom/stripe/jvmcore/crpcclient/CrpcClient;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object p1

    return-object p1
.end method

.method public final getClient()Lcom/stripe/jvmcore/crpcclient/CrpcClient;
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;->lazyClient:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    return-object v0
.end method

.method public final reportEvent(Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportEventRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportEventRequest;",
            ")",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportEventResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;->getClient()Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    move-result-object v1

    .line 23
    move-object v4, p1

    check-cast v4, Lcom/squareup/wire/Message;

    .line 24
    sget-object v5, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportEventRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 25
    sget-object v6, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportEventResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v8, 0x20

    const/4 v9, 0x0

    .line 20
    const-string v2, "ClientLoggerService"

    const-string v3, "reportEvent"

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->blockingPost$default(Lcom/stripe/jvmcore/crpcclient/CrpcClient;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object p1

    return-object p1
.end method

.method public final reportHealthMetric(Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportHealthMetricRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportHealthMetricRequest;",
            ")",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportHealthMetricResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;->getClient()Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    move-result-object v1

    .line 47
    move-object v4, p1

    check-cast v4, Lcom/squareup/wire/Message;

    .line 48
    sget-object v5, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportHealthMetricRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 49
    sget-object v6, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportHealthMetricResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v8, 0x20

    const/4 v9, 0x0

    .line 44
    const-string v2, "ClientLoggerService"

    const-string v3, "reportHealthMetric"

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->blockingPost$default(Lcom/stripe/jvmcore/crpcclient/CrpcClient;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object p1

    return-object p1
.end method

.method public final reportLogEvents(Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportLogEventsRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportLogEventsRequest;",
            ")",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportLogEventsResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;->getClient()Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    move-result-object v1

    .line 39
    move-object v4, p1

    check-cast v4, Lcom/squareup/wire/Message;

    .line 40
    sget-object v5, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportLogEventsRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 41
    sget-object v6, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportLogEventsResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v8, 0x20

    const/4 v9, 0x0

    .line 36
    const-string v2, "ClientLoggerService"

    const-string v3, "reportLogEvents"

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->blockingPost$default(Lcom/stripe/jvmcore/crpcclient/CrpcClient;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object p1

    return-object p1
.end method

.method public final reportObservabilityData(Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportObservabilityDataRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportObservabilityDataRequest;",
            ")",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportObservabilityDataResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;->getClient()Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    move-result-object v1

    .line 58
    move-object v4, p1

    check-cast v4, Lcom/squareup/wire/Message;

    .line 59
    sget-object v5, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportObservabilityDataRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 60
    sget-object v6, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportObservabilityDataResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v8, 0x20

    const/4 v9, 0x0

    .line 55
    const-string v2, "ClientLoggerService"

    const-string v3, "ReportObservabilityData"

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->blockingPost$default(Lcom/stripe/jvmcore/crpcclient/CrpcClient;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object p1

    return-object p1
.end method

.method public final reportTrace(Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportTraceRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportTraceRequest;",
            ")",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportTraceResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;->getClient()Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    move-result-object v1

    .line 31
    move-object v4, p1

    check-cast v4, Lcom/squareup/wire/Message;

    .line 32
    sget-object v5, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportTraceRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 33
    sget-object v6, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportTraceResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v8, 0x20

    const/4 v9, 0x0

    .line 28
    const-string v2, "ClientLoggerService"

    const-string v3, "reportTrace"

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->blockingPost$default(Lcom/stripe/jvmcore/crpcclient/CrpcClient;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object p1

    return-object p1
.end method
