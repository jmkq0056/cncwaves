.class Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa011zz;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/ccc055zz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "aaa011zz"
.end annotation


# instance fields
.field private aaa000:Z

.field final synthetic aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;


# direct methods
.method constructor <init>(Lcom/stripe/bbpos/bbdevice/ccc055zz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa011zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa011zz;->aaa000:Z

    return-void
.end method

.method private aaa000()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa011zz;->aaa000:Z

    return-void
.end method

.method static synthetic aaa000(Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa011zz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa011zz;->aaa000()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :cond_0
    iget-boolean v2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa011zz;->aaa000:Z

    if-nez v2, :cond_2

    .line 2
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 4
    :try_start_0
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001()Ljava/lang/Object;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 7
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    .line 9
    sget-boolean v2, Lcom/stripe/bbpos/bbdevice/ccc057zz;->aaa006:Z

    if-eqz v2, :cond_1

    mul-int/lit8 v2, v1, 0x64

    const/16 v3, 0x2328

    if-lt v2, v3, :cond_0

    goto :goto_2

    :cond_1
    mul-int/lit8 v2, v1, 0x64

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_0

    goto :goto_2

    .line 10
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 23
    :cond_2
    :goto_2
    iget-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa011zz;->aaa000:Z

    if-nez v1, :cond_5

    .line 25
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa011zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa027(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Lcom/stripe/bbpos/bbdevice/ccc062zz;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 26
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa011zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa028(Lcom/stripe/bbpos/bbdevice/ccc055zz;)I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa011zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa027(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Lcom/stripe/bbpos/bbdevice/ccc062zz;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 27
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa011zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa029(Lcom/stripe/bbpos/bbdevice/ccc055zz;)I

    .line 28
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa011zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa027(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Lcom/stripe/bbpos/bbdevice/ccc062zz;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc055zz;Lcom/stripe/bbpos/bbdevice/ccc062zz;)V

    goto :goto_4

    .line 29
    :cond_3
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa011zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa027(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Lcom/stripe/bbpos/bbdevice/ccc062zz;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 30
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa011zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa013()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa002zz;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa002zz;->aaa001:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa002zz;

    if-ne v1, v2, :cond_4

    .line 31
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa011zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa016()V

    .line 32
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa011zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;)V

    .line 33
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa011zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001(Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;)V

    .line 34
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa011zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa014(Lcom/stripe/bbpos/bbdevice/ccc055zz;)V

    .line 35
    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa024:Ljava/lang/Object;

    monitor-enter v1

    .line 36
    :try_start_3
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa011zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iput-boolean v0, v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa014:Z

    .line 37
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 38
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->FAIL_TO_START_BT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v1, "Initialization no response"

    invoke-virtual {v2, v0, v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 39
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 42
    :cond_4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa011zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->COMM_ERROR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v2, "Bluetooth (error code - 3033)"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    .line 44
    :goto_3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa011zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa015()V

    :cond_5
    :goto_4
    return-void
.end method
