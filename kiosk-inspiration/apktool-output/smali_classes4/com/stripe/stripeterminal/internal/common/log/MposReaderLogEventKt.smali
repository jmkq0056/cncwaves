.class public final Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEventKt;
.super Ljava/lang/Object;
.source "MposReaderLogEvent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "connectionMode",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectionMode;",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "getConnectionMode",
        "(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectionMode;",
        "common_publish"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$getConnectionMode(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectionMode;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEventKt;->getConnectionMode(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectionMode;

    move-result-object p0

    return-object p0
.end method

.method private static final getConnectionMode(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectionMode;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/external/models/Reader;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectionMode;->BLUETOOTH:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectionMode;

    return-object p0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/external/models/Reader;->getUsbDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectionMode;->USB:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectionMode;

    return-object p0

    .line 76
    :cond_1
    sget-object p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectionMode;->CONNECTION_MODE_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectionMode;

    return-object p0
.end method
