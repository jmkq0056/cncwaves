.class public abstract Lcom/stripe/stripeterminal/internal/common/crpc/SdkCrpcRequestContextProvider;
.super Ljava/lang/Object;
.source "SdkCrpcRequestContextProvider.kt"

# interfaces
.implements Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0007\u001a\u00020\u0008J\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/crpc/SdkCrpcRequestContextProvider;",
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;",
        "posInfoFactory",
        "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;",
        "localIpAddressProvider",
        "Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;",
        "(Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;)V",
        "getLocalIp",
        "",
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
.field private final localIpAddressProvider:Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;

.field private final posInfoFactory:Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;)V
    .locals 1

    const-string v0, "posInfoFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localIpAddressProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/crpc/SdkCrpcRequestContextProvider;->posInfoFactory:Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;

    .line 9
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/crpc/SdkCrpcRequestContextProvider;->localIpAddressProvider:Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;

    return-void
.end method


# virtual methods
.method public final getLocalIp()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/crpc/SdkCrpcRequestContextProvider;->localIpAddressProvider:Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;

    invoke-interface {v0}, Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;->getLocalIp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVersionInfo()Lcom/stripe/proto/model/common/VersionInfoPb;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/crpc/SdkCrpcRequestContextProvider;->posInfoFactory:Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;

    invoke-interface {v0}, Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;->createForLocalPos()Lcom/stripe/jvmcore/terminal/api/PosInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/jvmcore/terminal/api/PosInfo;->getVersionInfo()Lcom/stripe/proto/model/common/VersionInfoPb;

    move-result-object v0

    return-object v0
.end method
