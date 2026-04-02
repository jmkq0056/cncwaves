.class public Lcom/dantsu/escposprinter/connection/usb/UsbPrintersConnections;
.super Lcom/dantsu/escposprinter/connection/usb/UsbConnections;
.source "UsbPrintersConnections.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/dantsu/escposprinter/connection/usb/UsbConnections;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static selectFirstConnected(Landroid/content/Context;)Lcom/dantsu/escposprinter/connection/usb/UsbConnection;
    .locals 1

    .line 29
    new-instance v0, Lcom/dantsu/escposprinter/connection/usb/UsbPrintersConnections;

    invoke-direct {v0, p0}, Lcom/dantsu/escposprinter/connection/usb/UsbPrintersConnections;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {v0}, Lcom/dantsu/escposprinter/connection/usb/UsbPrintersConnections;->getList()[Lcom/dantsu/escposprinter/connection/usb/UsbConnection;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 32
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 36
    aget-object p0, p0, v0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getList()[Lcom/dantsu/escposprinter/connection/usb/UsbConnection;
    .locals 10

    .line 47
    invoke-super {p0}, Lcom/dantsu/escposprinter/connection/usb/UsbConnections;->getList()[Lcom/dantsu/escposprinter/connection/usb/UsbConnection;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_0
    array-length v1, v0

    new-array v1, v1, [Lcom/dantsu/escposprinter/connection/usb/UsbConnection;

    .line 55
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v6, v0, v4

    .line 56
    invoke-virtual {v6}, Lcom/dantsu/escposprinter/connection/usb/UsbConnection;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v6

    .line 57
    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v7

    const/4 v8, 0x7

    if-eqz v7, :cond_1

    const/16 v9, 0xef

    if-ne v7, v9, :cond_2

    .line 58
    :cond_1
    invoke-static {v6}, Lcom/dantsu/escposprinter/connection/usb/UsbDeviceHelper;->findPrinterInterface(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbInterface;

    move-result-object v9

    if-eqz v9, :cond_2

    move v7, v8

    :cond_2
    if-ne v7, v8, :cond_3

    add-int/lit8 v7, v5, 0x1

    .line 62
    new-instance v8, Lcom/dantsu/escposprinter/connection/usb/UsbConnection;

    iget-object v9, p0, Lcom/dantsu/escposprinter/connection/usb/UsbPrintersConnections;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-direct {v8, v9, v6}, Lcom/dantsu/escposprinter/connection/usb/UsbConnection;-><init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)V

    aput-object v8, v1, v5

    move v5, v7

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 66
    :cond_4
    new-array v0, v5, [Lcom/dantsu/escposprinter/connection/usb/UsbConnection;

    .line 67
    invoke-static {v1, v3, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
