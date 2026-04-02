.class public final Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;
.super Ljava/lang/Object;
.source "BbposReaderConnectionController.kt"

# interfaces
.implements Lcom/stripe/core/hardware/ReaderConnectionController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposReaderConnectionController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposReaderConnectionController.kt\ncom/stripe/core/bbpos/hardware/BbposReaderConnectionController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,136:1\n288#2,2:137\n*S KotlinDebug\n*F\n+ 1 BbposReaderConnectionController.kt\ncom/stripe/core/bbpos/hardware/BbposReaderConnectionController\n*L\n114#1:137,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u0000  2\u00020\u0001:\u0001 B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0016\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007j\u0002`\n\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0011H\u0002J\u0008\u0010\u0012\u001a\u00020\rH\u0002J\u0010\u0010\u0013\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0014H\u0002J\u0010\u0010\u0015\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0016\u001a\u00020\rH\u0002J\u0008\u0010\u0017\u001a\u00020\rH\u0002J\u0008\u0010\u0018\u001a\u00020\rH\u0002J\u0010\u0010\u0019\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u0014H\u0002J\u0010\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0010\u0010\u001f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007j\u0002`\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;",
        "Lcom/stripe/core/hardware/ReaderConnectionController;",
        "deviceController",
        "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
        "usbManager",
        "Landroid/hardware/usb/UsbManager;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;Landroid/hardware/usb/UsbManager;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "connect",
        "",
        "reader",
        "Lcom/stripe/core/hardware/Reader;",
        "connectBluetooth",
        "Lcom/stripe/core/hardware/Reader$BluetoothReader;",
        "connectSerial",
        "connectUsb",
        "Lcom/stripe/core/hardware/Reader$UsbReader;",
        "disconnect",
        "disconnectBluetooth",
        "disconnectSerial",
        "disconnectUsb",
        "reboot",
        "resolveUsbReader",
        "usbReader",
        "setDebugLogEnabled",
        "enabled",
        "",
        "startSession",
        "Companion",
        "hardware_release"
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
.field private static final Companion:Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController$Companion;

.field private static final SHOPIFY_SESSION_TOKEN_1:J = 0xbca29a9fL

.field private static final SHOPIFY_SESSION_TOKEN_2:I = 0x64b94868


# instance fields
.field private final deviceController:Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

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

.field private final usbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;->Companion:Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;Landroid/hardware/usb/UsbManager;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
            "Landroid/hardware/usb/UsbManager;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "deviceController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "usbManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;->deviceController:Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    .line 21
    iput-object p2, p0, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 22
    iput-object p3, p0, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method

