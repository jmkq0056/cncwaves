.class public final Lcom/stripe/core/readerupdate/UpdateClient;
.super Ljava/lang/Object;
.source "UpdateClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/readerupdate/UpdateClient$Companion;,
        Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpdateClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateClient.kt\ncom/stripe/core/readerupdate/UpdateClient\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,263:1\n1#2:264\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 62\u00020\u0001:\u000267BU\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0016\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011j\u0002`\u0014\u00a2\u0006\u0002\u0010\u0015J\u000e\u0010 \u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\"J\u000e\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&J\u0010\u0010\'\u001a\u00020(2\u0008\u0010)\u001a\u0004\u0018\u00010*J\u001a\u0010\'\u001a\u00020(2\u0008\u0010+\u001a\u0004\u0018\u00010\u001d2\u0008\u0010,\u001a\u0004\u0018\u00010\u001dJ\u0015\u0010-\u001a\u00020$2\u0006\u0010.\u001a\u00020/H\u0001\u00a2\u0006\u0002\u00080J \u00101\u001a\u00020(2\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010*2\n\u0008\u0002\u00102\u001a\u0004\u0018\u000103H\u0002J\u0010\u00104\u001a\u00020(2\u0006\u00105\u001a\u00020(H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011j\u0002`\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0016\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u001c\u001a\u00020\u001d*\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u00068"
    }
    d2 = {
        "Lcom/stripe/core/readerupdate/UpdateClient;",
        "",
        "armadaApi",
        "Lcom/stripe/proto/api/armada/ArmadaApi;",
        "okHttpClientProvider",
        "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
        "deviceInfoRepository",
        "Lcom/stripe/device/DeviceInfoRepository;",
        "embeddedSoftwareVersionProvider",
        "Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;",
        "featureFlagRepository",
        "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
        "settingsRepository",
        "Lcom/stripe/core/transaction/SettingsRepository;",
        "offlineConfigUpdateListener",
        "Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/proto/api/armada/ArmadaApi;Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/device/DeviceInfoRepository;Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "okHttpClient",
        "Lokhttp3/OkHttpClient;",
        "getOkHttpClient",
        "()Lokhttp3/OkHttpClient;",
        "okHttpClient$delegate",
        "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
        "appVersion",
        "",
        "getAppVersion",
        "(Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;)Ljava/lang/String;",
        "downloadConfig",
        "url",
        "Lcom/stripe/proto/model/common/UrlPb;",
        "downloadImage",
        "Landroid/graphics/Bitmap;",
        "imageRef",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;",
        "downloadMobilePosConfig",
        "Lcom/stripe/proto/model/config/MobileClientConfig;",
        "data",
        "Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;",
        "configVersion",
        "firmwareVersion",
        "processResponse",
        "response",
        "Lokhttp3/Response;",
        "processResponse$readerupdate_release",
        "retrieveMobilePosConfig",
        "bbposConfig",
        "Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig;",
        "validateConfig",
        "config",
        "Companion",
        "OfflineConfigUpdateListener",
        "readerupdate_release"
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

.field public static final Companion:Lcom/stripe/core/readerupdate/UpdateClient$Companion;

.field private static final FIRMWARE_CONFIG_KEY:Ljava/lang/String; = "firmware-config-key"

.field private static final TAR:Ljava/lang/String; = "application/x-tar"


# instance fields
.field private final armadaApi:Lcom/stripe/proto/api/armada/ArmadaApi;

.field private final deviceInfoRepository:Lcom/stripe/device/DeviceInfoRepository;

.field private final embeddedSoftwareVersionProvider:Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;

.field private final featureFlagRepository:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

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

.field private final offlineConfigUpdateListener:Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;

.field private final okHttpClient$delegate:Lcom/stripe/jvmcore/client/OkHttpClientProvider;

.field private final settingsRepository:Lcom/stripe/core/transaction/SettingsRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 46
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "okHttpClient"

    const-string v3, "getOkHttpClient()Lokhttp3/OkHttpClient;"

    const-class v4, Lcom/stripe/core/readerupdate/UpdateClient;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/stripe/core/readerupdate/UpdateClient;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/stripe/core/readerupdate/UpdateClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/readerupdate/UpdateClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/readerupdate/UpdateClient;->Companion:Lcom/stripe/core/readerupdate/UpdateClient$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/api/armada/ArmadaApi;Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/device/DeviceInfoRepository;Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/armada/ArmadaApi;",
            "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
            "Lcom/stripe/device/DeviceInfoRepository;",
            "Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            "Lcom/stripe/core/transaction/SettingsRepository;",
            "Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "armadaApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "okHttpClientProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "embeddedSoftwareVersionProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureFlagRepository"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingsRepository"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineConfigUpdateListener"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/stripe/core/readerupdate/UpdateClient;->armadaApi:Lcom/stripe/proto/api/armada/ArmadaApi;

    .line 39
    iput-object p3, p0, Lcom/stripe/core/readerupdate/UpdateClient;->deviceInfoRepository:Lcom/stripe/device/DeviceInfoRepository;

    .line 40
    iput-object p4, p0, Lcom/stripe/core/readerupdate/UpdateClient;->embeddedSoftwareVersionProvider:Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;

    .line 41
    iput-object p5, p0, Lcom/stripe/core/readerupdate/UpdateClient;->featureFlagRepository:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    .line 42
    iput-object p6, p0, Lcom/stripe/core/readerupdate/UpdateClient;->settingsRepository:Lcom/stripe/core/transaction/SettingsRepository;

    .line 43
    iput-object p7, p0, Lcom/stripe/core/readerupdate/UpdateClient;->offlineConfigUpdateListener:Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;

    .line 44
    iput-object p8, p0, Lcom/stripe/core/readerupdate/UpdateClient;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 46
    iput-object p2, p0, Lcom/stripe/core/readerupdate/UpdateClient;->okHttpClient$delegate:Lcom/stripe/jvmcore/client/OkHttpClientProvider;

    return-void
.end method

.method private final getAppVersion(Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;)Ljava/lang/String;
    .locals 3

    .line 225
    invoke-interface {p1}, Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    invoke-interface {p1}, Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;->getConfigVersion()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 227
    :cond_1
    invoke-interface {p1}, Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;->getPinKeysetId()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 231
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;->getConfigVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;->getPinKeysetId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 229
    :cond_3
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method private final getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/stripe/core/readerupdate/UpdateClient;->okHttpClient$delegate:Lcom/stripe/jvmcore/client/OkHttpClientProvider;

    sget-object v1, Lcom/stripe/core/readerupdate/UpdateClient;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/stripe/jvmcore/client/OkHttpClientProvider;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method private final retrieveMobilePosConfig(Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig;)Lcom/stripe/proto/model/config/MobileClientConfig;
    .locals 161
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/core/hardware/updates/ReaderUpdateException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 127
    iget-object v1, v0, Lcom/stripe/core/readerupdate/UpdateClient;->deviceInfoRepository:Lcom/stripe/device/DeviceInfoRepository;

    invoke-interface {v1}, Lcom/stripe/device/DeviceInfoRepository;->getPlatformDeviceInfo()Lcom/stripe/device/PlatformDeviceInfo;

    move-result-object v1

    .line 129
    invoke-interface {v1}, Lcom/stripe/device/PlatformDeviceInfo;->getHardwareModel()Lcom/stripe/proto/model/common/HardwareModel;

    move-result-object v2

    .line 132
    iget-object v3, v2, Lcom/stripe/proto/model/common/HardwareModel;->unknown_hardware:Lcom/stripe/proto/model/common/UnknownHardware;

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-nez v3, :cond_13

    .line 138
    sget-object v7, Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;->READER:Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;

    .line 139
    new-instance v8, Lcom/stripe/proto/model/common/ApplicationModel;

    .line 141
    iget-object v3, v0, Lcom/stripe/core/readerupdate/UpdateClient;->embeddedSoftwareVersionProvider:Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;

    invoke-direct {v0, v3}, Lcom/stripe/core/readerupdate/UpdateClient;->getAppVersion(Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x4

    const/4 v13, 0x0

    .line 139
    const-string v9, "firmware-config-key"

    const/4 v11, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/stripe/proto/model/common/ApplicationModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 144
    iget-object v3, v2, Lcom/stripe/proto/model/common/HardwareModel;->simulated_hardware:Lcom/stripe/proto/model/common/SimulatedHardware;

    if-eqz v3, :cond_0

    invoke-interface {v1}, Lcom/stripe/device/PlatformDeviceInfo;->isSimulated()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v14, v3

    goto :goto_0

    :cond_0
    move-object v14, v5

    .line 145
    :goto_0
    iget-object v2, v2, Lcom/stripe/proto/model/common/HardwareModel;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    invoke-interface {v1}, Lcom/stripe/device/PlatformDeviceInfo;->isSimulated()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v13, v2

    goto :goto_1

    :cond_1
    move-object v13, v5

    .line 143
    :goto_1
    new-instance v9, Lcom/stripe/proto/model/common/HardwareModel;

    const/16 v19, 0x1e7

    const/16 v20, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v9 .. v20}, Lcom/stripe/proto/model/common/HardwareModel;-><init>(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v8

    .line 147
    invoke-interface {v1}, Lcom/stripe/device/PlatformDeviceInfo;->getSerialNumber()Ljava/lang/String;

    move-result-object v8

    .line 148
    iget-object v2, v0, Lcom/stripe/core/readerupdate/UpdateClient;->embeddedSoftwareVersionProvider:Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;

    invoke-interface {v2}, Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;->getPinKeyProfileId()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_2

    move-object/from16 v18, v3

    goto :goto_2

    :cond_2
    move-object/from16 v18, v2

    .line 149
    :goto_2
    iget-object v2, v0, Lcom/stripe/core/readerupdate/UpdateClient;->embeddedSoftwareVersionProvider:Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;

    invoke-interface {v2}, Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;->getConfigVersion()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move-object/from16 v17, v3

    goto :goto_3

    :cond_3
    move-object/from16 v17, v2

    .line 150
    :goto_3
    iget-object v2, v0, Lcom/stripe/core/readerupdate/UpdateClient;->embeddedSoftwareVersionProvider:Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;

    invoke-interface {v2}, Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    move-object/from16 v16, v3

    goto :goto_4

    :cond_4
    move-object/from16 v16, v2

    .line 137
    :goto_4
    new-instance v20, Lcom/stripe/proto/model/common/DeviceInfo;

    const v23, 0xf1f0

    const/16 v24, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    move-object/from16 v6, v20

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v6 .. v24}, Lcom/stripe/proto/model/common/DeviceInfo;-><init>(Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;Ljava/lang/String;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/ApplicationModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InternetConnectionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/Location;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz p1, :cond_5

    .line 152
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->getConfigHash()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_5
    move-object v2, v5

    :goto_5
    if-nez v2, :cond_6

    move-object/from16 v21, v3

    goto :goto_6

    :cond_6
    move-object/from16 v21, v2

    .line 136
    :goto_6
    new-instance v19, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest;

    const/16 v23, 0x0

    const/16 v24, 0x8

    const/16 v25, 0x0

    move-object/from16 v22, p2

    move-object/from16 v20, v6

    invoke-direct/range {v19 .. v25}, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest;-><init>(Lcom/stripe/proto/model/common/DeviceInfo;Ljava/lang/String;Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v19

    .line 157
    iget-object v3, v0, Lcom/stripe/core/readerupdate/UpdateClient;->armadaApi:Lcom/stripe/proto/api/armada/ArmadaApi;

    invoke-virtual {v3, v2}, Lcom/stripe/proto/api/armada/ArmadaApi;->downloadMobilePosConfig(Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object v2

    .line 158
    instance-of v3, v2, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$Success;

    const/4 v6, 0x0

    if-eqz v3, :cond_10

    .line 159
    check-cast v2, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$Success;

    invoke-virtual {v2}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$Success;->getResponse()Lcom/squareup/wire/Message;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;

    iget-object v3, v3, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    if-nez v3, :cond_7

    new-instance v7, Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    const/16 v159, 0x3f

    const/16 v160, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const-wide/16 v69, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const-wide/16 v77, 0x0

    const-wide/16 v79, 0x0

    const/16 v81, 0x0

    const-wide/16 v82, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const-wide/16 v91, 0x0

    const/16 v93, 0x0

    const/16 v94, 0x0

    const-wide/16 v95, 0x0

    const/16 v97, 0x0

    const-wide/16 v98, 0x0

    const/16 v100, 0x0

    const/16 v101, 0x0

    const-wide/16 v102, 0x0

    const-wide/16 v104, 0x0

    const/16 v106, 0x0

    const/16 v107, 0x0

    const/16 v108, 0x0

    const/16 v109, 0x0

    const/16 v110, 0x0

    const/16 v111, 0x0

    const/16 v112, 0x0

    const/16 v113, 0x0

    const/16 v114, 0x0

    const/16 v115, 0x0

    const/16 v116, 0x0

    const/16 v117, 0x0

    const/16 v118, 0x0

    const/16 v119, 0x0

    const/16 v120, 0x0

    const/16 v121, 0x0

    const/16 v122, 0x0

    const/16 v123, 0x0

    const/16 v124, 0x0

    const/16 v125, 0x0

    const/16 v126, 0x0

    const/16 v127, 0x0

    const/16 v128, 0x0

    const/16 v129, 0x0

    const/16 v130, 0x0

    const/16 v131, 0x0

    const/16 v132, 0x0

    const/16 v133, 0x0

    const/16 v134, 0x0

    const/16 v135, 0x0

    const/16 v136, 0x0

    const/16 v137, 0x0

    const/16 v138, 0x0

    const/16 v139, 0x0

    const/16 v140, 0x0

    const/16 v141, 0x0

    const-wide/16 v142, 0x0

    const/16 v144, 0x0

    const/16 v145, 0x0

    const/16 v146, 0x0

    const/16 v147, 0x0

    const/16 v148, 0x0

    const-wide/16 v149, 0x0

    const-wide/16 v151, 0x0

    const/16 v153, 0x0

    const/16 v154, 0x0

    const/16 v155, -0x1

    const/16 v156, -0x1

    const/16 v157, -0x1

    const/16 v158, -0x1

    invoke-direct/range {v7 .. v160}, Lcom/stripe/proto/model/config/ReaderFeatureFlags;-><init>(ZZZZJZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZJZZZZZZJJZJZZZZZZZJZZJZJZZJJZLcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZJZZZZZJJZLokio/ByteString;IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, v7

    .line 161
    :cond_7
    iget-object v7, v0, Lcom/stripe/core/readerupdate/UpdateClient;->featureFlagRepository:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    invoke-virtual {v7, v3}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->putFeatureFlags(Lcom/stripe/proto/model/config/ReaderFeatureFlags;)V

    .line 163
    invoke-virtual {v2}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$Success;->getResponse()Lcom/squareup/wire/Message;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;

    iget-object v3, v3, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->config:Lcom/stripe/proto/model/config/MobileClientConfig;

    if-eqz v3, :cond_8

    iget-object v3, v3, Lcom/stripe/proto/model/config/MobileClientConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    if-nez v3, :cond_9

    :cond_8
    new-instance v3, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    const/4 v7, 0x3

    invoke-direct {v3, v5, v5, v7, v5}, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;-><init>(Ljava/util/Map;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_9
    move-object v11, v3

    .line 164
    iget-object v3, v0, Lcom/stripe/core/readerupdate/UpdateClient;->settingsRepository:Lcom/stripe/core/transaction/SettingsRepository;

    invoke-virtual {v2}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$Success;->getResponse()Lcom/squareup/wire/Message;

    move-result-object v7

    check-cast v7, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;

    iget-object v7, v7, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->config:Lcom/stripe/proto/model/config/MobileClientConfig;

    if-eqz v7, :cond_a

    iget-object v7, v7, Lcom/stripe/proto/model/config/MobileClientConfig;->bbpos_config:Lcom/stripe/proto/model/config/BBPOSConfig;

    if-eqz v7, :cond_a

    iget-object v7, v7, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_name:Ljava/lang/String;

    goto :goto_7

    :cond_a
    move-object v7, v5

    :goto_7
    invoke-virtual {v3, v7}, Lcom/stripe/core/transaction/SettingsRepository;->setKeyProfileName(Ljava/lang/String;)V

    .line 165
    iget-object v3, v0, Lcom/stripe/core/readerupdate/UpdateClient;->settingsRepository:Lcom/stripe/core/transaction/SettingsRepository;

    invoke-virtual {v3, v11}, Lcom/stripe/core/transaction/SettingsRepository;->setTippingConfig(Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;)V

    .line 166
    iget-object v3, v0, Lcom/stripe/core/readerupdate/UpdateClient;->settingsRepository:Lcom/stripe/core/transaction/SettingsRepository;

    new-instance v7, Lcom/stripe/proto/model/config/MagstripeConfig;

    invoke-direct {v7, v6, v5, v4, v5}, Lcom/stripe/proto/model/config/MagstripeConfig;-><init>(ZLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v7}, Lcom/stripe/core/transaction/SettingsRepository;->setMagstripeConfig(Lcom/stripe/proto/model/config/MagstripeConfig;)V

    .line 170
    invoke-interface {v1}, Lcom/stripe/device/PlatformDeviceInfo;->isSimulated()Z

    move-result v3

    if-nez v3, :cond_e

    .line 171
    iget-object v8, v0, Lcom/stripe/core/readerupdate/UpdateClient;->offlineConfigUpdateListener:Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;

    .line 172
    invoke-interface {v1}, Lcom/stripe/device/PlatformDeviceInfo;->getSerialNumber()Ljava/lang/String;

    move-result-object v9

    .line 173
    invoke-virtual {v2}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$Success;->getResponse()Lcom/squareup/wire/Message;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;

    iget-object v1, v1, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->config:Lcom/stripe/proto/model/config/MobileClientConfig;

    if-eqz v1, :cond_b

    iget-object v1, v1, Lcom/stripe/proto/model/config/MobileClientConfig;->offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    move-object v10, v1

    goto :goto_8

    :cond_b
    move-object v10, v5

    .line 175
    :goto_8
    invoke-virtual {v2}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$Success;->getResponse()Lcom/squareup/wire/Message;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;

    iget-object v1, v1, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->config:Lcom/stripe/proto/model/config/MobileClientConfig;

    if-eqz v1, :cond_c

    iget-object v1, v1, Lcom/stripe/proto/model/config/MobileClientConfig;->bluetooth_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;

    move-object v12, v1

    goto :goto_9

    :cond_c
    move-object v12, v5

    .line 176
    :goto_9
    invoke-virtual {v2}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$Success;->getResponse()Lcom/squareup/wire/Message;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;

    iget-object v1, v1, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->config:Lcom/stripe/proto/model/config/MobileClientConfig;

    if-eqz v1, :cond_d

    iget-object v5, v1, Lcom/stripe/proto/model/config/MobileClientConfig;->usb_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    :cond_d
    move-object v13, v5

    .line 171
    invoke-interface/range {v8 .. v13}, Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;->onOfflineConfigUpdateForMobileReader(Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;)V

    .line 180
    :cond_e
    invoke-virtual {v2}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$Success;->getResponse()Lcom/squareup/wire/Message;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;

    iget-object v1, v1, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;->config:Lcom/stripe/proto/model/config/MobileClientConfig;

    if-nez v1, :cond_f

    new-instance v2, Lcom/stripe/proto/model/config/MobileClientConfig;

    const/16 v14, 0x7ff

    const/4 v15, 0x0

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

    invoke-direct/range {v2 .. v15}, Lcom/stripe/proto/model/config/MobileClientConfig;-><init>(Lcom/stripe/proto/model/config/ClientVisualConfig;Lcom/stripe/proto/model/config/ClientCheckoutOptions;Ljava/lang/String;Lcom/stripe/proto/model/config/BBPOSConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v2

    :cond_f
    invoke-direct {v0, v1}, Lcom/stripe/core/readerupdate/UpdateClient;->validateConfig(Lcom/stripe/proto/model/config/MobileClientConfig;)Lcom/stripe/proto/model/config/MobileClientConfig;

    move-result-object v1

    return-object v1

    .line 183
    :cond_10
    instance-of v1, v2, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;

    const-string v3, "message"

    const/4 v7, 0x1

    const-string v8, "code"

    const-string v9, "DownloadMobilePosConfig failed"

    if-nez v1, :cond_12

    .line 192
    instance-of v1, v2, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;

    if-eqz v1, :cond_11

    .line 193
    iget-object v1, v0, Lcom/stripe/core/readerupdate/UpdateClient;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 195
    new-array v10, v4, [Lkotlin/Pair;

    check-cast v2, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;

    invoke-virtual {v2}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;->getCode()Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    move-result-object v11

    invoke-virtual {v11}, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->name()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    aput-object v8, v10, v6

    .line 196
    invoke-virtual {v2}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v10, v7

    .line 193
    invoke-interface {v1, v9, v10}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 198
    new-instance v1, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedServerError;

    invoke-direct {v1, v9, v5, v4, v5}, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedServerError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    :cond_11
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 184
    :cond_12
    iget-object v1, v0, Lcom/stripe/core/readerupdate/UpdateClient;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 186
    new-array v10, v4, [Lkotlin/Pair;

    check-cast v2, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;

    invoke-virtual {v2}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;->getCode()Lcom/stripe/proto/net/rpc/base/RpcEC;

    move-result-object v11

    invoke-virtual {v11}, Lcom/stripe/proto/net/rpc/base/RpcEC;->name()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    aput-object v8, v10, v6

    .line 187
    invoke-virtual {v2}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v10, v7

    .line 184
    invoke-interface {v1, v9, v10}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 189
    new-instance v1, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedServerError;

    invoke-direct {v1, v9, v5, v4, v5}, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedServerError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 133
    :cond_13
    new-instance v1, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UnexpectedError;

    const-string v2, "No connected reader"

    invoke-direct {v1, v2, v5, v4, v5}, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UnexpectedError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method static synthetic retrieveMobilePosConfig$default(Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig;ILjava/lang/Object;)Lcom/stripe/proto/model/config/MobileClientConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/core/hardware/updates/ReaderUpdateException;
        }
    .end annotation

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 123
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/stripe/core/readerupdate/UpdateClient;->retrieveMobilePosConfig(Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig;)Lcom/stripe/proto/model/config/MobileClientConfig;

    move-result-object p0

    return-object p0
.end method

.method private final validateConfig(Lcom/stripe/proto/model/config/MobileClientConfig;)Lcom/stripe/proto/model/config/MobileClientConfig;
    .locals 14

    .line 204
    iget-object v0, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->bbpos_config:Lcom/stripe/proto/model/config/BBPOSConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 205
    iget-object v2, v0, Lcom/stripe/proto/model/config/BBPOSConfig;->config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/stripe/proto/model/config/BBPOSConfig;->config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    new-instance v3, Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    const/16 v12, 0xff

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v13}, Lcom/stripe/proto/model/common/ClientVersionSpecPb;-><init>(Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/model/common/UrlPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;Lcom/stripe/proto/model/common/DeviceAssetInfo;Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    :cond_0
    iget-object v2, p0, Lcom/stripe/core/readerupdate/UpdateClient;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v3, "MobileClientConfig missing configSpec"

    new-array v4, v1, [Lkotlin/Pair;

    invoke-interface {v2, v3, v4}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 208
    :cond_1
    iget-object v2, v0, Lcom/stripe/proto/model/config/BBPOSConfig;->firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/stripe/proto/model/config/BBPOSConfig;->firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    new-instance v3, Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    const/16 v12, 0xff

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v13}, Lcom/stripe/proto/model/common/ClientVersionSpecPb;-><init>(Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/model/common/UrlPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;Lcom/stripe/proto/model/common/DeviceAssetInfo;Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 209
    :cond_2
    iget-object v2, p0, Lcom/stripe/core/readerupdate/UpdateClient;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v3, "MobileClientConfig missing firmwareSpec"

    new-array v4, v1, [Lkotlin/Pair;

    invoke-interface {v2, v3, v4}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 211
    :cond_3
    iget-object v2, v0, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_pek0:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, v0, Lcom/stripe/proto/model/config/BBPOSConfig;->key_profile_name:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 212
    :goto_0
    iget-object v0, p0, Lcom/stripe/core/readerupdate/UpdateClient;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v2, "MobileClientConfig missing valid key name or pek0"

    new-array v3, v1, [Lkotlin/Pair;

    invoke-interface {v0, v2, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 204
    :cond_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_7

    .line 214
    iget-object v0, p0, Lcom/stripe/core/readerupdate/UpdateClient;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v2, "MobileClientConfig missing bbposConfig"

    new-array v3, v1, [Lkotlin/Pair;

    invoke-interface {v0, v2, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 216
    :cond_7
    iget-object v0, p1, Lcom/stripe/proto/model/config/MobileClientConfig;->client_config_version:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_8

    .line 217
    iget-object v0, p0, Lcom/stripe/core/readerupdate/UpdateClient;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v2, "MobileClientConfig missing clientConfigVersion"

    new-array v1, v1, [Lkotlin/Pair;

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    :cond_8
    return-object p1
.end method


# virtual methods
.method public final downloadConfig(Lcom/stripe/proto/model/common/UrlPb;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/core/hardware/updates/ReaderUpdateException;
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    sget-object v1, Lcom/stripe/core/readerupdate/UpdateClient;->Companion:Lcom/stripe/core/readerupdate/UpdateClient$Companion;

    invoke-virtual {v1, p1}, Lcom/stripe/core/readerupdate/UpdateClient$Companion;->toUrl(Lcom/stripe/proto/model/common/UrlPb;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 103
    invoke-direct {p0}, Lcom/stripe/core/readerupdate/UpdateClient;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lokhttp3/Call;)Lokhttp3/Response;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 111
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 113
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "application/x-tar"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/stripe/core/readerupdate/UpdateClient$Companion;->extractFirstHexFileFromTar(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    return-object p1

    .line 119
    :cond_1
    new-instance p1, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailed;

    const-string v0, "Unexpected failure downloading config"

    invoke-direct {p1, v0, v3, v2, v3}, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailed;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    .line 106
    :cond_2
    new-instance v0, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedServerError;

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Failure downloading config. Code: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", Message: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-direct {v0, p1, v3, v2, v3}, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedServerError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public final downloadImage(Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/core/hardware/updates/ReaderUpdateException;
        }
    .end annotation

    const-string v0, "imageRef"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 73
    iget-object p1, p1, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->image_url:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 76
    invoke-direct {p0}, Lcom/stripe/core/readerupdate/UpdateClient;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 78
    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lokhttp3/Call;)Lokhttp3/Response;

    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Lcom/stripe/core/readerupdate/UpdateClient;->processResponse$readerupdate_release(Lokhttp3/Response;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final downloadMobilePosConfig(Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;)Lcom/stripe/proto/model/config/MobileClientConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/core/hardware/updates/ReaderUpdateException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 50
    invoke-static {p0, p1, v0, v1, v0}, Lcom/stripe/core/readerupdate/UpdateClient;->retrieveMobilePosConfig$default(Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig;ILjava/lang/Object;)Lcom/stripe/proto/model/config/MobileClientConfig;

    move-result-object p1

    return-object p1
.end method

.method public final downloadMobilePosConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/proto/model/config/MobileClientConfig;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/core/hardware/updates/ReaderUpdateException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    new-instance p1, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedServerError;

    const-string p2, "Failed to update, no version info"

    const/4 v1, 0x2

    invoke-direct {p1, p2, v0, v1, v0}, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedServerError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    .line 64
    :cond_1
    :goto_0
    const-string v1, ""

    if-nez p1, :cond_2

    move-object v4, v1

    goto :goto_1

    :cond_2
    move-object v4, p1

    :goto_1
    if-nez p2, :cond_3

    move-object v3, v1

    goto :goto_2

    :cond_3
    move-object v3, p2

    .line 63
    :goto_2
    new-instance v2, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 p1, 0x1

    .line 62
    invoke-static {p0, v0, v2, p1, v0}, Lcom/stripe/core/readerupdate/UpdateClient;->retrieveMobilePosConfig$default(Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig;ILjava/lang/Object;)Lcom/stripe/proto/model/config/MobileClientConfig;

    move-result-object p1

    return-object p1
.end method

.method public final processResponse$readerupdate_release(Lokhttp3/Response;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/core/hardware/updates/ReaderUpdateException;
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 87
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object p1, v0

    check-cast p1, Lokhttp3/ResponseBody;

    .line 88
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v3, p1

    check-cast v3, Ljava/io/InputStream;

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {p1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string p1, "use(...)"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v3

    :catchall_0
    move-exception v3

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-static {p1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v3

    :try_start_8
    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 91
    :catch_0
    new-instance p1, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailed;

    const-string v0, "Failure to decode image"

    invoke-direct {p1, v0, v2, v1, v2}, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailed;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    .line 95
    :cond_0
    new-instance v0, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedServerError;

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failure downloading image. Code: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-direct {v0, p1, v2, v1, v2}, Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedServerError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method
