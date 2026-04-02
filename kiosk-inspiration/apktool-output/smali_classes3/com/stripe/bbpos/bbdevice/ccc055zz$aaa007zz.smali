.class Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa007zz;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/ccc055zz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "aaa007zz"
.end annotation


# instance fields
.field private final aaa000:I

.field private aaa001:Z

.field final synthetic aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;


# direct methods
.method private constructor <init>(Lcom/stripe/bbpos/bbdevice/ccc055zz;I)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa007zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa007zz;->aaa001:Z

    .line 5
    iput p2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa007zz;->aaa000:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/stripe/bbpos/bbdevice/ccc055zz;ILcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa007zz;-><init>(Lcom/stripe/bbpos/bbdevice/ccc055zz;I)V

    return-void
.end method

.method private aaa000()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa007zz;->aaa001:Z

    return-void
.end method

.method static synthetic aaa000(Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa007zz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa007zz;->aaa000()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa007zz;->aaa000:I

    if-gtz v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa007zz;->aaa000:I

    mul-int/lit8 v1, v1, 0xa

    if-ge v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa007zz;->aaa001:Z

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

    .line 17
    :cond_1
    iget-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa007zz;->aaa001:Z

    if-nez v0, :cond_2

    .line 18
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa007zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001(Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa013zz;)V

    .line 19
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa007zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa030(Lcom/stripe/bbpos/bbdevice/ccc055zz;)V

    .line 20
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa007zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa079()V

    :cond_2
    :goto_3
    return-void
.end method
