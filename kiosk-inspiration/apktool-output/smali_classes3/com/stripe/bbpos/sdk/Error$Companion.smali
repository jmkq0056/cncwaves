.class public final Lcom/stripe/bbpos/sdk/Error$Companion;
.super Ljava/lang/Object;
.source "Error.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/sdk/Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0007R\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/Error$Companion;",
        "",
        "()V",
        "ADAPTER",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/bbpos/sdk/Error;",
        "fromValue",
        "value",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/bbpos/sdk/Error$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromValue(I)Lcom/stripe/bbpos/sdk/Error;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 114
    :pswitch_0
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->FAIL_TO_START_TEST_CHANNEL:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 113
    :pswitch_1
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->INTEGRITY_CHECK_ERROR:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 112
    :pswitch_2
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->NOT_COMPATIBLE_ERROR:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 111
    :pswitch_3
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->CONTACTLESS_ERROR:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 110
    :pswitch_4
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->CURRENT_APP_IS_NOT_THE_DEFAULT_NFC_SERVICE:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 109
    :pswitch_5
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->NFC_DISABLED:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 108
    :pswitch_6
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->NFC_PERMISSION_DENIED:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 107
    :pswitch_7
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->NFC_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 106
    :pswitch_8
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->BLE_SECURE_CONNECTION_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 105
    :pswitch_9
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->PAIRING_ERROR_ALREADY_PAIRED_WITH_ANOTHER_DEVICE:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 104
    :pswitch_a
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->PAIRING_ERROR_INCORRECT_PASSKEY:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 103
    :pswitch_b
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->PAIRING_ERROR:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 102
    :pswitch_c
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->SERIAL_PERMISSION_DENIED:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 101
    :pswitch_d
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->BLUETOOTH_LOCATION_PERMISSION_DENIED:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 100
    :pswitch_e
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->AUDIO_PERMISSION_DENIED:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 99
    :pswitch_f
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->PCI_ERROR:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 98
    :pswitch_10
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->TAMPER:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 97
    :pswitch_11
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->HARDWARE_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 96
    :pswitch_12
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->BLUETOOTH_PERMISSION_DENIED:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 95
    :pswitch_13
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->CHANNEL_BUFFER_FULL:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 94
    :pswitch_14
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->USB_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 93
    :pswitch_15
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->USB_DEVICE_PERMISSION_DENIED:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 92
    :pswitch_16
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->USB_DEVICE_NOT_FOUND:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 91
    :pswitch_17
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->FAIL_TO_START_USB:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 90
    :pswitch_18
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->FAIL_TO_START_SERIAL:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 89
    :pswitch_19
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->BTV4_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 88
    :pswitch_1a
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->COMM_LINK_UNINITIALIZED:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 87
    :pswitch_1b
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 86
    :pswitch_1c
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->FAIL_TO_START_AUDIO:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 85
    :pswitch_1d
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->VOLUME_WARNING_NOT_ACCEPTED:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 84
    :pswitch_1e
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->FAIL_TO_START_BT:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 83
    :pswitch_1f
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->COMM_ERROR:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 82
    :pswitch_20
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->CASHBACK_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 81
    :pswitch_21
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->INPUT_INVALID:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 80
    :pswitch_22
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->INPUT_INVALID_FORMAT:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 79
    :pswitch_23
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->INPUT_OUT_OF_RANGE:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 78
    :pswitch_24
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->DEVICE_BUSY:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 77
    :pswitch_25
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->CMD_NOT_AVAILABLE:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 76
    :pswitch_26
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->UNKNOWN:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 75
    :pswitch_27
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->ERROR_UNKNOWN:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
