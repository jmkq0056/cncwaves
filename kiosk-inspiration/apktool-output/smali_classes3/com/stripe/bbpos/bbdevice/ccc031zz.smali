.class Lcom/stripe/bbpos/bbdevice/ccc031zz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private aaa000:Z

.field aaa001:Ljava/lang/Thread;

.field private aaa002:Lcom/stripe/bbpos/bbdevice/aaa009zz;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/stripe/bbpos/bbdevice/aaa009zz;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ccc031zz;->aaa000:Z

    .line 16
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc031zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    return-void
.end method


# virtual methods
.method aaa000()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ccc031zz;->aaa000:Z

    return-void
.end method

.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc031zz;->aaa001:Ljava/lang/Thread;

    const/16 v0, 0xa

    .line 2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6
    :try_start_0
    iget-boolean v4, p0, Lcom/stripe/bbpos/bbdevice/ccc031zz;->aaa000:Z

    if-nez v4, :cond_1

    const-wide/16 v4, 0x32

    .line 7
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-int/2addr v1, v2

    if-lt v1, v0, :cond_0

    .line 16
    :cond_1
    iget-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ccc031zz;->aaa000:Z

    if-nez v0, :cond_2

    .line 17
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc031zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa015:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_2

    .line 19
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc031zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa008:Ljava/lang/Object;

    monitor-enter v0

    .line 24
    :try_start_1
    iput-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc031zz;->aaa001:Ljava/lang/Thread;

    .line 25
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc031zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa021:Lcom/stripe/bbpos/bbdevice/ccc031zz;

    if-ne v2, p0, :cond_3

    .line 26
    iput-object v3, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa021:Lcom/stripe/bbpos/bbdevice/ccc031zz;

    .line 28
    :cond_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 30
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    goto :goto_1

    .line 31
    :catch_0
    :try_start_2
    iput-boolean v2, p0, Lcom/stripe/bbpos/bbdevice/ccc031zz;->aaa000:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 40
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc031zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa008:Ljava/lang/Object;

    monitor-enter v0

    .line 41
    :try_start_3
    iput-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc031zz;->aaa001:Ljava/lang/Thread;

    .line 42
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc031zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa021:Lcom/stripe/bbpos/bbdevice/ccc031zz;

    if-ne v2, p0, :cond_4

    .line 43
    iput-object v3, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa021:Lcom/stripe/bbpos/bbdevice/ccc031zz;

    .line 45
    :cond_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 29
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    return-void

    :catchall_2
    move-exception v1

    .line 45
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    .line 46
    :goto_1
    iget-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/ccc031zz;->aaa000:Z

    if-nez v1, :cond_5

    .line 47
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc031zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa015:Ljava/io/ByteArrayOutputStream;

    if-eqz v1, :cond_5

    .line 49
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 53
    :cond_5
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc031zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa008:Ljava/lang/Object;

    monitor-enter v1

    .line 54
    :try_start_5
    iput-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc031zz;->aaa001:Ljava/lang/Thread;

    .line 55
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc031zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v4, v2, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa021:Lcom/stripe/bbpos/bbdevice/ccc031zz;

    if-ne v4, p0, :cond_6

    .line 56
    iput-object v3, v2, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa021:Lcom/stripe/bbpos/bbdevice/ccc031zz;

    .line 58
    :cond_6
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 59
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 60
    throw v0

    :catchall_3
    move-exception v0

    .line 61
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method
