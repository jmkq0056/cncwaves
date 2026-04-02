.class public Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;
.super Lcom/dantsu/escposprinter/connection/DeviceConnection;
.source "BluetoothConnection.java"


# static fields
.field private static final SPP_UUID:Ljava/util/UUID;


# instance fields
.field private device:Landroid/bluetooth/BluetoothDevice;

.field private socket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-string v0, "00001101-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;->SPP_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/dantsu/escposprinter/connection/DeviceConnection;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;->socket:Landroid/bluetooth/BluetoothSocket;

    .line 30
    iput-object p1, p0, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;->device:Landroid/bluetooth/BluetoothDevice;

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

    .line 16
    invoke-virtual {p0}, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;->connect()Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;

    move-result-object v0

    return-object v0
.end method

.method public connect()Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;->device:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    .line 65
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;->getDeviceUUID()Ljava/util/UUID;

    move-result-object v1

    .line 70
    :try_start_0
    iget-object v2, p0, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    iput-object v1, p0, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;->socket:Landroid/bluetooth/BluetoothSocket;

    .line 71
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 72
    iget-object v0, p0, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 73
    iget-object v0, p0, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;->outputStream:Ljava/io/OutputStream;

    const/4 v0, 0x0

    .line 74
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;->data:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 77
    invoke-virtual {p0}, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;->disconnect()Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;

    .line 78
    new-instance v0, Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;

    const-string v1, "Unable to connect to bluetooth device."

    invoke-direct {v0, v1}, Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    new-instance v0, Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;

    const-string v1, "Bluetooth device is not connected."

    invoke-direct {v0, v1}, Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic disconnect()Lcom/dantsu/escposprinter/connection/DeviceConnection;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;->disconnect()Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;

    move-result-object v0

    return-object v0
.end method

.method public disconnect()Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;
    .locals 2

    const/4 v0, 0x0

    .line 102
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;->data:[B

    .line 103
    iget-object v0, p0, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;->outputStream:Ljava/io/OutputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 109
    :goto_0
    iput-object v1, p0, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;->outputStream:Ljava/io/OutputStream;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;->socket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_1

    .line 113
    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 115
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 117
    :goto_1
    iput-object v1, p0, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;->socket:Landroid/bluetooth/BluetoothSocket;

    :cond_1
    return-object p0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;->device:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method protected getDeviceUUID()Ljava/util/UUID;
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 88
    array-length v1, v0

    if-lez v1, :cond_1

    .line 89
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroid/os/ParcelUuid;

    sget-object v3, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;->SPP_UUID:Ljava/util/UUID;

    invoke-direct {v2, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v3

    :cond_0
    const/4 v1, 0x0

    .line 92
    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    return-object v0

    .line 94
    :cond_1
    sget-object v0, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;->SPP_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/dantsu/escposprinter/connection/bluetooth/BluetoothConnection;->socket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
