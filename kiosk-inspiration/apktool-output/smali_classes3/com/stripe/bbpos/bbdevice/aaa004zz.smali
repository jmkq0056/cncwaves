.class final Lcom/stripe/bbpos/bbdevice/aaa004zz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa002zz;
    }
.end annotation


# static fields
.field private static final aaa025:Ljava/lang/Object;

.field static aaa026:I = 0x483

.field static aaa027:I = 0x5750

.field private static aaa028:Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa002zz;

.field private static aaa029:I


# instance fields
.field private final aaa000:Landroid/content/Context;

.field private final aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz;

.field private aaa002:Landroid/app/PendingIntent;

.field private aaa003:Landroid/hardware/usb/UsbManager;

.field private aaa004:Landroid/hardware/usb/UsbDevice;

.field private aaa005:Landroid/hardware/usb/UsbDeviceConnection;

.field private aaa006:Landroid/hardware/usb/UsbInterface;

.field private aaa007:Landroid/hardware/usb/UsbEndpoint;

.field private aaa008:Landroid/hardware/usb/UsbEndpoint;

.field private final aaa009:Ljava/lang/Object;

.field private final aaa010:Ljava/lang/Object;

.field private aaa011:Ljava/lang/Thread;

.field private aaa012:I

.field private aaa013:Z

.field private aaa014:Z

.field private aaa015:I

.field private aaa016:I

.field private aaa017:Ljava/io/ByteArrayOutputStream;

