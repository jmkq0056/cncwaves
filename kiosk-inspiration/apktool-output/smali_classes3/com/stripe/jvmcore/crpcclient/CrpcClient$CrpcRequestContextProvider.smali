.class public interface abstract Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;
.super Ljava/lang/Object;
.source "CrpcClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/crpcclient/CrpcClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CrpcRequestContextProvider"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\u0005H&J\u0008\u0010\u000b\u001a\u00020\u000cH&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\r\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;",
        "",
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
        "crpcclient"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getDeviceInfo()Lcom/stripe/proto/model/common/DeviceInfo;
.end method

.method public abstract getLocalIp()Ljava/lang/String;
.end method

.method public getRequestTimeout(Lcom/stripe/proto/net/rpc/base/RpcRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcTimeout;
    .locals 1

    const-string v0, "crpcRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    sget-object p1, Lcom/stripe/jvmcore/crpcclient/CrpcTimeout$Default;->INSTANCE:Lcom/stripe/jvmcore/crpcclient/CrpcTimeout$Default;

    check-cast p1, Lcom/stripe/jvmcore/crpcclient/CrpcTimeout;

    return-object p1
.end method

.method public abstract getSessionToken()Ljava/lang/String;
.end method

.method public abstract getVersionInfo()Lcom/stripe/proto/model/common/VersionInfoPb;
.end method
