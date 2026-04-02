.class final Lcom/stripe/bbpos/bbdevice/ccc028zz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/bbpos/bbdevice/ccc028zz$aaa001zz;
    }
.end annotation


# instance fields
.field private aaa000:Lcom/stripe/bbpos/bbdevice001/SerialPort;

.field private aaa001:Ljava/io/InputStream;

.field private aaa002:Lcom/stripe/bbpos/bbdevice/ccc028zz$aaa001zz;

.field private aaa003:Landroid/os/Handler;

.field private aaa004:Lcom/stripe/bbpos/bbdevice/ccc029zz;

.field private aaa005:I

.field private aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

.field private aaa007:Ljava/lang/String;

.field aaa008:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$6HxJrHv1srCQXdFUx0WK72bbQyI(Lcom/stripe/bbpos/bbdevice/ccc028zz;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa000(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jMUTHn4_41lHtP3kRDqo5MiMqcE(Lcom/stripe/bbpos/bbdevice/ccc028zz;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa012()V

    return-void
.end method

.method public static synthetic $r8$lambda$zglDaN1KQ3DsZGOZKj9YPmGun3A(Lcom/stripe/bbpos/bbdevice/ccc028zz;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa013()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/stripe/bbpos/bbdevice/ccc029zz;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa003:Landroid/os/Handler;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa008:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa004:Lcom/stripe/bbpos/bbdevice/ccc029zz;

    const/4 p1, 0x0

    .line 22
    invoke-direct {p0, p1}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa000(I)V

    .line 23
    new-instance p1, Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-direct {p1}, Lcom/stripe/bbpos/bbdevice001/ioctrl;-><init>()V

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    .line 24
    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa007:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa010()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa008:Ljava/lang/String;

    return-void
.end method

.method static synthetic aaa000(Lcom/stripe/bbpos/bbdevice/ccc028zz;)Ljava/io/InputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa001:Ljava/io/InputStream;

    return-object p0
.end method

.method private declared-synchronized aaa000(I)V
    .locals 0

    monitor-enter p0

    .line 3
    :try_start_0
    iput p1, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa005:I
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

.method private synthetic aaa000(Ljava/lang/String;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa004:Lcom/stripe/bbpos/bbdevice/ccc029zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/ccc029zz;->onReturnBarcode(Ljava/lang/String;)V

    return-void
.end method

.method private aaa001(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private static aaa010()Ljava/lang/String;
    .locals 3

    .line 3
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/sys/stm8/bbpos_stm8"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method private aaa011()V
    .locals 2

    .line 1
    new-instance v0, Lcom/stripe/bbpos/bbdevice/ccc028zz$aaa001zz;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/stripe/bbpos/bbdevice/ccc028zz$aaa001zz;-><init>(Lcom/stripe/bbpos/bbdevice/ccc028zz;Lcom/stripe/bbpos/bbdevice/ccc028zz$aaa000zz;)V

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc028zz$aaa001zz;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private synthetic aaa012()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa004:Lcom/stripe/bbpos/bbdevice/ccc029zz;

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/ccc029zz;->aaa000()V

    return-void
.end method

.method private synthetic aaa013()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa004:Lcom/stripe/bbpos/bbdevice/ccc029zz;

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/ccc029zz;->aaa001()V

    return-void
.end method


# virtual methods
.method aaa000(Lcom/stripe/bbpos/bbdevice/ccc029zz;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa004:Lcom/stripe/bbpos/bbdevice/ccc029zz;

    return-void
.end method

.method aaa000([BI)V
    .locals 2

    .line 17
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 18
    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    :try_start_0
    new-instance p1, Ljava/lang/String;

    const-string p2, "UTF-8"

    invoke-direct {p1, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 23
    const-string p2, "\r\n"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x2

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa007:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa007:Ljava/lang/String;

    .line 26
    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa002(Ljava/lang/String;)V

    return-void

    .line 27
    :cond_0
    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa007:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa007:Ljava/lang/String;

    .line 30
    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa002(Ljava/lang/String;)V

    return-void

    .line 32
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa007:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa007:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method aaa000()Z
    .locals 5

    .line 4
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    const/4 v2, 0x1

    const-string v3, "/dev/stm8_io"

    if-ne v0, v1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    const/16 v1, 0xf

    invoke-virtual {v0, v3, v1}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    return v2

    .line 9
    :cond_0
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa002:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    const/16 v4, 0x11

    if-ne v0, v1, :cond_1

    .line 10
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v3, v4}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    return v2

    .line 12
    :cond_1
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa004:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v0, v1, :cond_2

    .line 13
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v3, v4}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    return v2

    .line 16
    :cond_2
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa007()Z

    move-result v0

    return v0
.end method

.method aaa001()I
    .locals 3

    .line 6
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 8
    :cond_0
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa002:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v0, v1, :cond_1

    return v2

    .line 10
    :cond_1
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa004:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v0, v1, :cond_2

    return v2

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->IsSTM8Valid()I

    move-result v0

    return v0
.end method

.method aaa001(I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa005:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    const-string v2, "/proc/sp_i2c_swap_node"

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v2, p1}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa007:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v2, p1}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    :cond_1
    return-void
.end method

.method aaa002(Ljava/lang/String;)V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa003:Landroid/os/Handler;

    new-instance v1, Lcom/stripe/bbpos/bbdevice/ccc028zz$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/stripe/bbpos/bbdevice/ccc028zz$$ExternalSyntheticLambda0;-><init>(Lcom/stripe/bbpos/bbdevice/ccc028zz;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method aaa002()Z
    .locals 7

    .line 1
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    const/16 v2, 0x8

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "/dev/stm8_io"

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v6, v5}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v6, v3}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v6, v2}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    return v4

    .line 6
    :cond_0
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa002:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v6, v2}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 8
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v6, v5}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 9
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v6, v3}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    return v4

    .line 11
    :cond_1
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa004:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v0, v1, :cond_2

    .line 12
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v6, v2}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 13
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v6, v5}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 14
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v6, v3}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    return v4

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v5}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->MTgpioWrite(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    return v5

    :cond_3
    return v4
.end method

.method aaa003()Z
    .locals 9

    .line 1
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    const/16 v2, 0xd

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x1

    const-string v7, "/dev/stm8_io"

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa008:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v7, v4}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    const-wide/16 v0, 0x1f4

    .line 5
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    const/4 v1, 0x5

    invoke-virtual {v0, v7, v1}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 12
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v7, v6}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 14
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    const/4 v1, 0x3

    invoke-virtual {v0, v7, v1}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 16
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v7, v3}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 19
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v7, v2}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 20
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v7, v5}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    return v6

    .line 31
    :cond_1
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa002:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    const/16 v8, 0x8

    if-ne v0, v1, :cond_2

    .line 32
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v7, v8}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 33
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v7, v4}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 34
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v7, v6}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 35
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v7, v3}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 36
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v7, v5}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 37
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v7, v2}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 38
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v7, v5}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    return v6

    .line 40
    :cond_2
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa004:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v0, v1, :cond_3

    .line 41
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v7, v8}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 42
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v7, v4}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 43
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v7, v6}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 44
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v7, v3}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 45
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v7, v5}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 46
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v7, v2}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 47
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v7, v5}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    return v6

    .line 51
    :cond_3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v6}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->MTgpioWrite(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    return v4

    :cond_4
    return v6
.end method

.method aaa004()Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    const/4 v2, 0x1

    const-string v3, "/dev/stm8_io"

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    const/4 v1, 0x5

    invoke-virtual {v0, v3, v1}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 3
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa002()Z

    return v2

    .line 5
    :cond_0
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa002:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    const/4 v4, 0x2

    const/16 v5, 0xe

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v3, v5}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 7
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v3, v4}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    return v2

    .line 9
    :cond_1
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa004:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v0, v1, :cond_2

    .line 10
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v3, v5}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 11
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v3, v4}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    return v2

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    const-string v1, "/sys/class/misc/stm8/light"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 16
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    const/16 v1, 0x15

    invoke-virtual {v0, v1, v3}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->MTgpioWrite(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    return v3

    :cond_3
    return v2
.end method

.method aaa005()Z
    .locals 9

    .line 1
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x1

    const-string v5, "/dev/stm8_io"

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa003()Z

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v5, v3}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v5, v2}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    return v4

    .line 6
    :cond_0
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa002:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/16 v8, 0xf

    if-ne v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v5, v8}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 8
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v5, v7}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 9
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v5, v6}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 10
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v5, v3}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 11
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v5, v2}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    return v4

    .line 13
    :cond_1
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa004:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v0, v1, :cond_2

    .line 14
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v5, v8}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 15
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v5, v7}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 16
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v5, v6}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 17
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v5, v3}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 18
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v5, v2}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    return v4

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    const/16 v1, 0x15

    invoke-virtual {v0, v1, v4}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->MTgpioWrite(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    return v0

    :cond_3
    return v4
.end method

.method aaa006()Z
    .locals 7

    .line 1
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    const/4 v2, 0x1

    const-string v3, "/dev/stm8_io"

    const-wide/16 v4, 0x1e

    if-ne v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    const/16 v1, 0xe

    invoke-virtual {v0, v3, v1}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 8
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v2

    .line 13
    :cond_0
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa002:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    const/16 v6, 0x10

    if-ne v0, v1, :cond_1

    .line 14
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v3, v6}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 17
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return v2

    .line 21
    :cond_1
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa004:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v0, v1, :cond_2

    .line 22
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v3, v6}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 25
    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return v2

    .line 30
    :cond_2
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa008()Z

    move-result v0

    .line 33
    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return v0
