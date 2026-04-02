.class public final Lcom/stripe/proto/api/gator/GatorApi;
.super Ljava/lang/Object;
.source "GatorApi.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000c\u001a\u00020\rJ\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\n2\u0006\u0010\u000c\u001a\u00020\u0010J\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\n2\u0006\u0010\u000c\u001a\u00020\u0013R\u0011\u0010\u0006\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/proto/api/gator/GatorApi;",
        "",
        "lazyClient",
        "Ldagger/Lazy;",
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
        "(Ldagger/Lazy;)V",
        "client",
        "getClient",
        "()Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
        "reportEvent",
        "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;",
        "Lcom/stripe/proto/api/gator/ReportEventResponse;",
        "message",
        "Lcom/stripe/proto/api/gator/ReportEventRequest;",
        "reportLogEvents",
        "Lcom/stripe/proto/api/gator/ReportLogEventsResponse;",
        "Lcom/stripe/proto/api/gator/ReportLogEventsRequest;",
        "reportTrace",
        "Lcom/stripe/proto/api/gator/ReportTraceResponse;",
        "Lcom/stripe/proto/api/gator/ReportTraceRequest;",
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
    iput-object p1, p0, Lcom/stripe/proto/api/gator/GatorApi;->lazyClient:Ldagger/Lazy;

    return-void
.end method


# virtual methods
.method public final getClient()Lcom/stripe/jvmcore/crpcclient/CrpcClient;
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/stripe/proto/api/gator/GatorApi;->lazyClient:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    return-object v0
.end method

.method public final reportEvent(Lcom/stripe/proto/api/gator/ReportEventRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/gator/ReportEventRequest;",
            ")",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "Lcom/stripe/proto/api/gator/ReportEventResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/stripe/proto/api/gator/GatorApi;->getClient()Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    move-result-object v1

    .line 20
    move-object v4, p1

    check-cast v4, Lcom/squareup/wire/Message;

    .line 21
    sget-object v5, Lcom/stripe/proto/api/gator/ReportEventRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 22
    sget-object v6, Lcom/stripe/proto/api/gator/ReportEventResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v8, 0x20

    const/4 v9, 0x0

    .line 17
    const-string v2, "GatorService"

    const-string v3, "reportEvent"

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->blockingPost$default(Lcom/stripe/jvmcore/crpcclient/CrpcClient;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object p1

    return-object p1
.end method

.method public final reportLogEvents(Lcom/stripe/proto/api/gator/ReportLogEventsRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/gator/ReportLogEventsRequest;",
            ")",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "Lcom/stripe/proto/api/gator/ReportLogEventsResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/stripe/proto/api/gator/GatorApi;->getClient()Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    move-result-object v1

    .line 36
    move-object v4, p1

    check-cast v4, Lcom/squareup/wire/Message;

    .line 37
    sget-object v5, Lcom/stripe/proto/api/gator/ReportLogEventsRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 38
    sget-object v6, Lcom/stripe/proto/api/gator/ReportLogEventsResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v8, 0x20

    const/4 v9, 0x0

    .line 33
    const-string v2, "GatorService"

    const-string v3, "reportLogEvents"

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->blockingPost$default(Lcom/stripe/jvmcore/crpcclient/CrpcClient;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object p1

    return-object p1
.end method

.method public final reportTrace(Lcom/stripe/proto/api/gator/ReportTraceRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/gator/ReportTraceRequest;",
            ")",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "Lcom/stripe/proto/api/gator/ReportTraceResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/stripe/proto/api/gator/GatorApi;->getClient()Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    move-result-object v1

    .line 28
    move-object v4, p1

    check-cast v4, Lcom/squareup/wire/Message;

    .line 29
    sget-object v5, Lcom/stripe/proto/api/gator/ReportTraceRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 30
    sget-object v6, Lcom/stripe/proto/api/gator/ReportTraceResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v8, 0x20

    const/4 v9, 0x0

    .line 25
    const-string v2, "GatorService"

    const-string v3, "reportTrace"

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->blockingPost$default(Lcom/stripe/jvmcore/crpcclient/CrpcClient;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object p1

    return-object p1
.end method
