.class public final enum Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/BBDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUDIO_PERMISSION_DENIED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum BLE_SECURE_CONNECTION_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field public static final enum BLUETOOTH_LOCATION_PERMISSION_DENIED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field public static final enum BLUETOOTH_PERMISSION_DENIED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field public static final enum BTV4_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum CASHBACK_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field public static final enum CHANNEL_BUFFER_FULL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field public static final enum CMD_NOT_AVAILABLE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field public static final enum COMM_ERROR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field public static final enum COMM_LINK_UNINITIALIZED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field public static final enum CONTACTLESS_ERROR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field public static final enum CURRENT_APP_IS_NOT_THE_DEFAULT_NFC_SERVICE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field public static final enum DEVICE_BUSY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field public static final enum FAIL_TO_START_AUDIO:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum FAIL_TO_START_BT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field public static final enum FAIL_TO_START_SERIAL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field public static final enum FAIL_TO_START_TEST_CHANNEL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field public static final enum FAIL_TO_START_USB:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field public static final enum HARDWARE_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field public static final enum INPUT_INVALID:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field public static final enum INPUT_INVALID_FORMAT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field public static final enum INPUT_OUT_OF_RANGE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field public static final enum INTEGRITY_CHECK_ERROR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field public static final enum INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field public static final enum NFC_DISABLED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field public static final enum NFC_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field public static final enum NFC_PERMISSION_DENIED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field public static final enum NOT_COMPATIBLE_ERROR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field public static final enum PAIRING_ERROR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field public static final enum PAIRING_ERROR_ALREADY_PAIRED_WITH_ANOTHER_DEVICE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field public static final enum PAIRING_ERROR_INCORRECT_PASSKEY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field public static final enum PCI_ERROR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field public static final enum SERIAL_PERMISSION_DENIED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field public static final enum TAMPER:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field public static final enum UNKNOWN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field public static final enum USB_DEVICE_NOT_FOUND:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field public static final enum USB_DEVICE_PERMISSION_DENIED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field public static final enum USB_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field public static final enum VOLUME_WARNING_NOT_ACCEPTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final synthetic aaa000:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;


