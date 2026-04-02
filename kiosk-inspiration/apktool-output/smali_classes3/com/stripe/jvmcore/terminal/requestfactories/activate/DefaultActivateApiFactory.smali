.class public final Lcom/stripe/jvmcore/terminal/requestfactories/activate/DefaultActivateApiFactory;
.super Ljava/lang/Object;
.source "DefaultActivateApiFactory.kt"

# interfaces
.implements Lcom/stripe/jvmcore/terminal/requestfactories/activate/ActivateJackRabbitApiFactory;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultActivateApiFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultActivateApiFactory.kt\ncom/stripe/jvmcore/terminal/requestfactories/activate/DefaultActivateApiFactory\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,46:1\n1#2:47\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`\u0008\u00a2\u0006\u0002\u0010\tJ\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\rR\u001e\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/jvmcore/terminal/requestfactories/activate/DefaultActivateApiFactory;",
        "Lcom/stripe/jvmcore/terminal/requestfactories/activate/ActivateJackRabbitApiFactory;",
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
        "activateTerminal",
        "Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;",
        "posConnectionToken",
        "",
        "failIfInUse",
        "",
        "terminal-requestfactories"
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

    .line 15
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "appInfo"

    const-string v3, "getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;"

    const-class v4, Lcom/stripe/jvmcore/terminal/requestfactories/activate/DefaultActivateApiFactory;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/stripe/jvmcore/terminal/requestfactories/activate/DefaultActivateApiFactory;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

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

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p2, p0, Lcom/stripe/jvmcore/terminal/requestfactories/activate/DefaultActivateApiFactory;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 15
    iput-object p1, p0, Lcom/stripe/jvmcore/terminal/requestfactories/activate/DefaultActivateApiFactory;->appInfo$delegate:Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

    return-void
.end method

.method private final getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/requestfactories/activate/DefaultActivateApiFactory;->appInfo$delegate:Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

    sget-object v1, Lcom/stripe/jvmcore/terminal/requestfactories/activate/DefaultActivateApiFactory;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public activateTerminal(Ljava/lang/String;Z)Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;
    .locals 15

    const-string v0, "posConnectionToken"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;

    .line 20
    invoke-direct {p0}, Lcom/stripe/jvmcore/terminal/requestfactories/activate/DefaultActivateApiFactory;->getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getDeviceUuid()Lcom/stripe/terminal/appinfo/DeviceUuid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/terminal/appinfo/DeviceUuid;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 21
    new-instance v4, Lcom/stripe/proto/model/sdk/PosHardwareInfo;

    .line 22
    invoke-direct {p0}, Lcom/stripe/jvmcore/terminal/requestfactories/activate/DefaultActivateApiFactory;->getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getDeviceModel()Ljava/lang/String;

    move-result-object v9

    .line 23
    invoke-direct {p0}, Lcom/stripe/jvmcore/terminal/requestfactories/activate/DefaultActivateApiFactory;->getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getDeviceArchitecture()Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0xcf

    const/4 v14, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 21
    invoke-direct/range {v4 .. v14}, Lcom/stripe/proto/model/sdk/PosHardwareInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    new-instance v5, Lcom/stripe/proto/model/sdk/PosSoftwareInfo;

    .line 26
    invoke-direct {p0}, Lcom/stripe/jvmcore/terminal/requestfactories/activate/DefaultActivateApiFactory;->getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getDeviceOsVersion()Ljava/lang/String;

    move-result-object v6

    .line 27
    invoke-direct {p0}, Lcom/stripe/jvmcore/terminal/requestfactories/activate/DefaultActivateApiFactory;->getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getAppId()Ljava/lang/String;

    move-result-object v7

    .line 28
    invoke-direct {p0}, Lcom/stripe/jvmcore/terminal/requestfactories/activate/DefaultActivateApiFactory;->getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getAppVersion()Ljava/lang/String;

    move-result-object v8

    .line 29
    invoke-direct {p0}, Lcom/stripe/jvmcore/terminal/requestfactories/activate/DefaultActivateApiFactory;->getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getClientVersion()Ljava/lang/String;

    move-result-object v9

    const/16 v11, 0x10

    const/4 v10, 0x0

    .line 25
    invoke-direct/range {v5 .. v12}, Lcom/stripe/proto/model/sdk/PosSoftwareInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    invoke-direct {p0}, Lcom/stripe/jvmcore/terminal/requestfactories/activate/DefaultActivateApiFactory;->getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getEmbeddedWithinStripeReactNativeSdk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v6, Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 37
    sget-object v7, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->RN_ANDROID_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    .line 38
    invoke-direct {p0}, Lcom/stripe/jvmcore/terminal/requestfactories/activate/DefaultActivateApiFactory;->getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getReactNativeSdkVersion()Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0xc

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 36
    invoke-direct/range {v6 .. v12}, Lcom/stripe/proto/model/common/VersionInfoPb;-><init>(Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;Ljava/lang/String;ILokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    move-object v7, v6

    const/16 v13, 0x7c0

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v6, p2

    .line 18
    invoke-direct/range {v1 .. v14}, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PosHardwareInfo;Lcom/stripe/proto/model/sdk/PosSoftwareInfo;ZLcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/sdk/Address;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/requestfactories/activate/DefaultActivateApiFactory;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v2, 0x1

    new-array v2, v2, [Lkotlin/Pair;

    const-string v3, "request"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Created ActivateTerminalRequest"

    invoke-interface {v0, v3, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    return-object v1
.end method
