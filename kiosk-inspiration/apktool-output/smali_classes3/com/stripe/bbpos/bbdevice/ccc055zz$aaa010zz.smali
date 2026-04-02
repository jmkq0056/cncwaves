.class Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa010zz;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/ccc055zz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "aaa010zz"
.end annotation


# instance fields
.field aaa000:Ljava/io/ByteArrayOutputStream;

.field final synthetic aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;


# direct methods
.method public static synthetic $r8$lambda$BIgRW46OiUUZbBvYP-N2OtrRpEc(Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa010zz;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa010zz;->aaa000()V

    return-void
.end method

.method private constructor <init>(Lcom/stripe/bbpos/bbdevice/ccc055zz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa010zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa010zz;->aaa000:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method synthetic constructor <init>(Lcom/stripe/bbpos/bbdevice/ccc055zz;Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa000zz;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa010zz;-><init>(Lcom/stripe/bbpos/bbdevice/ccc055zz;)V

    return-void
.end method

.method private synthetic aaa000()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa010zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa005zz;

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa005zz;)V

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa010zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa032()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 12

    monitor-enter p0

    const/4 v0, -0x1

    .line 1
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa010zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-boolean v1, v0, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa022:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    .line 4
    :try_start_1
    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa024(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_f

    .line 6
    new-array v2, v0, [B

    .line 7
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa010zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa024(Lcom/stripe/bbpos/bbdevice/ccc055zz;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 9
    new-array v3, v0, [B

    .line 10
    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa010zz;->aaa000:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 15
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa010zz;->aaa000:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 21
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa010zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-boolean v2, v2, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa023:Z

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 22
    array-length v2, v0

    if-le v2, v4, :cond_f

    .line 23
    :goto_1
    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v2, v3

    array-length v5, v0

    if-gt v2, v5, :cond_f

    .line 24
    new-array v5, v2, [B

    .line 25
    invoke-static {v0, v1, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    iget-object v6, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa010zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-virtual {v6, v5}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000([B)V

    .line 29
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v5, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa010zz;->aaa000:Ljava/io/ByteArrayOutputStream;

    .line 30
    array-length v6, v0

    if-ne v6, v2, :cond_1

    goto/16 :goto_9

    .line 33
    :cond_1
    array-length v6, v0

    sub-int/2addr v6, v2

    invoke-virtual {v5, v0, v2, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 34
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa010zz;->aaa000:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_f

    .line 38
    array-length v2, v0

    const/4 v5, 0x7

    if-lt v2, v5, :cond_f

    .line 39
    aget-byte v2, v0, v1

    const/16 v5, -0x34

    const/16 v6, -0x45

    const/16 v7, -0x56

    if-nez v2, :cond_7

    aget-byte v2, v0, v4

    if-nez v2, :cond_7

    const/4 v2, 0x2

    .line 40
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte v8, v0, v3

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v2, v8

    .line 41
    array-length v8, v0

    add-int/lit8 v9, v2, 0x5

    if-lt v8, v9, :cond_7

    add-int/lit8 v8, v2, 0x4

    .line 42
    new-array v10, v8, [B

    .line 43
    invoke-static {v0, v1, v10, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    invoke-static {v10}, Lcom/stripe/bbpos/bbdevice/ccc056zz;->aaa000([B)B

    move-result v10

    aget-byte v11, v0, v8

    if-ne v10, v11, :cond_7

    .line 45
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa010zz;->aaa000:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    add-int/lit8 v2, v2, 0x5

    .line 46
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 47
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa010zz;->aaa000:Ljava/io/ByteArrayOutputStream;

    array-length v10, v0

    sub-int/2addr v10, v8

    sub-int/2addr v10, v4

    invoke-virtual {v3, v0, v2, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 49
    :cond_3
    new-array v2, v9, [B

    .line 50
    invoke-static {v0, v1, v2, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0xaa

    .line 52
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v3, v1

    :goto_2
    if-ge v3, v9, :cond_6

    .line 54
    aget-byte v4, v2, v3

    if-eq v4, v7, :cond_4

    if-eq v4, v6, :cond_4

    if-ne v4, v5, :cond_5

    :cond_4
    const/16 v4, 0xcc

    .line 55
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 57
    :cond_5
    aget-byte v4, v2, v3

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    const/16 v2, 0xbb

    .line 59
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 60
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa010zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa003([B)V

    goto/16 :goto_9

    :cond_7
    move v2, v1

    .line 66
    :goto_3
    array-length v8, v0

    if-ge v2, v8, :cond_9

    .line 67
    aget-byte v8, v0, v2

    if-ne v8, v7, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    if-lez v2, :cond_a

    .line 73
    iget-object v7, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa010zz;->aaa000:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 74
    iget-object v7, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa010zz;->aaa000:Ljava/io/ByteArrayOutputStream;

    array-length v8, v0

    sub-int/2addr v8, v2

    invoke-virtual {v7, v0, v2, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 75
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa010zz;->aaa000:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :cond_a
    move v2, v4

    .line 79
    :goto_5
    array-length v7, v0

    if-ge v2, v7, :cond_e

    .line 80
    aget-byte v7, v0, v2

    if-ne v7, v6, :cond_d

    add-int/lit8 v7, v2, -0x1

    move v8, v1

    :goto_6
    if-ltz v7, :cond_b

    .line 83
    aget-byte v9, v0, v7

    if-ne v9, v5, :cond_b

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    .line 90
    :cond_b
    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_d

    add-int/lit8 v2, v2, 0x1

    .line 92
    new-array v5, v2, [B

    .line 93
    invoke-static {v0, v1, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    iget-object v6, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa010zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    invoke-virtual {v6, v5}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa000([B)V

    .line 99
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v5, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa010zz;->aaa000:Ljava/io/ByteArrayOutputStream;

    .line 100
    array-length v6, v0

    if-ne v6, v2, :cond_c

    const/4 v0, 0x0

    :goto_7
    move v2, v4

    goto :goto_8

    .line 104
    :cond_c
    array-length v6, v0

    sub-int/2addr v6, v2

    invoke-virtual {v5, v0, v2, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 105
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa010zz;->aaa000:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_e
    move v2, v1

    :goto_8
    if-nez v2, :cond_2

    goto :goto_9

    .line 119
    :catch_0
    :try_start_2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa010zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-boolean v2, v0, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa022:Z

    if-eqz v2, :cond_f

    .line 120
    iput-boolean v1, v0, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa022:Z

    .line 121
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa010zz$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa010zz$$ExternalSyntheticLambda0;-><init>(Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa010zz;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 124
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 128
    :cond_f
    :goto_9
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa010zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc055zz;

    iget-boolean v0, v0, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa022:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 131
    :try_start_3
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa001()Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception v1

    goto :goto_b

    .line 134
    :catch_1
    :goto_a
    :try_start_4
    monitor-exit v0

    goto/16 :goto_0

    :goto_b
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_10
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method
