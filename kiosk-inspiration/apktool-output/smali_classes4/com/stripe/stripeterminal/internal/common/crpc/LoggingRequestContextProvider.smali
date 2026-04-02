.class public final Lcom/stripe/stripeterminal/internal/common/crpc/LoggingRequestContextProvider;
.super Ljava/lang/Object;
.source "LoggingRequestContextProvider.kt"

# interfaces
.implements Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u0007\u001a\u00020\u0008H\u0096\u0001J\t\u0010\t\u001a\u00020\nH\u0096\u0001J\u0011\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0096\u0001J\t\u0010\u000f\u001a\u00020\nH\u0096\u0001J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/crpc/LoggingRequestContextProvider;",
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;",
        "posInfoFactory",
        "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;",
        "plymouthRequestContextProvider",
        "Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;",
        "(Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;)V",
        "getDeviceInfo",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        "getLocalIp",
        "",
        "getRequestTimeout",
        "Lcom/stripe/jvmcore/crpcclient/CrpcTimeout;",
        "crpcRequest",
        "Lcom/stripe/proto/net/rpc/base/RpcRequest;",
        "getSessionToken",
        "getVersionInfo",
        "Lcom/stripe/proto/model/common/VersionInfoPb;",
        "common_publish"
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
.field private final synthetic $$delegate_0:Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;

.field private final posInfoFactory:Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;)V
    .locals 1

    const-string v0, "posInfoFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "plymouthRequestContextProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/crpc/LoggingRequestContextProvider;->posInfoFactory:Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;

    .line 13
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/crpc/LoggingRequestContextProvider;->$$delegate_0:Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;

    return-void
.end method


# virtual methods
.method public getDeviceInfo()Lcom/stripe/proto/model/common/DeviceInfo;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/crpc/LoggingRequestContextProvider;->$$delegate_0:Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;->getDeviceInfo()Lcom/stripe/proto/model/common/DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLocalIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/crpc/LoggingRequestContextProvider;->$$delegate_0:Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;->getLocalIp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestTimeout(Lcom/stripe/proto/net/rpc/base/RpcRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcTimeout;
    .locals 1

    const-string v0, "crpcRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/crpc/LoggingRequestContextProvider;->$$delegate_0:Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;->getRequestTimeout(Lcom/stripe/proto/net/rpc/base/RpcRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcTimeout;

    move-result-object p1

    return-object p1
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/crpc/LoggingRequestContextProvider;->$$delegate_0:Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionInfo()Lcom/stripe/proto/model/common/VersionInfoPb;
    .locals 9

    .line 16
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/crpc/LoggingRequestContextProvider;->posInfoFactory:Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;

    invoke-interface {v0}, Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;->createForLocalPos()Lcom/stripe/jvmcore/terminal/api/PosInfo;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/stripe/jvmcore/terminal/api/PosInfo;->getSecondaryVersionInfo()Lcom/stripe/proto/model/common/VersionInfoPb;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/stripe/proto/model/common/VersionInfoPb;->client_type:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/stripe/jvmcore/terminal/api/PosInfo;->getVersionInfo()Lcom/stripe/proto/model/common/VersionInfoPb;

    move-result-object v1

    iget-object v1, v1, Lcom/stripe/proto/model/common/VersionInfoPb;->client_type:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    :cond_1
    move-object v3, v1

    .line 18
    invoke-virtual {v0}, Lcom/stripe/jvmcore/terminal/api/PosInfo;->getVersionInfo()Lcom/stripe/proto/model/common/VersionInfoPb;

    move-result-object v2

    const/16 v7, 0xe

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lcom/stripe/proto/model/common/VersionInfoPb;->copy$default(Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;Ljava/lang/String;ILokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/common/VersionInfoPb;

    move-result-object v0

    return-object v0
.end method
