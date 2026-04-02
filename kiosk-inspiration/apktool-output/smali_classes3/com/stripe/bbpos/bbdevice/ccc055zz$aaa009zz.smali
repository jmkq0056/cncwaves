.class Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/ccc055zz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "aaa009zz"
.end annotation


# instance fields
.field private aaa000:Landroid/bluetooth/BluetoothSocket;

.field private aaa001:Landroid/bluetooth/BluetoothDevice;

.field private aaa002:Z

.field final synthetic aaa003:Lcom/stripe/bbpos/bbdevice/ccc055zz;


# direct methods
.method public constructor <init>(Lcom/stripe/bbpos/bbdevice/ccc055zz;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;->aaa002:Z

    .line 6
    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;->aaa001:Landroid/bluetooth/BluetoothDevice;

    .line 9
    :try_start_0
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa012(Lcom/stripe/bbpos/bbdevice/ccc055zz;)I

    move-result p1

    if-nez p1, :cond_0

    .line 11
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa010()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;->aaa000:Landroid/bluetooth/BluetoothSocket;

    return-void

    .line 14
    :cond_0
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa011()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;->aaa000:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private aaa000()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;->aaa000:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 4
    :try_start_0
    iput-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;->aaa002:Z

    .line 5
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static synthetic aaa000(Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;->aaa000()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa036(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa036(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_0
    const/4 v0, 0x0

    .line 7
    :try_start_0
    iget-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;->aaa002:Z

    if-eqz v1, :cond_1

    goto/16 :goto_4

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;->aaa000:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 12
    iget-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;->aaa002:Z

    if-eqz v1, :cond_2

    .line 13
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;->aaa000:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V

    return-void

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;->aaa004:Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001(Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;)V

    .line 18
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "T-Mobile myTouch Q"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 19
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 21
    :try_start_1
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001()Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    .line 24
    :catch_0
    :goto_0
    :try_start_2
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 76
    :cond_3
    :goto_2
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa012()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 77
    :try_start_4
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v2, v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc055zz;Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;)Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;

    .line 78
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 80
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa013()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 82
    :try_start_5
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa015(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;->aaa004:Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    if-ne v1, v2, :cond_4

    .line 83
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;->aaa000:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Landroid/bluetooth/BluetoothSocket;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 86
    :cond_4
    :try_start_6
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;->aaa000:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 91
    :catch_1
    :goto_3
    :try_start_7
    monitor-exit v0

    goto/16 :goto_4

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1

    :catchall_2
    move-exception v0

    .line 92
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    .line 93
    :catch_2
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa054:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_9
    iget-boolean v2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;->aaa002:Z

    if-eqz v2, :cond_5

    .line 95
    monitor-exit v1

    goto :goto_4

    .line 98
    :cond_5
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa012(Lcom/stripe/bbpos/bbdevice/ccc055zz;)I

    move-result v2

    if-nez v2, :cond_8

    .line 99
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc055zz;I)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 103
    :try_start_a
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;->aaa000:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 104
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;->aaa000:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    if-eqz v0, :cond_6

    .line 108
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_6
    if-eqz v2, :cond_7

    .line 112
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 114
    :cond_7
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;->aaa000:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 121
    :catch_3
    :try_start_b
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    new-instance v2, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;

    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;->aaa001:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v2, v0, v3}, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;-><init>(Lcom/stripe/bbpos/bbdevice/ccc055zz;Landroid/bluetooth/BluetoothDevice;)V

    invoke-static {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc055zz;Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;)Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;

    .line 122
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa011(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 123
    monitor-exit v1

    goto :goto_4

    .line 127
    :cond_8
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;)V

    .line 128
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa005zz;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa005zz;)V

    .line 129
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v2, v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc055zz;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 130
    sget-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa024:Ljava/lang/Object;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 131
    :try_start_c
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa014:Z

    .line 132
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 133
    :try_start_d
    sget-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->FAIL_TO_START_BT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v4, "Bluetooth (error code - 3029)"

    invoke-virtual {v3, v2, v4}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa012()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 135
    :try_start_e
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v3, v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc055zz;Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;)Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa009zz;

    .line 136
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 137
    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :goto_4
    return-void

    :catchall_3
    move-exception v0

    .line 138
    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :catchall_4
    move-exception v0

    .line 139
    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    :try_start_13
    throw v0

    :catchall_5
    move-exception v0

    .line 145
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    throw v0
.end method
