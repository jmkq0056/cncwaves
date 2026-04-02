.class Lcom/stripe/bbpos/bbdevice/ccc072zz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field aaa000:Landroid/os/Handler;

.field aaa001:I

.field aaa002:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc072zz;->aaa000:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/stripe/bbpos/bbdevice/ccc072zz;->aaa001:I

    .line 4
    iput p1, p0, Lcom/stripe/bbpos/bbdevice/ccc072zz;->aaa002:I

    return-void
.end method


# virtual methods
.method aaa000()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method aaa001()I
    .locals 1

    const/16 v0, 0x168

    return v0
.end method

.method aaa002()I
    .locals 1

    const/16 v0, 0x1388

    return v0
.end method

.method declared-synchronized aaa003()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput v0, p0, Lcom/stripe/bbpos/bbdevice/ccc072zz;->aaa002:I
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

.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc072zz;->aaa000:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
