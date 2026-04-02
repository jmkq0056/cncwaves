.class final Lcom/stripe/bbpos/bbdevice/ota/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 19
    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object p0

    .line 20
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object p1

    .line 21
    invoke-static {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/e0;->a([B[B)[B

    move-result-object p0

    .line 22
    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a([B)[B
    .locals 6

    const/16 v0, 0x18

    .line 1
    new-array v1, v0, [B

    .line 4
    array-length v2, p0

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    :goto_0
    if-ge v3, v4, :cond_2

    .line 6
    aget-byte v0, p0, v3

    aput-byte v0, v1, v3

    add-int/lit8 v0, v3, 0x8

    .line 7
    aget-byte v2, p0, v3

    aput-byte v2, v1, v0

    add-int/lit8 v0, v3, 0x10

    .line 8
    aget-byte v2, p0, v3

    aput-byte v2, v1, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_0
    array-length v2, p0

    const/16 v5, 0x10

    if-ne v2, v5, :cond_1

    :goto_1
    if-ge v3, v4, :cond_2

    .line 12
    aget-byte v0, p0, v3

    aput-byte v0, v1, v3

    add-int/lit8 v0, v3, 0x8

    .line 13
    aget-byte v2, p0, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v3, 0x10

    .line 14
    aget-byte v2, p0, v3

    aput-byte v2, v1, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 16
    :cond_1
    array-length v2, p0

    if-ne v2, v0, :cond_2

    :goto_2
    if-ge v3, v0, :cond_2

    .line 18
    aget-byte v2, p0, v3

    aput-byte v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-object v1
.end method

.method static a([B[B)[B
    .locals 11

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    array-length v1, p0

    rem-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    return-object v0

    .line 27
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/e0;->a([B)[B

    move-result-object v6

    .line 28
    array-length v9, p0

    new-array v8, v9, [B

    .line 29
    sget v2, Lcom/stripe/bbpos/bbdevice/ota/d;->b:I

    sget v3, Lcom/stripe/bbpos/bbdevice/ota/d;->c:I

    array-length v5, p0

    sget v7, Lcom/stripe/bbpos/bbdevice/ota/d;->f:I

    const/4 v10, 0x0

    move-object v4, p0

    invoke-static/range {v2 .. v10}, Lcom/stripe/bbpos/bbdevice/ota/d;->a(II[BI[BI[BI[B)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    return-object v8

    :catch_0
    :cond_3
    :goto_0
    return-object v0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object p0

    .line 2
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/e0;->b([B[B)[B

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static b([B[B)[B
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/e0;->a([B)[B

    move-result-object v5

    .line 6
    array-length v8, p0

    new-array v7, v8, [B

    .line 7
    sget v1, Lcom/stripe/bbpos/bbdevice/ota/d;->a:I

    sget v2, Lcom/stripe/bbpos/bbdevice/ota/d;->c:I

    array-length v4, p0

    sget v6, Lcom/stripe/bbpos/bbdevice/ota/d;->f:I

    const/4 v9, 0x0

    move-object v3, p0

    invoke-static/range {v1 .. v9}, Lcom/stripe/bbpos/bbdevice/ota/d;->a(II[BI[BI[BI[B)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    return-object v7

    :catch_0
    return-object v0
.end method

.method static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object p0

    .line 2
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/e0;->c([B[B)[B

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static c([B[B)[B
    .locals 12

    .line 5
    :try_start_0
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/e0;->a([B)[B

    move-result-object v4

    .line 6
    array-length p1, p0

    new-array p1, p1, [B

    const/16 v9, 0x8

    .line 7
    new-array v2, v9, [B

    .line 8
    new-array v6, v9, [B

    const/4 v10, 0x0

    move v11, v10

    .line 9
    :goto_0
    array-length v0, p0

    if-ge v11, v0, :cond_2

    move v0, v10

    :goto_1
    if-ge v0, v9, :cond_0

    add-int v1, v11, v0

    .line 11
    aget-byte v1, p0, v1

    aget-byte v3, v6, v0

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 13
    :cond_0
    sget v0, Lcom/stripe/bbpos/bbdevice/ota/d;->a:I

    sget v1, Lcom/stripe/bbpos/bbdevice/ota/d;->c:I

    sget v5, Lcom/stripe/bbpos/bbdevice/ota/d;->f:I

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/16 v3, 0x8

    invoke-static/range {v0 .. v8}, Lcom/stripe/bbpos/bbdevice/ota/d;->a(II[BI[BI[BI[B)I

    move v0, v10

    :goto_2
    if-ge v0, v9, :cond_1

    add-int v1, v11, v0

    .line 15
    aget-byte v3, v6, v0

    aput-byte v3, p1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v11, v11, 0x8

    goto :goto_0

    :cond_2
    return-object p1

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
