.class public final Lcom/stripe/cots/common/CotsClient$emptyRequestContextProvider$1;
.super Ljava/lang/Object;
.source "CotsClient.kt"

# interfaces
.implements Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/cots/common/CotsClient;-><init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/cots/common/compatibility/PreFlightChecks;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/stripe/cots/common/CotsClient$emptyRequestContextProvider$1",
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;",
        "getDeviceInfo",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        "getLocalIp",
        "",
        "getSessionToken",
        "getVersionInfo",
        "Lcom/stripe/proto/model/common/VersionInfoPb;",
        "common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceInfo()Lcom/stripe/proto/model/common/DeviceInfo;
    .locals 19

    .line 69
    new-instance v0, Lcom/stripe/proto/model/common/DeviceInfo;

    const v17, 0xffff

    const/16 v18, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v18}, Lcom/stripe/proto/model/common/DeviceInfo;-><init>(Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;Ljava/lang/String;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/ApplicationModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InternetConnectionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/Location;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public getLocalIp()Ljava/lang/String;
    .locals 1

    .line 68
    const-string v0, ""

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .line 71
    const-string v0, ""

    return-object v0
.end method

.method public getVersionInfo()Lcom/stripe/proto/model/common/VersionInfoPb;
    .locals 7

    .line 70
    new-instance v0, Lcom/stripe/proto/model/common/VersionInfoPb;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/model/common/VersionInfoPb;-><init>(Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;Ljava/lang/String;ILokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
