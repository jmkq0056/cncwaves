.class Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa012zz;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/ccc055zz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "aaa012zz"
.end annotation


# instance fields
.field final synthetic aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;


# direct methods
.method private constructor <init>(Lcom/stripe/bbpos/bbdevice/ccc055zz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/stripe/bbpos/bbdevice/ccc055zz;Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa012zz;-><init>(Lcom/stripe/bbpos/bbdevice/ccc055zz;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 3

    monitor-enter p0

    .line 1
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-boolean v0, v0, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa022:Z

    if-eqz v0, :cond_5

    .line 2
    :goto_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa025(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-boolean v1, v0, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa023:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa026(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-boolean v1, v0, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa023:Z

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa027(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Lcom/stripe/bbpos/bbdevice/ccc062zz;

    move-result-object v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-boolean v1, v0, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa022:Z

    if-eqz v1, :cond_4

    .line 4
    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa016(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    :try_start_1
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-boolean v2, v1, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa022:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_3

    .line 7
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 10
    :cond_3
    :try_start_3
    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa016(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 17
    :try_start_4
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 18
    :catch_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    .line 20
    :goto_2
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    .line 23
    :cond_4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-boolean v1, v0, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa022:Z

    if-eqz v1, :cond_0

    .line 25
    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa025(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 26
    :try_start_7
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa025(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/bbpos/bbdevice/ccc062zz;

    .line 27
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 30
    :try_start_8
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v0, v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc055zz;Lcom/stripe/bbpos/bbdevice/ccc062zz;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 31
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :cond_5
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v0
.end method