.field private aaa018:[B

.field private aaa019:[B

.field private final aaa020:Landroid/os/Handler;

.field private final aaa021:Ljava/lang/Runnable;

.field private aaa022:Lcom/stripe/bbpos/bbdevice/ccc016zz;

.field private final aaa023:Landroid/content/BroadcastReceiver;

.field private aaa024:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$4sYxhEWQdlwCOHlBaaSCf-ZBqD8(Lcom/stripe/bbpos/bbdevice/aaa004zz;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa004()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa025:Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa002zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa002zz;

    sput-object v0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa028:Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa002zz;

    const/16 v0, 0x80

    .line 26
    sput v0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa029:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/stripe/bbpos/bbdevice/aaa003zz;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa009:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa010:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa011:Ljava/lang/Thread;

    const/16 v1, 0x28

    .line 7
    iput v1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa012:I

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa013:Z

    .line 9
    iput-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa014:Z

    const/16 v1, 0x41

    .line 13
    iput v1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa015:I

    const/16 v1, 0x40

    .line 15
    iput v1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa016:I

    .line 18
    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa019:[B

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa020:Landroid/os/Handler;

    .line 340
    new-instance v0, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa000zz;

    invoke-direct {v0, p0}, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa000zz;-><init>(Lcom/stripe/bbpos/bbdevice/aaa004zz;)V

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa023:Landroid/content/BroadcastReceiver;

    .line 479
    new-instance v0, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;

    invoke-direct {v0, p0}, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;-><init>(Lcom/stripe/bbpos/bbdevice/aaa004zz;)V

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa024:Ljava/lang/Runnable;

    .line 480
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000:Landroid/content/Context;

    .line 481
    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    .line 483
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa017:Ljava/io/ByteArrayOutputStream;

    const/4 p1, 0x0

    .line 484
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa018:[B

    .line 492
    new-instance p1, Lcom/stripe/bbpos/bbdevice/aaa004zz$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/stripe/bbpos/bbdevice/aaa004zz$$ExternalSyntheticLambda0;-><init>(Lcom/stripe/bbpos/bbdevice/aaa004zz;)V

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa021:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic aaa000(Lcom/stripe/bbpos/bbdevice/aaa004zz;I)I
    .locals 0

    .line 3
    iput p1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa016:I

    return p1
.end method

.method static synthetic aaa000(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa023:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method private aaa000()V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa011:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa024:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa011:Ljava/lang/Thread;

    .line 260
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 262
    :cond_0
    const-string v0, "[StartReadingThread] Reading thread already started"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    return-void
.end method

.method private static aaa000(II)V
    .locals 0

    .line 5
    sput p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa026:I

    .line 6
    sput p1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa027:I

    return-void
.end method

.method static synthetic aaa000(Lcom/stripe/bbpos/bbdevice/aaa004zz;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic aaa000(Lcom/stripe/bbpos/bbdevice/aaa004zz;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa013:Z

    return p1
.end method

.method static synthetic aaa001(Lcom/stripe/bbpos/bbdevice/aaa004zz;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa012:I

    return p1
.end method

.method static synthetic aaa001(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa021:Ljava/lang/Runnable;

    return-object p0
.end method

.method private aaa001()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa011:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa013:Z

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa011:Ljava/lang/Thread;

    return-void

    .line 8
    :cond_0
    const-string v0, "[StopReadingThread] No reading thread to stop"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    return-void
.end method

.method private aaa001(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static synthetic aaa002(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa020:Landroid/os/Handler;

    return-object p0
.end method

.method private aaa002()Z
    .locals 3

    .line 41
    const-string v0, "[close] Close USB device connection"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa025:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa005:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v1, :cond_0

    .line 44
    const-string v1, "Close USB device connection. Release interface"

    invoke-direct {p0, v1}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa005:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa006:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 46
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa005:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa005:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v1, 0x1

    .line 48
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    .line 50
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private aaa002([B)Z
    .locals 10

    .line 2
    :try_start_0
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa003()Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa002zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa002zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa002zz;

    if-ne v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa009:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa005:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v2, :cond_0

    .line 6
    array-length v8, p1

    const/16 v9, 0x3e8

    const/16 v3, 0x21

    const/16 v4, 0x9

    const/16 v5, 0x300

    const/4 v6, 0x0

    move-object v7, p1

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    goto :goto_0

    :cond_0
    move-object v7, p1

    const/4 p1, -0x1

    :goto_0
    if-gez p1, :cond_1

    .line 10
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa005:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v2, :cond_1

    .line 11
    array-length v8, v7

    const/16 v9, 0x3e8

    const/16 v3, 0x21

    const/16 v4, 0x9

    const/16 v5, 0x300

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa010:Ljava/lang/Object;

    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v0, 0x28

    .line 16
    :try_start_2
    iput v0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa012:I

    .line 17
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa010:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 18
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 20
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :catchall_1
    move-exception v0

    move-object p1, v0

    .line 21
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    :cond_2
    move-object v7, p1

    .line 23
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa007:Landroid/hardware/usb/UsbEndpoint;

    if-eqz p1, :cond_3

    .line 24
    invoke-virtual {p1}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    .line 26
    iget p1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa015:I

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 28
    new-instance v0, Lcom/stripe/bbpos/bbdevice/ccc030zz;

    invoke-direct {v0}, Lcom/stripe/bbpos/bbdevice/ccc030zz;-><init>()V

    .line 29
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 31
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa005:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa007:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbRequest;->initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z

    .line 32
    array-length v1, v7

    invoke-virtual {v0, p1, v1}, Lcom/stripe/bbpos/bbdevice/ccc030zz;->queue(Ljava/nio/ByteBuffer;I)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[sendInterruptTransfer] Usb Write exception : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method static synthetic aaa003(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Landroid/hardware/usb/UsbEndpoint;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa008:Landroid/hardware/usb/UsbEndpoint;

    return-object p0
.end method

.method static aaa003()Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa002zz;
    .locals 1

    .line 2
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa028:Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa002zz;

    return-object v0
.end method

.method static aaa003([B)V
    .locals 6

    const/16 v0, 0x80

    .line 3
    sput v0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa029:I

    const/4 v0, 0x0

    move v1, v0

    .line 6
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_4

    .line 7
    aget-byte v2, p0, v0

    and-int/lit16 v3, v2, 0xfc

    const/16 v4, 0xb0

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    move v1, v5

    goto :goto_1

    :cond_0
    const/16 v4, 0xc0

    if-ne v3, v4, :cond_1

    goto :goto_2

    :cond_1
    const/16 v4, 0x94

    if-ne v3, v4, :cond_3

    and-int/lit8 v3, v2, 0x3

    if-ne v3, v5, :cond_2

    add-int/lit8 v3, v0, 0x1

    .line 13
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    sput v3, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa029:I

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v0, 0x1

    .line 15
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    sput v3, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa029:I

    :cond_3
    :goto_1
    and-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v5

    add-int/2addr v0, v2

    goto :goto_0

    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    .line 22
    sget-object p0, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa002zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa002zz;

    sput-object p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa028:Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa002zz;

    return-void

    .line 24
    :cond_5
    sget-object p0, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa002zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa002zz;

    sput-object p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa028:Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa002zz;

    return-void
.end method

.method static synthetic aaa004(Lcom/stripe/bbpos/bbdevice/aaa004zz;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa016:I

    return p0
.end method

.method private synthetic aaa004()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa085()V

    :cond_0
    return-void
.end method

.method static synthetic aaa005(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Lcom/stripe/bbpos/bbdevice/aaa003zz;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    return-object p0
.end method

.method static synthetic aaa006(Lcom/stripe/bbpos/bbdevice/aaa004zz;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa015:I

    return p0
.end method

.method static synthetic aaa007(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa013:Z

    return p0
.end method

.method static synthetic aaa008(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Landroid/hardware/usb/UsbDeviceConnection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa005:Landroid/hardware/usb/UsbDeviceConnection;

    return-object p0
.end method

.method static synthetic aaa009(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa010:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic aaa010(Lcom/stripe/bbpos/bbdevice/aaa004zz;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa012:I

    return p0
.end method

.method static synthetic aaa011(Lcom/stripe/bbpos/bbdevice/aaa004zz;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa012:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa012:I

    return v0
.end method

.method static synthetic aaa012(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Lcom/stripe/bbpos/bbdevice/ccc016zz;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa022:Lcom/stripe/bbpos/bbdevice/ccc016zz;

    return-object p0
.end method

.method static synthetic aaa013(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa014:Z

    return p0
.end method


# virtual methods
.method aaa000(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbInterface;
    .locals 6

    .line 66
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[findHIDInterface] USB Device "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",  Interface count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_11

    .line 69
    invoke-virtual {p1, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v3

    .line 70
    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",  Class HID"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    return-object v3

    :cond_0
    const/16 v3, 0xff

    if-ne v4, v3, :cond_1

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  Class Vender spec"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    const/16 v3, 0xfe

    if-ne v4, v3, :cond_2

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  Class App spec"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const/4 v3, 0x1

    if-ne v4, v3, :cond_3

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  Class Audio"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const/16 v3, 0xa

    if-ne v4, v3, :cond_4

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  Class CDC data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const/4 v3, 0x2

    if-ne v4, v3, :cond_5

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  Class Comm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const/16 v3, 0xd

    if-ne v4, v3, :cond_6

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  Class Content sec"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const/16 v3, 0xb

    if-ne v4, v3, :cond_7

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  Class CSCID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const/16 v3, 0x9

    if-ne v4, v3, :cond_8

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  Class HUB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const/16 v3, 0x8

    if-ne v4, v3, :cond_9

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  Class Mass storage"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const/16 v3, 0xef

    if-ne v4, v3, :cond_a

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  Class Misc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    if-nez v4, :cond_b

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  Class Per interface"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    const/4 v3, 0x5

    if-ne v4, v3, :cond_c

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  Class Physica"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    const/4 v3, 0x7

    if-ne v4, v3, :cond_d

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  Class Printer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    const/4 v3, 0x6

    if-ne v4, v3, :cond_e

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  Class Still image"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    goto :goto_1

    :cond_e
    const/16 v3, 0xe

    if-ne v4, v3, :cond_f

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  Class Video"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    goto :goto_1

    :cond_f
    const/16 v3, 0xe0

    if-ne v4, v3, :cond_10

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  Class Wireless controller"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    goto :goto_1

    .line 107
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  Class other"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/ccc016zz;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa022:Lcom/stripe/bbpos/bbdevice/ccc016zz;

    return-void
.end method

.method aaa000([B)V
    .locals 0

    .line 264
    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001([B)V

    return-void
.end method

.method declared-synchronized aaa000(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;)Z
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, ",  Interface  End point count : "

    const-string v4, "[setHIDInterface] USB Device "

    const-string v5, "[setHIDInterface] device : "

    monitor-enter p0

    .line 108
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", intf : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    .line 109
    sget-object v5, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa025:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 110
    :try_start_1
    iget-object v6, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa005:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 111
    iget-object v8, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa006:Landroid/hardware/usb/UsbInterface;

    if-eqz v8, :cond_0

    .line 112
    invoke-virtual {v6, v8}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 113
    iput-object v7, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa006:Landroid/hardware/usb/UsbInterface;

    .line 115
    :cond_0
    iget-object v6, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa005:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 116
    iput-object v7, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa004:Landroid/hardware/usb/UsbDevice;

    .line 117
    iput-object v7, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa005:Landroid/hardware/usb/UsbDeviceConnection;

    .line 118
    iput-object v7, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa007:Landroid/hardware/usb/UsbEndpoint;

    .line 119
    iput-object v7, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa008:Landroid/hardware/usb/UsbEndpoint;

    :cond_1
    const/4 v6, 0x0

    if-eqz v0, :cond_10

    if-eqz v2, :cond_10

    .line 125
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v8

    .line 126
    const-string v9, ""

    .line 132
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    move v3, v6

    move-object v4, v7

    move-object v10, v4

    :goto_0
    const/16 v11, 0x80

    const/4 v12, 0x1

    if-ge v3, v8, :cond_8

    .line 134
    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v13

    .line 135
    invoke-virtual {v13}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_2

    .line 136
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[setHIDInterface] USB Device "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ",  Interface "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " EndPoint "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v13}, Landroid/hardware/usb/UsbEndpoint;->getEndpointNumber()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " : USB_ENDPOINT_XFER_BULK"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 137
    :cond_2
    invoke-virtual {v13}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v14

    if-ne v14, v12, :cond_3

    .line 138
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[setHIDInterface] USB Device "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ",  Interface "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " EndPoint "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v13}, Landroid/hardware/usb/UsbEndpoint;->getEndpointNumber()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " : USB_ENDPOINT_XFER_ISOC"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 139
    :cond_3
    invoke-virtual {v13}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v12

    if-nez v12, :cond_4

    .line 140
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[setHIDInterface] USB Device "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ",  Interface "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " EndPoint "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v13}, Landroid/hardware/usb/UsbEndpoint;->getEndpointNumber()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " : USB_ENDPOINT_XFER_CONTROL"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 141
    :cond_4
    invoke-virtual {v13}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v12

    const/4 v14, 0x3

    if-ne v12, v14, :cond_6

    .line 142
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[setHIDInterface] USB Device "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ",  Interface "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " EndPoint "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v13}, Landroid/hardware/usb/UsbEndpoint;->getEndpointNumber()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " : USB_ENDPOINT_XFER_INT"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v13}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v12

    if-ne v12, v11, :cond_5

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[setHIDInterface] USB Device "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, ",  Interface "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, " EndPoint "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Landroid/hardware/usb/UsbEndpoint;->getEndpointNumber()I

    move-result v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, " (object : "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, ")"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    move-object v4, v13

    goto :goto_1

    .line 148
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[setHIDInterface] USB Device "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ",  Interface "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " EndPoint "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v13}, Landroid/hardware/usb/UsbEndpoint;->getEndpointNumber()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " (object : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ")"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    move-object v10, v13

    .line 151
    :cond_6
    :goto_1
    invoke-virtual {v13}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v12

    if-ne v12, v11, :cond_7

    .line 152
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[setHIDInterface] USB Device "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",  Interface "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " EndPoint "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v13}, Landroid/hardware/usb/UsbEndpoint;->getEndpointNumber()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " : Input direction"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    goto :goto_2

    .line 154
    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[setHIDInterface] USB Device "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",  Interface "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " EndPoint "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v13}, Landroid/hardware/usb/UsbEndpoint;->getEndpointNumber()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " : Output direction"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    .line 156
    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[setHIDInterface] USB Device "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",  Interface "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " EndPoint "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v13}, Landroid/hardware/usb/UsbEndpoint;->getEndpointNumber()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " : Max packet size "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v13}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 160
    :cond_8
    iget-object v3, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa003:Landroid/hardware/usb/UsbManager;

    if-eqz v3, :cond_9

    .line 161
    invoke-virtual {v3, v0}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v7

    :cond_9
    if-eqz v7, :cond_f

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[setHIDInterface] USB Device "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " Open succeeded"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v7, v2, v12}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[setHIDInterface] USB Device "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " Claim interface succeeded"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    .line 167
    iput-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa004:Landroid/hardware/usb/UsbDevice;

    .line 168
    iput-object v7, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa005:Landroid/hardware/usb/UsbDeviceConnection;

    .line 169
    iput-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa006:Landroid/hardware/usb/UsbInterface;

    .line 170
    iput-object v10, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa007:Landroid/hardware/usb/UsbEndpoint;

    .line 171
    iput-object v4, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa008:Landroid/hardware/usb/UsbEndpoint;

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setHIDInterface] Device connection RAW descriptors : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa005:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDeviceConnection;->getRawDescriptors()[B

    move-result-object v3

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    .line 173
    iput v11, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa015:I

    .line 174
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa007:Landroid/hardware/usb/UsbEndpoint;

    if-eqz v2, :cond_a

    .line 175
    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa018:[B

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setHIDInterface] mEpWriteInt.getMaxPacketSize() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa007:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    .line 179
    :cond_a
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa009:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v3, 0x64

    .line 180
    :try_start_2
    new-array v3, v3, [B

    .line 181
    iget-object v13, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa005:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v19, 0x64

    const/16 v20, 0x3e8

    const/16 v14, 0x81

    const/4 v15, 0x6

    const/16 v16, 0x2200

    const/16 v17, 0x0

    move-object/from16 v18, v3

    invoke-virtual/range {v13 .. v20}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v3

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[setHIDInterface] transferResult : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    if-gez v3, :cond_b

    .line 184
    iget-object v13, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa005:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v19, 0x64

    const/16 v20, 0x3e8

    const/16 v14, 0x81

    const/4 v15, 0x6

    const/16 v16, 0x2200

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v20}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v3

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[setHIDInterface] Retry transferResult : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    if-gez v3, :cond_b

    .line 187
    invoke-virtual {v7}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 188
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa018:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v4, "USB controlTransfer timeout"

    invoke-virtual {v0, v3, v4}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    .line 189
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return v6

    .line 192
    :cond_b
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setHIDInterface] Get report Descriptor : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v18 .. v18}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    .line 193
    invoke-static/range {v18 .. v18}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa003([B)V

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setHIDInterface] usbEndPointType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa028:Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa002zz;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hidReportDescriptorReportCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa029:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    .line 195
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 197
    :try_start_5
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa003()Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa002zz;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa002zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa002zz;

    if-ne v2, v3, :cond_d

    .line 198
    sget v2, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa029:I

    const/16 v3, 0x40

    if-le v2, v3, :cond_c

    add-int/2addr v2, v12

    .line 199
    iput v2, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa015:I

    goto :goto_3

    :cond_c
    const/16 v2, 0x81

    .line 201
    iput v2, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa015:I

    .line 204
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setHIDInterface] HID report size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa015:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    .line 205
    iget v2, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa015:I

    new-array v2, v2, [B

    iput-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa018:[B

    goto :goto_4

    .line 207
    :cond_d
    sget v2, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa029:I

    add-int/2addr v2, v12

    iput v2, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa015:I

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setHIDInterface] HID report size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa015:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    .line 210
    iget v2, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa015:I

    new-array v2, v2, [B

    iput-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa018:[B

    .line 212
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USB Device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Call start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    .line 213
    invoke-direct {v1}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000()V

    .line 215
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa017:Ljava/io/ByteArrayOutputStream;

    .line 216
    iput-boolean v12, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa014:Z

    .line 217
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa088()V

    .line 218
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return v12

    :catchall_0
    move-exception v0

    .line 219
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0

    .line 244
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setHIDInterface] USB Device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Claim interface failed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v7}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 246
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa018:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v3, "USB Device Claim interface failed"

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    .line 247
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit p0

    return v6

    .line 250
    :cond_f
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setHIDInterface] USB Device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Open failed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    .line 251
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa018:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v3, "Open device failed"

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    .line 252
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit p0

    return v6

    .line 255
    :cond_10
    :try_start_9
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa018:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v3, "USB device is null or interface is null"

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    .line 256
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    monitor-exit p0

    return v6

    :catchall_1
    move-exception v0

    .line 257
    :try_start_a
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v0
.end method

.method declared-synchronized aaa000(Ljava/lang/String;)Z
    .locals 10

    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000:Landroid/content/Context;

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa003:Landroid/hardware/usb/UsbManager;

    .line 12
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.stripe.bbpos.usbhost.USB_PERMISSION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x2000000

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa002:Landroid/app/PendingIntent;

    .line 13
    new-instance v6, Landroid/content/IntentFilter;

    const-string v0, "com.stripe.bbpos.usbhost.USB_PERMISSION"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 17
    iget-object v4, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000:Landroid/content/Context;

    iget-object v5, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa023:Landroid/content/BroadcastReceiver;

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000:Landroid/content/Context;

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa023:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v6, v2, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 22
    :goto_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa003:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 25
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 29
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbDevice;

    .line 43
    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v5

    const/16 v6, 0x15a2

    const/16 v7, 0x101

    if-ne v5, v6, :cond_3

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v5

    if-eq v5, v7, :cond_8

    .line 44
    :cond_3
    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v5

    const/16 v6, 0x5750

    const/16 v8, 0x483

    if-ne v5, v8, :cond_4

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v5

    if-eq v5, v6, :cond_8

    .line 45
    :cond_4
    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v5

    const/16 v9, 0x2c69

    if-ne v5, v9, :cond_5

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v5

    if-eq v5, v6, :cond_8

    .line 46
    :cond_5
    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v5

    const/16 v6, 0x5751

    if-ne v5, v8, :cond_6

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v5

    if-eq v5, v6, :cond_8

    .line 47
    :cond_6
    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v5

    if-ne v5, v9, :cond_7

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v5

    if-eq v5, v6, :cond_8

    .line 48
    :cond_7
    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v5

    if-ne v5, v9, :cond_2

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v5

    if-ne v5, v7, :cond_2

    :cond_8
    if-eqz v1, :cond_9

    .line 50
    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 51
    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result p1

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000(II)V

    .line 52
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa003:Landroid/hardware/usb/UsbManager;

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa002:Landroid/app/PendingIntent;

    invoke-virtual {p1, v4, v0}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    .line 53
    const-string p1, "[connect] BBPOS device USB found"

    invoke-direct {p0, p1}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    .line 57
    :cond_9
    :try_start_1
    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result p1

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000(II)V

    .line 58
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa003:Landroid/hardware/usb/UsbManager;

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa002:Landroid/app/PendingIntent;

    invoke-virtual {p1, v4, v0}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    .line 59
    const-string p1, "[connect] BBPOS device USB found"

    invoke-direct {p0, p1}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    .line 65
    :cond_a
    :try_start_2
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000:Landroid/content/Context;

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa023:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    monitor-exit p0

    return v3

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method aaa001([B)V
    .locals 9

    .line 9
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa017:Ljava/io/ByteArrayOutputStream;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 10
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa017:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 12
    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 18
    :cond_0
    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_9

    const/4 v0, 0x2

    .line 19
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x3

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    .line 20
    array-length v3, p1

    add-int/lit8 v4, v0, 0x5

    if-lt v3, v4, :cond_9

    add-int/lit8 v3, v0, 0x4

    .line 21
    new-array v5, v3, [B

    .line 22
    invoke-static {p1, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[dataReceived] BBUsbManager Received command : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    .line 24
    iget-object v6, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa017:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 25
    iget-object v6, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa017:Ljava/io/ByteArrayOutputStream;

    add-int/lit8 v0, v0, 0x5

    array-length v7, p1

    sub-int/2addr v7, v3

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v6, p1, v0, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 27
    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/aaa007zz;->aaa000([B)B

    move-result v0

    aget-byte v3, p1, v3

    if-ne v0, v3, :cond_7

    .line 28
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa018:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 30
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa018:[B

    aput-byte v8, v0, v2

    .line 31
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa003()Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa002zz;

    move-result-object v0

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa002zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa002zz;

    if-ne v0, v3, :cond_1

    .line 32
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa018:[B

    aput-byte v1, v0, v2

    :cond_1
    move v0, v8

    .line 35
    :goto_0
    iget v1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa015:I

    if-ge v8, v1, :cond_4

    add-int/lit8 v1, v8, -0x1

    if-ge v1, v4, :cond_2

    .line 36
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 37
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa018:[B

    aget-byte v1, p1, v1

    aput-byte v1, v3, v0

    goto :goto_1

    .line 39
    :cond_2
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa018:[B

    aput-byte v2, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 42
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa018:[B

    array-length v3, v1

    if-lt v0, v3, :cond_3

    .line 43
    invoke-direct {p0, v1}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa002([B)Z

    .line 44
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa018:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    move v0, v2

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    if-lez v0, :cond_8

    .line 49
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa019:[B

    if-eqz p1, :cond_6

    array-length v1, p1

    if-eq v1, v0, :cond_5

    goto :goto_2

    .line 52
    :cond_5
    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_3

    .line 53
    :cond_6
    :goto_2
    new-array p1, v0, [B

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa019:[B

    .line 57
    :goto_3
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa018:[B

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa019:[B

    array-length v1, v0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa019:[B

    invoke-direct {p0, p1}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa002([B)Z

    goto :goto_4

    .line 61
    :cond_7
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    const-string v0, "CRC error (8)"

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa009(Ljava/lang/String;)V

    .line 67
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa017:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    if-lez p1, :cond_9

    .line 68
    new-array p1, v2, [B

    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001([B)V

    :cond_9
    :goto_5
    return-void
.end method

.method declared-synchronized aaa005()V
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "[Stop]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa020:Landroid/os/Handler;

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa021:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000:Landroid/content/Context;

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa023:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    const/4 v0, 0x0

    .line 9
    :try_start_2
    iput-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa014:Z

    .line 10
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001()V

    .line 11
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa002()Z

    move-result v0

    .line 13
    const-string v1, "[Stop] Ready controller.onUsbDisconnected()"

    invoke-direct {p0, v1}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa069()V

    .line 17
    :cond_0
    const-string v0, "[Stop] End"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

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