.end method

.method aaa007()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    const-string v1, "/sys/class/aw9523/mtk_status/value"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method aaa008()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    const-string v1, "/sys/class/aw9523/mtk_status/value"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method aaa009()Z
    .locals 6

    .line 1
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa007:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x1

    const-string v5, "/dev/stm8_io"

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v5, v3}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v5, v4}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    const/4 v1, 0x3

    invoke-virtual {v0, v5, v1}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 6
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    const/16 v1, 0x9

    invoke-virtual {v0, v5, v1}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 7
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v5, v3}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 8
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v5, v2}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    return v4

    .line 10
    :cond_0
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa002:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v0, v1, :cond_1

    .line 11
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    const/16 v1, 0xf

    invoke-virtual {v0, v5, v1}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 12
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    const/4 v1, 0x6

    invoke-virtual {v0, v5, v1}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 13
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    const/4 v1, 0x7

    invoke-virtual {v0, v5, v1}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 14
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v5, v3}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 15
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v5, v2}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    return v4

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    const-string v1, "/sys/class/misc/stm8/light"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    .line 21
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0, v1, v4}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    return v2

    :cond_2
    return v4
.end method

.method aaa014()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa003:Landroid/os/Handler;

    new-instance v1, Lcom/stripe/bbpos/bbdevice/ccc028zz$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/stripe/bbpos/bbdevice/ccc028zz$$ExternalSyntheticLambda2;-><init>(Lcom/stripe/bbpos/bbdevice/ccc028zz;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method aaa015()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa003:Landroid/os/Handler;

    new-instance v1, Lcom/stripe/bbpos/bbdevice/ccc028zz$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/stripe/bbpos/bbdevice/ccc028zz$$ExternalSyntheticLambda1;-><init>(Lcom/stripe/bbpos/bbdevice/ccc028zz;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method aaa016()V
    .locals 5

    .line 1
    const-string v0, "connect"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa001(Ljava/lang/String;)V

    .line 2
    const-string v0, "STM8 loaded before"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa001(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa000:Lcom/stripe/bbpos/bbdevice001/SerialPort;

    if-nez v0, :cond_2

    .line 5
    :try_start_0
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    const/4 v2, 0x0

    const v3, 0x9600

    if-ne v0, v1, :cond_0

    .line 7
    new-instance v0, Lcom/stripe/bbpos/bbdevice001/SerialPort;

    new-instance v1, Ljava/io/File;

    const-string v4, "/dev/ttyMT3"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v3, v2}, Lcom/stripe/bbpos/bbdevice001/SerialPort;-><init>(Ljava/io/File;II)V

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa000:Lcom/stripe/bbpos/bbdevice001/SerialPort;

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa002:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v0, v1, :cond_1

    .line 9
    new-instance v0, Lcom/stripe/bbpos/bbdevice001/SerialPort;

    new-instance v1, Ljava/io/File;

    const-string v4, "/dev/ttyMT0"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v3, v2}, Lcom/stripe/bbpos/bbdevice001/SerialPort;-><init>(Ljava/io/File;II)V

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa000:Lcom/stripe/bbpos/bbdevice001/SerialPort;

    goto :goto_0

    .line 11
    :cond_1
    new-instance v0, Lcom/stripe/bbpos/bbdevice001/SerialPort;

    new-instance v1, Ljava/io/File;

    const-string v4, "/dev/ttyST0"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v3, v2}, Lcom/stripe/bbpos/bbdevice001/SerialPort;-><init>(Ljava/io/File;II)V

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa000:Lcom/stripe/bbpos/bbdevice001/SerialPort;

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa000:Lcom/stripe/bbpos/bbdevice001/SerialPort;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice001/SerialPort;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa001:Ljava/io/InputStream;

    const/4 v0, 0x1

    .line 14
    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa000(I)V

    .line 15
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa011()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa007:Ljava/lang/String;

    .line 17
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa014()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method declared-synchronized aaa017()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa005:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa000:Lcom/stripe/bbpos/bbdevice001/SerialPort;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice001/SerialPort;->close()V

    .line 7
    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa000:Lcom/stripe/bbpos/bbdevice001/SerialPort;

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc028zz$aaa001zz;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 14
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :catch_0
    :try_start_3
    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc028zz$aaa001zz;

    :cond_2
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa000(I)V

    .line 21
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa015()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method aaa018()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa017()V

    return-void
.end method
