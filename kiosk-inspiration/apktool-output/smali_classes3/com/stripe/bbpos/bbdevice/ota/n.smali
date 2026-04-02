.class final Lcom/stripe/bbpos/bbdevice/ota/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 7
    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object p0

    .line 8
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object p1

    .line 9
    invoke-static {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/n;->a([B[B)[B

    move-result-object p0

    .line 10
    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a([B[B)[B
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    array-length v1, p1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    return-object v0

    .line 5
    :cond_1
    :try_start_0
    array-length v10, p0

    new-array v9, v10, [B

    .line 6
    sget v3, Lcom/stripe/bbpos/bbdevice/ota/d;->b:I

    sget v4, Lcom/stripe/bbpos/bbdevice/ota/d;->c:I

    array-length v6, p0

    sget v8, Lcom/stripe/bbpos/bbdevice/ota/d;->e:I

    const/4 v11, 0x0

    move-object v5, p0

    move-object v7, p1

    invoke-static/range {v3 .. v11}, Lcom/stripe/bbpos/bbdevice/ota/d;->a(II[BI[BI[BI[B)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    return-object v9

    :catch_0
    return-object v0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 7
    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object p0

    .line 8
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object p1

    .line 9
    invoke-static {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/n;->b([B[B)[B

    move-result-object p0

    .line 10
    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static b([B[B)[B
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    array-length v1, p1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    return-object v0

    .line 5
    :cond_1
    :try_start_0
    array-length v10, p0

    new-array v9, v10, [B

    .line 6
    sget v3, Lcom/stripe/bbpos/bbdevice/ota/d;->a:I

    sget v4, Lcom/stripe/bbpos/bbdevice/ota/d;->c:I

    array-length v6, p0

    sget v8, Lcom/stripe/bbpos/bbdevice/ota/d;->e:I

    const/4 v11, 0x0

    move-object v5, p0

    move-object v7, p1

    invoke-static/range {v3 .. v11}, Lcom/stripe/bbpos/bbdevice/ota/d;->a(II[BI[BI[BI[B)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    return-object v9

    :catch_0
    return-object v0
.end method

.method static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 16
    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object p0

    .line 17
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object p1

    .line 18
    invoke-static {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/n;->c([B[B)[B

    move-result-object p0

    .line 19
    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static c([B[B)[B
    .locals 14

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    array-length v1, p1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    return-object v0

    .line 6
    :cond_1
    :try_start_0
    array-length v1, p0

    new-array v1, v1, [B

    .line 7
    new-array v5, v2, [B

    .line 8
    new-array v9, v2, [B

    const/4 v12, 0x0

    move v13, v12

    .line 9
    :goto_0
    array-length v3, p0

    if-ge v13, v3, :cond_4

    move v3, v12

    :goto_1
    if-ge v3, v2, :cond_2

    add-int v4, v13, v3

    .line 11
    aget-byte v4, p0, v4

    aget-byte v6, v9, v3

    xor-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 13
    :cond_2
    sget v3, Lcom/stripe/bbpos/bbdevice/ota/d;->a:I

    sget v4, Lcom/stripe/bbpos/bbdevice/ota/d;->c:I

    sget v8, Lcom/stripe/bbpos/bbdevice/ota/d;->e:I

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/16 v6, 0x8

    move-object v7, p1

    invoke-static/range {v3 .. v11}, Lcom/stripe/bbpos/bbdevice/ota/d;->a(II[BI[BI[BI[B)I

    move p1, v12

    :goto_2
    if-ge p1, v2, :cond_3

    add-int v3, v13, p1

    .line 15
    aget-byte v4, v9, p1

    aput-byte v4, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v13, v13, 0x8

    move-object p1, v7

    goto :goto_0

    :cond_4
    return-object v1

    :catch_0
    return-object v0
.end method
