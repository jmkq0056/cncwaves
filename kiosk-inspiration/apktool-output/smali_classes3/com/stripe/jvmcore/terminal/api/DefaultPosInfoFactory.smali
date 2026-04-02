.class public final Lcom/stripe/jvmcore/terminal/api/DefaultPosInfoFactory;
.super Ljava/lang/Object;
.source "PosInfoFactory.kt"

# interfaces
.implements Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J&\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0017H\u0002R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\rR\u001e\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/jvmcore/terminal/api/DefaultPosInfoFactory;",
        "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;",
        "applicationInformationProvider",
        "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "appInfo",
        "Lcom/stripe/terminal/appinfo/ApplicationInformation;",
        "getAppInfo",
        "()Lcom/stripe/terminal/appinfo/ApplicationInformation;",
        "appInfo$delegate",
        "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
        "createForLocalPos",
        "Lcom/stripe/jvmcore/terminal/api/PosInfo;",
        "createForRemotePos",
        "remotePosSdkVersionInfo",
        "Lcom/stripe/proto/model/common/VersionInfoPb;",
        "remotePosSecondarySdkVersionInfo",
        "remotePosDeviceInfo",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        "modifyRemotePosDeviceInfo",
        "terminal-core"
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

.field private final logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 27
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "appInfo"

    const-string v3, "getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;"

    const-class v4, Lcom/stripe/jvmcore/terminal/api/DefaultPosInfoFactory;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/stripe/jvmcore/terminal/api/DefaultPosInfoFactory;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "applicationInformationProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/stripe/jvmcore/terminal/api/DefaultPosInfoFactory;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 27
    iput-object p1, p0, Lcom/stripe/jvmcore/terminal/api/DefaultPosInfoFactory;->appInfo$delegate:Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

    return-void
.end method