.method private final connectBluetooth(Lcom/stripe/core/hardware/Reader$BluetoothReader;)V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "connectBluetooth"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 70
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;->deviceController:Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    invoke-virtual {p1}, Lcom/stripe/core/hardware/Reader$BluetoothReader;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->connectBt(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private final connectSerial()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "connectSerial"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 65
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;->deviceController:Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    invoke-interface {v0}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->startSerial()V

    return-void
.end method

.method private final connectUsb(Lcom/stripe/core/hardware/Reader$UsbReader;)V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "connectUsb"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 75
    invoke-direct {p0, p1}, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;->resolveUsbReader(Lcom/stripe/core/hardware/Reader$UsbReader;)Lcom/stripe/core/hardware/Reader$UsbReader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/core/hardware/Reader$UsbReader;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;->deviceController:Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->startUsbWithDeviceName(Ljava/lang/String;)V

    .line 75
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 77
    move-object p1, p0

    check-cast p1, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;

    .line 78
    iget-object p1, p0, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;->deviceController:Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    invoke-interface {p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->startUsb()V

    :cond_1
    return-void
.end method

.method private final disconnectBluetooth()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "disconnectBluetooth"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 89
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;->deviceController:Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    invoke-interface {v0}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->disconnectBt()V

    return-void
.end method

.method private final disconnectSerial()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "disconnectSerial"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 84
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;->deviceController:Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    invoke-interface {v0}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->disconnectSerial()V

    return-void
.end method

.method private final disconnectUsb()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "disconnectUsb"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 94
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;->deviceController:Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    invoke-interface {v0}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->stopUsb()V

    return-void
.end method

.method private final resolveUsbReader(Lcom/stripe/core/hardware/Reader$UsbReader;)Lcom/stripe/core/hardware/Reader$UsbReader;
    .locals 6

    .line 108
    invoke-virtual {p1}, Lcom/stripe/core/hardware/Reader$UsbReader;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "getDeviceList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Map;

    .line 111
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_4

    .line 114
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 137
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/hardware/usb/UsbDevice;

    .line 114
    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v3

    :goto_1
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_4
    move-object v2, v3

    :goto_2
    check-cast v2, Landroid/hardware/usb/UsbDevice;

    if-nez v2, :cond_5

    move-object v2, v0

    :cond_5
    if-eqz v2, :cond_9

    .line 115
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_6
    move-object v4, v3

    :goto_3
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 116
    iget-object v1, p0, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v4, 0x3

    .line 118
    new-array v4, v4, [Lkotlin/Pair;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    :cond_7
    const-string v0, "oldDeviceName"

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v4, v3

    .line 119
    const-string v0, "newDeviceName"

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v4, v3

    .line 120
    const-string v0, "productName"

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v4, v3

    .line 116
    const-string v0, "deviceName for reader has changed"

    invoke-interface {v1, v0, v4}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    :cond_8
    move-object v0, v2

    goto :goto_4

    :cond_9
    move-object v0, v3

    .line 127
    :goto_4
    instance-of v1, p1, Lcom/stripe/core/hardware/Reader$UsbReader$Chipper2xReader;

    if-eqz v1, :cond_a

    new-instance p1, Lcom/stripe/core/hardware/Reader$UsbReader$Chipper2xReader;

    invoke-direct {p1, v0}, Lcom/stripe/core/hardware/Reader$UsbReader$Chipper2xReader;-><init>(Landroid/hardware/usb/UsbDevice;)V

    check-cast p1, Lcom/stripe/core/hardware/Reader$UsbReader;

    return-object p1

    .line 128
    :cond_a
    instance-of v1, p1, Lcom/stripe/core/hardware/Reader$UsbReader$StripeM2Reader;

    if-eqz v1, :cond_b

    new-instance p1, Lcom/stripe/core/hardware/Reader$UsbReader$StripeM2Reader;

    invoke-direct {p1, v0}, Lcom/stripe/core/hardware/Reader$UsbReader$StripeM2Reader;-><init>(Landroid/hardware/usb/UsbDevice;)V

    check-cast p1, Lcom/stripe/core/hardware/Reader$UsbReader;

    return-object p1

    .line 129
    :cond_b
    instance-of v1, p1, Lcom/stripe/core/hardware/Reader$UsbReader$UnspecifiedUsbReader;

    if-eqz v1, :cond_c

    sget-object p1, Lcom/stripe/core/hardware/Reader$UsbReader$UnspecifiedUsbReader;->INSTANCE:Lcom/stripe/core/hardware/Reader$UsbReader$UnspecifiedUsbReader;

    check-cast p1, Lcom/stripe/core/hardware/Reader$UsbReader;

    return-object p1

    .line 130
    :cond_c
    instance-of v1, p1, Lcom/stripe/core/hardware/Reader$UsbReader$WisecubeReader;

    if-eqz v1, :cond_d

    new-instance p1, Lcom/stripe/core/hardware/Reader$UsbReader$WisecubeReader;

    invoke-direct {p1, v0}, Lcom/stripe/core/hardware/Reader$UsbReader$WisecubeReader;-><init>(Landroid/hardware/usb/UsbDevice;)V

    check-cast p1, Lcom/stripe/core/hardware/Reader$UsbReader;

    return-object p1

    .line 131
    :cond_d
    instance-of v1, p1, Lcom/stripe/core/hardware/Reader$UsbReader$Wisepad3Reader;

    if-eqz v1, :cond_e

    new-instance p1, Lcom/stripe/core/hardware/Reader$UsbReader$Wisepad3Reader;

    invoke-direct {p1, v0}, Lcom/stripe/core/hardware/Reader$UsbReader$Wisepad3Reader;-><init>(Landroid/hardware/usb/UsbDevice;)V

    check-cast p1, Lcom/stripe/core/hardware/Reader$UsbReader;

    return-object p1

    .line 132
    :cond_e
    instance-of p1, p1, Lcom/stripe/core/hardware/Reader$UsbReader$Wisepad3SReader;

    if-eqz p1, :cond_f

    new-instance p1, Lcom/stripe/core/hardware/Reader$UsbReader$Wisepad3SReader;

    invoke-direct {p1, v0}, Lcom/stripe/core/hardware/Reader$UsbReader$Wisepad3SReader;-><init>(Landroid/hardware/usb/UsbDevice;)V

    check-cast p1, Lcom/stripe/core/hardware/Reader$UsbReader;

    return-object p1

    :cond_f
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method


# virtual methods
.method public connect(Lcom/stripe/core/hardware/Reader;)V
    .locals 4

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v2, 0x1

    new-array v2, v2, [Lkotlin/Pair;

    const/4 v3, 0x0

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "connect"

    invoke-interface {v1, v0, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 33
    instance-of v0, p1, Lcom/stripe/core/hardware/Reader$SerialReader;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;->connectSerial()V

    return-void

    .line 34
    :cond_0
    instance-of v0, p1, Lcom/stripe/core/hardware/Reader$BluetoothReader;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/stripe/core/hardware/Reader$BluetoothReader;

    invoke-direct {p0, p1}, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;->connectBluetooth(Lcom/stripe/core/hardware/Reader$BluetoothReader;)V

    return-void

    .line 35
    :cond_1
    instance-of v0, p1, Lcom/stripe/core/hardware/Reader$UsbReader;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/stripe/core/hardware/Reader$UsbReader;

    invoke-direct {p0, p1}, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;->connectUsb(Lcom/stripe/core/hardware/Reader$UsbReader;)V

    :cond_2
    return-void
.end method

.method public disconnect(Lcom/stripe/core/hardware/Reader;)V
    .locals 4

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v2, 0x1

    new-array v2, v2, [Lkotlin/Pair;

    const/4 v3, 0x0

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "disconnect"

    invoke-interface {v1, v0, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 46
    instance-of v0, p1, Lcom/stripe/core/hardware/Reader$SerialReader;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;->disconnectSerial()V

    return-void

    .line 47
    :cond_0
    instance-of v0, p1, Lcom/stripe/core/hardware/Reader$BluetoothReader;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;->disconnectBluetooth()V

    return-void

    .line 48
    :cond_1
    instance-of p1, p1, Lcom/stripe/core/hardware/Reader$UsbReader;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;->disconnectUsb()V

    :cond_2
    return-void
.end method

.method public reboot(Lcom/stripe/core/hardware/Reader;)V
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;->deviceController:Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    invoke-interface {p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->resetDevice()V

    return-void
.end method

.method public setDebugLogEnabled(Z)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;->deviceController:Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->setDebugLogEnabled(Z)V

    return-void
.end method

.method public startSession(Lcom/stripe/core/hardware/Reader;)V
    .locals 4

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x10

    invoke-static {v0}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v1

    const-wide v2, 0xbca29a9fL

    invoke-static {v2, v3, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const v1, 0x64b94868

    invoke-static {v0}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 56
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;->deviceController:Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->initSession(Ljava/lang/String;)V

    return-void
.end method
