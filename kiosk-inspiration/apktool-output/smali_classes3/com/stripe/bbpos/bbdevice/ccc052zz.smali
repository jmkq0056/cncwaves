.class Lcom/stripe/bbpos/bbdevice/ccc052zz;
.super Lcom/stripe/bbpos/bbdevice/ccc072zz;
.source "SourceFile"


# static fields
.field private static final aaa004:Ljava/lang/String;


# instance fields
.field private final aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/stripe/bbpos/bbdevice/ccc072zz;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ccc052zz;->aaa004:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/stripe/bbpos/bbdevice/BBDeviceController;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/stripe/bbpos/bbdevice/ccc072zz;-><init>(Landroid/os/Handler;)V

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc052zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ccc072zz;->aaa001:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/stripe/bbpos/bbdevice/ccc072zz;->aaa001:I

    const v2, 0x7fffffff

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 3
    iput v3, p0, Lcom/stripe/bbpos/bbdevice/ccc072zz;->aaa001:I

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc052zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa012()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;->aaa004:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;

    if-eq v0, v2, :cond_1

    .line 9
    iput v3, p0, Lcom/stripe/bbpos/bbdevice/ccc072zz;->aaa002:I

    :goto_0
    move v0, v3

    :goto_1
    move v4, v0

    goto :goto_4

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc052zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa019()Lcom/stripe/bbpos/bbdevice/ccc066zz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa016()Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa001zz;

    move-result-object v0

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa001zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa001zz;

    if-eq v0, v4, :cond_5

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc052zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    .line 14
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa013()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa002zz;

    move-result-object v0

    sget-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa002zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa002zz;

    if-eq v0, v4, :cond_2

    goto :goto_3

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc052zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa019()Lcom/stripe/bbpos/bbdevice/ccc066zz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa016()Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa001zz;

    move-result-object v0

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa001zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa001zz;

    if-ne v0, v4, :cond_3

    .line 20
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ccc072zz;->aaa002:I

    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ccc072zz;->aaa001()I

    move-result v4

    if-le v0, v4, :cond_4

    goto :goto_2

    .line 24
    :cond_3
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ccc072zz;->aaa002:I

    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ccc072zz;->aaa000()I

    move-result v4

    if-le v0, v4, :cond_4

    :goto_2
    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    move v4, v3

    goto :goto_4

    .line 25
    :cond_5
    :goto_3
    iput v3, p0, Lcom/stripe/bbpos/bbdevice/ccc072zz;->aaa002:I

    goto :goto_0

    :goto_4
    if-eqz v0, :cond_6

    .line 41
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ccc072zz;->aaa002:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/stripe/bbpos/bbdevice/ccc072zz;->aaa002:I

    :cond_6
    if-eqz v4, :cond_9

    .line 44
    iput v3, p0, Lcom/stripe/bbpos/bbdevice/ccc072zz;->aaa002:I

    .line 46
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc052zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa012()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;

    move-result-object v0

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc052zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    .line 47
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa013()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa002zz;

    move-result-object v0

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa002zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa002zz;

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc052zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    .line 48
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa019()Lcom/stripe/bbpos/bbdevice/ccc066zz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa016()Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa001zz;

    move-result-object v0

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa001zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa001zz;

    if-eq v0, v3, :cond_8

    .line 49
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc052zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa019()Lcom/stripe/bbpos/bbdevice/ccc066zz;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa003(Z)V

    .line 50
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc052zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa019()Lcom/stripe/bbpos/bbdevice/ccc066zz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa016()Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa001zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa001zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa001zz;

    if-ne v0, v1, :cond_7

    .line 51
    const-string v0, "Try to leave the bootloader mode and go back to application mode. (check code - 9063)"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    goto :goto_5

    .line 53
    :cond_7
    const-string v0, "Try to go back to application mode. (check code - 9065)"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    .line 55
    :goto_5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc052zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->bbb018()V

    .line 58
    :cond_8
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc052zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    .line 59
    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 60
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc052zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa020:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa036()Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa004zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa004zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa004zz;

    if-eq v0, v1, :cond_9

    .line 61
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc052zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa020:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa004zz;)V

    .line 65
    :cond_9
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc072zz;->aaa000:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ccc072zz;->aaa002()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
