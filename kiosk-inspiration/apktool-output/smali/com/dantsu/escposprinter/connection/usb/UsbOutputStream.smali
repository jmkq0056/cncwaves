.class public Lcom/dantsu/escposprinter/connection/usb/UsbOutputStream;
.super Ljava/io/OutputStream;
.source "UsbOutputStream.java"


# instance fields
.field private usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

.field private usbEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private usbInterface:Landroid/hardware/usb/UsbInterface;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 23
    invoke-static {p2}, Lcom/dantsu/escposprinter/connection/usb/UsbDeviceHelper;->findPrinterInterface(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/dantsu/escposprinter/connection/usb/UsbOutputStream;->usbInterface:Landroid/hardware/usb/UsbInterface;

    if-eqz v0, :cond_2

    .line 28
    invoke-static {v0}, Lcom/dantsu/escposprinter/connection/usb/UsbDeviceHelper;->findEndpointIn(Landroid/hardware/usb/UsbInterface;)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    iput-object v0, p0, Lcom/dantsu/escposprinter/connection/usb/UsbOutputStream;->usbEndpoint:Landroid/hardware/usb/UsbEndpoint;

    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {p1, p2}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/dantsu/escposprinter/connection/usb/UsbOutputStream;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz p1, :cond_0

    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unable to open USB connection."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unable to find USB endpoint."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unable to find USB interface."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/dantsu/escposprinter/connection/usb/UsbOutputStream;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/dantsu/escposprinter/connection/usb/UsbOutputStream;->usbInterface:Landroid/hardware/usb/UsbInterface;

    .line 82
    iput-object v0, p0, Lcom/dantsu/escposprinter/connection/usb/UsbOutputStream;->usbEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 83
    iput-object v0, p0, Lcom/dantsu/escposprinter/connection/usb/UsbOutputStream;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 41
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/dantsu/escposprinter/connection/usb/UsbOutputStream;->write([B)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 46
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/dantsu/escposprinter/connection/usb/UsbOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object p2, p0, Lcom/dantsu/escposprinter/connection/usb/UsbOutputStream;->usbInterface:Landroid/hardware/usb/UsbInterface;

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/dantsu/escposprinter/connection/usb/UsbOutputStream;->usbEndpoint:Landroid/hardware/usb/UsbEndpoint;

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/dantsu/escposprinter/connection/usb/UsbOutputStream;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz p3, :cond_2

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p3, p2, v0}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 59
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 60
    new-instance p3, Landroid/hardware/usb/UsbRequest;

    invoke-direct {p3}, Landroid/hardware/usb/UsbRequest;-><init>()V

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/dantsu/escposprinter/connection/usb/UsbOutputStream;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/dantsu/escposprinter/connection/usb/UsbOutputStream;->usbEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {p3, v0, v1}, Landroid/hardware/usb/UsbRequest;->initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z

    .line 63
    array-length p1, p1

    invoke-virtual {p3, p2, p1}, Landroid/hardware/usb/UsbRequest;->queue(Ljava/nio/ByteBuffer;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/dantsu/escposprinter/connection/usb/UsbOutputStream;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->requestWait()Landroid/hardware/usb/UsbRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-virtual {p3}, Landroid/hardware/usb/UsbRequest;->close()V

    return-void

    .line 64
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Error queueing USB request."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 68
    invoke-virtual {p3}, Landroid/hardware/usb/UsbRequest;->close()V

    .line 69
    throw p1

    .line 56
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Error during claim USB interface."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unable to connect to USB device."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
