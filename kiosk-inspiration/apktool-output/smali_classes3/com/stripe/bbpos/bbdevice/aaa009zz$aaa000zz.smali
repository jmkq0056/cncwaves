.class Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/aaa009zz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "aaa000zz"
.end annotation


# instance fields
.field private aaa000:Z

.field final synthetic aaa001:Lcom/stripe/bbpos/bbdevice/aaa009zz;


# direct methods
.method constructor <init>(Lcom/stripe/bbpos/bbdevice/aaa009zz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;->aaa000:Z

    return-void
.end method

.method private aaa000()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa009zz;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    iput-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;->aaa000:Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic aaa000(Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;->aaa000()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/16 v0, -0x10

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    :goto_0
    iget-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;->aaa000:Z

    if-nez v0, :cond_8

    .line 3
    :goto_1
    iget-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;->aaa000:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001(Lcom/stripe/bbpos/bbdevice/aaa009zz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa002(Lcom/stripe/bbpos/bbdevice/aaa009zz;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;->aaa000:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001(Lcom/stripe/bbpos/bbdevice/aaa009zz;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa002(Lcom/stripe/bbpos/bbdevice/aaa009zz;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 9
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :catch_0
    :cond_2
    :try_start_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa009zz;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 18
    :try_start_3
    iget-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;->aaa000:Z

    if-nez v1, :cond_7

    .line 21
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa003(Lcom/stripe/bbpos/bbdevice/aaa009zz;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 22
    :try_start_4
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001(Lcom/stripe/bbpos/bbdevice/aaa009zz;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 23
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001(Lcom/stripe/bbpos/bbdevice/aaa009zz;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 24
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001(Lcom/stripe/bbpos/bbdevice/aaa009zz;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/bbpos/bbdevice/aaa010zz;

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 27
    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_7

    .line 30
    :try_start_5
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa005()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    .line 34
    :cond_5
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa007:Ljava/lang/Object;

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 35
    :try_start_6
    iget-object v4, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    invoke-static {v4, v2}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa009zz;Lcom/stripe/bbpos/bbdevice/aaa010zz;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 40
    :try_start_7
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iput-boolean v3, v2, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa006:Z

    .line 41
    :goto_3
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/aaa009zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-boolean v3, v2, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa006:Z

    if-nez v3, :cond_6

    .line 42
    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa007:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :catch_1
    move-exception v2

    .line 46
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    :cond_6
    monitor-exit v1

    goto :goto_4

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_2
    move-exception v2

    .line 49
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v2

    .line 74
    :cond_7
    :goto_4
    monitor-exit v0

    goto/16 :goto_0

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v1

    :cond_8
    return-void
.end method
