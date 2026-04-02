.class public final Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;
.super Lcom/stripe/stripeterminal/internal/common/crpc/SdkCrpcRequestContextProvider;
.source "RemoteReaderRequestContextProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;",
        "Lcom/stripe/stripeterminal/internal/common/crpc/SdkCrpcRequestContextProvider;",
        "posInfoFactory",
        "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;",
        "localIpAddressProvider",
        "Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;",
        "(Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;)V",
        "token",
        "",
        "getToken",
        "()Ljava/lang/String;",
        "setToken",
        "(Ljava/lang/String;)V",
        "getDeviceInfo",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        "getRequestTimeout",
        "Lcom/stripe/jvmcore/crpcclient/CrpcTimeout;",
        "crpcRequest",
        "Lcom/stripe/proto/net/rpc/base/RpcRequest;",
        "getSessionToken",
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
.field private final posInfoFactory:Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;)V
    .locals 1

    const-string v0, "posInfoFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localIpAddressProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/crpc/SdkCrpcRequestContextProvider;-><init>(Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;)V

    .line 15
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;->posInfoFactory:Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;

    .line 18
    const-string p1, ""

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;->token:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDeviceInfo()Lcom/stripe/proto/model/common/DeviceInfo;
    .locals 21

    move-object/from16 v0, p0

    .line 23
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;->posInfoFactory:Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;

    invoke-interface {v1}, Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;->createForLocalPos()Lcom/stripe/jvmcore/terminal/api/PosInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/jvmcore/terminal/api/PosInfo;->getDeviceInfo()Lcom/stripe/proto/model/common/DeviceInfo;

    move-result-object v2

    .line 24
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;->getLocalIp()Ljava/lang/String;

    move-result-object v7

    const v19, 0xffef

    const/16 v20, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 23
    invoke-static/range {v2 .. v20}, Lcom/stripe/proto/model/common/DeviceInfo;->copy$default(Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;Ljava/lang/String;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/ApplicationModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InternetConnectionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/Location;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/common/DeviceInfo;

    move-result-object v1

    return-object v1
.end method

.method public getRequestTimeout(Lcom/stripe/proto/net/rpc/base/RpcRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcTimeout;
    .locals 3

    const-string v0, "crpcRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object p1, p1, Lcom/stripe/proto/net/rpc/base/RpcRequest;->method:Ljava/lang/String;

    .line 30
    const-string v0, "terminalHeartbeat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/stripe/jvmcore/crpcclient/CrpcTimeout$Specified;

    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/16 v0, 0xa

    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/stripe/jvmcore/crpcclient/CrpcTimeout$Specified;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/stripe/jvmcore/crpcclient/CrpcTimeout;

    return-object p1

    .line 31
    :cond_0
    sget-object p1, Lcom/stripe/jvmcore/crpcclient/CrpcTimeout$Default;->INSTANCE:Lcom/stripe/jvmcore/crpcclient/CrpcTimeout$Default;

    check-cast p1, Lcom/stripe/jvmcore/crpcclient/CrpcTimeout;

    return-object p1
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final setToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;->token:Ljava/lang/String;

    return-void
.end method
