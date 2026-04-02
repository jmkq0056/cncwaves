.class final Lcom/stripe/bbpos/bbdevice/ota/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a([B)I
    .locals 5

    const/4 v0, 0x0

    .line 2
    aget-byte v1, p0, v0

    and-int/lit8 v2, v1, -0x80

    const/16 v3, -0x80

    if-ne v2, v3, :cond_1

    and-int/lit8 v1, v1, 0x7f

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    add-int/lit8 v4, v1, 0x1

    if-ge v3, v4, :cond_0

    shl-int/lit8 v0, v0, 0x8

    .line 7
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    and-int/lit16 p0, v1, 0xff

    return p0
.end method

.method static a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ota/b0;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/stripe/bbpos/bbdevice/ota/b0;"
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/stripe/bbpos/bbdevice/ota/b0;

    invoke-direct {v0}, Lcom/stripe/bbpos/bbdevice/ota/b0;-><init>()V

    .line 9
    iput-object p1, v0, Lcom/stripe/bbpos/bbdevice/ota/b0;->a:Ljava/lang/String;

    .line 10
    invoke-static {p0, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 12
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/bbdevice/ota/b0;

    return-object p0

    .line 14
    :cond_0
    new-instance p0, Lcom/stripe/bbpos/bbdevice/ota/b0;

    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ota/b0;-><init>()V

    return-object p0
.end method

.method static a(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ota/b0;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ota/c0;->b([B)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b([B)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ota/b0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 4
    :goto_0
    :try_start_0
    array-length v3, p0

    if-ge v2, v3, :cond_7

    .line 11
    aget-byte v3, p0, v2

    and-int/lit8 v4, v3, 0x20

    const/16 v5, 0x20

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    and-int/lit8 v5, v3, 0x1f

    const/16 v7, 0x1f

    const/16 v8, -0x80

    if-ne v5, v7, :cond_2

    add-int/lit8 v3, v2, 0x1

    .line 19
    :goto_2
    aget-byte v5, p0, v3

    and-int/2addr v5, v8

    if-ne v5, v8, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    sub-int/2addr v3, v2

    add-int/2addr v3, v6

    .line 22
    new-array v5, v3, [B

    .line 23
    invoke-static {p0, v2, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    goto :goto_3

    .line 27
    :cond_2
    new-array v5, v6, [B

    aput-byte v3, v5, v1

    add-int/lit8 v2, v2, 0x1

    if-nez v3, :cond_3

    goto :goto_5

    .line 35
    :cond_3
    :goto_3
    aget-byte v3, p0, v2

    and-int/lit8 v7, v3, -0x80

    if-ne v7, v8, :cond_4

    and-int/lit8 v3, v3, 0x7f

    add-int/2addr v3, v6

    .line 37
    new-array v6, v3, [B

    .line 38
    invoke-static {p0, v2, v6, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    goto :goto_4

    .line 42
    :cond_4
    new-array v6, v6, [B

    aput-byte v3, v6, v1

    add-int/lit8 v2, v2, 0x1

    .line 46
    :goto_4
    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a([B)I

    move-result v3

    const v7, 0xffffff

    if-le v3, v7, :cond_5

    goto :goto_6

    .line 50
    :cond_5
    new-array v7, v3, [B

    .line 51
    invoke-static {p0, v2, v7, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    .line 54
    new-instance v3, Lcom/stripe/bbpos/bbdevice/ota/b0;

    invoke-direct {v3}, Lcom/stripe/bbpos/bbdevice/ota/b0;-><init>()V

    .line 55
    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/stripe/bbpos/bbdevice/ota/b0;->a:Ljava/lang/String;

    .line 56
    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/stripe/bbpos/bbdevice/ota/b0;->b:Ljava/lang/String;

    .line 57
    invoke-static {v7}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    .line 58
    iput-boolean v4, v3, Lcom/stripe/bbpos/bbdevice/ota/b0;->d:Z

    if-eqz v4, :cond_6

    .line 61
    invoke-static {v7}, Lcom/stripe/bbpos/bbdevice/ota/c0;->b([B)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcom/stripe/bbpos/bbdevice/ota/b0;->e:Ljava/util/List;

    .line 64
    :cond_6
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_7
    :goto_5
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_6
    return-object v0
.end method
