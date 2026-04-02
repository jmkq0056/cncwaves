.class public final enum Lcom/stripe/bbpos/sdk/Error;
.super Ljava/lang/Enum;
.source "Error.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/bbpos/sdk/Error$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/sdk/Error;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008-\u0008\u0086\u0081\u0002\u0018\u0000 02\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u00010B\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"j\u0002\u0008#j\u0002\u0008$j\u0002\u0008%j\u0002\u0008&j\u0002\u0008\'j\u0002\u0008(j\u0002\u0008)j\u0002\u0008*j\u0002\u0008+j\u0002\u0008,j\u0002\u0008-j\u0002\u0008.j\u0002\u0008/\u00a8\u00061"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/Error;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "ERROR_UNKNOWN",
        "UNKNOWN",
        "CMD_NOT_AVAILABLE",
        "DEVICE_BUSY",
        "INPUT_OUT_OF_RANGE",
        "INPUT_INVALID_FORMAT",
        "INPUT_INVALID",
        "CASHBACK_NOT_SUPPORTED",
        "COMM_ERROR",
        "FAIL_TO_START_BT",
        "VOLUME_WARNING_NOT_ACCEPTED",
        "FAIL_TO_START_AUDIO",
        "INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE",
        "COMM_LINK_UNINITIALIZED",
        "BTV4_NOT_SUPPORTED",
        "FAIL_TO_START_SERIAL",
        "FAIL_TO_START_USB",
        "USB_DEVICE_NOT_FOUND",
        "USB_DEVICE_PERMISSION_DENIED",
        "USB_NOT_SUPPORTED",
        "CHANNEL_BUFFER_FULL",
        "BLUETOOTH_PERMISSION_DENIED",
        "HARDWARE_NOT_SUPPORTED",
        "TAMPER",
        "PCI_ERROR",
        "AUDIO_PERMISSION_DENIED",
        "BLUETOOTH_LOCATION_PERMISSION_DENIED",
        "SERIAL_PERMISSION_DENIED",
        "PAIRING_ERROR",
        "PAIRING_ERROR_INCORRECT_PASSKEY",
        "PAIRING_ERROR_ALREADY_PAIRED_WITH_ANOTHER_DEVICE",
        "BLE_SECURE_CONNECTION_NOT_SUPPORTED",
        "NFC_NOT_SUPPORTED",
        "NFC_PERMISSION_DENIED",
        "NFC_DISABLED",
        "CURRENT_APP_IS_NOT_THE_DEFAULT_NFC_SERVICE",
        "CONTACTLESS_ERROR",
        "NOT_COMPATIBLE_ERROR",
        "INTEGRITY_CHECK_ERROR",
        "FAIL_TO_START_TEST_CHANNEL",
        "Companion",
        "sdk-protos_release"
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/stripe/bbpos/sdk/Error;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/bbpos/sdk/Error;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum AUDIO_PERMISSION_DENIED:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum BLE_SECURE_CONNECTION_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum BLUETOOTH_LOCATION_PERMISSION_DENIED:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum BLUETOOTH_PERMISSION_DENIED:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum BTV4_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/Error;
    .annotation runtime Lkotlin/Deprecated;
        message = "BTV4_NOT_SUPPORTED is deprecated"
    .end annotation
.end field

.field public static final enum CASHBACK_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum CHANNEL_BUFFER_FULL:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum CMD_NOT_AVAILABLE:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum COMM_ERROR:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum COMM_LINK_UNINITIALIZED:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum CONTACTLESS_ERROR:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum CURRENT_APP_IS_NOT_THE_DEFAULT_NFC_SERVICE:Lcom/stripe/bbpos/sdk/Error;

.field public static final Companion:Lcom/stripe/bbpos/sdk/Error$Companion;

