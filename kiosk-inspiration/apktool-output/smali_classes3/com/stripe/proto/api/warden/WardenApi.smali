.class public final Lcom/stripe/proto/api/warden/WardenApi;
.super Ljava/lang/Object;
.source "WardenApi.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000c\u001a\u00020\rJ\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000c\u001a\u00020\u000fJ\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\n2\u0006\u0010\u000c\u001a\u00020\u0012J\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00110\n2\u0006\u0010\u000c\u001a\u00020\u0014J\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00160\n2\u0006\u0010\u000c\u001a\u00020\u0017R\u0011\u0010\u0006\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/proto/api/warden/WardenApi;",
        "",
        "lazyClient",
        "Ldagger/Lazy;",
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
        "(Ldagger/Lazy;)V",
        "client",
        "getClient",
        "()Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
        "checkAppVersions",
        "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;",
        "Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;",
        "message",
        "Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;",
        "checkUnauthAppVersions",
        "Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest;",
        "checkUnauthVersion",
        "Lcom/stripe/proto/api/warden/CheckVersionResponse;",
        "Lcom/stripe/proto/api/warden/CheckUnauthVersionRequest;",
        "checkVersion",
        "Lcom/stripe/proto/api/warden/CheckVersionRequest;",
        "reportDeviceAssetUpdateStatus",
        "Lcom/stripe/proto/api/warden/ReportDeviceAssetUpdateStatusResponse;",
        "Lcom/stripe/proto/api/warden/ReportDeviceAssetUpdateStatusRequest;",
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
    iput-object p1, p0, Lcom/stripe/proto/api/warden/WardenApi;->lazyClient:Ldagger/Lazy;

    return-void
.end method


# virtual methods
.method public final checkAppVersions(Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;",
            ")",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/stripe/proto/api/warden/WardenApi;->getClient()Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    move-result-object v1

    .line 36
    move-object v4, p1

    check-cast v4, Lcom/squareup/wire/Message;

    .line 37
    sget-object v5, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 38
    sget-object v6, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v8, 0x20

    const/4 v9, 0x0

    .line 33
    const-string v2, "WardenService"

    const-string v3, "checkAppVersions"

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->blockingPost$default(Lcom/stripe/jvmcore/crpcclient/CrpcClient;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object p1

    return-object p1
.end method

.method public final checkUnauthAppVersions(Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest;",
            ")",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/stripe/proto/api/warden/WardenApi;->getClient()Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    move-result-object v1

    .line 44
    move-object v4, p1

    check-cast v4, Lcom/squareup/wire/Message;

    .line 45
    sget-object v5, Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 46
    sget-object v6, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v8, 0x20

    const/4 v9, 0x0

    .line 41
    const-string v2, "WardenService"

    const-string v3, "checkUnauthAppVersions"

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->blockingPost$default(Lcom/stripe/jvmcore/crpcclient/CrpcClient;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object p1

    return-object p1
.end method

.method public final checkUnauthVersion(Lcom/stripe/proto/api/warden/CheckUnauthVersionRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/warden/CheckUnauthVersionRequest;",
            ")",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "Lcom/stripe/proto/api/warden/CheckVersionResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/stripe/proto/api/warden/WardenApi;->getClient()Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    move-result-object v1

    .line 28
    move-object v4, p1

    check-cast v4, Lcom/squareup/wire/Message;

    .line 29
    sget-object v5, Lcom/stripe/proto/api/warden/CheckUnauthVersionRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 30
    sget-object v6, Lcom/stripe/proto/api/warden/CheckVersionResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v8, 0x20

    const/4 v9, 0x0

    .line 25
    const-string v2, "WardenService"

    const-string v3, "checkUnauthVersion"

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->blockingPost$default(Lcom/stripe/jvmcore/crpcclient/CrpcClient;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object p1

    return-object p1
.end method

.method public final checkVersion(Lcom/stripe/proto/api/warden/CheckVersionRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/warden/CheckVersionRequest;",
            ")",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "Lcom/stripe/proto/api/warden/CheckVersionResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/stripe/proto/api/warden/WardenApi;->getClient()Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    move-result-object v1

    .line 20
    move-object v4, p1

    check-cast v4, Lcom/squareup/wire/Message;

    .line 21
    sget-object v5, Lcom/stripe/proto/api/warden/CheckVersionRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 22
    sget-object v6, Lcom/stripe/proto/api/warden/CheckVersionResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v8, 0x20

    const/4 v9, 0x0

    .line 17
    const-string v2, "WardenService"

    const-string v3, "checkVersion"

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->blockingPost$default(Lcom/stripe/jvmcore/crpcclient/CrpcClient;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object p1

    return-object p1
.end method

.method public final getClient()Lcom/stripe/jvmcore/crpcclient/CrpcClient;
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/stripe/proto/api/warden/WardenApi;->lazyClient:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    return-object v0
.end method

.method public final reportDeviceAssetUpdateStatus(Lcom/stripe/proto/api/warden/ReportDeviceAssetUpdateStatusRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/warden/ReportDeviceAssetUpdateStatusRequest;",
            ")",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "Lcom/stripe/proto/api/warden/ReportDeviceAssetUpdateStatusResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/stripe/proto/api/warden/WardenApi;->getClient()Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    move-result-object v1

    .line 52
    move-object v4, p1

    check-cast v4, Lcom/squareup/wire/Message;

    .line 53
    sget-object v5, Lcom/stripe/proto/api/warden/ReportDeviceAssetUpdateStatusRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 54
    sget-object v6, Lcom/stripe/proto/api/warden/ReportDeviceAssetUpdateStatusResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v8, 0x20

    const/4 v9, 0x0

    .line 49
    const-string v2, "WardenService"

    const-string v3, "reportDeviceAssetUpdateStatus"

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->blockingPost$default(Lcom/stripe/jvmcore/crpcclient/CrpcClient;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object p1

    return-object p1
.end method
