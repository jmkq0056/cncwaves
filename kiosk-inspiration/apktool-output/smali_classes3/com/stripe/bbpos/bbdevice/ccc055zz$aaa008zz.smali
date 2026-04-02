.class Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa008zz;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/ccc055zz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "aaa008zz"
.end annotation


# instance fields
.field private final aaa000:I

.field private aaa001:Z

.field final synthetic aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;


# direct methods
.method private constructor <init>(Lcom/stripe/bbpos/bbdevice/ccc055zz;I)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa008zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa008zz;->aaa001:Z

    .line 5
    iput p2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa008zz;->aaa000:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/stripe/bbpos/bbdevice/ccc055zz;ILcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa008zz;-><init>(Lcom/stripe/bbpos/bbdevice/ccc055zz;I)V

    return-void
.end method

.method private aaa000()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa008zz;->aaa001:Z

    return-void
.end method

.method static synthetic aaa000(Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa008zz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa008zz;->aaa000()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa008zz;->aaa000:I

    if-gtz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa008zz;->aaa000:I

    add-int/lit8 v1, v1, -0x5

    mul-int/lit8 v1, v1, 0xa

    if-ge v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa008zz;->aaa001:Z

    if-nez v1, :cond_1

    .line 7
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 9
    :try_start_0
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001()Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 12
    :catch_0
    :goto_1
    :try_start_1
    monitor-exit v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 16
    :cond_1
    iget-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa008zz;->aaa001:Z

    if-nez v0, :cond_4

    .line 17
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa008zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa033(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa008zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa031(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa008zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    invoke-static {v0, v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc055zz;Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;)V

    .line 19
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa013()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 23
    :try_start_2
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa008zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Landroid/bluetooth/le/ScanCallback;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 24
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa008zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa017()V

    .line 25
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa008zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa002(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    .line 27
    :try_start_3
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa008zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa002(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa008zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Landroid/bluetooth/le/ScanCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 31
    :catch_1
    :cond_2
    :try_start_4
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa008zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc055zz;Landroid/bluetooth/le/ScanCallback;)Landroid/bluetooth/le/ScanCallback;

    .line 46
    :cond_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 47
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa008zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa083()V

    goto :goto_4

    .line 48
    :goto_3
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_3

    :cond_4
    :goto_4
    return-void
.end method