.field public static final enum DEVICE_BUSY:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum ERROR_UNKNOWN:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum FAIL_TO_START_AUDIO:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum FAIL_TO_START_BT:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum FAIL_TO_START_SERIAL:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum FAIL_TO_START_TEST_CHANNEL:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum FAIL_TO_START_USB:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum HARDWARE_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum INPUT_INVALID:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum INPUT_INVALID_FORMAT:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum INPUT_OUT_OF_RANGE:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum INTEGRITY_CHECK_ERROR:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum NFC_DISABLED:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum NFC_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum NFC_PERMISSION_DENIED:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum NOT_COMPATIBLE_ERROR:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum PAIRING_ERROR:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum PAIRING_ERROR_ALREADY_PAIRED_WITH_ANOTHER_DEVICE:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum PAIRING_ERROR_INCORRECT_PASSKEY:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum PCI_ERROR:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum SERIAL_PERMISSION_DENIED:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum TAMPER:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum UNKNOWN:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum USB_DEVICE_NOT_FOUND:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum USB_DEVICE_PERMISSION_DENIED:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum USB_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/Error;

.field public static final enum VOLUME_WARNING_NOT_ACCEPTED:Lcom/stripe/bbpos/sdk/Error;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/bbpos/sdk/Error;
    .locals 41

    sget-object v1, Lcom/stripe/bbpos/sdk/Error;->ERROR_UNKNOWN:Lcom/stripe/bbpos/sdk/Error;

    sget-object v2, Lcom/stripe/bbpos/sdk/Error;->UNKNOWN:Lcom/stripe/bbpos/sdk/Error;

    sget-object v3, Lcom/stripe/bbpos/sdk/Error;->CMD_NOT_AVAILABLE:Lcom/stripe/bbpos/sdk/Error;

    sget-object v4, Lcom/stripe/bbpos/sdk/Error;->DEVICE_BUSY:Lcom/stripe/bbpos/sdk/Error;

    sget-object v5, Lcom/stripe/bbpos/sdk/Error;->INPUT_OUT_OF_RANGE:Lcom/stripe/bbpos/sdk/Error;

    sget-object v6, Lcom/stripe/bbpos/sdk/Error;->INPUT_INVALID_FORMAT:Lcom/stripe/bbpos/sdk/Error;

    sget-object v7, Lcom/stripe/bbpos/sdk/Error;->INPUT_INVALID:Lcom/stripe/bbpos/sdk/Error;

    sget-object v8, Lcom/stripe/bbpos/sdk/Error;->CASHBACK_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/Error;

    sget-object v9, Lcom/stripe/bbpos/sdk/Error;->COMM_ERROR:Lcom/stripe/bbpos/sdk/Error;

    sget-object v10, Lcom/stripe/bbpos/sdk/Error;->FAIL_TO_START_BT:Lcom/stripe/bbpos/sdk/Error;

    sget-object v11, Lcom/stripe/bbpos/sdk/Error;->VOLUME_WARNING_NOT_ACCEPTED:Lcom/stripe/bbpos/sdk/Error;

    sget-object v12, Lcom/stripe/bbpos/sdk/Error;->FAIL_TO_START_AUDIO:Lcom/stripe/bbpos/sdk/Error;

    sget-object v13, Lcom/stripe/bbpos/sdk/Error;->INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE:Lcom/stripe/bbpos/sdk/Error;

    sget-object v14, Lcom/stripe/bbpos/sdk/Error;->COMM_LINK_UNINITIALIZED:Lcom/stripe/bbpos/sdk/Error;

    sget-object v15, Lcom/stripe/bbpos/sdk/Error;->BTV4_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/Error;

    sget-object v16, Lcom/stripe/bbpos/sdk/Error;->FAIL_TO_START_SERIAL:Lcom/stripe/bbpos/sdk/Error;

    sget-object v17, Lcom/stripe/bbpos/sdk/Error;->FAIL_TO_START_USB:Lcom/stripe/bbpos/sdk/Error;

    sget-object v18, Lcom/stripe/bbpos/sdk/Error;->USB_DEVICE_NOT_FOUND:Lcom/stripe/bbpos/sdk/Error;

    sget-object v19, Lcom/stripe/bbpos/sdk/Error;->USB_DEVICE_PERMISSION_DENIED:Lcom/stripe/bbpos/sdk/Error;

    sget-object v20, Lcom/stripe/bbpos/sdk/Error;->USB_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/Error;

    sget-object v21, Lcom/stripe/bbpos/sdk/Error;->CHANNEL_BUFFER_FULL:Lcom/stripe/bbpos/sdk/Error;

    sget-object v22, Lcom/stripe/bbpos/sdk/Error;->BLUETOOTH_PERMISSION_DENIED:Lcom/stripe/bbpos/sdk/Error;

    sget-object v23, Lcom/stripe/bbpos/sdk/Error;->HARDWARE_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/Error;

    sget-object v24, Lcom/stripe/bbpos/sdk/Error;->TAMPER:Lcom/stripe/bbpos/sdk/Error;

    sget-object v25, Lcom/stripe/bbpos/sdk/Error;->PCI_ERROR:Lcom/stripe/bbpos/sdk/Error;

    sget-object v26, Lcom/stripe/bbpos/sdk/Error;->AUDIO_PERMISSION_DENIED:Lcom/stripe/bbpos/sdk/Error;

    sget-object v27, Lcom/stripe/bbpos/sdk/Error;->BLUETOOTH_LOCATION_PERMISSION_DENIED:Lcom/stripe/bbpos/sdk/Error;

    sget-object v28, Lcom/stripe/bbpos/sdk/Error;->SERIAL_PERMISSION_DENIED:Lcom/stripe/bbpos/sdk/Error;

    sget-object v29, Lcom/stripe/bbpos/sdk/Error;->PAIRING_ERROR:Lcom/stripe/bbpos/sdk/Error;

    sget-object v30, Lcom/stripe/bbpos/sdk/Error;->PAIRING_ERROR_INCORRECT_PASSKEY:Lcom/stripe/bbpos/sdk/Error;

    sget-object v31, Lcom/stripe/bbpos/sdk/Error;->PAIRING_ERROR_ALREADY_PAIRED_WITH_ANOTHER_DEVICE:Lcom/stripe/bbpos/sdk/Error;

    sget-object v32, Lcom/stripe/bbpos/sdk/Error;->BLE_SECURE_CONNECTION_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/Error;

    sget-object v33, Lcom/stripe/bbpos/sdk/Error;->NFC_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/Error;

    sget-object v34, Lcom/stripe/bbpos/sdk/Error;->NFC_PERMISSION_DENIED:Lcom/stripe/bbpos/sdk/Error;

    sget-object v35, Lcom/stripe/bbpos/sdk/Error;->NFC_DISABLED:Lcom/stripe/bbpos/sdk/Error;

    sget-object v36, Lcom/stripe/bbpos/sdk/Error;->CURRENT_APP_IS_NOT_THE_DEFAULT_NFC_SERVICE:Lcom/stripe/bbpos/sdk/Error;

    sget-object v37, Lcom/stripe/bbpos/sdk/Error;->CONTACTLESS_ERROR:Lcom/stripe/bbpos/sdk/Error;

    sget-object v38, Lcom/stripe/bbpos/sdk/Error;->NOT_COMPATIBLE_ERROR:Lcom/stripe/bbpos/sdk/Error;

    sget-object v39, Lcom/stripe/bbpos/sdk/Error;->INTEGRITY_CHECK_ERROR:Lcom/stripe/bbpos/sdk/Error;

    sget-object v40, Lcom/stripe/bbpos/sdk/Error;->FAIL_TO_START_TEST_CHANNEL:Lcom/stripe/bbpos/sdk/Error;

    filled-new-array/range {v1 .. v40}, [Lcom/stripe/bbpos/sdk/Error;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 20
    new-instance v0, Lcom/stripe/bbpos/sdk/Error;

    const-string v1, "ERROR_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/bbpos/sdk/Error;->ERROR_UNKNOWN:Lcom/stripe/bbpos/sdk/Error;

    .line 21
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const-string v2, "UNKNOWN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->UNKNOWN:Lcom/stripe/bbpos/sdk/Error;

    .line 22
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const-string v2, "CMD_NOT_AVAILABLE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->CMD_NOT_AVAILABLE:Lcom/stripe/bbpos/sdk/Error;

    .line 23
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const-string v2, "DEVICE_BUSY"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->DEVICE_BUSY:Lcom/stripe/bbpos/sdk/Error;

    .line 24
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const-string v2, "INPUT_OUT_OF_RANGE"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->INPUT_OUT_OF_RANGE:Lcom/stripe/bbpos/sdk/Error;

    .line 25
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const-string v2, "INPUT_INVALID_FORMAT"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->INPUT_INVALID_FORMAT:Lcom/stripe/bbpos/sdk/Error;

    .line 26
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const-string v2, "INPUT_INVALID"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->INPUT_INVALID:Lcom/stripe/bbpos/sdk/Error;

    .line 27
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const-string v2, "CASHBACK_NOT_SUPPORTED"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->CASHBACK_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/Error;

    .line 28
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const-string v2, "COMM_ERROR"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->COMM_ERROR:Lcom/stripe/bbpos/sdk/Error;

    .line 29
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const-string v2, "FAIL_TO_START_BT"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->FAIL_TO_START_BT:Lcom/stripe/bbpos/sdk/Error;

    .line 30
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const-string v2, "VOLUME_WARNING_NOT_ACCEPTED"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->VOLUME_WARNING_NOT_ACCEPTED:Lcom/stripe/bbpos/sdk/Error;

    .line 31
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const-string v2, "FAIL_TO_START_AUDIO"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->FAIL_TO_START_AUDIO:Lcom/stripe/bbpos/sdk/Error;

    .line 32
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const-string v2, "INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE:Lcom/stripe/bbpos/sdk/Error;

    .line 33
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const-string v2, "COMM_LINK_UNINITIALIZED"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->COMM_LINK_UNINITIALIZED:Lcom/stripe/bbpos/sdk/Error;

    .line 34
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const-string v2, "BTV4_NOT_SUPPORTED"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->BTV4_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/Error;

    .line 36
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const-string v2, "FAIL_TO_START_SERIAL"

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->FAIL_TO_START_SERIAL:Lcom/stripe/bbpos/sdk/Error;

    .line 37
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const-string v2, "FAIL_TO_START_USB"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->FAIL_TO_START_USB:Lcom/stripe/bbpos/sdk/Error;

    .line 38
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const-string v2, "USB_DEVICE_NOT_FOUND"

    const/16 v3, 0x11

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->USB_DEVICE_NOT_FOUND:Lcom/stripe/bbpos/sdk/Error;

    .line 39
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const-string v2, "USB_DEVICE_PERMISSION_DENIED"

    const/16 v3, 0x12

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->USB_DEVICE_PERMISSION_DENIED:Lcom/stripe/bbpos/sdk/Error;

    .line 40
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const-string v2, "USB_NOT_SUPPORTED"

    const/16 v3, 0x13

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->USB_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/Error;

    .line 41
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const-string v2, "CHANNEL_BUFFER_FULL"

    const/16 v3, 0x14

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->CHANNEL_BUFFER_FULL:Lcom/stripe/bbpos/sdk/Error;

    .line 42
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const-string v2, "BLUETOOTH_PERMISSION_DENIED"

    const/16 v3, 0x15

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->BLUETOOTH_PERMISSION_DENIED:Lcom/stripe/bbpos/sdk/Error;

    .line 43
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const/16 v2, 0x16

    const/16 v3, 0x16

    const-string v4, "HARDWARE_NOT_SUPPORTED"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->HARDWARE_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/Error;

    .line 44
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const/16 v2, 0x17

    const/16 v3, 0x17

    const-string v4, "TAMPER"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->TAMPER:Lcom/stripe/bbpos/sdk/Error;

    .line 45
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const/16 v2, 0x18

    const/16 v3, 0x18

    const-string v4, "PCI_ERROR"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->PCI_ERROR:Lcom/stripe/bbpos/sdk/Error;

    .line 46
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const/16 v2, 0x19

    const/16 v3, 0x19

    const-string v4, "AUDIO_PERMISSION_DENIED"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->AUDIO_PERMISSION_DENIED:Lcom/stripe/bbpos/sdk/Error;

    .line 47
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    const-string v4, "BLUETOOTH_LOCATION_PERMISSION_DENIED"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->BLUETOOTH_LOCATION_PERMISSION_DENIED:Lcom/stripe/bbpos/sdk/Error;

    .line 48
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    const-string v4, "SERIAL_PERMISSION_DENIED"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->SERIAL_PERMISSION_DENIED:Lcom/stripe/bbpos/sdk/Error;

    .line 49
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const/16 v2, 0x1c

    const/16 v3, 0x1c

    const-string v4, "PAIRING_ERROR"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->PAIRING_ERROR:Lcom/stripe/bbpos/sdk/Error;

    .line 50
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const/16 v2, 0x1d

    const/16 v3, 0x1d

    const-string v4, "PAIRING_ERROR_INCORRECT_PASSKEY"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->PAIRING_ERROR_INCORRECT_PASSKEY:Lcom/stripe/bbpos/sdk/Error;

    .line 51
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const/16 v2, 0x1e

    const/16 v3, 0x1e

    const-string v4, "PAIRING_ERROR_ALREADY_PAIRED_WITH_ANOTHER_DEVICE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->PAIRING_ERROR_ALREADY_PAIRED_WITH_ANOTHER_DEVICE:Lcom/stripe/bbpos/sdk/Error;

    .line 52
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const/16 v2, 0x1f

    const/16 v3, 0x1f

    const-string v4, "BLE_SECURE_CONNECTION_NOT_SUPPORTED"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->BLE_SECURE_CONNECTION_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/Error;

    .line 53
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const/16 v2, 0x20

    const/16 v3, 0x20

    const-string v4, "NFC_NOT_SUPPORTED"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->NFC_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/Error;

    .line 54
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const/16 v2, 0x21

    const/16 v3, 0x21

    const-string v4, "NFC_PERMISSION_DENIED"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->NFC_PERMISSION_DENIED:Lcom/stripe/bbpos/sdk/Error;

    .line 55
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const/16 v2, 0x22

    const/16 v3, 0x22

    const-string v4, "NFC_DISABLED"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->NFC_DISABLED:Lcom/stripe/bbpos/sdk/Error;

    .line 56
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const/16 v2, 0x23

    const/16 v3, 0x23

    const-string v4, "CURRENT_APP_IS_NOT_THE_DEFAULT_NFC_SERVICE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->CURRENT_APP_IS_NOT_THE_DEFAULT_NFC_SERVICE:Lcom/stripe/bbpos/sdk/Error;

    .line 57
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const/16 v2, 0x24

    const/16 v3, 0x24

    const-string v4, "CONTACTLESS_ERROR"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->CONTACTLESS_ERROR:Lcom/stripe/bbpos/sdk/Error;

    .line 58
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const/16 v2, 0x25

    const/16 v3, 0x25

    const-string v4, "NOT_COMPATIBLE_ERROR"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->NOT_COMPATIBLE_ERROR:Lcom/stripe/bbpos/sdk/Error;

    .line 59
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const/16 v2, 0x26

    const/16 v3, 0x26

    const-string v4, "INTEGRITY_CHECK_ERROR"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->INTEGRITY_CHECK_ERROR:Lcom/stripe/bbpos/sdk/Error;

    .line 60
    new-instance v1, Lcom/stripe/bbpos/sdk/Error;

    const/16 v2, 0x27

    const/16 v3, 0x27

    const-string v4, "FAIL_TO_START_TEST_CHANNEL"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/bbpos/sdk/Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->FAIL_TO_START_TEST_CHANNEL:Lcom/stripe/bbpos/sdk/Error;

    invoke-static {}, Lcom/stripe/bbpos/sdk/Error;->$values()[Lcom/stripe/bbpos/sdk/Error;

    move-result-object v1

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->$VALUES:[Lcom/stripe/bbpos/sdk/Error;

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/stripe/bbpos/sdk/Error$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/bbpos/sdk/Error$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/bbpos/sdk/Error;->Companion:Lcom/stripe/bbpos/sdk/Error$Companion;

    .line 65
    const-class v1, Lcom/stripe/bbpos/sdk/Error;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 67
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 65
    new-instance v3, Lcom/stripe/bbpos/sdk/Error$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/stripe/bbpos/sdk/Error$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/stripe/bbpos/sdk/Error;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/bbpos/sdk/Error;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/stripe/bbpos/sdk/Error;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/bbpos/sdk/Error;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/bbpos/sdk/Error;->Companion:Lcom/stripe/bbpos/sdk/Error$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/bbpos/sdk/Error$Companion;->fromValue(I)Lcom/stripe/bbpos/sdk/Error;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/bbpos/sdk/Error;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/bbpos/sdk/Error;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/Error;
    .locals 1

    const-class v0, Lcom/stripe/bbpos/sdk/Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/sdk/Error;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/sdk/Error;
    .locals 1

    sget-object v0, Lcom/stripe/bbpos/sdk/Error;->$VALUES:[Lcom/stripe/bbpos/sdk/Error;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/sdk/Error;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/stripe/bbpos/sdk/Error;->value:I

    return v0
.end method
