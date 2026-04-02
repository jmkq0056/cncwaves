.class Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa006zz;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/ccc055zz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "aaa006zz"
.end annotation


# instance fields
.field aaa000:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field final synthetic aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;


# direct methods
.method private constructor <init>(Lcom/stripe/bbpos/bbdevice/ccc055zz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa006zz;->aaa000:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/stripe/bbpos/bbdevice/ccc055zz;Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa006zz;-><init>(Lcom/stripe/bbpos/bbdevice/ccc055zz;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 7

    monitor-enter p0

    .line 2
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-boolean v0, v0, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa022:Z

    if-eqz v0, :cond_6

    .line 3
    :goto_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa006zz;->aaa000:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-boolean v2, v0, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa022:Z

    if-eqz v2, :cond_2

    .line 4
    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa002:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 7
    :try_start_1
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iput-boolean v1, v2, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001:Z

    .line 8
    :goto_2
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-boolean v2, v1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001:Z

    if-nez v2, :cond_1

    .line 9
    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa002:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    .line 14
    :catch_0
    :cond_1
    :try_start_2
    monitor-exit v0

    goto :goto_1

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-boolean v0, v0, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa022:Z

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa006zz;->aaa000:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 19
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa022(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 21
    sget-boolean v2, Lcom/stripe/bbpos/bbdevice/ccc057zz;->aaa006:Z

    if-eqz v2, :cond_3

    .line 22
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 24
    :try_start_4
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001()Ljava/lang/Object;

    move-result-object v3

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v3

    .line 26
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    :goto_4
    monitor-exit v2

    goto :goto_6

    :goto_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    .line 30
    :cond_3
    :goto_6
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa009:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 31
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa008:Landroid/bluetooth/BluetoothGatt;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa009:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 33
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa002:Ljava/lang/Object;

    monitor-enter v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 36
    :try_start_7
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iput-boolean v1, v2, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001:Z

    .line 37
    :goto_7
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-boolean v2, v1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001:Z

    if-nez v2, :cond_4

    .line 38
    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa002:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v1

    goto :goto_8

    .line 43
    :catch_2
    :cond_4
    :try_start_8
    monitor-exit v0

    goto/16 :goto_0

    :goto_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v1

    :cond_5
    move v2, v1

    .line 46
    :goto_9
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 47
    array-length v3, v0

    sub-int/2addr v3, v2

    const/16 v4, 0x12

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-array v4, v3, [B

    .line 48
    invoke-static {v0, v2, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa009:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 50
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object v4, v3, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa008:Landroid/bluetooth/BluetoothGatt;

    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa009:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v4, v3}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 52
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 54
    :try_start_a
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001()Ljava/lang/Object;

    move-result-object v4

    const-wide/16 v5, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_a

    :catchall_3
    move-exception v0

    goto :goto_b

    .line 57
    :catch_3
    :goto_a
    :try_start_b
    monitor-exit v3

    add-int/lit8 v2, v2, 0x12

    goto :goto_9

    :goto_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :cond_6
    monitor-exit p0

    return-void

    :goto_c
    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_c
.end method
