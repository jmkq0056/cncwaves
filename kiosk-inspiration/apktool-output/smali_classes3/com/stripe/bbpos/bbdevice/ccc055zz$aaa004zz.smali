.class Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa004zz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa024()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;


# direct methods
.method constructor <init>(Lcom/stripe/bbpos/bbdevice/ccc055zz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa004zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001()Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    :try_start_3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa004zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa021(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa004zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    const-string v1, "5507003F0000000101B8"

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa004([B)V

    .line 11
    :cond_0
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 13
    :try_start_4
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001()Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 17
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 18
    :try_start_6
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa004zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa021(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa004zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;)V

    .line 21
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa004zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa005zz;

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa005zz;)V

    .line 22
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa004zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc055zz;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 23
    :catch_0
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-void

    .line 25
    :goto_0
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_1
    move-exception v1

    goto :goto_1

    .line 26
    :catch_1
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    monitor-exit p0

    return-void

    .line 28
    :goto_1
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v1

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v0
.end method
