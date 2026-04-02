.class final Lcom/stripe/bbpos/bbdevice/ccc027zz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

.field private aaa001:I

.field aaa002:Lcom/stripe/bbpos/bbdevice001/SerialPort;

.field private aaa003:Ljava/io/OutputStream;

.field private aaa004:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/stripe/bbpos/bbdevice/aaa003zz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    return-void
.end method

.method private declared-synchronized aaa000(I)V
    .locals 0

    monitor-enter p0

    .line 100
    :try_start_0
    iput p1, p0, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa001:I
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

.method private aaa000(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method declared-synchronized aaa000()Ljava/io/InputStream;
    .locals 1

    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa004:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized aaa000(Z)V
    .locals 1

    monitor-enter p0

    .line 101
    :try_start_0
    const-string v0, "[stop]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa000(Ljava/lang/String;)V

    .line 102
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa001:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 106
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa002:Lcom/stripe/bbpos/bbdevice001/SerialPort;

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice001/SerialPort;->close()V

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa002:Lcom/stripe/bbpos/bbdevice001/SerialPort;

    :cond_1
    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa000(I)V

    if-eqz p1, :cond_2

    goto :goto_0

    .line 116
    :cond_2
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa064()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa000(ZI)V
    .locals 9

    const-string v0, "[connect] IOException : "

    const-string v1, "[connect] SecurityException : "

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa002:Lcom/stripe/bbpos/bbdevice001/SerialPort;

    if-nez v2, :cond_13

    const v2, 0x2dc6c0

    const v3, 0x70800

    const v4, 0x1c200

    if-gtz p2, :cond_3

    .line 4
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object p2

    sget-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne p2, v5, :cond_0

    move p2, v3

    goto :goto_1

    .line 6
    :cond_0
    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa006:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;)Z

    move-result p2

    if-nez p2, :cond_2

    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa007:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    .line 7
    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, v4

    goto :goto_1

    :cond_2
    :goto_0
    move p2, v2

    :cond_3
    :goto_1
    const/4 v5, 0x0

    .line 14
    :try_start_1
    new-instance v6, Lcom/stripe/bbpos/bbdevice001/SerialPort;

    new-instance v7, Ljava/io/File;

    const-string v8, "/dev/ttyBBposUart"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7, p2, v5}, Lcom/stripe/bbpos/bbdevice001/SerialPort;-><init>(Ljava/io/File;II)V

    iput-object v6, p0, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa002:Lcom/stripe/bbpos/bbdevice001/SerialPort;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 21
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v6

    sget-object v7, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v6, v7, :cond_5

    if-nez p2, :cond_4

    .line 24
    new-instance p2, Lcom/stripe/bbpos/bbdevice001/SerialPort;

    new-instance v2, Ljava/io/File;

    const-string v3, "/dev/ttyMT2"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v2, v4, v5}, Lcom/stripe/bbpos/bbdevice001/SerialPort;-><init>(Ljava/io/File;II)V

    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa002:Lcom/stripe/bbpos/bbdevice001/SerialPort;

    goto/16 :goto_2

    .line 26
    :cond_4
    new-instance v2, Lcom/stripe/bbpos/bbdevice001/SerialPort;

    new-instance v3, Ljava/io/File;

    const-string v4, "/dev/ttyMT2"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, p2, v5}, Lcom/stripe/bbpos/bbdevice001/SerialPort;-><init>(Ljava/io/File;II)V

    iput-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa002:Lcom/stripe/bbpos/bbdevice001/SerialPort;

    goto/16 :goto_2

    .line 28
    :cond_5
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v6

    sget-object v7, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v6, v7, :cond_7

    if-nez p2, :cond_6

    .line 31
    new-instance p2, Lcom/stripe/bbpos/bbdevice001/SerialPort;

    new-instance v2, Ljava/io/File;

    const-string v4, "/dev/ttyHSL0"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v2, v3, v5}, Lcom/stripe/bbpos/bbdevice001/SerialPort;-><init>(Ljava/io/File;II)V

    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa002:Lcom/stripe/bbpos/bbdevice001/SerialPort;

    goto/16 :goto_2

    .line 33
    :cond_6
    new-instance v2, Lcom/stripe/bbpos/bbdevice001/SerialPort;

    new-instance v3, Ljava/io/File;

    const-string v4, "/dev/ttyHSL0"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, p2, v5}, Lcom/stripe/bbpos/bbdevice001/SerialPort;-><init>(Ljava/io/File;II)V

    iput-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa002:Lcom/stripe/bbpos/bbdevice001/SerialPort;

    goto/16 :goto_2

    .line 35
    :cond_7
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v3

    sget-object v6, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa004:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v3, v6, :cond_9

    .line 36
    const-string v2, "[connect] open /dev/ttyS1, 115200"

    invoke-direct {p0, v2}, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa000(Ljava/lang/String;)V

    if-nez p2, :cond_8

    .line 39
    new-instance p2, Lcom/stripe/bbpos/bbdevice001/SerialPort;

    new-instance v2, Ljava/io/File;

    const-string v3, "/dev/ttyS1"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v2, v4, v5}, Lcom/stripe/bbpos/bbdevice001/SerialPort;-><init>(Ljava/io/File;II)V

    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa002:Lcom/stripe/bbpos/bbdevice001/SerialPort;

    .line 40
    const-string p2, "[connect] open success /dev/ttyS1, 115200"

    invoke-direct {p0, p2}, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa000(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 42
    :cond_8
    new-instance v2, Lcom/stripe/bbpos/bbdevice001/SerialPort;

    new-instance v3, Ljava/io/File;

    const-string v4, "/dev/ttyS1"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, p2, v5}, Lcom/stripe/bbpos/bbdevice001/SerialPort;-><init>(Ljava/io/File;II)V

    iput-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa002:Lcom/stripe/bbpos/bbdevice001/SerialPort;

    goto/16 :goto_2

    .line 45
    :cond_9
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v3

    sget-object v6, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa005:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v3, v6, :cond_b

    .line 46
    const-string v2, "[connect] WisePOS Touch"

    invoke-direct {p0, v2}, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa000(Ljava/lang/String;)V

    if-nez p2, :cond_a

    .line 48
    new-instance p2, Lcom/stripe/bbpos/bbdevice001/SerialPort;

    new-instance v2, Ljava/io/File;

    const-string v3, "/dev/ttyHS2"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v2, v4, v5}, Lcom/stripe/bbpos/bbdevice001/SerialPort;-><init>(Ljava/io/File;II)V

    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa002:Lcom/stripe/bbpos/bbdevice001/SerialPort;

    .line 49
    const-string p2, "[connect] open success /dev/ttyHS2, 115200"

    invoke-direct {p0, p2}, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa000(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 51
    :cond_a
    new-instance v2, Lcom/stripe/bbpos/bbdevice001/SerialPort;

    new-instance v3, Ljava/io/File;

    const-string v4, "/dev/ttyHS2"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, p2, v5}, Lcom/stripe/bbpos/bbdevice001/SerialPort;-><init>(Ljava/io/File;II)V

    iput-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa002:Lcom/stripe/bbpos/bbdevice001/SerialPort;

    goto/16 :goto_2

    .line 53
    :cond_b
    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa007:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 54
    const-string v3, "[connect] WisePOS SML"

    invoke-direct {p0, v3}, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa000(Ljava/lang/String;)V

    if-nez p2, :cond_c

    .line 56
    new-instance p2, Lcom/stripe/bbpos/bbdevice001/SerialPort;

    new-instance v3, Ljava/io/File;

    const-string v4, "/dev/ttyHS2"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v3, v2, v5}, Lcom/stripe/bbpos/bbdevice001/SerialPort;-><init>(Ljava/io/File;II)V

    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa002:Lcom/stripe/bbpos/bbdevice001/SerialPort;

    .line 57
    const-string p2, "[connect] open success /dev/ttyHS2, 3000000"

    invoke-direct {p0, p2}, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa000(Ljava/lang/String;)V

    goto :goto_2

    .line 59
    :cond_c
    new-instance v2, Lcom/stripe/bbpos/bbdevice001/SerialPort;

    new-instance v3, Ljava/io/File;

    const-string v4, "/dev/ttyHS2"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, p2, v5}, Lcom/stripe/bbpos/bbdevice001/SerialPort;-><init>(Ljava/io/File;II)V

    iput-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa002:Lcom/stripe/bbpos/bbdevice001/SerialPort;

    goto :goto_2

    .line 61
    :cond_d
    sget-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa006:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 62
    const-string v2, "[connect] WisePOS Go"

    invoke-direct {p0, v2}, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa000(Ljava/lang/String;)V

    if-nez p2, :cond_e

    .line 64
    new-instance p2, Lcom/stripe/bbpos/bbdevice001/SerialPort;

    new-instance v2, Ljava/io/File;

    const-string v3, "/dev/ttyBBposUart"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v2, v4, v5}, Lcom/stripe/bbpos/bbdevice001/SerialPort;-><init>(Ljava/io/File;II)V

    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa002:Lcom/stripe/bbpos/bbdevice001/SerialPort;

    .line 65
    const-string p2, "[connect] open success /dev/ttyBBposUart, 115200"

    invoke-direct {p0, p2}, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa000(Ljava/lang/String;)V

    goto :goto_2

    .line 67
    :cond_e
    new-instance v2, Lcom/stripe/bbpos/bbdevice001/SerialPort;

    new-instance v3, Ljava/io/File;

    const-string v4, "/dev/ttyBBposUart"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, p2, v5}, Lcom/stripe/bbpos/bbdevice001/SerialPort;-><init>(Ljava/io/File;II)V

    iput-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa002:Lcom/stripe/bbpos/bbdevice001/SerialPort;

    goto :goto_2

    :cond_f
    if-nez p2, :cond_10

    .line 71
    new-instance p2, Lcom/stripe/bbpos/bbdevice001/SerialPort;

    new-instance v2, Ljava/io/File;

    const-string v3, "/dev/ttyMT1"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v2, v4, v5}, Lcom/stripe/bbpos/bbdevice001/SerialPort;-><init>(Ljava/io/File;II)V

    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa002:Lcom/stripe/bbpos/bbdevice001/SerialPort;

    goto :goto_2

    .line 73
    :cond_10
    new-instance v2, Lcom/stripe/bbpos/bbdevice001/SerialPort;

    new-instance v3, Ljava/io/File;

    const-string v4, "/dev/ttyMT1"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, p2, v5}, Lcom/stripe/bbpos/bbdevice001/SerialPort;-><init>(Ljava/io/File;II)V

    iput-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa002:Lcom/stripe/bbpos/bbdevice001/SerialPort;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    :goto_2
    :try_start_3
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa002:Lcom/stripe/bbpos/bbdevice001/SerialPort;

    if-eqz p2, :cond_11

    .line 93
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice001/SerialPort;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa003:Ljava/io/OutputStream;

    .line 94
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa002:Lcom/stripe/bbpos/bbdevice001/SerialPort;

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice001/SerialPort;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa004:Ljava/io/InputStream;

    :cond_11
    const/4 p2, 0x3

    .line 96
    invoke-direct {p0, p2}, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa000(I)V

    if-eqz p1, :cond_12

    goto :goto_3

    .line 99
    :cond_12
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa004:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa003:Ljava/io/OutputStream;

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_3

    :catch_1
    move-exception p1

    .line 81
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa000(Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa017:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v0, "Open serial port failed. IOException (error code - 3104)"

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catch_2
    move-exception p1

    .line 83
    :try_start_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa000(Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa017:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v0, "Open serial port failed. SecurityException (error code - 3103)"

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    .line 99
    :cond_13
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa001()Ljava/io/OutputStream;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa003:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized aaa002()I
    .locals 10

    const-string v0, "[isSerialPortCanOpen] IOException : "

    const-string v1, "[isSerialPortCanOpen] SecurityException : "

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    const v4, 0x70800

    const v5, 0x2dc6c0

    const v6, 0x1c200

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_1

    .line 3
    :cond_0
    sget-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa006:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa007:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    .line 4
    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v6

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v5

    :goto_1
    const/4 v3, 0x0

    .line 8
    :try_start_1
    new-instance v7, Lcom/stripe/bbpos/bbdevice001/SerialPort;

    new-instance v8, Ljava/io/File;

    const-string v9, "/dev/ttyBBposUart"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8, v2, v3}, Lcom/stripe/bbpos/bbdevice001/SerialPort;-><init>(Ljava/io/File;II)V

    .line 9
    invoke-virtual {v7}, Lcom/stripe/bbpos/bbdevice001/SerialPort;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v3

    .line 14
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v2

    sget-object v7, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v2, v7, :cond_3

    .line 15
    new-instance v2, Lcom/stripe/bbpos/bbdevice001/SerialPort;

    new-instance v4, Ljava/io/File;

    const-string v5, "/dev/ttyMT2"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4, v6, v3}, Lcom/stripe/bbpos/bbdevice001/SerialPort;-><init>(Ljava/io/File;II)V

    goto/16 :goto_2

    .line 16
    :cond_3
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v2

    sget-object v7, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v2, v7, :cond_4

    .line 18
    new-instance v2, Lcom/stripe/bbpos/bbdevice001/SerialPort;

    new-instance v5, Ljava/io/File;

    const-string v6, "/dev/ttyHSL0"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5, v4, v3}, Lcom/stripe/bbpos/bbdevice001/SerialPort;-><init>(Ljava/io/File;II)V

    goto/16 :goto_2

    .line 19
    :cond_4
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v2

    sget-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa004:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v2, v4, :cond_5

    .line 20
    const-string v2, "[isSerialPortCanOpen] open /dev/ttyS1, 115200"

    invoke-direct {p0, v2}, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa000(Ljava/lang/String;)V

    .line 22
    new-instance v2, Lcom/stripe/bbpos/bbdevice001/SerialPort;

    new-instance v4, Ljava/io/File;

    const-string v5, "/dev/ttyS1"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4, v6, v3}, Lcom/stripe/bbpos/bbdevice001/SerialPort;-><init>(Ljava/io/File;II)V

    .line 23
    const-string v4, "[isSerialPortCanOpen] open success /dev/ttyS1, 115200"

    invoke-direct {p0, v4}, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa000(Ljava/lang/String;)V

    goto :goto_2

    .line 24
    :cond_5
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v2

    sget-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa005:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v2, v4, :cond_6

    .line 25
    const-string v2, "[isSerialPortCanOpen] WisePOS Touch"

    invoke-direct {p0, v2}, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa000(Ljava/lang/String;)V

    .line 26
    new-instance v2, Lcom/stripe/bbpos/bbdevice001/SerialPort;

    new-instance v4, Ljava/io/File;

    const-string v5, "/dev/ttyHS2"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4, v6, v3}, Lcom/stripe/bbpos/bbdevice001/SerialPort;-><init>(Ljava/io/File;II)V

    .line 27
    const-string v4, "[isSerialPortCanOpen] open success /dev/ttyHS2, 115200"

    invoke-direct {p0, v4}, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa000(Ljava/lang/String;)V

    goto :goto_2

    .line 28
    :cond_6
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v2

    sget-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa007:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v2, v4, :cond_7

    .line 29
    const-string v2, "[isSerialPortCanOpen] WisePOS SML"

    invoke-direct {p0, v2}, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa000(Ljava/lang/String;)V

    .line 30
    new-instance v2, Lcom/stripe/bbpos/bbdevice001/SerialPort;

    new-instance v4, Ljava/io/File;

    const-string v6, "/dev/ttyHS2"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4, v5, v3}, Lcom/stripe/bbpos/bbdevice001/SerialPort;-><init>(Ljava/io/File;II)V

    .line 31
    const-string v4, "[isSerialPortCanOpen] open success /dev/ttyHS2, 3000000"

    invoke-direct {p0, v4}, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa000(Ljava/lang/String;)V

    goto :goto_2

    .line 32
    :cond_7
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v2

    sget-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa006:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v2, v4, :cond_8

    .line 33
    const-string v2, "[isSerialPortCanOpen] WisePOS Go"

    invoke-direct {p0, v2}, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa000(Ljava/lang/String;)V

    .line 34
    new-instance v2, Lcom/stripe/bbpos/bbdevice001/SerialPort;

    new-instance v4, Ljava/io/File;

    const-string v6, "/dev/ttyBBposUart"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4, v5, v3}, Lcom/stripe/bbpos/bbdevice001/SerialPort;-><init>(Ljava/io/File;II)V

    .line 35
    const-string v4, "[isSerialPortCanOpen] open success /dev/ttyBBposUart, 3000000"

    invoke-direct {p0, v4}, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa000(Ljava/lang/String;)V

    goto :goto_2

    .line 37
    :cond_8
    new-instance v2, Lcom/stripe/bbpos/bbdevice001/SerialPort;

    new-instance v4, Ljava/io/File;

    const-string v5, "/dev/ttyMT1"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4, v6, v3}, Lcom/stripe/bbpos/bbdevice001/SerialPort;-><init>(Ljava/io/File;II)V

    .line 39
    :goto_2
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice001/SerialPort;->close()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v3

    :catch_1
    move-exception v1

    .line 45
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa000(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    const/4 v0, 0x2

    return v0

    :catch_2
    move-exception v0

    .line 46
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa000(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method