# direct methods
.method static constructor <clinit>()V
    .locals 41

    .line 1
    new-instance v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v0, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->UNKNOWN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 2
    new-instance v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v0, "CMD_NOT_AVAILABLE"

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->CMD_NOT_AVAILABLE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 3
    new-instance v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v0, "DEVICE_BUSY"

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->DEVICE_BUSY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 4
    new-instance v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v0, "INPUT_OUT_OF_RANGE"

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->INPUT_OUT_OF_RANGE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 5
    new-instance v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v0, "INPUT_INVALID_FORMAT"

    const/4 v6, 0x4

    invoke-direct {v5, v0, v6}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->INPUT_INVALID_FORMAT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 6
    new-instance v6, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v0, "INPUT_INVALID"

    const/4 v7, 0x5

    invoke-direct {v6, v0, v7}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->INPUT_INVALID:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 7
    new-instance v7, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v0, "CASHBACK_NOT_SUPPORTED"

    const/4 v8, 0x6

    invoke-direct {v7, v0, v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->CASHBACK_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 8
    new-instance v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v0, "COMM_ERROR"

    const/4 v9, 0x7

    invoke-direct {v8, v0, v9}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->COMM_ERROR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 9
    new-instance v9, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v0, "FAIL_TO_START_BT"

    const/16 v10, 0x8

    invoke-direct {v9, v0, v10}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->FAIL_TO_START_BT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 10
    new-instance v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v0, "VOLUME_WARNING_NOT_ACCEPTED"

    const/16 v11, 0x9

    invoke-direct {v10, v0, v11}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->VOLUME_WARNING_NOT_ACCEPTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 12
    new-instance v11, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v0, "FAIL_TO_START_AUDIO"

    const/16 v12, 0xa

    invoke-direct {v11, v0, v12}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->FAIL_TO_START_AUDIO:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 14
    new-instance v12, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v0, "INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE"

    const/16 v13, 0xb

    invoke-direct {v12, v0, v13}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 15
    new-instance v13, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v0, "COMM_LINK_UNINITIALIZED"

    const/16 v14, 0xc

    invoke-direct {v13, v0, v14}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->COMM_LINK_UNINITIALIZED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 16
    new-instance v14, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v0, "BTV4_NOT_SUPPORTED"

    const/16 v15, 0xd

    invoke-direct {v14, v0, v15}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->BTV4_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 18
    new-instance v15, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v0, "FAIL_TO_START_SERIAL"

    move-object/from16 v16, v1

    const/16 v1, 0xe

    invoke-direct {v15, v0, v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->FAIL_TO_START_SERIAL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 19
    new-instance v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v1, "FAIL_TO_START_USB"

    move-object/from16 v17, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->FAIL_TO_START_USB:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 20
    new-instance v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v2, "USB_DEVICE_NOT_FOUND"

    move-object/from16 v18, v0

    const/16 v0, 0x10

    invoke-direct {v1, v2, v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->USB_DEVICE_NOT_FOUND:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 21
    new-instance v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v2, "USB_DEVICE_PERMISSION_DENIED"

    move-object/from16 v19, v1

    const/16 v1, 0x11

    invoke-direct {v0, v2, v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->USB_DEVICE_PERMISSION_DENIED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 22
    new-instance v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v2, "USB_NOT_SUPPORTED"

    move-object/from16 v20, v0

    const/16 v0, 0x12

    invoke-direct {v1, v2, v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->USB_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 23
    new-instance v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v2, "CHANNEL_BUFFER_FULL"

    move-object/from16 v21, v1

    const/16 v1, 0x13

    invoke-direct {v0, v2, v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->CHANNEL_BUFFER_FULL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 24
    new-instance v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v2, "BLUETOOTH_PERMISSION_DENIED"

    move-object/from16 v22, v0

    const/16 v0, 0x14

    invoke-direct {v1, v2, v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->BLUETOOTH_PERMISSION_DENIED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 25
    new-instance v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v2, "HARDWARE_NOT_SUPPORTED"

    move-object/from16 v23, v1

    const/16 v1, 0x15

    invoke-direct {v0, v2, v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->HARDWARE_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 26
    new-instance v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v2, "TAMPER"

    move-object/from16 v24, v0

    const/16 v0, 0x16

    invoke-direct {v1, v2, v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->TAMPER:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 27
    new-instance v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v2, "PCI_ERROR"

    move-object/from16 v25, v1

    const/16 v1, 0x17

    invoke-direct {v0, v2, v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->PCI_ERROR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 28
    new-instance v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v2, "AUDIO_PERMISSION_DENIED"

    move-object/from16 v26, v0

    const/16 v0, 0x18

    invoke-direct {v1, v2, v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->AUDIO_PERMISSION_DENIED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 30
    new-instance v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v2, "BLUETOOTH_LOCATION_PERMISSION_DENIED"

    move-object/from16 v27, v1

    const/16 v1, 0x19

    invoke-direct {v0, v2, v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->BLUETOOTH_LOCATION_PERMISSION_DENIED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 31
    new-instance v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v2, "SERIAL_PERMISSION_DENIED"

    move-object/from16 v28, v0

    const/16 v0, 0x1a

    invoke-direct {v1, v2, v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->SERIAL_PERMISSION_DENIED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 32
    new-instance v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v2, "PAIRING_ERROR"

    move-object/from16 v29, v1

    const/16 v1, 0x1b

    invoke-direct {v0, v2, v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->PAIRING_ERROR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 33
    new-instance v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v2, "PAIRING_ERROR_INCORRECT_PASSKEY"

    move-object/from16 v30, v0

    const/16 v0, 0x1c

    invoke-direct {v1, v2, v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->PAIRING_ERROR_INCORRECT_PASSKEY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 34
    new-instance v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v2, "PAIRING_ERROR_ALREADY_PAIRED_WITH_ANOTHER_DEVICE"

    move-object/from16 v31, v1

    const/16 v1, 0x1d

    invoke-direct {v0, v2, v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->PAIRING_ERROR_ALREADY_PAIRED_WITH_ANOTHER_DEVICE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 35
    new-instance v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v2, "BLE_SECURE_CONNECTION_NOT_SUPPORTED"

    move-object/from16 v32, v0

    const/16 v0, 0x1e

    invoke-direct {v1, v2, v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->BLE_SECURE_CONNECTION_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 36
    new-instance v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v2, "NFC_NOT_SUPPORTED"

    move-object/from16 v33, v1

    const/16 v1, 0x1f

    invoke-direct {v0, v2, v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->NFC_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 37
    new-instance v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v2, "NFC_PERMISSION_DENIED"

    move-object/from16 v34, v0

    const/16 v0, 0x20

    invoke-direct {v1, v2, v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->NFC_PERMISSION_DENIED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 38
    new-instance v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v2, "NFC_DISABLED"

    move-object/from16 v35, v1

    const/16 v1, 0x21

    invoke-direct {v0, v2, v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->NFC_DISABLED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 39
    new-instance v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v2, "CURRENT_APP_IS_NOT_THE_DEFAULT_NFC_SERVICE"

    move-object/from16 v36, v0

    const/16 v0, 0x22

    invoke-direct {v1, v2, v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->CURRENT_APP_IS_NOT_THE_DEFAULT_NFC_SERVICE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 40
    new-instance v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v2, "CONTACTLESS_ERROR"

    move-object/from16 v37, v1

    const/16 v1, 0x23

    invoke-direct {v0, v2, v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->CONTACTLESS_ERROR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 41
    new-instance v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v2, "NOT_COMPATIBLE_ERROR"

    move-object/from16 v38, v0

    const/16 v0, 0x24

    invoke-direct {v1, v2, v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->NOT_COMPATIBLE_ERROR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 42
    new-instance v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v2, "INTEGRITY_CHECK_ERROR"

    move-object/from16 v39, v1

    const/16 v1, 0x25

    invoke-direct {v0, v2, v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->INTEGRITY_CHECK_ERROR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 43
    new-instance v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v2, "FAIL_TO_START_TEST_CHANNEL"

    move-object/from16 v40, v0

    const/16 v0, 0x26

    invoke-direct {v1, v2, v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->FAIL_TO_START_TEST_CHANNEL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    move-object/from16 v2, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v25

    move-object/from16 v25, v27

    move-object/from16 v27, v29

    move-object/from16 v29, v31

    move-object/from16 v31, v33

    move-object/from16 v33, v35

    move-object/from16 v35, v37

    move-object/from16 v37, v39

    move-object/from16 v39, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v20

    move-object/from16 v20, v22

    move-object/from16 v22, v24

    move-object/from16 v24, v26

    move-object/from16 v26, v28

    move-object/from16 v28, v30

    move-object/from16 v30, v32

    move-object/from16 v32, v34

    move-object/from16 v34, v36

    move-object/from16 v36, v38

    move-object/from16 v38, v40

    .line 44
    filled-new-array/range {v1 .. v39}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->aaa000:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;
    .locals 1

    .line 1
    const-class v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->aaa000:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {v0}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    return-object v0
.end method
