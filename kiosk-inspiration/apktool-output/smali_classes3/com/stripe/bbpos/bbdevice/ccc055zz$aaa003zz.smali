.class Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Landroid/bluetooth/BluetoothDevice;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field aaa000:Ljava/io/ByteArrayOutputStream;

.field final synthetic aaa001:Landroid/bluetooth/BluetoothDevice;

.field final synthetic aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;


# direct methods
.method public static synthetic $r8$lambda$81CAY3t7T0zwMba3VhLoR3VQqes(Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa000(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KHI5b5KcCfOCKdQt5w2Y4lmnnsI(Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa001()V

    return-void
.end method

.method public static synthetic $r8$lambda$uD7tlTDCxTymfH3fryfOVBXi0IA(Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa000()V

    return-void
.end method

.method constructor <init>(Lcom/stripe/bbpos/bbdevice/ccc055zz;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa001:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 2
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa000:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method private synthetic aaa000()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa032()V

    return-void
.end method

.method private synthetic aaa000(Landroid/bluetooth/BluetoothGatt;)V
    .locals 2

    const-wide/16 v0, 0xc8

    .line 2
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa009:Landroid/bluetooth/BluetoothGattCharacteristic;

    const-string v1, "5507003F0000000101B8"

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->requestConnectionPriority(I)Z

    .line 10
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa009:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    return-void
.end method

.method private synthetic aaa001()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x32

    if-ge v1, v2, :cond_1

    const-wide/16 v2, 0x64

    .line 1
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 2
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa021(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_1

    :catch_0
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa021(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;)V

    .line 13
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iput-boolean v0, v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa014:Z

    .line 14
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->FAIL_TO_START_BT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v2, "BLE initialization no responsed"

    invoke-virtual {v1, v0, v2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa016()V

    .line 16
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001(Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 9

    const/4 p1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    .line 11
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-boolean v1, v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa014:Z

    if-eqz v1, :cond_0

    .line 12
    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa013(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Ljava/io/PipedOutputStream;

    move-result-object v0

    array-length v1, p2

    invoke-virtual {v0, p2, p1, v1}, Ljava/io/PipedOutputStream;->write([BII)V

    .line 13
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa013(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Ljava/io/PipedOutputStream;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/PipedOutputStream;->flush()V

    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa000:Ljava/io/ByteArrayOutputStream;

    array-length v1, p2

    invoke-virtual {v0, p2, p1, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 19
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa000:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 21
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-boolean v0, v0, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa023:Z

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 22
    array-length v0, p2

    if-le v0, v2, :cond_f

    .line 23
    :goto_0
    aget-byte v0, p2, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    array-length v3, p2

    if-gt v0, v3, :cond_f

    .line 24
    new-array v3, v0, [B

    .line 25
    invoke-static {p2, p1, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    iget-object v4, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-virtual {v4, v3}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000([B)V

    .line 29
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa000:Ljava/io/ByteArrayOutputStream;

    .line 30
    array-length v4, p2

    if-ne v4, v0, :cond_1

    goto/16 :goto_8

    .line 33
    :cond_1
    array-length v4, p2

    sub-int/2addr v4, v0

    invoke-virtual {v3, p2, v0, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 34
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa000:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_f

    .line 38
    array-length v0, p2

    const/4 v3, 0x7

    if-lt v0, v3, :cond_f

    .line 39
    aget-byte v0, p2, p1

    const/16 v3, -0x34

    const/16 v4, -0x45

    const/16 v5, -0x56

    if-nez v0, :cond_7

    aget-byte v0, p2, v2

    if-nez v0, :cond_7

    const/4 v0, 0x2

    .line 40
    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 41
    array-length v1, p2

    add-int/lit8 v6, v0, 0x5

    if-lt v1, v6, :cond_f

    add-int/lit8 v1, v0, 0x4

    .line 42
    new-array v7, v1, [B

    .line 43
    invoke-static {p2, p1, v7, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    invoke-static {v7}, Lcom/stripe/bbpos/bbdevice/ccc056zz;->aaa000([B)B

    move-result v7

    aget-byte v8, p2, v1

    if-ne v7, v8, :cond_f

    .line 45
    iget-object v7, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa000:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->reset()V

    add-int/lit8 v0, v0, 0x5

    .line 46
    array-length v7, p2

    if-ge v0, v7, :cond_3

    .line 47
    iget-object v7, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa000:Ljava/io/ByteArrayOutputStream;

    array-length v8, p2

    sub-int/2addr v8, v1

    sub-int/2addr v8, v2

    invoke-virtual {v7, p2, v0, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 49
    :cond_3
    new-array v0, v6, [B

    .line 50
    invoke-static {p2, p1, v0, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0xaa

    .line 52
    invoke-virtual {p2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v1, p1

    :goto_1
    if-ge v1, v6, :cond_6

    .line 54
    aget-byte v2, v0, v1

    if-eq v2, v5, :cond_4

    if-eq v2, v4, :cond_4

    if-ne v2, v3, :cond_5

    :cond_4
    const/16 v2, 0xcc

    .line 55
    invoke-virtual {p2, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 57
    :cond_5
    aget-byte v2, v0, v1

    invoke-virtual {p2, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const/16 v0, 0xbb

    .line 59
    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 60
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003([B)V

    return-void

    :cond_7
    move v0, p1

    .line 67
    :goto_2
    array-length v6, p2

    if-ge v0, v6, :cond_9

    .line 68
    aget-byte v6, p2, v0

    if-ne v6, v5, :cond_8

    goto :goto_3

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    if-lez v0, :cond_a

    .line 74
    iget-object v5, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa000:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 75
    iget-object v5, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa000:Ljava/io/ByteArrayOutputStream;

    array-length v6, p2

    sub-int/2addr v6, v0

    invoke-virtual {v5, p2, v0, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 76
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa000:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    :cond_a
    move v0, v2

    .line 80
    :goto_4
    array-length v5, p2

    if-ge v0, v5, :cond_e

    .line 81
    aget-byte v5, p2, v0

    if-ne v5, v4, :cond_d

    add-int/lit8 v5, v0, -0x1

    move v6, p1

    :goto_5
    if-ltz v5, :cond_b

    .line 84
    aget-byte v7, p2, v5

    if-ne v7, v3, :cond_b

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    .line 91
    :cond_b
    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_d

    add-int/lit8 v0, v0, 0x1

    .line 93
    new-array v3, v0, [B

    .line 94
    invoke-static {p2, p1, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iget-object v4, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-virtual {v4, v3}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000([B)V

    .line 100
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa000:Ljava/io/ByteArrayOutputStream;

    .line 101
    array-length v4, p2

    if-ne v4, v0, :cond_c

    const/4 p2, 0x0

    :goto_6
    move v0, v2

    goto :goto_7

    .line 105
    :cond_c
    array-length v4, p2

    sub-int/2addr v4, v0

    invoke-virtual {v3, p2, v0, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 106
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa000:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    move v0, p1

    :goto_7
    if-nez v0, :cond_2

    goto :goto_8

    .line 118
    :catch_0
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-boolean v0, p2, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa022:Z

    if-eqz v0, :cond_f

    .line 119
    iput-boolean p1, p2, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa022:Z

    .line 120
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz$$ExternalSyntheticLambda0;-><init>(Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_f
    :goto_8
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0

    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa002:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    const/4 p3, 0x1

    iput-boolean p3, p2, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001:Z

    .line 3
    iget-object p2, p2, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa002:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p3, v0, :cond_2

    .line 1
    iget-object p3, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {p3}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa015(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    move-result-object p3

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    if-ne p3, v0, :cond_1

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iput-boolean v1, p2, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa022:Z

    .line 4
    sget-object p3, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;->aaa005:Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    invoke-virtual {p2, p3}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001(Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;)V

    .line 5
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object p3, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa001:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p2, p3}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc055zz;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 6
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa016()V

    .line 9
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;)V

    .line 10
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001(Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;)V

    .line 11
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa014(Lcom/stripe/bbpos/bbdevice/ccc055zz;)V

    .line 12
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iput-boolean v2, p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa014:Z

    .line 13
    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->FAIL_TO_START_BT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string p3, "Bluetooth (error code - 3018)"

    invoke-virtual {p1, p2, p3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa016()V

    .line 17
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001(Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;)V

    .line 18
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa014(Lcom/stripe/bbpos/bbdevice/ccc055zz;)V

    return-void

    :cond_2
    if-nez p3, :cond_7

    .line 21
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object v0, p1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-boolean v0, v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa014:Z

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa015(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    move-result-object p1

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    if-eq p1, v0, :cond_3

    .line 22
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa010:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa015()V

    .line 24
    :cond_3
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa016()V

    .line 25
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iput-boolean v2, p1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa022:Z

    .line 26
    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa002:Ljava/lang/Object;

    monitor-enter p1

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iput-boolean v1, v0, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001:Z

    .line 28
    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa002:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 29
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 30
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa016(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 31
    :try_start_1
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa016(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 32
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 34
    :try_start_2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc055zz;Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa006zz;)Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa006zz;

    .line 35
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001(Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;)V

    .line 37
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa014(Lcom/stripe/bbpos/bbdevice/ccc055zz;)V

    .line 38
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa005zz;

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa005zz;)V

    .line 40
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-object v0, p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022:Lcom/stripe/bbpos/bbdevice/ccc054zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ccc054zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    if-eq v0, v1, :cond_4

    .line 41
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa081()V

    return-void

    .line 51
    :cond_4
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa013()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa002zz;

    move-result-object p1

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa002zz;->aaa001:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa002zz;

    if-ne p1, v0, :cond_6

    .line 69
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object v0, p1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iput-boolean v2, v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa014:Z

    const/16 v0, 0x85

    if-ne p2, v0, :cond_5

    .line 72
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa018(Lcom/stripe/bbpos/bbdevice/ccc055zz;)I

    move-result p1

    const/4 v0, 0x5

    if-ge p1, v0, :cond_5

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa036(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 73
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa019(Lcom/stripe/bbpos/bbdevice/ccc055zz;)I

    const-wide/16 p1, 0xbb8

    .line 75
    :try_start_3
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 79
    :catch_0
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa010(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Landroid/bluetooth/BluetoothDevice;Z)V

    return-void

    .line 81
    :cond_5
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->FAIL_TO_START_BT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bluetooth (error code - 3020)(BLE status : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ", newState : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    return-void

    .line 84
    :cond_6
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa020:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    const-string p2, "Unknown BT disconnection (3150)"

    invoke-virtual {p1, p2, v2}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa000(Ljava/lang/String;Z)V

    .line 85
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa080()V

    return-void

    :catchall_0
    move-exception p2

    .line 86
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p2

    :catchall_1
    move-exception p1

    .line 87
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    :catchall_2
    move-exception p2

    .line 88
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p2

    :cond_7
    return-void
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0

    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 3

    const/16 p2, -0x10

    .line 1
    invoke-static {p2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001(Lcom/stripe/bbpos/bbdevice/ccc055zz;I)I

    .line 3
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    const/4 p3, -0x1

    invoke-static {p2, p3}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa002(Lcom/stripe/bbpos/bbdevice/ccc055zz;I)I

    .line 5
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    new-instance p3, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa012zz;

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa012zz;-><init>(Lcom/stripe/bbpos/bbdevice/ccc055zz;Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;)V

    invoke-static {p2, p3}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc055zz;Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa012zz;)Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa012zz;

    .line 6
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa020(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa012zz;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 8
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003()Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 9
    :try_start_0
    iget-object p3, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    new-instance v0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa006zz;

    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-direct {v0, v2, v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa006zz;-><init>(Lcom/stripe/bbpos/bbdevice/ccc055zz;Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;)V

    invoke-static {p3, v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc055zz;Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa006zz;)Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa006zz;

    .line 10
    iget-object p3, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {p3}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa017(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa006zz;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    .line 11
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc055zz;Z)Z

    .line 15
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz$$ExternalSyntheticLambda1;-><init>(Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;Landroid/bluetooth/BluetoothGatt;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 29
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 31
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz$$ExternalSyntheticLambda2;-><init>(Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 52
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_0
    move-exception p1

    .line 53
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0

    .line 1
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa055:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 3
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0

    return-void
.end method

.method public onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0

    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa004()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;)V

    .line 4
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iput-boolean v0, p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa014:Z

    .line 5
    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->FAIL_TO_START_BT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v0, "Bluetooth (error code - 3021)"

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa016()V

    .line 7
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001(Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;)V

    .line 8
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa014(Lcom/stripe/bbpos/bbdevice/ccc055zz;)V

    return-void

    .line 12
    :cond_0
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa006()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    if-nez v1, :cond_1

    .line 14
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;)V

    .line 15
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iput-boolean v0, p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa014:Z

    .line 16
    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->FAIL_TO_START_BT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v0, "Bluetooth (error code - 3022)"

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa016()V

    .line 18
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001(Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;)V

    .line 19
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa014(Lcom/stripe/bbpos/bbdevice/ccc055zz;)V

    return-void

    .line 23
    :cond_1
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001(Lcom/stripe/bbpos/bbdevice/ccc055zz;Z)Z

    .line 24
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa007()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    iput-object v4, v2, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa009:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 25
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa008()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    iput-object p2, v2, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa010:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 27
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa009()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p2

    if-nez p2, :cond_2

    .line 29
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;)V

    .line 30
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iput-boolean v0, p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa014:Z

    .line 31
    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->FAIL_TO_START_BT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v0, "Bluetooth (error code - 3023)"

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa016()V

    .line 33
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001(Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;)V

    .line 34
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa014(Lcom/stripe/bbpos/bbdevice/ccc055zz;)V

    return-void

    .line 38
    :cond_2
    invoke-virtual {p1, v1, v3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 39
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 40
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 41
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;)V

    .line 42
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iput-boolean v0, p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa014:Z

    .line 43
    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->FAIL_TO_START_BT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v0, "Bluetooth (error code - 3024)"

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa016()V

    .line 45
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001(Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;)V

    .line 46
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa014(Lcom/stripe/bbpos/bbdevice/ccc055zz;)V

    :cond_3
    return-void
.end method
