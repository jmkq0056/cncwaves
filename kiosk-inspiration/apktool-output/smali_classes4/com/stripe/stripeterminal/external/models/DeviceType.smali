.class public final enum Lcom/stripe/stripeterminal/external/models/DeviceType;
.super Ljava/lang/Enum;
.source "DeviceType.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/DeviceType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/stripeterminal/external/models/DeviceType;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001e\u0008\u0087\u0081\u0002\u0018\u0000 (2\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00060\u0002j\u0002`\u0003:\u0001(B-\u0008\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001c\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0015\u0010\u0010\u001a\u0004\u0008\u0016\u0010\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"j\u0002\u0008#j\u0002\u0008$j\u0002\u0008%j\u0002\u0008&j\u0002\u0008\'\u00a8\u0006)"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/DeviceType;",
        "",
        "Ljava/io/Serializable;",
        "Lcom/stripe/serialization/KmpSerializable;",
        "deviceName",
        "",
        "serialPrefixes",
        "",
        "hardwareModel",
        "Lcom/stripe/proto/model/common/HardwareModel;",
        "simulatedHardware",
        "Lcom/stripe/proto/model/common/SimulatedHardware;",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/SimulatedHardware;)V",
        "getDeviceName",
        "()Ljava/lang/String;",
        "getHardwareModel$annotations",
        "()V",
        "getHardwareModel",
        "()Lcom/stripe/proto/model/common/HardwareModel;",
        "getSerialPrefixes",
        "()Ljava/util/List;",
        "getSimulatedHardware$annotations",
        "getSimulatedHardware",
        "()Lcom/stripe/proto/model/common/SimulatedHardware;",
        "CHIPPER_1X",
        "CHIPPER_2X",
        "STRIPE_M2",
        "TAP_TO_PAY_DEVICE",
        "VERIFONE_P400",
        "WISECUBE",
        "WISEPAD_3",
        "WISEPAD_3S",
        "WISEPOS_E",
        "WISEPOS_E_DEVKIT",
        "ETNA",
        "STRIPE_S700",
        "STRIPE_S700_DEVKIT",
        "STRIPE_S710",
        "STRIPE_S710_DEVKIT",
        "UNKNOWN",
        "Companion",
        "public_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
    with = Lcom/stripe/stripeterminal/external/json/DeviceTypeSerializer;
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/stripe/stripeterminal/external/models/DeviceType;

.field private static final $cachedSerializer$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final enum CHIPPER_1X:Lcom/stripe/stripeterminal/external/models/DeviceType;

.field public static final enum CHIPPER_2X:Lcom/stripe/stripeterminal/external/models/DeviceType;

.field public static final Companion:Lcom/stripe/stripeterminal/external/models/DeviceType$Companion;

.field public static final enum ETNA:Lcom/stripe/stripeterminal/external/models/DeviceType;

.field public static final enum STRIPE_M2:Lcom/stripe/stripeterminal/external/models/DeviceType;

.field public static final enum STRIPE_S700:Lcom/stripe/stripeterminal/external/models/DeviceType;

.field public static final enum STRIPE_S700_DEVKIT:Lcom/stripe/stripeterminal/external/models/DeviceType;

.field public static final enum STRIPE_S710:Lcom/stripe/stripeterminal/external/models/DeviceType;

.field public static final enum STRIPE_S710_DEVKIT:Lcom/stripe/stripeterminal/external/models/DeviceType;

.field public static final enum TAP_TO_PAY_DEVICE:Lcom/stripe/stripeterminal/external/models/DeviceType;

.field public static final enum UNKNOWN:Lcom/stripe/stripeterminal/external/models/DeviceType;

.field public static final enum VERIFONE_P400:Lcom/stripe/stripeterminal/external/models/DeviceType;

.field public static final enum WISECUBE:Lcom/stripe/stripeterminal/external/models/DeviceType;

.field public static final enum WISEPAD_3:Lcom/stripe/stripeterminal/external/models/DeviceType;

.field public static final enum WISEPAD_3S:Lcom/stripe/stripeterminal/external/models/DeviceType;

.field public static final enum WISEPOS_E:Lcom/stripe/stripeterminal/external/models/DeviceType;

