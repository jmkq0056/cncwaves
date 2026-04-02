.class public abstract Lcom/sun/jna/platform/linux/XAttrUtil;
.super Ljava/lang/Object;
.source "XAttrUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fGetXAttr(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/sun/jna/platform/linux/XAttrUtil;->fGetXAttr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fGetXAttr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    invoke-static {p0, p1}, Lcom/sun/jna/platform/linux/XAttrUtil;->fGetXAttrBytes(ILjava/lang/String;)[B

    move-result-object p0

    .line 400
    new-instance p1, Ljava/lang/String;

    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1
.end method

.method public static fGetXAttrAsMemory(ILjava/lang/String;)Lcom/sun/jna/Memory;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 450
    :cond_0
    sget-object v1, Lcom/sun/jna/platform/linux/XAttr;->INSTANCE:Lcom/sun/jna/platform/linux/XAttr;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Lcom/sun/jna/Memory;

    sget-object v3, Lcom/sun/jna/platform/linux/XAttr$size_t;->ZERO:Lcom/sun/jna/platform/linux/XAttr$size_t;

    invoke-interface {v1, p0, p1, v2, v3}, Lcom/sun/jna/platform/linux/XAttr;->fgetxattr(ILjava/lang/String;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/linux/XAttr$size_t;)Lcom/sun/jna/platform/linux/XAttr$ssize_t;

    move-result-object v1

    .line 451
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const-string v4, "errno: "

    if-ltz v3, :cond_5

    .line 456
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->longValue()J

    move-result-wide v7

    cmp-long v3, v7, v5

    if-nez v3, :cond_1

    return-object v2

    .line 460
    :cond_1
    new-instance v2, Lcom/sun/jna/Memory;

    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->longValue()J

    move-result-wide v7

    invoke-direct {v2, v7, v8}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 461
    sget-object v1, Lcom/sun/jna/platform/linux/XAttr;->INSTANCE:Lcom/sun/jna/platform/linux/XAttr;

    new-instance v3, Lcom/sun/jna/platform/linux/XAttr$size_t;

    invoke-virtual {v2}, Lcom/sun/jna/Memory;->size()J

    move-result-wide v7

    invoke-direct {v3, v7, v8}, Lcom/sun/jna/platform/linux/XAttr$size_t;-><init>(J)V

    invoke-interface {v1, p0, p1, v2, v3}, Lcom/sun/jna/platform/linux/XAttr;->fgetxattr(ILjava/lang/String;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/linux/XAttr$size_t;)Lcom/sun/jna/platform/linux/XAttr$ssize_t;

    move-result-object v1

    .line 462
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->longValue()J

    move-result-wide v7

    cmp-long v3, v7, v5

    const/16 v7, 0x22

    if-gez v3, :cond_3

    .line 463
    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v0

    if-ne v0, v7, :cond_2

    goto :goto_0

    .line 465
    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 468
    :cond_3
    :goto_0
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->longValue()J

    move-result-wide v3

    cmp-long v1, v3, v5

    if-gez v1, :cond_4

    if-eq v0, v7, :cond_0

    :cond_4
    return-object v2

    .line 452
    :cond_5
    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result p0

    .line 453
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static fGetXAttrBytes(ILjava/lang/String;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 417
    :cond_0
    sget-object v1, Lcom/sun/jna/platform/linux/XAttr;->INSTANCE:Lcom/sun/jna/platform/linux/XAttr;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [B

    sget-object v3, Lcom/sun/jna/platform/linux/XAttr$size_t;->ZERO:Lcom/sun/jna/platform/linux/XAttr$size_t;

    invoke-interface {v1, p0, p1, v2, v3}, Lcom/sun/jna/platform/linux/XAttr;->fgetxattr(ILjava/lang/String;[BLcom/sun/jna/platform/linux/XAttr$size_t;)Lcom/sun/jna/platform/linux/XAttr$ssize_t;

    move-result-object v1

    .line 418
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-string v3, "errno: "

    if-ltz v2, :cond_4

    .line 423
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->intValue()I

    move-result v1

    new-array v2, v1, [B

    .line 424
    sget-object v6, Lcom/sun/jna/platform/linux/XAttr;->INSTANCE:Lcom/sun/jna/platform/linux/XAttr;

    new-instance v7, Lcom/sun/jna/platform/linux/XAttr$size_t;

    int-to-long v8, v1

    invoke-direct {v7, v8, v9}, Lcom/sun/jna/platform/linux/XAttr$size_t;-><init>(J)V

    invoke-interface {v6, p0, p1, v2, v7}, Lcom/sun/jna/platform/linux/XAttr;->fgetxattr(ILjava/lang/String;[BLcom/sun/jna/platform/linux/XAttr$size_t;)Lcom/sun/jna/platform/linux/XAttr$ssize_t;

    move-result-object v1

    .line 425
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v4

    const/16 v7, 0x22

    if-gez v6, :cond_2

    .line 426
    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v0

    if-ne v0, v7, :cond_1

    goto :goto_0

    .line 428
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 431
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->longValue()J

    move-result-wide v8

    cmp-long v1, v8, v4

    if-gez v1, :cond_3

    if-eq v0, v7, :cond_0

    :cond_3
    return-object v2

    .line 419
    :cond_4
    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result p0

    .line 420
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static fListXAttr(I)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 574
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sun/jna/platform/linux/XAttrUtil;->fListXAttr(ILjava/lang/String;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static fListXAttr(ILjava/lang/String;)Ljava/util/Collection;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 591
    :cond_0
    sget-object v1, Lcom/sun/jna/platform/linux/XAttr;->INSTANCE:Lcom/sun/jna/platform/linux/XAttr;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [B

    sget-object v3, Lcom/sun/jna/platform/linux/XAttr$size_t;->ZERO:Lcom/sun/jna/platform/linux/XAttr$size_t;

    invoke-interface {v1, p0, v2, v3}, Lcom/sun/jna/platform/linux/XAttr;->flistxattr(I[BLcom/sun/jna/platform/linux/XAttr$size_t;)Lcom/sun/jna/platform/linux/XAttr$ssize_t;

    move-result-object v1

    .line 592
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-string v3, "errno: "

    if-ltz v2, :cond_4

    .line 597
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->intValue()I

    move-result v1

    new-array v2, v1, [B

    .line 598
    sget-object v6, Lcom/sun/jna/platform/linux/XAttr;->INSTANCE:Lcom/sun/jna/platform/linux/XAttr;

    new-instance v7, Lcom/sun/jna/platform/linux/XAttr$size_t;

    int-to-long v8, v1

    invoke-direct {v7, v8, v9}, Lcom/sun/jna/platform/linux/XAttr$size_t;-><init>(J)V

    invoke-interface {v6, p0, v2, v7}, Lcom/sun/jna/platform/linux/XAttr;->flistxattr(I[BLcom/sun/jna/platform/linux/XAttr$size_t;)Lcom/sun/jna/platform/linux/XAttr$ssize_t;

    move-result-object v1

    .line 599
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v4

    const/16 v7, 0x22

    if-gez v6, :cond_2

    .line 600
    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v0

    if-ne v0, v7, :cond_1

    goto :goto_0

    .line 602
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 605
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->longValue()J

    move-result-wide v8

    cmp-long v1, v8, v4

    if-gez v1, :cond_3

    if-eq v0, v7, :cond_0

    .line 607
    :cond_3
    invoke-static {v2, p1}, Lcom/sun/jna/platform/linux/XAttrUtil;->splitBufferToStrings([BLjava/lang/String;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    .line 593
    :cond_4
    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result p0

    .line 594
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static fRemoveXAttr(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 650
    sget-object v0, Lcom/sun/jna/platform/linux/XAttr;->INSTANCE:Lcom/sun/jna/platform/linux/XAttr;

    invoke-interface {v0, p0, p1}, Lcom/sun/jna/platform/linux/XAttr;->fremovexattr(ILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 652
    :cond_0
    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result p0

    .line 653
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "errno: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static fSetXAttr(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/sun/jna/platform/linux/XAttrUtil;->fSetXAttr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static fSetXAttr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sun/jna/platform/linux/XAttrUtil;->fSetXAttr(ILjava/lang/String;[B)V

    return-void
.end method

.method public static fSetXAttr(ILjava/lang/String;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    sget-object v0, Lcom/sun/jna/platform/linux/XAttr;->INSTANCE:Lcom/sun/jna/platform/linux/XAttr;

    new-instance v4, Lcom/sun/jna/platform/linux/XAttr$size_t;

    array-length v1, p2

    int-to-long v1, v1

    invoke-direct {v4, v1, v2}, Lcom/sun/jna/platform/linux/XAttr$size_t;-><init>(J)V

    const/4 v5, 0x0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/linux/XAttr;->fsetxattr(ILjava/lang/String;[BLcom/sun/jna/platform/linux/XAttr$size_t;I)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 173
    :cond_0
    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result p0

    .line 174
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "errno: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getXAttr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/sun/jna/platform/linux/XAttrUtil;->getXAttr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getXAttr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    invoke-static {p0, p1}, Lcom/sun/jna/platform/linux/XAttrUtil;->getXAttrBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    .line 202
    new-instance p1, Ljava/lang/String;

    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1
.end method

.method public static getXAttrAsMemory(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/jna/Memory;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 252
    :cond_0
    sget-object v1, Lcom/sun/jna/platform/linux/XAttr;->INSTANCE:Lcom/sun/jna/platform/linux/XAttr;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Lcom/sun/jna/Memory;

    sget-object v3, Lcom/sun/jna/platform/linux/XAttr$size_t;->ZERO:Lcom/sun/jna/platform/linux/XAttr$size_t;

    invoke-interface {v1, p0, p1, v2, v3}, Lcom/sun/jna/platform/linux/XAttr;->getxattr(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/linux/XAttr$size_t;)Lcom/sun/jna/platform/linux/XAttr$ssize_t;

    move-result-object v1

    .line 253
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const-string v4, "errno: "

    if-ltz v3, :cond_5

    .line 258
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->longValue()J

    move-result-wide v7

    cmp-long v3, v7, v5

    if-nez v3, :cond_1

    return-object v2

    .line 262
    :cond_1
    new-instance v2, Lcom/sun/jna/Memory;

    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->longValue()J

    move-result-wide v7

    invoke-direct {v2, v7, v8}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 263
    sget-object v1, Lcom/sun/jna/platform/linux/XAttr;->INSTANCE:Lcom/sun/jna/platform/linux/XAttr;

    new-instance v3, Lcom/sun/jna/platform/linux/XAttr$size_t;

    invoke-virtual {v2}, Lcom/sun/jna/Memory;->size()J

    move-result-wide v7

    invoke-direct {v3, v7, v8}, Lcom/sun/jna/platform/linux/XAttr$size_t;-><init>(J)V

    invoke-interface {v1, p0, p1, v2, v3}, Lcom/sun/jna/platform/linux/XAttr;->getxattr(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/linux/XAttr$size_t;)Lcom/sun/jna/platform/linux/XAttr$ssize_t;

    move-result-object v1

    .line 264
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->longValue()J

    move-result-wide v7

    cmp-long v3, v7, v5

    const/16 v7, 0x22

    if-gez v3, :cond_3

    .line 265
    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v0

    if-ne v0, v7, :cond_2

    goto :goto_0

    .line 267
    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 270
    :cond_3
    :goto_0
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->longValue()J

    move-result-wide v3

    cmp-long v1, v3, v5

    if-gez v1, :cond_4

    if-eq v0, v7, :cond_0

    :cond_4
    return-object v2

    .line 254
    :cond_5
    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result p0

    .line 255
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getXAttrBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 219
    :cond_0
    sget-object v1, Lcom/sun/jna/platform/linux/XAttr;->INSTANCE:Lcom/sun/jna/platform/linux/XAttr;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [B

    sget-object v3, Lcom/sun/jna/platform/linux/XAttr$size_t;->ZERO:Lcom/sun/jna/platform/linux/XAttr$size_t;

    invoke-interface {v1, p0, p1, v2, v3}, Lcom/sun/jna/platform/linux/XAttr;->getxattr(Ljava/lang/String;Ljava/lang/String;[BLcom/sun/jna/platform/linux/XAttr$size_t;)Lcom/sun/jna/platform/linux/XAttr$ssize_t;

    move-result-object v1

    .line 220
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-string v3, "errno: "

    if-ltz v2, :cond_4

    .line 225
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->intValue()I

    move-result v1

    new-array v2, v1, [B

    .line 226
    sget-object v6, Lcom/sun/jna/platform/linux/XAttr;->INSTANCE:Lcom/sun/jna/platform/linux/XAttr;

    new-instance v7, Lcom/sun/jna/platform/linux/XAttr$size_t;

    int-to-long v8, v1

    invoke-direct {v7, v8, v9}, Lcom/sun/jna/platform/linux/XAttr$size_t;-><init>(J)V

    invoke-interface {v6, p0, p1, v2, v7}, Lcom/sun/jna/platform/linux/XAttr;->getxattr(Ljava/lang/String;Ljava/lang/String;[BLcom/sun/jna/platform/linux/XAttr$size_t;)Lcom/sun/jna/platform/linux/XAttr$ssize_t;

    move-result-object v1

    .line 227
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v4

    const/16 v7, 0x22

    if-gez v6, :cond_2

    .line 228
    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v0

    if-ne v0, v7, :cond_1

    goto :goto_0

    .line 230
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 233
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->longValue()J

    move-result-wide v8

    cmp-long v1, v8, v4

    if-gez v1, :cond_3

    if-eq v0, v7, :cond_0

    :cond_3
    return-object v2

    .line 221
    :cond_4
    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result p0

    .line 222
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static lGetXAttr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/sun/jna/platform/linux/XAttrUtil;->lGetXAttr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static lGetXAttr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    invoke-static {p0, p1}, Lcom/sun/jna/platform/linux/XAttrUtil;->lGetXAttrBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    .line 301
    new-instance p1, Ljava/lang/String;

    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1
.end method

.method public static lGetXAttrAsMemory(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/jna/Memory;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 353
    :cond_0
    sget-object v1, Lcom/sun/jna/platform/linux/XAttr;->INSTANCE:Lcom/sun/jna/platform/linux/XAttr;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Lcom/sun/jna/Memory;

    sget-object v3, Lcom/sun/jna/platform/linux/XAttr$size_t;->ZERO:Lcom/sun/jna/platform/linux/XAttr$size_t;

    invoke-interface {v1, p0, p1, v2, v3}, Lcom/sun/jna/platform/linux/XAttr;->lgetxattr(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/linux/XAttr$size_t;)Lcom/sun/jna/platform/linux/XAttr$ssize_t;

    move-result-object v1

    .line 354
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const-string v4, "errno: "

    if-ltz v3, :cond_5

    .line 359
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->longValue()J

    move-result-wide v7

    cmp-long v3, v7, v5

    if-nez v3, :cond_1

    return-object v2

    .line 363
    :cond_1
    new-instance v2, Lcom/sun/jna/Memory;

    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->longValue()J

    move-result-wide v7

    invoke-direct {v2, v7, v8}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 364
    sget-object v1, Lcom/sun/jna/platform/linux/XAttr;->INSTANCE:Lcom/sun/jna/platform/linux/XAttr;

    new-instance v3, Lcom/sun/jna/platform/linux/XAttr$size_t;

    invoke-virtual {v2}, Lcom/sun/jna/Memory;->size()J

    move-result-wide v7

    invoke-direct {v3, v7, v8}, Lcom/sun/jna/platform/linux/XAttr$size_t;-><init>(J)V

    invoke-interface {v1, p0, p1, v2, v3}, Lcom/sun/jna/platform/linux/XAttr;->lgetxattr(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/linux/XAttr$size_t;)Lcom/sun/jna/platform/linux/XAttr$ssize_t;

    move-result-object v1

    .line 365
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->longValue()J

    move-result-wide v7

    cmp-long v3, v7, v5

    const/16 v7, 0x22

    if-gez v3, :cond_3

    .line 366
    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v0

    if-ne v0, v7, :cond_2

    goto :goto_0

    .line 368
    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 371
    :cond_3
    :goto_0
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->longValue()J

    move-result-wide v3

    cmp-long v1, v3, v5

    if-gez v1, :cond_4

    if-eq v0, v7, :cond_0

    :cond_4
    return-object v2

    .line 355
    :cond_5
    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result p0

    .line 356
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static lGetXAttrBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 319
    :cond_0
    sget-object v1, Lcom/sun/jna/platform/linux/XAttr;->INSTANCE:Lcom/sun/jna/platform/linux/XAttr;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [B

    sget-object v3, Lcom/sun/jna/platform/linux/XAttr$size_t;->ZERO:Lcom/sun/jna/platform/linux/XAttr$size_t;

    invoke-interface {v1, p0, p1, v2, v3}, Lcom/sun/jna/platform/linux/XAttr;->lgetxattr(Ljava/lang/String;Ljava/lang/String;[BLcom/sun/jna/platform/linux/XAttr$size_t;)Lcom/sun/jna/platform/linux/XAttr$ssize_t;

    move-result-object v1

    .line 320
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-string v3, "errno: "

    if-ltz v2, :cond_4

    .line 325
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->intValue()I

    move-result v1

    new-array v2, v1, [B

    .line 326
    sget-object v6, Lcom/sun/jna/platform/linux/XAttr;->INSTANCE:Lcom/sun/jna/platform/linux/XAttr;

    new-instance v7, Lcom/sun/jna/platform/linux/XAttr$size_t;

    int-to-long v8, v1

    invoke-direct {v7, v8, v9}, Lcom/sun/jna/platform/linux/XAttr$size_t;-><init>(J)V

    invoke-interface {v6, p0, p1, v2, v7}, Lcom/sun/jna/platform/linux/XAttr;->lgetxattr(Ljava/lang/String;Ljava/lang/String;[BLcom/sun/jna/platform/linux/XAttr$size_t;)Lcom/sun/jna/platform/linux/XAttr$ssize_t;

    move-result-object v1

    .line 327
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v4

    const/16 v7, 0x22

    if-gez v6, :cond_2

    .line 328
    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v0

    if-ne v0, v7, :cond_1

    goto :goto_0

    .line 330
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 333
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->longValue()J

    move-result-wide v8

    cmp-long v1, v8, v4

    if-gez v1, :cond_3

    if-eq v0, v7, :cond_0

    :cond_3
    return-object v2

    .line 321
    :cond_4
    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result p0

    .line 322
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static lListXAttr(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sun/jna/platform/linux/XAttrUtil;->lListXAttr(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static lListXAttr(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 546
    :cond_0
    sget-object v1, Lcom/sun/jna/platform/linux/XAttr;->INSTANCE:Lcom/sun/jna/platform/linux/XAttr;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [B

    sget-object v3, Lcom/sun/jna/platform/linux/XAttr$size_t;->ZERO:Lcom/sun/jna/platform/linux/XAttr$size_t;

    invoke-interface {v1, p0, v2, v3}, Lcom/sun/jna/platform/linux/XAttr;->llistxattr(Ljava/lang/String;[BLcom/sun/jna/platform/linux/XAttr$size_t;)Lcom/sun/jna/platform/linux/XAttr$ssize_t;

    move-result-object v1

    .line 547
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-string v3, "errno: "

    if-ltz v2, :cond_4

    .line 552
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->intValue()I

    move-result v1

    new-array v2, v1, [B

    .line 553
    sget-object v6, Lcom/sun/jna/platform/linux/XAttr;->INSTANCE:Lcom/sun/jna/platform/linux/XAttr;

    new-instance v7, Lcom/sun/jna/platform/linux/XAttr$size_t;

    int-to-long v8, v1

    invoke-direct {v7, v8, v9}, Lcom/sun/jna/platform/linux/XAttr$size_t;-><init>(J)V

    invoke-interface {v6, p0, v2, v7}, Lcom/sun/jna/platform/linux/XAttr;->llistxattr(Ljava/lang/String;[BLcom/sun/jna/platform/linux/XAttr$size_t;)Lcom/sun/jna/platform/linux/XAttr$ssize_t;

    move-result-object v1

    .line 554
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v4

    const/16 v7, 0x22

    if-gez v6, :cond_2

    .line 555
    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v0

    if-ne v0, v7, :cond_1

    goto :goto_0

    .line 557
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 560
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->longValue()J

    move-result-wide v8

    cmp-long v1, v8, v4

    if-gez v1, :cond_3

    if-eq v0, v7, :cond_0

    .line 562
    :cond_3
    invoke-static {v2, p1}, Lcom/sun/jna/platform/linux/XAttrUtil;->splitBufferToStrings([BLjava/lang/String;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    .line 548
    :cond_4
    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result p0

    .line 549
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static lRemoveXAttr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 635
    sget-object v0, Lcom/sun/jna/platform/linux/XAttr;->INSTANCE:Lcom/sun/jna/platform/linux/XAttr;

    invoke-interface {v0, p0, p1}, Lcom/sun/jna/platform/linux/XAttr;->lremovexattr(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 637
    :cond_0
    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result p0

    .line 638
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "errno: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static lSetXAttr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/sun/jna/platform/linux/XAttrUtil;->lSetXAttr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static lSetXAttr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sun/jna/platform/linux/XAttrUtil;->lSetXAttr(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public static lSetXAttr(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    sget-object v0, Lcom/sun/jna/platform/linux/XAttr;->INSTANCE:Lcom/sun/jna/platform/linux/XAttr;

    new-instance v4, Lcom/sun/jna/platform/linux/XAttr$size_t;

    array-length v1, p2

    int-to-long v1, v1

    invoke-direct {v4, v1, v2}, Lcom/sun/jna/platform/linux/XAttr$size_t;-><init>(J)V

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/linux/XAttr;->lsetxattr(Ljava/lang/String;Ljava/lang/String;[BLcom/sun/jna/platform/linux/XAttr$size_t;I)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result p0

    .line 131
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "errno: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static listXAttr(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sun/jna/platform/linux/XAttrUtil;->listXAttr(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static listXAttr(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 499
    :cond_0
    sget-object v1, Lcom/sun/jna/platform/linux/XAttr;->INSTANCE:Lcom/sun/jna/platform/linux/XAttr;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [B

    sget-object v3, Lcom/sun/jna/platform/linux/XAttr$size_t;->ZERO:Lcom/sun/jna/platform/linux/XAttr$size_t;

    invoke-interface {v1, p0, v2, v3}, Lcom/sun/jna/platform/linux/XAttr;->listxattr(Ljava/lang/String;[BLcom/sun/jna/platform/linux/XAttr$size_t;)Lcom/sun/jna/platform/linux/XAttr$ssize_t;

    move-result-object v1

    .line 500
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-string v3, "errno: "

    if-ltz v2, :cond_4

    .line 505
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->intValue()I

    move-result v1

    new-array v2, v1, [B

    .line 506
    sget-object v6, Lcom/sun/jna/platform/linux/XAttr;->INSTANCE:Lcom/sun/jna/platform/linux/XAttr;

    new-instance v7, Lcom/sun/jna/platform/linux/XAttr$size_t;

    int-to-long v8, v1

    invoke-direct {v7, v8, v9}, Lcom/sun/jna/platform/linux/XAttr$size_t;-><init>(J)V

    invoke-interface {v6, p0, v2, v7}, Lcom/sun/jna/platform/linux/XAttr;->listxattr(Ljava/lang/String;[BLcom/sun/jna/platform/linux/XAttr$size_t;)Lcom/sun/jna/platform/linux/XAttr$ssize_t;

    move-result-object v1

    .line 507
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v4

    const/16 v7, 0x22

    if-gez v6, :cond_2

    .line 508
    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v0

    if-ne v0, v7, :cond_1

    goto :goto_0

    .line 510
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 513
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/sun/jna/platform/linux/XAttr$ssize_t;->longValue()J

    move-result-wide v8

    cmp-long v1, v8, v4

    if-gez v1, :cond_3

    if-eq v0, v7, :cond_0

    .line 515
    :cond_3
    invoke-static {v2, p1}, Lcom/sun/jna/platform/linux/XAttrUtil;->splitBufferToStrings([BLjava/lang/String;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    .line 501
    :cond_4
    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result p0

    .line 502
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static removeXAttr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 619
    sget-object v0, Lcom/sun/jna/platform/linux/XAttr;->INSTANCE:Lcom/sun/jna/platform/linux/XAttr;

    invoke-interface {v0, p0, p1}, Lcom/sun/jna/platform/linux/XAttr;->removexattr(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 621
    :cond_0
    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result p0

    .line 622
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "errno: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setXAttr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/sun/jna/platform/linux/XAttrUtil;->setXAttr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setXAttr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sun/jna/platform/linux/XAttrUtil;->setXAttr(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public static setXAttr(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    sget-object v0, Lcom/sun/jna/platform/linux/XAttr;->INSTANCE:Lcom/sun/jna/platform/linux/XAttr;

    new-instance v4, Lcom/sun/jna/platform/linux/XAttr$size_t;

    array-length v1, p2

    int-to-long v1, v1

    invoke-direct {v4, v1, v2}, Lcom/sun/jna/platform/linux/XAttr$size_t;-><init>(J)V

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/linux/XAttr;->setxattr(Ljava/lang/String;Ljava/lang/String;[BLcom/sun/jna/platform/linux/XAttr$size_t;I)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result p0

    .line 85
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "errno: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static splitBufferToStrings([BLjava/lang/String;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 659
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    .line 660
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 662
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 664
    aget-byte v3, p0, v1

    if-nez v3, :cond_0

    .line 666
    new-instance v3, Ljava/lang/String;

    sub-int v4, v1, v2

    invoke-direct {v3, p0, v2, v4, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 667
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v1, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
