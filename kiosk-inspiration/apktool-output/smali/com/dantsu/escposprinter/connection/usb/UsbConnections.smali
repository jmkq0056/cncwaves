.class public Lcom/dantsu/escposprinter/connection/usb/UsbConnections;
.super Ljava/lang/Object;
.source "UsbConnections.java"


# instance fields
.field protected usbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "usb"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbManager;

    iput-object p1, p0, Lcom/dantsu/escposprinter/connection/usb/UsbConnections;->usbManager:Landroid/hardware/usb/UsbManager;

    return-void
.end method


# virtual methods
.method public getList()[Lcom/dantsu/escposprinter/connection/usb/UsbConnection;
    .locals 7

    .line 29
    iget-object v0, p0, Lcom/dantsu/escposprinter/connection/usb/UsbConnections;->usbManager:Landroid/hardware/usb/UsbManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 33
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lcom/dantsu/escposprinter/connection/usb/UsbConnection;

    .line 36
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 38
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbDevice;

    add-int/lit8 v4, v2, 0x1

    .line 39
    new-instance v5, Lcom/dantsu/escposprinter/connection/usb/UsbConnection;

    iget-object v6, p0, Lcom/dantsu/escposprinter/connection/usb/UsbConnections;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-direct {v5, v6, v3}, Lcom/dantsu/escposprinter/connection/usb/UsbConnection;-><init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)V

    aput-object v5, v1, v2

    move v2, v4

    goto :goto_0

    :cond_1
    return-object v1
.end method
