.class public final Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;
.super Ljava/lang/Object;
.source "ReaderPlatformDeviceInfo.kt"

# interfaces
.implements Lcom/stripe/device/PlatformDeviceInfo;
.implements Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;


# annotations
.annotation runtime Ldagger/Reusable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo$Companion;,
        Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u001e2\u00020\u00012\u00020\u0002:\u0001\u001eB\u0017\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0008\u001a\u00020\tH\u0002J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\n\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016J\u0008\u0010\r\u001a\u00020\u000bH\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u000bH\u0016J\n\u0010\u0011\u001a\u0004\u0018\u00010\u000bH\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\n\u0010\u0014\u001a\u0004\u0018\u00010\u000bH\u0016J\u0008\u0010\u0015\u001a\u00020\u000bH\u0016J\u0008\u0010\u0016\u001a\u00020\u000bH\u0016J\u0008\u0010\u0017\u001a\u00020\u000bH\u0016J\u0008\u0010\u0018\u001a\u00020\u000bH\u0016J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u000c\u0010\u001b\u001a\u00020\u000f*\u00020\u001cH\u0002J\u000c\u0010\u001d\u001a\u00020\u000f*\u00020\u001cH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;",
        "Lcom/stripe/device/PlatformDeviceInfo;",
        "Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;",
        "statusManager",
        "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
        "buildValues",
        "Lcom/stripe/core/device/BuildValues;",
        "(Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/device/BuildValues;)V",
        "createCotsHardware",
        "Lcom/stripe/proto/model/common/COTSHardware;",
        "getConfigVersion",
        "",
        "getEmvKeyProfileId",
        "getFirmwareVersion",
        "getHardwareModel",
        "Lcom/stripe/proto/model/common/HardwareModel;",
        "getHardwareVersion",
        "getMacKeyProfileId",
        "getMainlandDeviceType",
        "Lcom/stripe/device/MainlandDeviceType;",
        "getPinKeyProfileId",
        "getPinKeysetId",
        "getSerialNumber",
        "getSettingsVersion",
        "getSoftwareVersion",
        "isSimulated",
        "",
        "getRealHardwareModel",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "getSimulatedHardwareModel",
        "Companion",
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
.field private static final Companion:Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo$Companion;

.field private static final NO_CONNECTED_READER:Ljava/lang/String; = "No connected reader"

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final UNKNOWN_READER_CONNECTED:Ljava/lang/String; = "Unknown reader connected"


# instance fields
.field private final buildValues:Lcom/stripe/core/device/BuildValues;

.field private final statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;->Companion:Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/device/BuildValues;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "statusManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildValues"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    .line 42
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;->buildValues:Lcom/stripe/core/device/BuildValues;

    return-void
.end method

