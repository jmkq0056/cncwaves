.class final Lcom/stripe/bbpos/bbdevice/ccc020zz;
.super Lcom/stripe/bbpos/bbdevice/ccc018zz;
.source "SourceFile"


# instance fields
.field private final aaa000:Landroid/bluetooth/BluetoothGatt;

.field private final aaa001:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private final aaa002:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private final aaa003:Ljava/lang/Object;

.field private aaa004:I

.field private aaa005:J

.field private final aaa006:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/lang/Object;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ccc018zz;-><init>()V

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Lcom/stripe/bbpos/bbdevice/ccc020zz;->aaa004:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/stripe/bbpos/bbdevice/ccc020zz;->aaa005:J

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc020zz;->aaa006:Ljava/lang/Object;

    .line 37
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc020zz;->aaa000:Landroid/bluetooth/BluetoothGatt;

    .line 38
    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc020zz;->aaa001:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 39
    iput-object p4, p0, Lcom/stripe/bbpos/bbdevice/ccc020zz;->aaa002:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 40
    iput-object p3, p0, Lcom/stripe/bbpos/bbdevice/ccc020zz;->aaa003:Ljava/lang/Object;

    return-void
.end method

.method private aaa000(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method aaa000()V
    .locals 0

    return-void
.end method

.method declared-synchronized aaa000(I)V
    .locals 2

    const-string v0, "[setMtuSize] inputMtuSize : "

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ccc020zz;->aaa000(Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/stripe/bbpos/bbdevice/ccc020zz;->aaa004:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa000([B)V
    .locals 10

    monitor-enter p0

    .line 3
    :try_start_0
    sget-boolean v0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa040:Z

    const-wide/16 v1, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 14
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ccc020zz;->aaa004:I

    add-int/lit8 v0, v0, -0x5

    .line 16
    array-length v4, p1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-array v4, v4, [B

    move v5, v3

    .line 17
    :goto_0
    array-length v6, p1

    if-ge v5, v6, :cond_4

    .line 18
    array-length v6, p1

    sub-int/2addr v6, v5

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 19
    array-length v7, v4

    if-eq v7, v6, :cond_0

    .line 20
    new-array v4, v6, [B

    .line 22
    :cond_0
    array-length v6, v4

    invoke-static {p1, v5, v4, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    iget-object v6, p0, Lcom/stripe/bbpos/bbdevice/ccc020zz;->aaa001:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v6, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 26
    iget-wide v8, p0, Lcom/stripe/bbpos/bbdevice/ccc020zz;->aaa005:J

    sub-long/2addr v6, v8

    cmp-long v8, v6, v1

    if-gez v8, :cond_1

    .line 28
    iget-object v8, p0, Lcom/stripe/bbpos/bbdevice/ccc020zz;->aaa006:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 30
    :try_start_1
    iget-object v9, p0, Lcom/stripe/bbpos/bbdevice/ccc020zz;->aaa006:Ljava/lang/Object;

    sub-long v6, v1, v6

    invoke-virtual {v9, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 33
    :catch_0
    :goto_1
    :try_start_2
    monitor-exit v8

    goto :goto_3

    :goto_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1

    .line 36
    :cond_1
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/stripe/bbpos/bbdevice/ccc020zz;->aaa005:J

    .line 37
    iget-object v6, p0, Lcom/stripe/bbpos/bbdevice/ccc020zz;->aaa000:Landroid/bluetooth/BluetoothGatt;

    iget-object v7, p0, Lcom/stripe/bbpos/bbdevice/ccc020zz;->aaa001:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v6, v7}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 39
    iget-object v6, p0, Lcom/stripe/bbpos/bbdevice/ccc020zz;->aaa003:Ljava/lang/Object;

    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 42
    :try_start_4
    iget-object v7, p0, Lcom/stripe/bbpos/bbdevice/ccc020zz;->aaa003:Ljava/lang/Object;

    const-wide/16 v8, 0xbb8

    invoke-virtual {v7, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception v7

    .line 44
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    :goto_4
    monitor-exit v6

    add-int/2addr v5, v0

    goto :goto_0

    :goto_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    .line 105
    :cond_2
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ccc020zz;->aaa004:I

    add-int/lit8 v0, v0, -0x5

    move v4, v3

    .line 107
    :goto_6
    array-length v5, p1

    if-ge v4, v5, :cond_4

    .line 108
    array-length v5, p1

    sub-int/2addr v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-array v6, v5, [B

    .line 109
    invoke-static {p1, v4, v6, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    iget-object v5, p0, Lcom/stripe/bbpos/bbdevice/ccc020zz;->aaa002:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 113
    iget-wide v7, p0, Lcom/stripe/bbpos/bbdevice/ccc020zz;->aaa005:J

    sub-long/2addr v5, v7

    cmp-long v7, v5, v1

    if-gez v7, :cond_3

    .line 115
    iget-object v7, p0, Lcom/stripe/bbpos/bbdevice/ccc020zz;->aaa006:Ljava/lang/Object;

    monitor-enter v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 117
    :try_start_7
    iget-object v8, p0, Lcom/stripe/bbpos/bbdevice/ccc020zz;->aaa006:Ljava/lang/Object;

    sub-long v5, v1, v5

    invoke-virtual {v8, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception p1

    goto :goto_8

    .line 120
    :catch_2
    :goto_7
    :try_start_8
    monitor-exit v7

    goto :goto_9

    :goto_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw p1

    .line 123
    :cond_3
    :goto_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/stripe/bbpos/bbdevice/ccc020zz;->aaa005:J

    .line 124
    iget-object v5, p0, Lcom/stripe/bbpos/bbdevice/ccc020zz;->aaa000:Landroid/bluetooth/BluetoothGatt;

    iget-object v6, p0, Lcom/stripe/bbpos/bbdevice/ccc020zz;->aaa002:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 127
    iget-object v5, p0, Lcom/stripe/bbpos/bbdevice/ccc020zz;->aaa003:Ljava/lang/Object;

    monitor-enter v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 129
    :try_start_a
    iget-object v6, p0, Lcom/stripe/bbpos/bbdevice/ccc020zz;->aaa003:Ljava/lang/Object;

    const-wide/16 v7, 0xc8

    invoke-virtual {v6, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_a

    :catchall_3
    move-exception p1

    goto :goto_b

    :catch_3
    move-exception v6

    .line 131
    :try_start_b
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 133
    :goto_a
    monitor-exit v5

    add-int/2addr v4, v0

    goto :goto_6

    :goto_b
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :cond_4
    monitor-exit p0

    return-void

    :catchall_4
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw p1
.end method
