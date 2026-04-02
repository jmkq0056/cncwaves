.class Lcom/stripe/bbpos/bbdevice/ota/q;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(B)I
    .locals 3

    and-int/lit16 v0, p0, 0x80

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v2, p0, 0x40

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    and-int/lit8 v2, p0, 0x20

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    and-int/lit8 v2, p0, 0x10

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    and-int/lit8 v2, p0, 0x8

    if-eqz v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    and-int/lit8 v2, p0, 0x4

    if-eqz v2, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    and-int/lit8 v2, p0, 0x2

    if-eqz v2, :cond_6

    add-int/lit8 v0, v0, 0x1

    :cond_6
    and-int/2addr p0, v1

    if-eqz p0, :cond_7

    add-int/2addr v0, v1

    :cond_7
    return v0
.end method

.method static a([B[B[B)V
    .locals 7

    const/4 v0, 0x5

    .line 11
    aget-byte v1, p0, v0

    const/4 v2, 0x0

    aget-byte v3, p2, v2

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/4 v0, 0x6

    .line 12
    aget-byte v1, p0, v0

    const/4 v4, 0x1

    aget-byte v5, p2, v4

    or-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/4 v0, 0x7

    .line 13
    aget-byte v1, p0, v0

    const/4 v6, 0x2

    aget-byte p2, p2, v6

    or-int/2addr v1, p2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 14
    aget-byte p0, p1, v2

    xor-int/2addr p0, v3

    int-to-byte p0, p0

    aput-byte p0, p1, v2

    .line 15
    aget-byte p0, p1, v4

    xor-int/2addr p0, v5

    int-to-byte p0, p0

    aput-byte p0, p1, v4

    .line 16
    aget-byte p0, p1, v6

    xor-int/2addr p0, p2

    int-to-byte p0, p0

    aput-byte p0, p1, v6

    return-void
.end method

.method static a([B)[B
    .locals 3

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 3
    aget-byte v2, p0, v1

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 4
    aget-byte v2, p0, v1

    if-nez v2, :cond_0

    const/4 v1, 0x2

    .line 5
    aget-byte p0, p0, v1

    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ota/q;->b(B)B

    move-result p0

    aput-byte p0, v0, v1

    return-object v0

    .line 7
    :cond_0
    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ota/q;->b(B)B

    move-result p0

    aput-byte p0, v0, v1

    return-object v0

    .line 10
    :cond_1
    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ota/q;->b(B)B

    move-result p0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method static a([B[B)[B
    .locals 10

    const/16 v0, 0x8

    .line 17
    new-array v1, v0, [B

    .line 18
    new-array v2, v0, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    .line 20
    aget-byte v5, p1, v4

    aput-byte v5, v1, v4

    add-int/lit8 v5, v4, 0x8

    .line 21
    aget-byte v5, p1, v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 24
    :cond_0
    new-array p1, v0, [B

    const/16 v4, 0x10

    .line 25
    new-array v4, v4, [B

    move v5, v3

    :goto_1
    if-ge v5, v0, :cond_1

    .line 28
    aget-byte v6, p0, v5

    aget-byte v7, v2, v5

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 30
    :cond_1
    invoke-static {p1, v1}, Lcom/stripe/bbpos/bbdevice/ota/n;->b([B[B)[B

    move-result-object v5

    move v6, v3

    :goto_2
    if-ge v6, v0, :cond_2

    add-int/lit8 v7, v6, 0x8

    .line 32
    aget-byte v8, v5, v6

    aget-byte v9, v2, v6

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 35
    :cond_2
    aget-byte v5, v1, v3

    xor-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    const/4 v5, 0x1

    .line 36
    aget-byte v6, v1, v5

    xor-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    const/4 v6, 0x2

    .line 37
    aget-byte v7, v1, v6

    xor-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    const/4 v7, 0x3

    .line 38
    aget-byte v8, v1, v7

    xor-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    .line 39
    aget-byte v8, v2, v3

    xor-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v2, v3

    .line 40
    aget-byte v8, v2, v5

    xor-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v2, v5

    .line 41
    aget-byte v5, v2, v6

    xor-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, v2, v6

    .line 42
    aget-byte v5, v2, v7

    xor-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, v2, v7

    move v5, v3

    :goto_3
    if-ge v5, v0, :cond_3

    .line 45
    aget-byte v6, p0, v5

    aget-byte v7, v2, v5

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 47
    :cond_3
    invoke-static {p1, v1}, Lcom/stripe/bbpos/bbdevice/ota/n;->b([B[B)[B

    move-result-object p0

    :goto_4
    if-ge v3, v0, :cond_4

    .line 49
    aget-byte p1, p0, v3

    aget-byte v1, v2, v3

    xor-int/2addr p1, v1

    int-to-byte p1, p1

    aput-byte p1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    return-object v4
.end method

.method static b(B)B
    .locals 1

    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_0

    const/16 p0, -0x80

    return p0

    :cond_0
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_1

    const/16 p0, 0x40

    return p0

    :cond_1
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_2

    const/16 p0, 0x20

    return p0

    :cond_2
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_3

    const/16 p0, 0x10

    return p0

    :cond_3
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_4

    const/16 p0, 0x8

    return p0

    :cond_4
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_5

    const/4 p0, 0x4

    return p0

    :cond_5
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_6

    const/4 p0, 0x2

    return p0

    :cond_6
    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method static b([B[B)[B
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/q;->c([B[B)[B

    move-result-object p0

    const/16 p1, 0x10

    .line 2
    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 4
    aget-byte v2, p0, v1

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/e0;->b([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method static c([B[B)[B
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    .line 1
    array-length v1, p1

    if-eqz v1, :cond_1

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/q;->d([B[B)[B

    move-result-object p0

    const/4 p1, 0x5

    .line 7
    aget-byte v1, p0, p1

    xor-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    const/16 p1, 0xd

    .line 8
    aget-byte v1, p0, p1

    xor-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method static d([B[B)[B
    .locals 5

    const/16 v0, 0x8

    .line 1
    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    add-int/lit8 v4, v3, 0x2

    .line 5
    aget-byte v4, p0, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    .line 7
    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    const/4 v3, 0x6

    .line 8
    aput-byte v2, v1, v3

    const/4 v3, 0x7

    .line 9
    aput-byte v2, v1, v3

    .line 11
    invoke-static {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/q;->e([B[B)[B

    move-result-object p1

    .line 13
    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x1f

    int-to-byte v3, v3

    .line 14
    aget-byte v0, p0, v0

    const/16 v4, 0x9

    .line 15
    aget-byte p0, p0, v4

    const/4 v4, 0x3

    new-array v4, v4, [B

    aput-byte v3, v4, v2

    const/4 v2, 0x1

    aput-byte v0, v4, v2

    const/4 v0, 0x2

    aput-byte p0, v4, v0

    .line 16
    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ota/q;->a(B)I

    move-result p0

    .line 17
    aget-byte v2, v4, v2

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ota/q;->a(B)I

    move-result v2

    add-int/2addr p0, v2

    .line 18
    aget-byte v0, v4, v0

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/q;->a(B)I

    move-result v0

    add-int/2addr p0, v0

    .line 20
    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ota/q;->a([B)[B

    move-result-object v0

    .line 21
    invoke-static {v1, v4, v0}, Lcom/stripe/bbpos/bbdevice/ota/q;->a([B[B[B)V

    :goto_1
    if-lez p0, :cond_1

    .line 24
    invoke-static {v1, p1}, Lcom/stripe/bbpos/bbdevice/ota/q;->a([B[B)[B

    move-result-object p1

    .line 25
    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ota/q;->a([B)[B

    move-result-object v0

    .line 26
    invoke-static {v1, v4, v0}, Lcom/stripe/bbpos/bbdevice/ota/q;->a([B[B[B)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method static e([B[B)[B
    .locals 7

    const/16 v0, 0x8

    .line 1
    new-array v1, v0, [B

    const/16 v2, 0x10

    .line 2
    new-array v3, v2, [B

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_0

    .line 9
    aget-byte v6, p0, v5

    aput-byte v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x7

    .line 11
    aget-byte v5, v1, p0

    and-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    aput-byte v5, v1, p0

    .line 13
    new-array p0, v2, [B

    move v5, v4

    :goto_1
    if-ge v5, v2, :cond_1

    .line 15
    aget-byte v6, p1, v5

    aput-byte v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 17
    :cond_1
    invoke-static {v1, v3}, Lcom/stripe/bbpos/bbdevice/ota/e0;->b([B[B)[B

    move-result-object p1

    move v2, v4

    :goto_2
    if-ge v2, v0, :cond_2

    .line 19
    aget-byte v5, p1, v2

    aput-byte v5, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 22
    :cond_2
    aget-byte p1, v3, v4

    xor-int/lit16 p1, p1, 0xc0

    int-to-byte p1, p1

    aput-byte p1, v3, v4

    const/4 p1, 0x1

    .line 23
    aget-byte v2, v3, p1

    xor-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    aput-byte v2, v3, p1

    const/4 p1, 0x2

    .line 24
    aget-byte v2, v3, p1

    xor-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    aput-byte v2, v3, p1

    const/4 p1, 0x3

    .line 25
    aget-byte v2, v3, p1

    xor-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    aput-byte v2, v3, p1

    .line 26
    aget-byte p1, v3, v0

    xor-int/lit16 p1, p1, 0xc0

    int-to-byte p1, p1

    aput-byte p1, v3, v0

    const/16 p1, 0x9

    .line 27
    aget-byte v2, v3, p1

    xor-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    aput-byte v2, v3, p1

    const/16 p1, 0xa

    .line 28
    aget-byte v2, v3, p1

    xor-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    aput-byte v2, v3, p1

    const/16 p1, 0xb

    .line 29
    aget-byte v2, v3, p1

    xor-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    aput-byte v2, v3, p1

    .line 31
    invoke-static {v1, v3}, Lcom/stripe/bbpos/bbdevice/ota/e0;->b([B[B)[B

    move-result-object p1

    :goto_3
    if-ge v4, v0, :cond_3

    add-int/lit8 v1, v4, 0x8

    .line 33
    aget-byte v2, p1, v4

    aput-byte v2, p0, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    return-object p0
.end method
