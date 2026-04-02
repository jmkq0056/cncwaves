.class Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/aaa004zz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;


# direct methods
.method constructor <init>(Lcom/stripe/bbpos/bbdevice/aaa004zz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    const-string v2, "[readerReceiver] [run] USB Receiver thread start"

    invoke-static {v0, v2}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa004zz;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa003()Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa002zz;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa002zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa002zz;

    const/4 v3, 0x4

    const-wide/16 v4, 0x96

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v0, v2, :cond_7

    .line 3
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa006(Lcom/stripe/bbpos/bbdevice/aaa004zz;)I

    .line 5
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v0, v6}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa004zz;Z)Z

    .line 7
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa006(Lcom/stripe/bbpos/bbdevice/aaa004zz;)I

    move-result v14

    new-array v13, v14, [B

    .line 8
    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa007(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12
    :try_start_0
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa008(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa008(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v8

    const/4 v12, 0x0

    const/16 v15, 0x3e8

    const/16 v9, 0xa1

    const/4 v10, 0x1

    const/16 v11, 0x300

    invoke-virtual/range {v8 .. v15}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    if-gez v0, :cond_2

    .line 19
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v0, v7}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa004zz;Z)Z

    goto :goto_0

    .line 21
    :cond_2
    aget-byte v0, v13, v6

    if-nez v0, :cond_4

    .line 30
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa009(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 32
    :try_start_1
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa010(Lcom/stripe/bbpos/bbdevice/aaa004zz;)I

    move-result v0

    if-lez v0, :cond_3

    .line 33
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa011(Lcom/stripe/bbpos/bbdevice/aaa004zz;)I

    .line 35
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa009(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v8, 0x1

    invoke-virtual {v0, v8, v9}, Ljava/lang/Object;->wait(J)V

    goto :goto_2

    .line 38
    :cond_3
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa009(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v8, 0x14

    invoke-virtual {v0, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 42
    :catch_0
    :goto_2
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :goto_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0

    .line 46
    :cond_4
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    const/16 v2, 0x28

    invoke-static {v0, v2}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Lcom/stripe/bbpos/bbdevice/aaa004zz;I)I

    .line 47
    aget-byte v0, v13, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v2, 0x5

    aget-byte v2, v13, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x7

    const/4 v8, 0x2

    if-ge v2, v14, :cond_5

    add-int/lit8 v0, v0, 0x5

    .line 50
    new-array v2, v0, [B

    .line 51
    invoke-static {v13, v8, v2, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa012(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Lcom/stripe/bbpos/bbdevice/ccc016zz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa012(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Lcom/stripe/bbpos/bbdevice/ccc016zz;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc016zz;->aaa000([B)V

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v0, v14, -0x2

    .line 56
    new-array v2, v0, [B

    .line 57
    invoke-static {v13, v8, v2, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa012(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Lcom/stripe/bbpos/bbdevice/ccc016zz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa012(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Lcom/stripe/bbpos/bbdevice/ccc016zz;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc016zz;->aaa000([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 66
    :catch_1
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v0, v7}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa004zz;Z)Z

    goto/16 :goto_0

    .line 69
    :cond_6
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa013(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Z

    move-result v0

    if-ne v0, v6, :cond_1e

    .line 71
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa002(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_e

    .line 74
    :cond_7
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa003(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    if-nez v0, :cond_8

    .line 75
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    const-string v2, "[readerReceiver] [run] USB Receiver thread. No device to read from"

    invoke-static {v0, v2}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa004zz;Ljava/lang/String;)V

    return-void

    .line 78
    :cond_8
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa006(Lcom/stripe/bbpos/bbdevice/aaa004zz;)I

    move-result v0

    .line 84
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa003(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v8

    invoke-static {v2, v8}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa004zz;I)I

    .line 85
    new-instance v2, Landroid/hardware/usb/UsbRequest;

    invoke-direct {v2}, Landroid/hardware/usb/UsbRequest;-><init>()V

    .line 86
    iget-object v8, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v8}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa004(Lcom/stripe/bbpos/bbdevice/aaa004zz;)I

    move-result v8

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 87
    iget-object v9, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v9}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa008(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v9

    iget-object v10, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v10}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa003(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/hardware/usb/UsbRequest;->initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z

    .line 88
    iget-object v9, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v9, v6}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa004zz;Z)Z

    .line 90
    iget-object v9, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[readerReceiver] [run] USB Receiver thread start looping. (inRequest : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa004zz;Ljava/lang/String;)V

    move v9, v6

    move v10, v7

    move v11, v10

    move v12, v11

    move v13, v12

    .line 91
    :cond_9
    :goto_4
    iget-object v14, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v14}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa007(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Z

    move-result v14

    if-eqz v14, :cond_1d

    if-ne v9, v6, :cond_b

    .line 94
    :try_start_4
    iget-object v14, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v14}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa004(Lcom/stripe/bbpos/bbdevice/aaa004zz;)I

    move-result v14

    invoke-virtual {v2, v8, v14}, Landroid/hardware/usb/UsbRequest;->queue(Ljava/nio/ByteBuffer;I)Z

    move-result v10

    if-ne v10, v6, :cond_a

    .line 96
    iget-object v14, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    const-string v15, "[readerReceiver] [run] USB Receiver thread queue success"

    invoke-static {v14, v15}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa004zz;Ljava/lang/String;)V

    goto :goto_5

    .line 98
    :cond_a
    iget-object v14, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    const-string v15, "[readerReceiver] [run] USB Receiver thread queue fail"

    invoke-static {v14, v15}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa004zz;Ljava/lang/String;)V

    .line 99
    iget-object v14, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v14, v7}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa004zz;Z)Z

    goto :goto_5

    :catch_2
    move/from16 v16, v3

    goto/16 :goto_c

    :cond_b
    :goto_5
    if-ne v10, v6, :cond_9

    .line 103
    iget-object v14, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    const-string v15, "[readerReceiver] [run] USB Receiver thread before requestWait"

    invoke-static {v14, v15}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa004zz;Ljava/lang/String;)V

    .line 104
    iget-object v14, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v14}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa008(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v14

    if-nez v14, :cond_c

    .line 105
    iget-object v14, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    const-string v15, "[readerReceiver] [run] mDeviceConnection is null"

    invoke-static {v14, v15}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa004zz;Ljava/lang/String;)V

    .line 108
    :cond_c
    iget-object v14, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v14}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa008(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v14

    if-eqz v14, :cond_d

    .line 109
    iget-object v14, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v14}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa008(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v14

    invoke-virtual {v14}, Landroid/hardware/usb/UsbDeviceConnection;->requestWait()Landroid/hardware/usb/UsbRequest;

    move-result-object v14

    goto :goto_6

    :cond_d
    const/4 v14, 0x0

    :goto_6
    if-nez v14, :cond_f

    .line 112
    iget-object v15, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move/from16 v16, v3

    :try_start_5
    const-string v3, "[readerReceiver] [run] USB Receiver thread requestWait returned, but return null"

    invoke-static {v15, v3}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa004zz;Ljava/lang/String;)V

    const/16 v3, 0xa

    if-le v11, v3, :cond_e

    .line 114
    iget-object v3, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v3, v7}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa004zz;Z)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_f
    move/from16 v16, v3

    .line 119
    :try_start_6
    iget-object v3, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[readerReceiver] [run] USB Receiver thread returned EndPoint : "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v14}, Landroid/hardware/usb/UsbRequest;->getEndpoint()Landroid/hardware/usb/UsbEndpoint;

    move-result-object v15

    invoke-virtual {v15}, Landroid/hardware/usb/UsbEndpoint;->getEndpointNumber()I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, " (inReturnRequest : "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, ")"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa004zz;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move v11, v7

    :goto_7
    if-ne v14, v2, :cond_1b

    .line 122
    :try_start_7
    iget-object v3, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    const-string v14, "[readerReceiver] [run] USB Receiver thread requestWait return by IN request"

    invoke-static {v3, v14}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa004zz;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 124
    iget-object v14, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[readerReceiver] [run] USB Receiver thread received : "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa004zz;Ljava/lang/String;)V

    .line 125
    iget-object v4, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa006(Lcom/stripe/bbpos/bbdevice/aaa004zz;)I

    move-result v4

    const/16 v5, 0x41

    const/4 v14, 0x6

    if-gt v4, v5, :cond_10

    .line 126
    iget-object v4, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa006(Lcom/stripe/bbpos/bbdevice/aaa004zz;)I

    move-result v4

    sub-int/2addr v4, v0

    add-int/lit8 v5, v12, 0x6

    if-lt v4, v5, :cond_10

    if-eqz v12, :cond_10

    aget-byte v4, v3, v7

    if-ne v4, v14, :cond_10

    iget-object v4, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa006(Lcom/stripe/bbpos/bbdevice/aaa004zz;)I

    move-result v4

    if-eq v0, v4, :cond_10

    .line 127
    iget-object v4, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa006(Lcom/stripe/bbpos/bbdevice/aaa004zz;)I

    move-result v0

    move v12, v7

    .line 133
    :cond_10
    iget-object v4, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa006(Lcom/stripe/bbpos/bbdevice/aaa004zz;)I

    move-result v4

    if-ne v0, v4, :cond_14

    aget-byte v4, v3, v7

    if-ne v4, v14, :cond_14

    const/4 v4, 0x3

    .line 134
    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    aget-byte v5, v3, v16
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    add-int/lit8 v5, v4, 0x6

    .line 136
    :try_start_8
    array-length v12, v3

    if-ge v5, v12, :cond_11

    add-int/lit8 v5, v4, 0x5

    .line 137
    new-array v12, v5, [B

    .line 138
    invoke-static {v3, v6, v12, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    iget-object v13, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v13}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa012(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Lcom/stripe/bbpos/bbdevice/ccc016zz;

    move-result-object v13

    if-eqz v13, :cond_13

    .line 140
    iget-object v13, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v13}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa012(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Lcom/stripe/bbpos/bbdevice/ccc016zz;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/stripe/bbpos/bbdevice/ccc016zz;->aaa000([B)V

    goto :goto_8

    .line 144
    :cond_11
    array-length v5, v3

    sub-int/2addr v5, v6

    new-array v12, v5, [B

    .line 145
    invoke-static {v3, v6, v12, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa012(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Lcom/stripe/bbpos/bbdevice/ccc016zz;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 147
    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa012(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Lcom/stripe/bbpos/bbdevice/ccc016zz;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/stripe/bbpos/bbdevice/ccc016zz;->aaa000([B)V

    .line 149
    :cond_12
    array-length v5, v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    sub-int/2addr v5, v6

    .line 151
    :cond_13
    :goto_8
    :try_start_9
    array-length v3, v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    move v12, v4

    goto :goto_b

    :catch_3
    move v12, v4

    move v13, v5

    goto/16 :goto_c

    :catch_4
    move v12, v4

    move v13, v7

    goto :goto_c

    .line 152
    :cond_14
    :try_start_a
    iget-object v4, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa006(Lcom/stripe/bbpos/bbdevice/aaa004zz;)I

    move-result v4

    if-ge v0, v4, :cond_19

    add-int/lit8 v4, v12, 0x5

    if-ge v13, v4, :cond_18

    sub-int/2addr v4, v13

    .line 154
    array-length v5, v3

    if-ge v4, v5, :cond_16

    .line 155
    new-array v5, v4, [B

    .line 156
    invoke-static {v3, v7, v5, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    iget-object v14, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v14}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa012(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Lcom/stripe/bbpos/bbdevice/ccc016zz;

    move-result-object v14

    if-eqz v14, :cond_15

    .line 158
    iget-object v14, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v14}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa012(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Lcom/stripe/bbpos/bbdevice/ccc016zz;

    move-result-object v14

    invoke-virtual {v14, v5}, Lcom/stripe/bbpos/bbdevice/ccc016zz;->aaa000([B)V

    :cond_15
    :goto_9
    add-int/2addr v13, v4

    goto :goto_a

    .line 162
    :cond_16
    array-length v4, v3

    new-array v5, v4, [B

    .line 163
    invoke-static {v3, v7, v5, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iget-object v4, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa012(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Lcom/stripe/bbpos/bbdevice/ccc016zz;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 165
    iget-object v4, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa012(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Lcom/stripe/bbpos/bbdevice/ccc016zz;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/stripe/bbpos/bbdevice/ccc016zz;->aaa000([B)V

    .line 167
    :cond_17
    array-length v4, v3

    goto :goto_9

    .line 170
    :cond_18
    :goto_a
    array-length v3, v3

    move v5, v13

    :goto_b
    sub-int/2addr v0, v3

    move v13, v5

    :cond_19
    if-gtz v0, :cond_1a

    .line 174
    iget-object v3, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa006(Lcom/stripe/bbpos/bbdevice/aaa004zz;)I

    move-result v0

    move v12, v7

    :cond_1a
    move v9, v6

    goto :goto_d

    .line 179
    :cond_1b
    iget-object v3, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    const-string v4, "[readerReceiver] [run] USB Receiver thread requestWait return by other UsbRequest"

    invoke-static {v3, v4}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa004zz;Ljava/lang/String;)V

    if-eqz v14, :cond_1c

    .line 181
    invoke-virtual {v14}, Landroid/hardware/usb/UsbRequest;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :cond_1c
    move v9, v7

    goto :goto_d

    :catch_5
    move v11, v7

    .line 188
    :catch_6
    :goto_c
    iget-object v3, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v3, v7}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa004zz;Z)Z

    :goto_d
    move/from16 v3, v16

    const-wide/16 v4, 0x96

    goto/16 :goto_4

    .line 191
    :cond_1d
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa013(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Z

    move-result v0

    if-ne v0, v6, :cond_1e

    .line 193
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa002(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa004zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa001(Lcom/stripe/bbpos/bbdevice/aaa004zz;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x96

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1e
    :goto_e
    return-void
.end method
