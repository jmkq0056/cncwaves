.class public final Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;
.super Lcom/stripe/stripeterminal/internal/common/crpc/SdkCrpcRequestContextProvider;
.source "PlymouthRequestContextProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016R\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;",
        "Lcom/stripe/stripeterminal/internal/common/crpc/SdkCrpcRequestContextProvider;",
        "rpcSessionTokenProvider",
        "Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;",
        "applicationInformationProvider",
        "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
        "terminalStatusManager",
        "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
        "posInfoFactory",
        "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;",
        "localIpAddressProvider",
        "Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;",
        "(Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;)V",
        "appInfo",
        "Lcom/stripe/terminal/appinfo/ApplicationInformation;",
        "getAppInfo",
        "()Lcom/stripe/terminal/appinfo/ApplicationInformation;",
        "appInfo$delegate",
        "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
        "getDeviceInfo",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        "getSessionToken",
        "",
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


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final appInfo$delegate:Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

.field private final rpcSessionTokenProvider:Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;

.field private final terminalStatusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 21
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "appInfo"

    const-string v3, "getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;"

    const-class v4, Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;)V
    .locals 1

    const-string v0, "rpcSessionTokenProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applicationInformationProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminalStatusManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "posInfoFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localIpAddressProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p4, p5}, Lcom/stripe/stripeterminal/internal/common/crpc/SdkCrpcRequestContextProvider;-><init>(Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;)V

    .line 15
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;->rpcSessionTokenProvider:Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;

    .line 17
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;->terminalStatusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    .line 21
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;->appInfo$delegate:Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

    return-void
.end method

.method private final getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;
    .locals 3

    .line 21
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;->appInfo$delegate:Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDeviceInfo()Lcom/stripe/proto/model/common/DeviceInfo;
    .locals 22

    move-object/from16 v0, p0

    .line 28
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;->terminalStatusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->toDeviceInfo()Lcom/stripe/proto/model/common/DeviceInfo;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v2, Lcom/stripe/proto/model/common/DeviceInfo;

    const v19, 0xffff

    const/16 v20, 0x0

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

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v2 .. v20}, Lcom/stripe/proto/model/common/DeviceInfo;-><init>(Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;Ljava/lang/String;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/ApplicationModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InternetConnectionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/Location;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, v2

    .line 33
    :goto_1
    sget-object v4, Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;->POS:Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;

    .line 34
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;->getLocalIp()Ljava/lang/String;

    move-result-object v8

    .line 35
    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;->getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getDeviceUuid()Lcom/stripe/terminal/appinfo/DeviceUuid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/terminal/appinfo/DeviceUuid;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 36
    new-instance v7, Lcom/stripe/proto/model/common/ApplicationModel;

    .line 37
    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;->getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getAppId()Ljava/lang/String;

    move-result-object v10

    .line 38
    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;->getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getAppVersion()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v12, 0x0

    move-object v9, v7

    .line 36
    invoke-direct/range {v9 .. v14}, Lcom/stripe/proto/model/common/ApplicationModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 40
    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;->getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getDeviceModel()Ljava/lang/String;

    move-result-object v9

    .line 41
    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;->getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getDeviceOsVersion()Ljava/lang/String;

    move-result-object v10

    const v20, 0xff84

    const/16 v21, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 32
    invoke-static/range {v3 .. v21}, Lcom/stripe/proto/model/common/DeviceInfo;->copy$default(Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;Ljava/lang/String;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/ApplicationModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InternetConnectionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/Location;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/common/DeviceInfo;

    move-result-object v1

    return-object v1
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;->rpcSessionTokenProvider:Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;

    invoke-interface {v0}, Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;->getRpcSessionToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method
