.class Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa002([Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aaa000:[Ljava/lang/String;

.field final synthetic aaa001:I

.field final synthetic aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;


# direct methods
.method public static synthetic $r8$lambda$482poyhKdK_jQWHNFiW4G6NPelo(Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;->aaa000(Landroid/bluetooth/BluetoothDevice;I[B)V

    return-void
.end method

.method constructor <init>(Lcom/stripe/bbpos/bbdevice/ccc055zz;[Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;->aaa000:[Ljava/lang/String;

    iput p3, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;->aaa001:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic aaa000(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-virtual {p2, p1, p3}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Landroid/bluetooth/BluetoothDevice;[B)V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Lcom/stripe/bbpos/bbdevice/ccc055zz;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    invoke-static {v1, v2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc055zz;Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;)V

    .line 4
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;->aaa000:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc055zz;[Ljava/lang/String;)[Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa017()V

    .line 9
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :try_start_2
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001()Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    .line 14
    :catch_0
    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 15
    :try_start_4
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa002(Lcom/stripe/bbpos/bbdevice/ccc055zz;Ljava/util/List;)Ljava/util/List;

    .line 18
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa002(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    if-nez v1, :cond_0

    .line 19
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa036(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc055zz;Landroid/bluetooth/le/BluetoothLeScanner;)Landroid/bluetooth/le/BluetoothLeScanner;

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    new-instance v2, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz$aaa000zz;

    invoke-direct {v2, p0}, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz$aaa000zz;-><init>(Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;)V

    invoke-static {v1, v2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc055zz;Landroid/bluetooth/le/ScanCallback;)Landroid/bluetooth/le/ScanCallback;

    .line 42
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa004(Lcom/stripe/bbpos/bbdevice/ccc055zz;)V

    .line 43
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa005(Lcom/stripe/bbpos/bbdevice/ccc055zz;)V

    .line 44
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa002(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa006(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa007(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Landroid/bluetooth/le/ScanSettings;

    move-result-object v3

    iget-object v4, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Landroid/bluetooth/le/ScanCallback;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 53
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    new-instance v2, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa008zz;

    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget v4, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;->aaa001:I

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa008zz;-><init>(Lcom/stripe/bbpos/bbdevice/ccc055zz;ILcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;)V

    invoke-static {v1, v2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc055zz;Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa008zz;)Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa008zz;

    .line 54
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa009(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa008zz;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 55
    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_3

    .line 98
    :catch_1
    :try_start_7
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa036()V

    .line 99
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa037()V

    .line 100
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa001zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->FAIL_TO_START_BT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v3, "Bluetooth (error code - 3036)"

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 104
    :catch_2
    :goto_2
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit p0

    return-void

    :goto_3
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v1

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v0
.end method
