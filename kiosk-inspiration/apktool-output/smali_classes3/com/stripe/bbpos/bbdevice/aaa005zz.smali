.class final Lcom/stripe/bbpos/bbdevice/aaa005zz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa001zz;,
        Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz;
    }
.end annotation


# static fields
.field static aaa003:Lcom/stripe/bbpos/bbdevice/ccc028zz;

.field static aaa004:Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz;

.field private static final aaa005:Ljava/lang/Object;


# instance fields
.field private aaa000:Landroid/os/Handler;

.field private aaa001:Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa001zz;

.field private aaa002:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa005:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa001zz;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa000:Landroid/os/Handler;

    .line 23
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa001zz;

    .line 24
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc028zz;

    if-eqz p1, :cond_0

    .line 25
    new-instance p1, Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz;-><init>(Lcom/stripe/bbpos/bbdevice/aaa005zz;Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa000zz;)V

    sput-object p1, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz;

    .line 26
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc028zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc029zz;)V

    :cond_0
    const/4 p1, 0x0

    .line 28
    invoke-direct {p0, p1}, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa000(I)V

    return-void
.end method

.method static synthetic aaa000(Lcom/stripe/bbpos/bbdevice/aaa005zz;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa000:Landroid/os/Handler;

    return-object p0
.end method

.method private declared-synchronized aaa000(I)V
    .locals 0

    monitor-enter p0

    .line 3
    :try_start_0
    iput p1, p0, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa002:I
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

.method static synthetic aaa000(Lcom/stripe/bbpos/bbdevice/aaa005zz;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa000(I)V

    return-void
.end method

.method private aaa001()I
    .locals 4

    .line 2
    :try_start_0
    const-string v0, "SmartPOS_SerialPort-1.2.0"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x4

    .line 9
    :try_start_1
    const-string v1, "SmartPOS-1.2.0"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    .line 14
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa005:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_2
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc028zz;

    if-nez v2, :cond_0

    .line 16
    new-instance v2, Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz;-><init>(Lcom/stripe/bbpos/bbdevice/aaa005zz;Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa000zz;)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz;

    .line 17
    new-instance v2, Lcom/stripe/bbpos/bbdevice/ccc028zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz;

    invoke-direct {v2, v3}, Lcom/stripe/bbpos/bbdevice/ccc028zz;-><init>(Lcom/stripe/bbpos/bbdevice/ccc029zz;)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc028zz;

    .line 19
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    :try_start_3
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc028zz;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa001()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    if-eq v0, v1, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x5

    :catch_0
    return v0

    :catchall_0
    move-exception v0

    .line 23
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_1
    return v0

    :catch_2
    const/4 v0, 0x3

    return v0
.end method

.method static synthetic aaa001(Lcom/stripe/bbpos/bbdevice/aaa005zz;)Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa001zz;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa001zz;

    return-object p0
.end method


# virtual methods
.method aaa000()Z
    .locals 2

    .line 4
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa002:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 7
    :cond_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc028zz;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa009()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method aaa002()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa001()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa005:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc028zz;

    if-nez v1, :cond_1

    .line 7
    new-instance v1, Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz;-><init>(Lcom/stripe/bbpos/bbdevice/aaa005zz;Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa000zz;)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz;

    .line 8
    new-instance v1, Lcom/stripe/bbpos/bbdevice/ccc028zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa005zz$aaa002zz;

    invoke-direct {v1, v2}, Lcom/stripe/bbpos/bbdevice/ccc028zz;-><init>(Lcom/stripe/bbpos/bbdevice/ccc029zz;)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc028zz;

    .line 10
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa002:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc028zz;

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa005()Z

    .line 17
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc028zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa016()V

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 18
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method aaa003()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa001()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa002:I

    if-nez v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc028zz;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa018()V

    .line 10
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc028zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa004()Z

    :cond_2
    :goto_0
    return-void
.end method
