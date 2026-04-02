.class Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa002zz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Landroid/bluetooth/BluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aaa000:Landroid/bluetooth/BluetoothDevice;

.field final synthetic aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;


# direct methods
.method constructor <init>(Lcom/stripe/bbpos/bbdevice/ccc055zz;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa002zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa002zz;->aaa000:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 2
    const-string v1, "Google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_3

    .line 5
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa002zz;->aaa000:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa002zz;->aaa000:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "createBond"

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa002zz;->aaa000:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :try_start_2
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa002zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iput-boolean v2, v1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000:Z

    .line 12
    :catch_0
    :goto_0
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa002zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-boolean v1, v1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_2

    .line 14
    :try_start_3
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 18
    :cond_2
    :try_start_4
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 23
    :catch_1
    :cond_3
    :goto_1
    :try_start_6
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa002zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa002zz;->aaa000:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc055zz;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 25
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa002zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa011(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 26
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa002zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa011(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;)V

    .line 27
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa002zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v0, v3}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc055zz;Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;)Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;

    .line 30
    :cond_4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa002zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa023:Z

    .line 33
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001(Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;)V

    .line 35
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa002zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc055zz;I)I

    .line 36
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa002zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    new-instance v1, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;

    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa002zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa002zz;->aaa000:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;-><init>(Lcom/stripe/bbpos/bbdevice/ccc055zz;Landroid/bluetooth/BluetoothDevice;)V

    invoke-static {v0, v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc055zz;Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;)Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;

    .line 37
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa002zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa011(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0
.end method
