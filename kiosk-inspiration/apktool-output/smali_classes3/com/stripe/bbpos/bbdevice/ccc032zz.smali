.class final Lcom/stripe/bbpos/bbdevice/ccc032zz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final aaa000:[B

.field private static final aaa001:Ljava/lang/Object;

.field private static final aaa002:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    .line 1
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ccc032zz;->aaa000:[B

    .line 145
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ccc032zz;->aaa001:Ljava/lang/Object;

    .line 171
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ccc032zz;->aaa002:Ljava/lang/Object;

    return-void

    :array_0
    .array-data 1
        0x50t
        -0x26t
        0x47t
        -0x7t
        0x9t
        0x9t
        0x10t
        -0x7bt
    .end array-data
.end method

.method static aaa000(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc032zz;->aaa001([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static aaa000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc032zz;->aaa001(Ljava/lang/String;)[B

    move-result-object p0

    .line 21
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc032zz;->aaa001(Ljava/lang/String;)[B

    move-result-object p1

    .line 22
    invoke-static {p0, p1}, Lcom/stripe/bbpos/bbdevice/ccc032zz;->aaa000([B[B)[B

    move-result-object p0

    .line 23
    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc032zz;->aaa002([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static aaa000([B)[B
    .locals 6

    const/16 v0, 0x18

    .line 2
    new-array v1, v0, [B

    .line 5
    array-length v2, p0

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    :goto_0
    if-ge v3, v4, :cond_2

    .line 7
    aget-byte v0, p0, v3

    aput-byte v0, v1, v3

    add-int/lit8 v0, v3, 0x8

    .line 8
    aget-byte v2, p0, v3

    aput-byte v2, v1, v0

    add-int/lit8 v0, v3, 0x10

    .line 9
    aget-byte v2, p0, v3

    aput-byte v2, v1, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_0
    array-length v2, p0

    const/16 v5, 0x10

    if-ne v2, v5, :cond_1

    :goto_1
    if-ge v3, v4, :cond_2

    .line 13
    aget-byte v0, p0, v3

    aput-byte v0, v1, v3

    add-int/lit8 v0, v3, 0x8

    .line 14
    aget-byte v2, p0, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v3, 0x10

    .line 15
    aget-byte v2, p0, v3

    aput-byte v2, v1, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 17
    :cond_1
    array-length v2, p0

    if-ne v2, v0, :cond_2

    :goto_2
    if-ge v3, v0, :cond_2

    .line 19
    aget-byte v2, p0, v3

    aput-byte v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-object v1
.end method

.method static aaa000([B[B)[B
    .locals 11

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    .line 24
    :cond_0
    array-length v1, p0

    const/16 v2, 0x8

    rem-int/2addr v1, v2

    if-eqz v1, :cond_1

    return-object v0

    .line 27
    :cond_1
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc032zz;->aaa002:Ljava/lang/Object;

    monitor-enter v1

    .line 29
    :try_start_0
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc032zz;->aaa000([B)[B

    move-result-object v7

    .line 30
    array-length v10, p0

    new-array v9, v10, [B

    .line 31
    sget v3, Lcom/stripe/bbpos/bbdevice/ccc043zz;->aaa001:I

    sget v4, Lcom/stripe/bbpos/bbdevice/ccc043zz;->aaa002:I

    array-length v6, p0

    sget v8, Lcom/stripe/bbpos/bbdevice/ccc043zz;->aaa004:I

    move-object v5, p0

    invoke-static/range {v3 .. v10}, Lcom/stripe/bbpos/bbdevice/ccc043zz;->aaa000(II[BI[BI[BI)I

    :goto_0
    if-ge v2, v10, :cond_2

    .line 35
    aget-byte p0, v9, v2

    add-int/lit8 p1, v2, -0x8

    aget-byte p1, v5, p1

    xor-int/2addr p0, p1

    int-to-byte p0, p0

    aput-byte p0, v9, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    :cond_2
    :try_start_1
    monitor-exit v1

    return-object v9

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 42
    :catch_0
    monitor-exit v1

    return-object v0

    .line 43
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_2
    return-object v0
.end method

.method static aaa001(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 11
    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc032zz;->aaa001(Ljava/lang/String;)[B

    move-result-object p0

    .line 12
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc032zz;->aaa001(Ljava/lang/String;)[B

    move-result-object p1

    .line 13
    invoke-static {p0, p1}, Lcom/stripe/bbpos/bbdevice/ccc032zz;->aaa001([B[B)[B

    move-result-object p0

    .line 14
    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc032zz;->aaa002([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static aaa001(Ljava/lang/String;)[B
    .locals 5

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 10
    div-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x10

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static aaa001([B)[B
    .locals 5

    const/16 v0, 0x10

    .line 1
    new-array v0, v0, [B

    .line 4
    array-length v1, p0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 6
    aget-byte v3, p0, v1

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x8

    .line 7
    aget-byte v4, p0, v1

    not-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static aaa001([B[B)[B
    .locals 12

    .line 15
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc032zz;->aaa001:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc032zz;->aaa000([B)[B

    move-result-object v6

    .line 18
    array-length p1, p0

    new-array p1, p1, [B

    const/16 v0, 0x8

    .line 19
    new-array v4, v0, [B

    .line 20
    new-array v8, v0, [B

    const/4 v10, 0x0

    move v11, v10

    .line 21
    :goto_0
    array-length v2, p0

    if-ge v11, v2, :cond_2

    move v2, v10

    :goto_1
    if-ge v2, v0, :cond_0

    add-int v3, v11, v2

    .line 23
    aget-byte v3, p0, v3

    aget-byte v5, v8, v2

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 25
    :cond_0
    sget v2, Lcom/stripe/bbpos/bbdevice/ccc043zz;->aaa000:I

    sget v3, Lcom/stripe/bbpos/bbdevice/ccc043zz;->aaa002:I

    sget v7, Lcom/stripe/bbpos/bbdevice/ccc043zz;->aaa004:I

    const/16 v5, 0x8

    const/16 v9, 0x8

    invoke-static/range {v2 .. v9}, Lcom/stripe/bbpos/bbdevice/ccc043zz;->aaa000(II[BI[BI[BI)I

    move v2, v10

    :goto_2
    if-ge v2, v0, :cond_1

    add-int v3, v11, v2

    .line 27
    aget-byte v5, v8, v2

    aput-byte v5, p1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v11, v11, 0x8

    goto :goto_0

    .line 30
    :cond_2
    :try_start_1
    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    .line 34
    :catch_0
    monitor-exit v1

    const/4 p0, 0x0

    return-object p0

    .line 35
    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static aaa002([B)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 5
    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit8 v2, v2, 0xf

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    aget-byte v2, p0, v1

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_1
    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static aaa002([B[B)[B
    .locals 5

    .line 12
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v0, v0, 0x8

    .line 13
    array-length v1, p0

    add-int/2addr v1, v0

    .line 14
    new-array v2, v1, [B

    .line 15
    array-length v3, p0

    const/4 v4, 0x0

    invoke-static {p0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-ge v4, v0, :cond_0

    add-int/lit8 p0, v1, -0x1

    sub-int/2addr p0, v4

    int-to-byte v3, v0

    .line 17
    aput-byte v3, v2, p0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 20
    :cond_0
    invoke-static {v2, p1}, Lcom/stripe/bbpos/bbdevice/ccc032zz;->aaa001([B[B)[B

    move-result-object p0

    return-object p0
.end method