.method private final getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/api/DefaultPosInfoFactory;->appInfo$delegate:Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

    sget-object v1, Lcom/stripe/jvmcore/terminal/api/DefaultPosInfoFactory;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method private final modifyRemotePosDeviceInfo(Lcom/stripe/proto/model/common/DeviceInfo;)Lcom/stripe/proto/model/common/DeviceInfo;
    .locals 22

    move-object/from16 v0, p1

    .line 108
    iget-object v1, v0, Lcom/stripe/proto/model/common/DeviceInfo;->device_class:Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;

    sget-object v2, Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;->POS:Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;

    if-ne v1, v2, :cond_0

    return-object v0

    .line 142
    :cond_0
    iget-object v7, v0, Lcom/stripe/proto/model/common/DeviceInfo;->app_model:Lcom/stripe/proto/model/common/ApplicationModel;

    .line 143
    iget-object v1, v0, Lcom/stripe/proto/model/common/DeviceInfo;->location:Lcom/stripe/proto/model/common/Location;

    .line 145
    sget-object v4, Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;->POS:Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;

    .line 140
    new-instance v3, Lcom/stripe/proto/model/common/DeviceInfo;

    const v20, 0xbff6

    const/16 v21, 0x0

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

    const/16 v19, 0x0

    move-object/from16 v18, v1

    invoke-direct/range {v3 .. v21}, Lcom/stripe/proto/model/common/DeviceInfo;-><init>(Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;Ljava/lang/String;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/ApplicationModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InternetConnectionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/Location;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, p0

    .line 147
    iget-object v2, v1, Lcom/stripe/jvmcore/terminal/api/DefaultPosInfoFactory;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Changed remote POS device info from "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Lkotlin/Pair;

    invoke-interface {v2, v0, v4}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    return-object v3
.end method


# virtual methods
.method public createForLocalPos()Lcom/stripe/jvmcore/terminal/api/PosInfo;
    .locals 21

    .line 39
    invoke-direct/range {p0 .. p0}, Lcom/stripe/jvmcore/terminal/api/DefaultPosInfoFactory;->getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getClientVersion()Ljava/lang/String;

    move-result-object v3

    .line 40
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object/from16 v0, p0

    check-cast v0, Lcom/stripe/jvmcore/terminal/api/DefaultPosInfoFactory;

    .line 42
    invoke-direct/range {p0 .. p0}, Lcom/stripe/jvmcore/terminal/api/DefaultPosInfoFactory;->getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getClientType()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->valueOf(Ljava/lang/String;)Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    move-result-object v0

    .line 40
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    :goto_0
    sget-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->CLIENT_TYPE_INVALID:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_0
    move-object v2, v0

    check-cast v2, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    .line 38
    new-instance v1, Lcom/stripe/proto/model/common/VersionInfoPb;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/proto/model/common/VersionInfoPb;-><init>(Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;Ljava/lang/String;ILokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 48
    new-instance v2, Lcom/stripe/proto/model/common/ApplicationModel;

    .line 49
    invoke-direct/range {p0 .. p0}, Lcom/stripe/jvmcore/terminal/api/DefaultPosInfoFactory;->getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getAppId()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-direct/range {p0 .. p0}, Lcom/stripe/jvmcore/terminal/api/DefaultPosInfoFactory;->getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    .line 48
    invoke-direct/range {v2 .. v7}, Lcom/stripe/proto/model/common/ApplicationModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    sget-object v3, Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;->POS:Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;

    .line 53
    invoke-direct/range {p0 .. p0}, Lcom/stripe/jvmcore/terminal/api/DefaultPosInfoFactory;->getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getDeviceUuid()Lcom/stripe/terminal/appinfo/DeviceUuid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/terminal/appinfo/DeviceUuid;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 54
    new-instance v5, Lcom/stripe/proto/model/common/HardwareModel;

    .line 55
    new-instance v8, Lcom/stripe/proto/model/common/POSInfo;

    .line 56
    invoke-direct/range {p0 .. p0}, Lcom/stripe/jvmcore/terminal/api/DefaultPosInfoFactory;->getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x2

    .line 55
    invoke-direct {v8, v0, v7, v6, v7}, Lcom/stripe/proto/model/common/POSInfo;-><init>(Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v15, 0x1fb

    const/16 v16, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 54
    invoke-direct/range {v5 .. v16}, Lcom/stripe/proto/model/common/HardwareModel;-><init>(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 59
    invoke-direct/range {p0 .. p0}, Lcom/stripe/jvmcore/terminal/api/DefaultPosInfoFactory;->getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getDeviceModel()Ljava/lang/String;

    move-result-object v8

    .line 60
    invoke-direct/range {p0 .. p0}, Lcom/stripe/jvmcore/terminal/api/DefaultPosInfoFactory;->getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getDeviceOsVersion()Ljava/lang/String;

    move-result-object v9

    move-object v6, v2

    .line 47
    new-instance v2, Lcom/stripe/proto/model/common/DeviceInfo;

    const v19, 0xff90

    const/16 v20, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v2 .. v20}, Lcom/stripe/proto/model/common/DeviceInfo;-><init>(Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;Ljava/lang/String;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/ApplicationModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InternetConnectionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/Location;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 63
    invoke-direct/range {p0 .. p0}, Lcom/stripe/jvmcore/terminal/api/DefaultPosInfoFactory;->getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getEmbeddedWithinStripeReactNativeSdk()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    new-instance v4, Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 65
    sget-object v5, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->RN_ANDROID_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    .line 66
    invoke-direct/range {p0 .. p0}, Lcom/stripe/jvmcore/terminal/api/DefaultPosInfoFactory;->getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getReactNativeSdkVersion()Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0xc

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 64
    invoke-direct/range {v4 .. v10}, Lcom/stripe/proto/model/common/VersionInfoPb;-><init>(Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;Ljava/lang/String;ILokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v7, v4

    goto :goto_1

    :cond_1
    move-object v7, v0

    .line 72
    :goto_1
    new-instance v0, Lcom/stripe/jvmcore/terminal/api/PosInfo;

    .line 76
    invoke-direct/range {p0 .. p0}, Lcom/stripe/jvmcore/terminal/api/DefaultPosInfoFactory;->getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getDeviceUuid()Lcom/stripe/terminal/appinfo/DeviceUuid;

    move-result-object v3

    .line 72
    invoke-direct {v0, v1, v2, v7, v3}, Lcom/stripe/jvmcore/terminal/api/PosInfo;-><init>(Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/terminal/appinfo/DeviceUuid;)V

    return-object v0
.end method

.method public createForRemotePos(Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;)Lcom/stripe/jvmcore/terminal/api/PosInfo;
    .locals 21

    move-object/from16 v0, p3

    if-nez p1, :cond_0

    .line 95
    new-instance v1, Lcom/stripe/proto/model/common/VersionInfoPb;

    const/16 v6, 0xf

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/proto/model/common/VersionInfoPb;-><init>(Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;Ljava/lang/String;ILokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    if-nez v0, :cond_1

    .line 99
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

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    move-object/from16 v3, p0

    invoke-direct {v3, v2}, Lcom/stripe/jvmcore/terminal/api/DefaultPosInfoFactory;->modifyRemotePosDeviceInfo(Lcom/stripe/proto/model/common/DeviceInfo;)Lcom/stripe/proto/model/common/DeviceInfo;

    move-result-object v2

    .line 100
    new-instance v4, Lcom/stripe/terminal/appinfo/DeviceUuid;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/stripe/proto/model/common/DeviceInfo;->device_uuid:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    invoke-direct {v4, v0}, Lcom/stripe/terminal/appinfo/DeviceUuid;-><init>(Ljava/lang/String;)V

    .line 94
    new-instance v0, Lcom/stripe/jvmcore/terminal/api/PosInfo;

    move-object/from16 v5, p2

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/stripe/jvmcore/terminal/api/PosInfo;-><init>(Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/terminal/appinfo/DeviceUuid;)V

    return-object v0
.end method
