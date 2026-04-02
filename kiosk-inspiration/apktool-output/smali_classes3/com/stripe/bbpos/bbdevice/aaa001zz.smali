.class final Lcom/stripe/bbpos/bbdevice/aaa001zz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aaa000:Landroid/os/Handler;

.field private aaa001:Lcom/stripe/bbpos/bbdevice/aaa002zz;

.field private aaa002:I

.field private aaa003:Lcom/stripe/bbpos/bbdevice001/ioctrl;


# direct methods
.method public static synthetic $r8$lambda$TnCxhTSzRhOhcInbhPj2b06uKL4(Lcom/stripe/bbpos/bbdevice/aaa001zz;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa007()V

    return-void
.end method

.method public static synthetic $r8$lambda$aqJCN_aXUDbqEG40zxlVTw-91Yo(Lcom/stripe/bbpos/bbdevice/aaa001zz;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa006()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/stripe/bbpos/bbdevice/aaa002zz;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa000:Landroid/os/Handler;

    .line 18
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa002zz;

    const/4 p1, 0x0

    .line 19
    invoke-direct {p0, p1}, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa000(I)V

    .line 20
    new-instance p1, Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-direct {p1}, Lcom/stripe/bbpos/bbdevice001/ioctrl;-><init>()V

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa003:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    return-void
.end method

.method private declared-synchronized aaa000(I)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa002:I
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

.method private synthetic aaa006()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa002zz;

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/aaa002zz;->aaa001()V

    return-void
.end method

.method private synthetic aaa007()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa002zz;

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/aaa002zz;->aaa000()V

    return-void
.end method


# virtual methods
.method aaa000()Z
    .locals 5

    .line 2
    const-string v0, "[BootselPinLow]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa000(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 6
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa003:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    const-string v3, "/sys/class/aw9523/bootsel/value"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v4, 0x1

    .line 9
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[BootselPinLow] elapsedTime : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa000(Ljava/lang/String;)V

    return v4
.end method

.method aaa001()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa003:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->IsAW9523Valid()I

    move-result v0

    return v0
.end method

.method aaa002()Z
    .locals 5

    .line 1
    const-string v0, "[K21EnablePinHigh]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa000(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa003:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    const-string v3, "/sys/class/aw9523/k21_enable/value"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 8
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[K21EnablePinHigh] elapsedTime : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa000(Ljava/lang/String;)V

    return v4
.end method

.method aaa003()Z
    .locals 5

    .line 1
    const-string v0, "[K21EnablePinLow]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa000(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa003:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    const-string v3, "/sys/class/aw9523/k21_enable/value"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v4, 0x1

    .line 8
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[K21EnablePinLow] elapsedTime : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa000(Ljava/lang/String;)V

    return v4
.end method

.method aaa004()Z
    .locals 5

    .line 1
    const-string v0, "[K21ResetPinHigh]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa000(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa003:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    const-string v3, "/sys/class/aw9523/k21_reset/value"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 8
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[K21ResetPinHigh] elapsedTime : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa000(Ljava/lang/String;)V

    return v4
.end method

.method aaa005()Z
    .locals 5

    .line 1
    const-string v0, "[K21ResetPinLow]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa000(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa003:Lcom/stripe/bbpos/bbdevice001/ioctrl;

    const-string v3, "/sys/class/aw9523/k21_reset/value"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->SysfsWrite(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v4, 0x1

    .line 8
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[K21ResetPinLow] elapsedTime : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa000(Ljava/lang/String;)V

    return v4
.end method

.method aaa008()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa000:Landroid/os/Handler;

    new-instance v1, Lcom/stripe/bbpos/bbdevice/aaa001zz$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/stripe/bbpos/bbdevice/aaa001zz$$ExternalSyntheticLambda0;-><init>(Lcom/stripe/bbpos/bbdevice/aaa001zz;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method aaa009()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa000:Landroid/os/Handler;

    new-instance v1, Lcom/stripe/bbpos/bbdevice/aaa001zz$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/stripe/bbpos/bbdevice/aaa001zz$$ExternalSyntheticLambda1;-><init>(Lcom/stripe/bbpos/bbdevice/aaa001zz;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method aaa010()V
    .locals 4

    .line 1
    const-string v0, "[startAw9523] connect"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa000(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    const-string v2, "[startAw9523] Aw9523 loaded before"

    invoke-direct {p0, v2}, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa000(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 5
    invoke-direct {p0, v2}, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa000(I)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[startAw9523] elapsedTime : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa000(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa008()V

    return-void
.end method

.method declared-synchronized aaa011()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa002:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5
    :try_start_1
    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa000(I)V

    .line 6
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa009()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method aaa012()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa011()V

    return-void
.end method
