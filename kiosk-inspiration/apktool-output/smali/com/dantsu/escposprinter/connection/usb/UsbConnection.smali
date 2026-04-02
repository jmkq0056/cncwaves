.class public Lcom/dantsu/escposprinter/connection/usb/UsbConnection;
.super Lcom/dantsu/escposprinter/connection/DeviceConnection;
.source "UsbConnection.java"


# instance fields
.field private usbDevice:Landroid/hardware/usb/UsbDevice;

.field private usbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/dantsu/escposprinter/connection/DeviceConnection;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/dantsu/escposprinter/connection/usb/UsbConnection;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 25
    iput-object p2, p0, Lcom/dantsu/escposprinter/connection/usb/UsbConnection;->usbDevice:Landroid/hardware/usb/UsbDevice;

    return-void
.end method


# virtual methods
.method public bridge synthetic connect()Lcom/dantsu/escposprinter/connection/DeviceConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/dantsu/escposprinter/connection/usb/UsbConnection;->connect()Lcom/dantsu/escposprinter/connection/usb/UsbConnection;

    move-result-object v0

    return-object v0
.end method

.method public connect()Lcom/dantsu/escposprinter/connection/usb/UsbConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcom/dantsu/escposprinter/connection/usb/UsbConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 46
    :cond_0
    :try_start_0
    new-instance v0, Lcom/dantsu/escposprinter/connection/usb/UsbOutputStream;

    iget-object v1, p0, Lcom/dantsu/escposprinter/connection/usb/UsbConnection;->usbManager:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/dantsu/escposprinter/connection/usb/UsbConnection;->usbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-direct {v0, v1, v2}, Lcom/dantsu/escposprinter/connection/usb/UsbOutputStream;-><init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)V

    iput-object v0, p0, Lcom/dantsu/escposprinter/connection/usb/UsbConnection;->outputStream:Ljava/io/OutputStream;

    const/4 v0, 0x0

    .line 47
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/dantsu/escposprinter/connection/usb/UsbConnection;->data:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/dantsu/escposprinter/connection/usb/UsbConnection;->outputStream:Ljava/io/OutputStream;

    .line 51
    new-instance v0, Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;

    const-string v1, "Unable to connect to USB device."

    invoke-direct {v0, v1}, Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic disconnect()Lcom/dantsu/escposprinter/connection/DeviceConnection;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/dantsu/escposprinter/connection/usb/UsbConnection;->disconnect()Lcom/dantsu/escposprinter/connection/usb/UsbConnection;

    move-result-object v0

    return-object v0
.end method

.method public disconnect()Lcom/dantsu/escposprinter/connection/usb/UsbConnection;
    .locals 1

    const/4 v0, 0x0

    .line 60
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/dantsu/escposprinter/connection/usb/UsbConnection;->data:[B

    .line 61
    invoke-virtual {p0}, Lcom/dantsu/escposprinter/connection/usb/UsbConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/dantsu/escposprinter/connection/usb/UsbConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/dantsu/escposprinter/connection/usb/UsbConnection;->outputStream:Ljava/io/OutputStream;

    :cond_0
    return-object p0
.end method

.method public getDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/dantsu/escposprinter/connection/usb/UsbConnection;->usbDevice:Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method

.method public send()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, v0}, Lcom/dantsu/escposprinter/connection/usb/UsbConnection;->send(I)V

    return-void
.end method

.method public send(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;
        }
    .end annotation

    .line 83
    :try_start_0
    iget-object p1, p0, Lcom/dantsu/escposprinter/connection/usb/UsbConnection;->outputStream:Ljava/io/OutputStream;

    iget-object v0, p0, Lcom/dantsu/escposprinter/connection/usb/UsbConnection;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    const/4 p1, 0x0

    .line 84
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/dantsu/escposprinter/connection/usb/UsbConnection;->data:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 86
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 87
    new-instance v0, Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