.field public static final enum WISEPOS_E_DEVKIT:Lcom/stripe/stripeterminal/external/models/DeviceType;


# instance fields
.field private final deviceName:Ljava/lang/String;

.field private final hardwareModel:Lcom/stripe/proto/model/common/HardwareModel;

.field private final serialPrefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final simulatedHardware:Lcom/stripe/proto/model/common/SimulatedHardware;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/stripeterminal/external/models/DeviceType;
    .locals 17

    sget-object v1, Lcom/stripe/stripeterminal/external/models/DeviceType;->CHIPPER_1X:Lcom/stripe/stripeterminal/external/models/DeviceType;

    sget-object v2, Lcom/stripe/stripeterminal/external/models/DeviceType;->CHIPPER_2X:Lcom/stripe/stripeterminal/external/models/DeviceType;

    sget-object v3, Lcom/stripe/stripeterminal/external/models/DeviceType;->STRIPE_M2:Lcom/stripe/stripeterminal/external/models/DeviceType;

    sget-object v4, Lcom/stripe/stripeterminal/external/models/DeviceType;->TAP_TO_PAY_DEVICE:Lcom/stripe/stripeterminal/external/models/DeviceType;

    sget-object v5, Lcom/stripe/stripeterminal/external/models/DeviceType;->VERIFONE_P400:Lcom/stripe/stripeterminal/external/models/DeviceType;

    sget-object v6, Lcom/stripe/stripeterminal/external/models/DeviceType;->WISECUBE:Lcom/stripe/stripeterminal/external/models/DeviceType;

    sget-object v7, Lcom/stripe/stripeterminal/external/models/DeviceType;->WISEPAD_3:Lcom/stripe/stripeterminal/external/models/DeviceType;

    sget-object v8, Lcom/stripe/stripeterminal/external/models/DeviceType;->WISEPAD_3S:Lcom/stripe/stripeterminal/external/models/DeviceType;

    sget-object v9, Lcom/stripe/stripeterminal/external/models/DeviceType;->WISEPOS_E:Lcom/stripe/stripeterminal/external/models/DeviceType;

    sget-object v10, Lcom/stripe/stripeterminal/external/models/DeviceType;->WISEPOS_E_DEVKIT:Lcom/stripe/stripeterminal/external/models/DeviceType;

    sget-object v11, Lcom/stripe/stripeterminal/external/models/DeviceType;->ETNA:Lcom/stripe/stripeterminal/external/models/DeviceType;

    sget-object v12, Lcom/stripe/stripeterminal/external/models/DeviceType;->STRIPE_S700:Lcom/stripe/stripeterminal/external/models/DeviceType;

    sget-object v13, Lcom/stripe/stripeterminal/external/models/DeviceType;->STRIPE_S700_DEVKIT:Lcom/stripe/stripeterminal/external/models/DeviceType;

    sget-object v14, Lcom/stripe/stripeterminal/external/models/DeviceType;->STRIPE_S710:Lcom/stripe/stripeterminal/external/models/DeviceType;

    sget-object v15, Lcom/stripe/stripeterminal/external/models/DeviceType;->STRIPE_S710_DEVKIT:Lcom/stripe/stripeterminal/external/models/DeviceType;

    sget-object v16, Lcom/stripe/stripeterminal/external/models/DeviceType;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/DeviceType;

    filled-new-array/range {v1 .. v16}, [Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 24

    .line 57
    new-instance v0, Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 58
    sget-object v1, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->Chipper1X:Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    invoke-virtual {v1}, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->getApiDeviceType()Ljava/lang/String;

    move-result-object v3

    .line 59
    sget-object v1, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->Chipper1X:Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    invoke-virtual {v1}, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->getSerialPrefixes()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    .line 60
    new-instance v5, Lcom/stripe/proto/model/common/HardwareModel;

    sget-object v9, Lcom/stripe/proto/model/common/BBPosHardware;->CHIPPER1X:Lcom/stripe/proto/model/common/BBPosHardware;

    const/16 v15, 0x1f7

    const/16 v16, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v5 .. v16}, Lcom/stripe/proto/model/common/HardwareModel;-><init>(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 61
    new-instance v6, Lcom/stripe/proto/model/common/SimulatedHardware;

    sget-object v8, Lcom/stripe/proto/model/common/BBPosHardware;->CHIPPER1X:Lcom/stripe/proto/model/common/BBPosHardware;

    const/16 v11, 0xd

    const/4 v9, 0x0

    invoke-direct/range {v6 .. v12}, Lcom/stripe/proto/model/common/SimulatedHardware;-><init>(Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/COTSHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 57
    const-string v1, "CHIPPER_1X"

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/SimulatedHardware;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/DeviceType;->CHIPPER_1X:Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 67
    new-instance v1, Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 68
    sget-object v0, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->Chipper2X:Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    invoke-virtual {v0}, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->getApiDeviceType()Ljava/lang/String;

    move-result-object v4

    .line 69
    sget-object v0, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->Chipper2X:Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    invoke-virtual {v0}, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->getSerialPrefixes()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    .line 70
    new-instance v6, Lcom/stripe/proto/model/common/HardwareModel;

    sget-object v10, Lcom/stripe/proto/model/common/BBPosHardware;->CHIPPER2X:Lcom/stripe/proto/model/common/BBPosHardware;

    const/16 v16, 0x1f7

    const/16 v17, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v6 .. v17}, Lcom/stripe/proto/model/common/HardwareModel;-><init>(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 71
    new-instance v7, Lcom/stripe/proto/model/common/SimulatedHardware;

    sget-object v9, Lcom/stripe/proto/model/common/BBPosHardware;->CHIPPER2X:Lcom/stripe/proto/model/common/BBPosHardware;

    const/16 v12, 0xd

    const/4 v10, 0x0

    invoke-direct/range {v7 .. v13}, Lcom/stripe/proto/model/common/SimulatedHardware;-><init>(Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/COTSHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 67
    const-string v2, "CHIPPER_2X"

    const/4 v3, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/SimulatedHardware;)V

    sput-object v1, Lcom/stripe/stripeterminal/external/models/DeviceType;->CHIPPER_2X:Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 77
    new-instance v2, Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 78
    sget-object v0, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->StripeM2:Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    invoke-virtual {v0}, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->getApiDeviceType()Ljava/lang/String;

    move-result-object v5

    .line 79
    sget-object v0, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->StripeM2:Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    invoke-virtual {v0}, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->getSerialPrefixes()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v6

    .line 80
    new-instance v7, Lcom/stripe/proto/model/common/HardwareModel;

    sget-object v11, Lcom/stripe/proto/model/common/BBPosHardware;->STRIPEM2:Lcom/stripe/proto/model/common/BBPosHardware;

    const/16 v17, 0x1f7

    const/16 v18, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v7 .. v18}, Lcom/stripe/proto/model/common/HardwareModel;-><init>(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 81
    new-instance v8, Lcom/stripe/proto/model/common/SimulatedHardware;

    sget-object v10, Lcom/stripe/proto/model/common/BBPosHardware;->STRIPEM2:Lcom/stripe/proto/model/common/BBPosHardware;

    const/16 v13, 0xd

    const/4 v11, 0x0

    invoke-direct/range {v8 .. v14}, Lcom/stripe/proto/model/common/SimulatedHardware;-><init>(Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/COTSHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 77
    const-string v3, "STRIPE_M2"

    const/4 v4, 0x2

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/SimulatedHardware;)V

    sput-object v2, Lcom/stripe/stripeterminal/external/models/DeviceType;->STRIPE_M2:Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 87
    new-instance v3, Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 89
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 90
    new-instance v8, Lcom/stripe/proto/model/common/HardwareModel;

    sget-object v12, Lcom/stripe/proto/model/common/BBPosHardware;->BBPOS_MODEL_NOT_SET:Lcom/stripe/proto/model/common/BBPosHardware;

    const/16 v18, 0x1f7

    const/16 v19, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v8 .. v19}, Lcom/stripe/proto/model/common/HardwareModel;-><init>(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 91
    new-instance v9, Lcom/stripe/proto/model/common/SimulatedHardware;

    sget-object v11, Lcom/stripe/proto/model/common/BBPosHardware;->BBPOS_MODEL_NOT_SET:Lcom/stripe/proto/model/common/BBPosHardware;

    const/16 v14, 0xd

    const/4 v12, 0x0

    invoke-direct/range {v9 .. v15}, Lcom/stripe/proto/model/common/SimulatedHardware;-><init>(Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/COTSHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 87
    const-string v4, "TAP_TO_PAY_DEVICE"

    const/4 v5, 0x3

    const-string v6, "mobile_phone_reader"

    invoke-direct/range {v3 .. v9}, Lcom/stripe/stripeterminal/external/models/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/SimulatedHardware;)V

    sput-object v3, Lcom/stripe/stripeterminal/external/models/DeviceType;->TAP_TO_PAY_DEVICE:Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 97
    new-instance v4, Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 99
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 100
    new-instance v9, Lcom/stripe/proto/model/common/HardwareModel;

    sget-object v11, Lcom/stripe/proto/model/common/VerifoneHardware;->P400:Lcom/stripe/proto/model/common/VerifoneHardware;

    const/16 v19, 0x1fd

    const/16 v20, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v9 .. v20}, Lcom/stripe/proto/model/common/HardwareModel;-><init>(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 101
    new-instance v10, Lcom/stripe/proto/model/common/SimulatedHardware;

    sget-object v11, Lcom/stripe/proto/model/common/VerifoneHardware;->P400:Lcom/stripe/proto/model/common/VerifoneHardware;

    const/16 v15, 0xe

    invoke-direct/range {v10 .. v16}, Lcom/stripe/proto/model/common/SimulatedHardware;-><init>(Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/COTSHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 97
    const-string v5, "VERIFONE_P400"

    const/4 v6, 0x4

    const-string v7, "verifone_P400"

    invoke-direct/range {v4 .. v10}, Lcom/stripe/stripeterminal/external/models/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/SimulatedHardware;)V

    sput-object v4, Lcom/stripe/stripeterminal/external/models/DeviceType;->VERIFONE_P400:Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 107
    new-instance v5, Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 108
    sget-object v0, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->Wisecube:Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    invoke-virtual {v0}, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->getApiDeviceType()Ljava/lang/String;

    move-result-object v8

    .line 109
    sget-object v0, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->Wisecube:Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    invoke-virtual {v0}, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->getSerialPrefixes()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v9

    .line 110
    new-instance v10, Lcom/stripe/proto/model/common/HardwareModel;

    sget-object v14, Lcom/stripe/proto/model/common/BBPosHardware;->WISECUBE:Lcom/stripe/proto/model/common/BBPosHardware;

    const/16 v20, 0x1f7

    const/16 v21, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v10 .. v21}, Lcom/stripe/proto/model/common/HardwareModel;-><init>(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 111
    new-instance v11, Lcom/stripe/proto/model/common/SimulatedHardware;

    sget-object v13, Lcom/stripe/proto/model/common/BBPosHardware;->WISECUBE:Lcom/stripe/proto/model/common/BBPosHardware;

    const/16 v16, 0xd

    const/4 v14, 0x0

    invoke-direct/range {v11 .. v17}, Lcom/stripe/proto/model/common/SimulatedHardware;-><init>(Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/COTSHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 107
    const-string v6, "WISECUBE"

    const/4 v7, 0x5

    invoke-direct/range {v5 .. v11}, Lcom/stripe/stripeterminal/external/models/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/SimulatedHardware;)V

    sput-object v5, Lcom/stripe/stripeterminal/external/models/DeviceType;->WISECUBE:Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 117
    new-instance v6, Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 118
    sget-object v0, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->WisePad3:Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    invoke-virtual {v0}, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->getApiDeviceType()Ljava/lang/String;

    move-result-object v9

    .line 119
    sget-object v0, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->WisePad3:Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    invoke-virtual {v0}, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->getSerialPrefixes()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v10

    .line 120
    new-instance v11, Lcom/stripe/proto/model/common/HardwareModel;

    sget-object v15, Lcom/stripe/proto/model/common/BBPosHardware;->WISEPAD3:Lcom/stripe/proto/model/common/BBPosHardware;

    const/16 v21, 0x1f7

    const/16 v22, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v11 .. v22}, Lcom/stripe/proto/model/common/HardwareModel;-><init>(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 121
    new-instance v12, Lcom/stripe/proto/model/common/SimulatedHardware;

    sget-object v14, Lcom/stripe/proto/model/common/BBPosHardware;->WISEPAD3:Lcom/stripe/proto/model/common/BBPosHardware;

    const/16 v17, 0xd

    const/4 v15, 0x0

    invoke-direct/range {v12 .. v18}, Lcom/stripe/proto/model/common/SimulatedHardware;-><init>(Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/COTSHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 117
    const-string v7, "WISEPAD_3"

    const/4 v8, 0x6

    invoke-direct/range {v6 .. v12}, Lcom/stripe/stripeterminal/external/models/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/SimulatedHardware;)V

    sput-object v6, Lcom/stripe/stripeterminal/external/models/DeviceType;->WISEPAD_3:Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 127
    new-instance v7, Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 128
    sget-object v0, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->WisePad3S:Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    invoke-virtual {v0}, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->getApiDeviceType()Ljava/lang/String;

    move-result-object v10

    .line 129
    sget-object v0, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->WisePad3S:Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    invoke-virtual {v0}, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->getSerialPrefixes()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v11

    .line 130
    new-instance v12, Lcom/stripe/proto/model/common/HardwareModel;

    sget-object v16, Lcom/stripe/proto/model/common/BBPosHardware;->WISEPAD3S:Lcom/stripe/proto/model/common/BBPosHardware;

    const/16 v22, 0x1f7

    const/16 v23, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v12 .. v23}, Lcom/stripe/proto/model/common/HardwareModel;-><init>(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 131
    new-instance v0, Lcom/stripe/proto/model/common/SimulatedHardware;

    sget-object v2, Lcom/stripe/proto/model/common/BBPosHardware;->WISEPAD3S:Lcom/stripe/proto/model/common/BBPosHardware;

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/model/common/SimulatedHardware;-><init>(Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/COTSHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 127
    const-string v8, "WISEPAD_3S"

    const/4 v9, 0x7

    move-object v13, v0

    invoke-direct/range {v7 .. v13}, Lcom/stripe/stripeterminal/external/models/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/SimulatedHardware;)V

    sput-object v7, Lcom/stripe/stripeterminal/external/models/DeviceType;->WISEPAD_3S:Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 137
    new-instance v0, Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 138
    sget-object v1, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->WisePosE:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    invoke-virtual {v1}, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->getApiDeviceType()Ljava/lang/String;

    move-result-object v3

    .line 139
    sget-object v1, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->WisePosE:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    invoke-virtual {v1}, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->getSerialPrefixes()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    .line 140
    new-instance v5, Lcom/stripe/proto/model/common/HardwareModel;

    sget-object v9, Lcom/stripe/proto/model/common/BBPosHardware;->WISEPOS_E:Lcom/stripe/proto/model/common/BBPosHardware;

    const/16 v15, 0x1f7

    const/16 v16, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v5 .. v16}, Lcom/stripe/proto/model/common/HardwareModel;-><init>(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 141
    new-instance v6, Lcom/stripe/proto/model/common/SimulatedHardware;

    sget-object v8, Lcom/stripe/proto/model/common/BBPosHardware;->WISEPOS_E:Lcom/stripe/proto/model/common/BBPosHardware;

    const/16 v11, 0xd

    const/4 v9, 0x0

    invoke-direct/range {v6 .. v12}, Lcom/stripe/proto/model/common/SimulatedHardware;-><init>(Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/COTSHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 137
    const-string v1, "WISEPOS_E"

    const/16 v2, 0x8

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/SimulatedHardware;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/DeviceType;->WISEPOS_E:Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 147
    new-instance v1, Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 148
    sget-object v0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->WisePosEDevKit:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    invoke-virtual {v0}, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->getApiDeviceType()Ljava/lang/String;

    move-result-object v4

    .line 149
    sget-object v0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->WisePosEDevKit:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    invoke-virtual {v0}, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->getSerialPrefixes()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    .line 150
    new-instance v6, Lcom/stripe/proto/model/common/HardwareModel;

    sget-object v10, Lcom/stripe/proto/model/common/BBPosHardware;->WISEPOS_E_DEVKIT:Lcom/stripe/proto/model/common/BBPosHardware;

    const/16 v16, 0x1f7

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v6 .. v17}, Lcom/stripe/proto/model/common/HardwareModel;-><init>(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 151
    new-instance v7, Lcom/stripe/proto/model/common/SimulatedHardware;

    sget-object v9, Lcom/stripe/proto/model/common/BBPosHardware;->WISEPOS_E_DEVKIT:Lcom/stripe/proto/model/common/BBPosHardware;

    const/16 v12, 0xd

    const/4 v10, 0x0

    invoke-direct/range {v7 .. v13}, Lcom/stripe/proto/model/common/SimulatedHardware;-><init>(Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/COTSHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 147
    const-string v2, "WISEPOS_E_DEVKIT"

    const/16 v3, 0x9

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/SimulatedHardware;)V

    sput-object v1, Lcom/stripe/stripeterminal/external/models/DeviceType;->WISEPOS_E_DEVKIT:Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 157
    new-instance v2, Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 158
    sget-object v0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->Etna:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    invoke-virtual {v0}, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->getApiDeviceType()Ljava/lang/String;

    move-result-object v5

    .line 159
    sget-object v0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->Etna:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    invoke-virtual {v0}, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->getSerialPrefixes()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v6

    .line 160
    new-instance v7, Lcom/stripe/proto/model/common/HardwareModel;

    sget-object v11, Lcom/stripe/proto/model/common/BBPosHardware;->SHOPIFY_ETNA:Lcom/stripe/proto/model/common/BBPosHardware;

    const/16 v17, 0x1f7

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v7 .. v18}, Lcom/stripe/proto/model/common/HardwareModel;-><init>(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 161
    new-instance v8, Lcom/stripe/proto/model/common/SimulatedHardware;

    sget-object v10, Lcom/stripe/proto/model/common/BBPosHardware;->SHOPIFY_ETNA:Lcom/stripe/proto/model/common/BBPosHardware;

    const/16 v13, 0xd

    const/4 v11, 0x0

    invoke-direct/range {v8 .. v14}, Lcom/stripe/proto/model/common/SimulatedHardware;-><init>(Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/COTSHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 157
    const-string v3, "ETNA"

    const/16 v4, 0xa

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/SimulatedHardware;)V

    sput-object v2, Lcom/stripe/stripeterminal/external/models/DeviceType;->ETNA:Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 167
    new-instance v3, Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 168
    sget-object v0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->S700:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    invoke-virtual {v0}, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->getApiDeviceType()Ljava/lang/String;

    move-result-object v6

    .line 169
    sget-object v0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->S700:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    invoke-virtual {v0}, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->getSerialPrefixes()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    .line 170
    new-instance v8, Lcom/stripe/proto/model/common/HardwareModel;

    sget-object v12, Lcom/stripe/proto/model/common/BBPosHardware;->STRIPE_S700:Lcom/stripe/proto/model/common/BBPosHardware;

    const/16 v18, 0x1f7

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v8 .. v19}, Lcom/stripe/proto/model/common/HardwareModel;-><init>(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 171
    new-instance v9, Lcom/stripe/proto/model/common/SimulatedHardware;

    sget-object v11, Lcom/stripe/proto/model/common/BBPosHardware;->STRIPE_S700:Lcom/stripe/proto/model/common/BBPosHardware;

    const/16 v14, 0xd

    const/4 v12, 0x0

    invoke-direct/range {v9 .. v15}, Lcom/stripe/proto/model/common/SimulatedHardware;-><init>(Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/COTSHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 167
    const-string v4, "STRIPE_S700"

    const/16 v5, 0xb

    invoke-direct/range {v3 .. v9}, Lcom/stripe/stripeterminal/external/models/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/SimulatedHardware;)V

    sput-object v3, Lcom/stripe/stripeterminal/external/models/DeviceType;->STRIPE_S700:Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 177
    new-instance v4, Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 178
    sget-object v0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->S700DevKit:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    invoke-virtual {v0}, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->getApiDeviceType()Ljava/lang/String;

    move-result-object v7

    .line 179
    sget-object v0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->S700DevKit:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    invoke-virtual {v0}, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->getSerialPrefixes()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v8

    .line 180
    new-instance v9, Lcom/stripe/proto/model/common/HardwareModel;

    sget-object v13, Lcom/stripe/proto/model/common/BBPosHardware;->STRIPE_S700_DEVKIT:Lcom/stripe/proto/model/common/BBPosHardware;

    const/16 v19, 0x1f7

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v9 .. v20}, Lcom/stripe/proto/model/common/HardwareModel;-><init>(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 181
    new-instance v10, Lcom/stripe/proto/model/common/SimulatedHardware;

    sget-object v12, Lcom/stripe/proto/model/common/BBPosHardware;->STRIPE_S700_DEVKIT:Lcom/stripe/proto/model/common/BBPosHardware;

    const/16 v15, 0xd

    const/4 v13, 0x0

    invoke-direct/range {v10 .. v16}, Lcom/stripe/proto/model/common/SimulatedHardware;-><init>(Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/COTSHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 177
    const-string v5, "STRIPE_S700_DEVKIT"

    const/16 v6, 0xc

    invoke-direct/range {v4 .. v10}, Lcom/stripe/stripeterminal/external/models/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/SimulatedHardware;)V

    sput-object v4, Lcom/stripe/stripeterminal/external/models/DeviceType;->STRIPE_S700_DEVKIT:Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 187
    new-instance v5, Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 188
    sget-object v0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->S710:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    invoke-virtual {v0}, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->getApiDeviceType()Ljava/lang/String;

    move-result-object v8

    .line 189
    sget-object v0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->S710:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    invoke-virtual {v0}, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->getSerialPrefixes()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v9

    .line 190
    new-instance v10, Lcom/stripe/proto/model/common/HardwareModel;

    sget-object v14, Lcom/stripe/proto/model/common/BBPosHardware;->STRIPE_S710:Lcom/stripe/proto/model/common/BBPosHardware;

    const/16 v20, 0x1f7

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v10 .. v21}, Lcom/stripe/proto/model/common/HardwareModel;-><init>(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 191
    new-instance v11, Lcom/stripe/proto/model/common/SimulatedHardware;

    sget-object v13, Lcom/stripe/proto/model/common/BBPosHardware;->STRIPE_S710:Lcom/stripe/proto/model/common/BBPosHardware;

    const/16 v16, 0xd

    const/4 v14, 0x0

    invoke-direct/range {v11 .. v17}, Lcom/stripe/proto/model/common/SimulatedHardware;-><init>(Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/COTSHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 187
    const-string v6, "STRIPE_S710"

    const/16 v7, 0xd

    invoke-direct/range {v5 .. v11}, Lcom/stripe/stripeterminal/external/models/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/SimulatedHardware;)V

    sput-object v5, Lcom/stripe/stripeterminal/external/models/DeviceType;->STRIPE_S710:Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 197
    new-instance v6, Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 198
    sget-object v0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->S710DevKit:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    invoke-virtual {v0}, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->getApiDeviceType()Ljava/lang/String;

    move-result-object v9

    .line 199
    sget-object v0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->S710DevKit:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    invoke-virtual {v0}, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->getSerialPrefixes()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v10

    .line 200
    new-instance v11, Lcom/stripe/proto/model/common/HardwareModel;

    sget-object v15, Lcom/stripe/proto/model/common/BBPosHardware;->STRIPE_S710_DEVKIT:Lcom/stripe/proto/model/common/BBPosHardware;

    const/16 v21, 0x1f7

    const/16 v22, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v11 .. v22}, Lcom/stripe/proto/model/common/HardwareModel;-><init>(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 201
    new-instance v12, Lcom/stripe/proto/model/common/SimulatedHardware;

    sget-object v14, Lcom/stripe/proto/model/common/BBPosHardware;->STRIPE_S710_DEVKIT:Lcom/stripe/proto/model/common/BBPosHardware;

    const/16 v17, 0xd

    const/4 v15, 0x0

    invoke-direct/range {v12 .. v18}, Lcom/stripe/proto/model/common/SimulatedHardware;-><init>(Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/COTSHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 197
    const-string v7, "STRIPE_S710_DEVKIT"

    const/16 v8, 0xe

    invoke-direct/range {v6 .. v12}, Lcom/stripe/stripeterminal/external/models/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/SimulatedHardware;)V

    sput-object v6, Lcom/stripe/stripeterminal/external/models/DeviceType;->STRIPE_S710_DEVKIT:Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 207
    new-instance v7, Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 209
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    .line 210
    new-instance v12, Lcom/stripe/proto/model/common/HardwareModel;

    sget-object v16, Lcom/stripe/proto/model/common/BBPosHardware;->BBPOS_MODEL_NOT_SET:Lcom/stripe/proto/model/common/BBPosHardware;

    const/16 v22, 0x1f7

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v12 .. v23}, Lcom/stripe/proto/model/common/HardwareModel;-><init>(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 211
    new-instance v0, Lcom/stripe/proto/model/common/SimulatedHardware;

    sget-object v2, Lcom/stripe/proto/model/common/BBPosHardware;->BBPOS_MODEL_NOT_SET:Lcom/stripe/proto/model/common/BBPosHardware;

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/model/common/SimulatedHardware;-><init>(Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/COTSHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 207
    const-string v8, "UNKNOWN"

    const/16 v9, 0xf

    const-string v10, ""

    move-object v13, v0

    invoke-direct/range {v7 .. v13}, Lcom/stripe/stripeterminal/external/models/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/SimulatedHardware;)V

    sput-object v7, Lcom/stripe/stripeterminal/external/models/DeviceType;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/DeviceType;

    invoke-static {}, Lcom/stripe/stripeterminal/external/models/DeviceType;->$values()[Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/DeviceType;->$VALUES:[Lcom/stripe/stripeterminal/external/models/DeviceType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/DeviceType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/stripe/stripeterminal/external/models/DeviceType$Companion;

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/DeviceType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/DeviceType;->Companion:Lcom/stripe/stripeterminal/external/models/DeviceType$Companion;

    .line 31
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/DeviceType$Companion$1;->INSTANCE:Lcom/stripe/stripeterminal/external/models/DeviceType$Companion$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/DeviceType;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/SimulatedHardware;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/proto/model/common/HardwareModel;",
            "Lcom/stripe/proto/model/common/SimulatedHardware;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/DeviceType;->deviceName:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/DeviceType;->serialPrefixes:Ljava/util/List;

    .line 46
    iput-object p5, p0, Lcom/stripe/stripeterminal/external/models/DeviceType;->hardwareModel:Lcom/stripe/proto/model/common/HardwareModel;

    .line 51
    iput-object p6, p0, Lcom/stripe/stripeterminal/external/models/DeviceType;->simulatedHardware:Lcom/stripe/proto/model/common/SimulatedHardware;

    return-void
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 31
    sget-object v0, Lcom/stripe/stripeterminal/external/models/DeviceType;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/stripeterminal/external/models/DeviceType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/stripeterminal/external/models/DeviceType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static synthetic getHardwareModel$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getSimulatedHardware$annotations()V
    .locals 0

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/DeviceType;
    .locals 1

    const-class v0, Lcom/stripe/stripeterminal/external/models/DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/external/models/DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/stripe/stripeterminal/external/models/DeviceType;
    .locals 1

    sget-object v0, Lcom/stripe/stripeterminal/external/models/DeviceType;->$VALUES:[Lcom/stripe/stripeterminal/external/models/DeviceType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/stripeterminal/external/models/DeviceType;

    return-object v0
.end method


# virtual methods
.method public final getDeviceName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/DeviceType;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public final getHardwareModel()Lcom/stripe/proto/model/common/HardwareModel;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/DeviceType;->hardwareModel:Lcom/stripe/proto/model/common/HardwareModel;

    return-object v0
.end method

.method public final getSerialPrefixes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/DeviceType;->serialPrefixes:Ljava/util/List;

    return-object v0
.end method

.method public final getSimulatedHardware()Lcom/stripe/proto/model/common/SimulatedHardware;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/DeviceType;->simulatedHardware:Lcom/stripe/proto/model/common/SimulatedHardware;

    return-object v0
.end method