.method private final createCotsHardware()Lcom/stripe/proto/model/common/COTSHardware;
    .locals 8

    .line 114
    new-instance v0, Lcom/stripe/proto/model/common/COTSHardware;

    .line 115
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;->buildValues:Lcom/stripe/core/device/BuildValues;

    invoke-virtual {v1}, Lcom/stripe/core/device/BuildValues;->getModel()Ljava/lang/String;

    move-result-object v2

    .line 116
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;->buildValues:Lcom/stripe/core/device/BuildValues;

    invoke-virtual {v1}, Lcom/stripe/core/device/BuildValues;->getManufacturer()Lcom/stripe/core/device/HardwareManufacturer;

    move-result-object v1

    invoke-interface {v1}, Lcom/stripe/core/device/HardwareManufacturer;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 117
    sget-object v4, Lcom/stripe/proto/model/common/MobileOS;->ANDROID:Lcom/stripe/proto/model/common/MobileOS;

    const/16 v6, 0x11

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 114
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/model/common/COTSHardware;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/MobileOS;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final getRealHardwareModel(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/proto/model/common/HardwareModel;
    .locals 13

    .line 61
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object p1

    sget-object v0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/DeviceType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 84
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/DeviceType;->getHardwareModel()Lcom/stripe/proto/model/common/HardwareModel;

    move-result-object p1

    return-object p1

    .line 65
    :pswitch_1
    new-instance v0, Lcom/stripe/proto/model/common/HardwareModel;

    .line 66
    new-instance v1, Lcom/stripe/proto/model/common/UnknownHardware;

    .line 67
    const-string p1, "Unknown reader connected"

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 66
    invoke-direct {v1, p1, v3, v2, v3}, Lcom/stripe/proto/model/common/UnknownHardware;-><init>(Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v10, 0x1fe

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 65
    invoke-direct/range {v0 .. v11}, Lcom/stripe/proto/model/common/HardwareModel;-><init>(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 62
    :pswitch_2
    new-instance v1, Lcom/stripe/proto/model/common/HardwareModel;

    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;->createCotsHardware()Lcom/stripe/proto/model/common/COTSHardware;

    move-result-object v7

    const/16 v11, 0x1df

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v12}, Lcom/stripe/proto/model/common/HardwareModel;-><init>(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final getSimulatedHardwareModel(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/proto/model/common/HardwareModel;
    .locals 14

    .line 90
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v0

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/DeviceType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 107
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/DeviceType;->getSimulatedHardware()Lcom/stripe/proto/model/common/SimulatedHardware;

    move-result-object p1

    move-object v7, p1

    goto :goto_0

    .line 92
    :pswitch_1
    new-instance v0, Lcom/stripe/proto/model/common/SimulatedHardware;

    sget-object v2, Lcom/stripe/proto/model/common/BBPosHardware;->BBPOS_MODEL_NOT_SET:Lcom/stripe/proto/model/common/BBPosHardware;

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/model/common/SimulatedHardware;-><init>(Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/COTSHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v7, v0

    goto :goto_0

    .line 91
    :pswitch_2
    new-instance v1, Lcom/stripe/proto/model/common/SimulatedHardware;

    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;->createCotsHardware()Lcom/stripe/proto/model/common/COTSHardware;

    move-result-object v4

    const/16 v6, 0xb

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/proto/model/common/SimulatedHardware;-><init>(Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/COTSHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v7, v1

    .line 109
    :goto_0
    new-instance v2, Lcom/stripe/proto/model/common/HardwareModel;

    const/16 v12, 0x1ef

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v13}, Lcom/stripe/proto/model/common/HardwareModel;-><init>(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getConfigVersion()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Reader;->getConfigVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const-string v0, "unknown"

    return-object v0
.end method

.method public getEmvKeyProfileId()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Reader;->getEmvKeyProfileId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirmwareVersion()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Reader;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const-string v0, "unknown"

    return-object v0
.end method

.method public getHardwareModel()Lcom/stripe/proto/model/common/HardwareModel;
    .locals 13

    .line 46
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Reader;->isSimulated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;->getSimulatedHardwareModel(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/proto/model/common/HardwareModel;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_0
    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;->getRealHardwareModel(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/proto/model/common/HardwareModel;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    return-object v0

    .line 52
    :cond_2
    :goto_1
    new-instance v1, Lcom/stripe/proto/model/common/HardwareModel;

    .line 53
    new-instance v2, Lcom/stripe/proto/model/common/UnknownHardware;

    .line 54
    const-string v0, "No connected reader"

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 53
    invoke-direct {v2, v0, v4, v3, v4}, Lcom/stripe/proto/model/common/UnknownHardware;-><init>(Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v11, 0x1fe

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 52
    invoke-direct/range {v1 .. v12}, Lcom/stripe/proto/model/common/HardwareModel;-><init>(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public getHardwareVersion()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Reader;->getHardwareVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const-string v0, "unknown"

    return-object v0
.end method

.method public getMacKeyProfileId()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Reader;->getMacKeyProfileId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMainlandDeviceType()Lcom/stripe/device/MainlandDeviceType;
    .locals 2

    .line 126
    new-instance v0, Lcom/stripe/device/MainlandDeviceType;

    .line 127
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/DeviceType;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "unknown"

    .line 126
    :cond_1
    invoke-direct {v0, v1}, Lcom/stripe/device/MainlandDeviceType;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getPinKeyProfileId()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Reader;->getPinKeyProfileId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPinKeysetId()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Reader;->getPinKeysetId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const-string v0, "unknown"

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Reader;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const-string v0, "unknown"

    return-object v0
.end method

.method public getSettingsVersion()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Reader;->getSettingsVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const-string v0, "unknown"

    return-object v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Reader;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const-string v0, "unknown"

    return-object v0
.end method

.method public isSimulated()Z
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Reader;->isSimulated()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
