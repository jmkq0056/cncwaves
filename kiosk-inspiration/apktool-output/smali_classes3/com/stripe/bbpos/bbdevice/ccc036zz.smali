.class Lcom/stripe/bbpos/bbdevice/ccc036zz;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "[BB01_Utils_WisePOSPlus]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ccc036zz;->aaa000(Ljava/lang/String;)V

    return-void
.end method

.method private aaa000()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-direct {v0}, Lcom/stripe/bbpos/bbdevice001/ioctrl;-><init>()V

    .line 2
    const-string v1, "/sys/devices/virtual/misc/poss/pos_wake"

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsRead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private aaa000(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method aaa001()V
    .locals 7

    .line 1
    const-string v0, ")"

    new-instance v1, Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-direct {v1}, Lcom/stripe/bbpos/bbdevice001/ioctrl;-><init>()V

    const/4 v2, 0x1

    .line 3
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->P1000BootOnOff(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Set WSC5X bootloader/wakeup pin exception during wakeup. (check code - 9071)("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    :goto_0
    const-wide/16 v2, 0x32

    .line 8
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Set WSC5X bootloader/wakeup pin exception during wakeup. (check code - 9072)("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    :goto_1
    const/4 v4, 0x0

    .line 13
    :try_start_2
    invoke-virtual {v1, v4}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->P1000BootOnOff(I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Set WSC5X bootloader/wakeup pin exception during wakeup. (check code - 9073)("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    .line 18
    :goto_2
    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Set WSC5X bootloader/wakeup pin exception during wakeup. (check code - 9074)("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method aaa002()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ccc036zz;->aaa000()Ljava/lang/String;

    move-result-object v0

    .line 2
    const-string v1, "Running"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
