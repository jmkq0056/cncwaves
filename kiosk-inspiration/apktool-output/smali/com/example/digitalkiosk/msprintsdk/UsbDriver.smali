.class public Lcom/example/digitalkiosk/msprintsdk/UsbDriver;
.super Ljava/lang/Object;
.source "UsbDriver.java"


# static fields
.field private static LogSdf:Ljava/text/SimpleDateFormat; = null

.field public static final MAX_DEVICE_NUM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "UsbDriver"

.field public static final WRITEBUF_SIZE:I = 0x1000

.field private static logfile:Ljava/text/SimpleDateFormat;


# instance fields
.field private mDeviceConnection:[Landroid/hardware/usb/UsbDeviceConnection;

.field private mFTDIEndpointIN:[Landroid/hardware/usb/UsbEndpoint;

.field private mFTDIEndpointOUT:[Landroid/hardware/usb/UsbEndpoint;

.field private mInterface:[Landroid/hardware/usb/UsbInterface;

.field private mManager:Landroid/hardware/usb/UsbManager;

.field private mPermissionIntent:Landroid/app/PendingIntent;

.field mUsbDevice:Landroid/hardware/usb/UsbDevice;

.field private m_Device:[Landroid/hardware/usb/UsbDevice;

.field private m_UsbDevIdx:I

.field private m_iWaitTime:I

.field private m_strLog_Path:Ljava/lang/String;

.field private syncLock:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->LogSdf:Ljava/text/SimpleDateFormat;

    .line 46
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->logfile:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbManager;Landroid/content/Context;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x2

    .line 35
    new-array v0, p2, [Landroid/hardware/usb/UsbDevice;

    iput-object v0, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_Device:[Landroid/hardware/usb/UsbDevice;

    .line 36
    new-array v0, p2, [Landroid/hardware/usb/UsbInterface;

    iput-object v0, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mInterface:[Landroid/hardware/usb/UsbInterface;

    .line 37
    new-array v0, p2, [Landroid/hardware/usb/UsbDeviceConnection;

    iput-object v0, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mDeviceConnection:[Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_UsbDevIdx:I

    .line 39
    new-array v0, p2, [Landroid/hardware/usb/UsbEndpoint;

    iput-object v0, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mFTDIEndpointIN:[Landroid/hardware/usb/UsbEndpoint;

    .line 40
    new-array p2, p2, [Landroid/hardware/usb/UsbEndpoint;

    iput-object p2, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mFTDIEndpointOUT:[Landroid/hardware/usb/UsbEndpoint;

    const/16 p2, 0xbb8

    .line 41
    iput p2, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_iWaitTime:I

    .line 43
    const-string p2, ""

    iput-object p2, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_strLog_Path:Ljava/lang/String;

    const/4 p2, 0x0

    .line 48
    iput-object p2, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    const/4 p2, 0x0

    .line 51
    iput-boolean p2, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->syncLock:Z

    .line 52
    iput-object p1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mManager:Landroid/hardware/usb/UsbManager;

    return-void
.end method

.method private getUsbDevIndex(Landroid/hardware/usb/UsbDevice;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 344
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v1

    const/16 v2, 0x2013

    const/16 v3, 0x519

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v1

    if-ne v1, v3, :cond_1

    const/4 p1, 0x0

    return p1

    .line 347
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v1

    const/16 v2, 0x2015

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v3, :cond_2

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getUsbDevIndex exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UsbDriver"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method

.method private writeLogtoFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "PrintSdk"

    .line 391
    iget-object v1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_strLog_Path:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 394
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 395
    sget-object v2, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->logfile:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 396
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->LogSdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 398
    :try_start_0
    new-instance p2, Ljava/io/File;

    iget-object v1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_strLog_Path:Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 400
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 402
    :cond_1
    new-instance p2, Ljava/io/File;

    iget-object v1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_strLog_Path:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".log"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    new-instance v0, Ljava/io/FileWriter;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 405
    new-instance p2, Ljava/io/BufferedWriter;

    invoke-direct {p2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 406
    invoke-virtual {p2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V

    .line 408
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->close()V

    .line 409
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 411
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public SetLogPath(Ljava/lang/String;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_strLog_Path:Ljava/lang/String;

    return-void
.end method

.method public closeUsbDevice()V
    .locals 2

    .line 203
    iget v0, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_UsbDevIdx:I

    if-gez v0, :cond_0

    return-void

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_Device:[Landroid/hardware/usb/UsbDevice;

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->closeUsbDevice(Landroid/hardware/usb/UsbDevice;)Z

    return-void
.end method

.method public closeUsbDevice(Landroid/hardware/usb/UsbDevice;)Z
    .locals 2

    .line 212
    :try_start_0
    invoke-direct {p0, p1}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->getUsbDevIndex(Landroid/hardware/usb/UsbDevice;)I

    move-result p1

    iput p1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_UsbDevIdx:I

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mDeviceConnection:[Landroid/hardware/usb/UsbDeviceConnection;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    .line 217
    iget-object v1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mInterface:[Landroid/hardware/usb/UsbInterface;

    aget-object p1, v1, p1

    if-eqz p1, :cond_1

    .line 219
    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 220
    iget-object p1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mInterface:[Landroid/hardware/usb/UsbInterface;

    iget v0, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_UsbDevIdx:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 221
    iget-object p1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mDeviceConnection:[Landroid/hardware/usb/UsbDeviceConnection;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 222
    iget-object p1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mDeviceConnection:[Landroid/hardware/usb/UsbDeviceConnection;

    iget v0, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_UsbDevIdx:I

    aput-object v1, p1, v0

    .line 223
    iget-object p1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_Device:[Landroid/hardware/usb/UsbDevice;

    aput-object v1, p1, v0

    .line 224
    iget-object p1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mFTDIEndpointIN:[Landroid/hardware/usb/UsbEndpoint;

    aput-object v1, p1, v0

    .line 225
    iget-object p1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mFTDIEndpointOUT:[Landroid/hardware/usb/UsbEndpoint;

    aput-object v1, p1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "closeUsbDevice exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UsbDriver"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getPermission(Landroid/hardware/usb/UsbDevice;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mPermissionIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mPermissionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v1}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public isConnected()Z
    .locals 3

    .line 374
    iget v0, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_UsbDevIdx:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 377
    :cond_0
    iget-object v2, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_Device:[Landroid/hardware/usb/UsbDevice;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mFTDIEndpointIN:[Landroid/hardware/usb/UsbEndpoint;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mFTDIEndpointOUT:[Landroid/hardware/usb/UsbEndpoint;

    aget-object v0, v2, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public isUsbPermission()Z
    .locals 4

    const/4 v0, 0x0

    .line 364
    :try_start_0
    iget v1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_UsbDevIdx:I

    if-gez v1, :cond_0

    return v0

    .line 367
    :cond_0
    iget-object v2, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mManager:Landroid/hardware/usb/UsbManager;

    if-eqz v2, :cond_1

    .line 368
    iget-object v3, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_Device:[Landroid/hardware/usb/UsbDevice;

    aget-object v1, v3, v1

    invoke-virtual {v2, v1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return v0
.end method

.method public declared-synchronized lock()V
    .locals 2

    monitor-enter p0

    .line 57
    :catch_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->syncLock:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 59
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 65
    :cond_0
    :try_start_2
    iput-boolean v1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->syncLock:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public openUsbDevice()Z
    .locals 3

    .line 121
    iget v0, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_UsbDevIdx:I

    if-gez v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 126
    invoke-direct {p0, v1}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->getUsbDevIndex(Landroid/hardware/usb/UsbDevice;)I

    move-result v2

    iput v2, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_UsbDevIdx:I

    if-ltz v2, :cond_0

    .line 129
    iget-object v0, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_Device:[Landroid/hardware/usb/UsbDevice;

    aput-object v1, v0, v2

    .line 135
    :cond_1
    iget v0, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_UsbDevIdx:I

    if-gez v0, :cond_2

    const/4 v0, 0x0

    return v0

    .line 137
    :cond_2
    iget-object v1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_Device:[Landroid/hardware/usb/UsbDevice;

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->openUsbDevice(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    return v0
.end method

.method public openUsbDevice(Landroid/hardware/usb/UsbDevice;)Z
    .locals 5

    .line 142
    invoke-direct {p0, p1}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->getUsbDevIndex(Landroid/hardware/usb/UsbDevice;)I

    move-result p1

    iput p1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_UsbDevIdx:I

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_Device:[Landroid/hardware/usb/UsbDevice;

    aget-object p1, v1, p1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    if-lez p1, :cond_2

    .line 158
    iget-object p1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mInterface:[Landroid/hardware/usb/UsbInterface;

    iget v1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_UsbDevIdx:I

    iget-object v2, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_Device:[Landroid/hardware/usb/UsbDevice;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    aput-object v2, p1, v1

    .line 163
    :cond_2
    iget-object p1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mInterface:[Landroid/hardware/usb/UsbInterface;

    iget v1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_UsbDevIdx:I

    aget-object p1, p1, v1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 164
    iget-object p1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mFTDIEndpointOUT:[Landroid/hardware/usb/UsbEndpoint;

    iget v2, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_UsbDevIdx:I

    iget-object v3, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mInterface:[Landroid/hardware/usb/UsbInterface;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v3

    aput-object v3, p1, v2

    .line 166
    :cond_3
    iget-object p1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mInterface:[Landroid/hardware/usb/UsbInterface;

    iget v2, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_UsbDevIdx:I

    aget-object p1, p1, v2

    invoke-virtual {p1, v0}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 167
    iget-object p1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mFTDIEndpointIN:[Landroid/hardware/usb/UsbEndpoint;

    iget v2, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_UsbDevIdx:I

    iget-object v3, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mInterface:[Landroid/hardware/usb/UsbInterface;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v3

    aput-object v3, p1, v2

    .line 170
    :cond_4
    iget-object p1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mDeviceConnection:[Landroid/hardware/usb/UsbDeviceConnection;

    iget v2, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_UsbDevIdx:I

    iget-object v3, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mManager:Landroid/hardware/usb/UsbManager;

    iget-object v4, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_Device:[Landroid/hardware/usb/UsbDevice;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v3

    aput-object v3, p1, v2

    .line 171
    iget-object p1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mDeviceConnection:[Landroid/hardware/usb/UsbDeviceConnection;

    iget v2, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_UsbDevIdx:I

    aget-object p1, p1, v2

    if-nez p1, :cond_5

    return v0

    .line 174
    :cond_5
    iget-object v3, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mInterface:[Landroid/hardware/usb/UsbInterface;

    aget-object v2, v3, v2

    invoke-virtual {p1, v2, v1}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    return v1

    .line 180
    :cond_6
    iget-object p1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mDeviceConnection:[Landroid/hardware/usb/UsbDeviceConnection;

    iget v1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_UsbDevIdx:I

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    return v0
.end method

.method public read([B[B)I
    .locals 2

    .line 255
    iget v0, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_UsbDevIdx:I

    if-gez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_Device:[Landroid/hardware/usb/UsbDevice;

    aget-object v0, v1, v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->read([B[BLandroid/hardware/usb/UsbDevice;)I

    move-result p1

    return p1
.end method

.method public read([B[BLandroid/hardware/usb/UsbDevice;)I
    .locals 3

    .line 313
    array-length v0, p2

    invoke-virtual {p0, p2, v0, p3}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([BILandroid/hardware/usb/UsbDevice;)I

    move-result p2

    if-gez p2, :cond_0

    const/4 p1, -0x1

    return p1

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->lock()V

    const-wide/16 p2, 0x32

    const/4 v0, 0x0

    .line 319
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/Thread;->sleep(J)V

    .line 320
    array-length p2, p1

    const/16 p3, 0xa

    if-le p2, p3, :cond_1

    const-wide/16 p2, 0x96

    .line 321
    invoke-static {p2, p3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 327
    :catch_0
    :cond_1
    :try_start_1
    iget-object p2, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mDeviceConnection:[Landroid/hardware/usb/UsbDeviceConnection;

    iget p3, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_UsbDevIdx:I

    aget-object p2, p2, p3

    iget-object v1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mFTDIEndpointOUT:[Landroid/hardware/usb/UsbEndpoint;

    aget-object p3, v1, p3

    array-length v1, p1

    const/16 v2, 0x12c

    invoke-virtual {p2, p3, p1, v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v0

    if-nez v0, :cond_2

    .line 330
    iget-object p2, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mDeviceConnection:[Landroid/hardware/usb/UsbDeviceConnection;

    iget p3, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_UsbDevIdx:I

    aget-object p2, p2, p3

    iget-object v1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mFTDIEndpointOUT:[Landroid/hardware/usb/UsbEndpoint;

    aget-object p3, v1, p3

    array-length v1, p1

    invoke-virtual {p2, p3, p1, v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 335
    :catch_1
    :cond_2
    invoke-virtual {p0}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->unlock()V

    return v0
.end method

.method public setFlowCtrl(I)V
    .locals 0

    if-nez p1, :cond_0

    const/16 p1, 0x7d0

    .line 78
    iput p1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_iWaitTime:I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 82
    iput p1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_iWaitTime:I

    return-void
.end method

.method public setPermissionIntent(Landroid/app/PendingIntent;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mPermissionIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public declared-synchronized unlock()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 70
    :try_start_0
    iput-boolean v0, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->syncLock:Z

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public usbAttached(Landroid/content/Intent;)Z
    .locals 1

    .line 92
    const-string v0, "device"

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 94
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->usbAttached(Landroid/hardware/usb/UsbDevice;)Z

    move-result p1

    return p1
.end method

.method public usbAttached(Landroid/hardware/usb/UsbDevice;)Z
    .locals 3

    .line 98
    invoke-direct {p0, p1}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->getUsbDevIndex(Landroid/hardware/usb/UsbDevice;)I

    move-result v0

    iput v0, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_UsbDevIdx:I

    .line 99
    iget-object v1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_Device:[Landroid/hardware/usb/UsbDevice;

    aput-object p1, v1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Not support device : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UsbDriver"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 114
    :cond_1
    iget-object p1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mManager:Landroid/hardware/usb/UsbManager;

    iget-object v0, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_Device:[Landroid/hardware/usb/UsbDevice;

    iget v2, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_UsbDevIdx:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mPermissionIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v2}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    return v1
.end method

.method public usbDetached(Landroid/content/Intent;)Z
    .locals 1

    .line 237
    const-string v0, "device"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 238
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->closeUsbDevice(Landroid/hardware/usb/UsbDevice;)Z

    move-result p1

    return p1
.end method

.method public usbDriverCheck()I
    .locals 7

    const/4 v0, -0x1

    .line 419
    :try_start_0
    invoke-virtual {p0}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->isUsbPermission()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    .line 420
    iget-object v1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mManager:Landroid/hardware/usb/UsbManager;

    .line 421
    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v1

    const/4 v3, 0x0

    .line 422
    iput-object v3, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    .line 423
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 424
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 425
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbDevice;

    .line 426
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v4

    const/16 v5, 0x2013

    const/16 v6, 0x519

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v4

    if-eq v4, v6, :cond_2

    .line 427
    :cond_1
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v4

    const/16 v5, 0x2015

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 428
    :cond_2
    iput-object v3, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    goto :goto_0

    .line 431
    :cond_3
    iget-object v1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    .line 433
    invoke-virtual {p0, v1}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->usbAttached(Landroid/hardware/usb/UsbDevice;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 434
    iget-object v1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0, v1}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->openUsbDevice(Landroid/hardware/usb/UsbDevice;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    return v0

    .line 439
    :cond_5
    invoke-virtual {p0}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->isConnected()Z

    move-result v1

    if-nez v1, :cond_7

    .line 440
    iget-object v1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0, v1}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->openUsbDevice(Landroid/hardware/usb/UsbDevice;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_6

    return v2

    :cond_6
    return v0

    :cond_7
    return v2

    :catch_0
    move-exception v1

    .line 448
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "usbDriverCheck:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbDriver"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public write([B)I
    .locals 1

    .line 243
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([BI)I

    move-result p1

    return p1
.end method

.method public write([BI)I
    .locals 2

    .line 247
    iget p2, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_UsbDevIdx:I

    if-gez p2, :cond_0

    const/4 p1, -0x1

    return p1

    .line 250
    :cond_0
    array-length v0, p1

    iget-object v1, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_Device:[Landroid/hardware/usb/UsbDevice;

    aget-object p2, v1, p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([BILandroid/hardware/usb/UsbDevice;)I

    move-result p1

    return p1
.end method

.method public write([BILandroid/hardware/usb/UsbDevice;)I
    .locals 10

    .line 266
    const-string v0, ""

    invoke-direct {p0, p3}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->getUsbDevIndex(Landroid/hardware/usb/UsbDevice;)I

    move-result p3

    iput p3, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_UsbDevIdx:I

    const/4 v1, -0x1

    if-gez p3, :cond_0

    return v1

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->lock()V

    const/16 p3, 0x1000

    const/4 v2, 0x0

    .line 274
    :try_start_0
    new-array v3, p3, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v4, v2

    :goto_0
    if-ge v4, p2, :cond_5

    add-int/lit16 v5, v4, 0x1000

    if-le v5, p2, :cond_1

    sub-int v5, p2, v4

    goto :goto_1

    :cond_1
    move v5, p3

    .line 282
    :goto_1
    :try_start_1
    invoke-static {p1, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    iget-object v6, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mDeviceConnection:[Landroid/hardware/usb/UsbDeviceConnection;

    iget v7, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_UsbDevIdx:I

    aget-object v6, v6, v7

    iget-object v8, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->mFTDIEndpointIN:[Landroid/hardware/usb/UsbEndpoint;

    aget-object v7, v8, v7

    iget v8, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_iWaitTime:I

    invoke-virtual {v6, v7, v3, v5, v8}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v5

    if-gez v5, :cond_2

    .line 288
    invoke-virtual {p0}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->unlock()V

    return v1

    .line 291
    :cond_2
    iget-object v6, p0, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->m_strLog_Path:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    move-object v7, v0

    move v6, v2

    :goto_2
    if-ge v6, v5, :cond_3

    .line 297
    const-string v8, "%02X"

    aget-byte v9, v3, v6

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 298
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 300
    :cond_3
    const-string v6, "write"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Length="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";Data=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->writeLogtoFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    add-int/2addr v4, v5

    goto/16 :goto_0

    :catch_0
    move v2, v4

    :catch_1
    move v4, v2

    .line 308
    :cond_5
    invoke-virtual {p0}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->unlock()V

    return v4
.end method

.method public write([BLandroid/hardware/usb/UsbDevice;)I
    .locals 1

    .line 262
    array-length v0, p1

    invoke-virtual {p0, p1, v0, p2}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->write([BILandroid/hardware/usb/UsbDevice;)I

    move-result p1

    return p1
.end method
