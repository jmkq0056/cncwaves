.class public Lcom/sun/jna/platform/mac/XAttrUtil;
.super Ljava/lang/Object;
.source "XAttrUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static decodeString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 1

    .line 96
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static decodeStringSequence(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 103
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    if-nez v1, :cond_0

    .line 105
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 106
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    invoke-static {v1}, Lcom/sun/jna/platform/mac/XAttrUtil;->decodeString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method protected static encodeString(Ljava/lang/String;)Lcom/sun/jna/Memory;
    .locals 7

    .line 89
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 90
    new-instance v1, Lcom/sun/jna/Memory;

    array-length p0, v4

    int-to-long v2, p0

    invoke-direct {v1, v2, v3}, Lcom/sun/jna/Memory;-><init>(J)V

    const/4 v5, 0x0

    .line 91
    array-length v6, v4

    const-wide/16 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/sun/jna/Memory;->write(J[BII)V

    return-object v1
.end method

.method public static getXAttr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16

    .line 57
    sget-object v0, Lcom/sun/jna/platform/mac/XAttr;->INSTANCE:Lcom/sun/jna/platform/mac/XAttr;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-interface/range {v0 .. v7}, Lcom/sun/jna/platform/mac/XAttr;->getxattr(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/Pointer;JII)J

    move-result-wide v12

    const-wide/16 v0, 0x0

    cmp-long v2, v12, v0

    if-gez v2, :cond_0

    return-object v3

    :cond_0
    if-nez v2, :cond_1

    .line 64
    const-string v0, ""

    return-object v0

    .line 67
    :cond_1
    new-instance v11, Lcom/sun/jna/Memory;

    invoke-direct {v11, v12, v13}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 68
    invoke-virtual {v11}, Lcom/sun/jna/Memory;->clear()V

    .line 69
    sget-object v8, Lcom/sun/jna/platform/mac/XAttr;->INSTANCE:Lcom/sun/jna/platform/mac/XAttr;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-interface/range {v8 .. v15}, Lcom/sun/jna/platform/mac/XAttr;->getxattr(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/Pointer;JII)J

    move-result-wide v4

    cmp-long v2, v4, v0

    if-gez v2, :cond_2

    return-object v3

    :cond_2
    long-to-int v2, v12

    .line 75
    invoke-virtual {v11, v0, v1, v2}, Lcom/sun/jna/Memory;->getByteArray(JI)[B

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static listXAttr(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 38
    sget-object v0, Lcom/sun/jna/platform/mac/XAttr;->INSTANCE:Lcom/sun/jna/platform/mac/XAttr;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/mac/XAttr;->listxattr(Ljava/lang/String;Lcom/sun/jna/Pointer;JI)J

    move-result-wide v9

    const-wide/16 v2, 0x0

    cmp-long p0, v9, v2

    const/4 v0, 0x0

    if-gez p0, :cond_0

    return-object v0

    :cond_0
    if-nez p0, :cond_1

    .line 44
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    .line 46
    :cond_1
    new-instance v8, Lcom/sun/jna/Memory;

    invoke-direct {v8, v9, v10}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 47
    sget-object v6, Lcom/sun/jna/platform/mac/XAttr;->INSTANCE:Lcom/sun/jna/platform/mac/XAttr;

    const/4 v11, 0x0

    move-object v7, v1

    invoke-interface/range {v6 .. v11}, Lcom/sun/jna/platform/mac/XAttr;->listxattr(Ljava/lang/String;Lcom/sun/jna/Pointer;JI)J

    move-result-wide v4

    cmp-long p0, v4, v2

    if-gez p0, :cond_2

    return-object v0

    .line 52
    :cond_2
    invoke-virtual {v8, v2, v3, v4, v5}, Lcom/sun/jna/Memory;->getByteBuffer(JJ)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/jna/platform/mac/XAttrUtil;->decodeStringSequence(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static removeXAttr(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 84
    sget-object v0, Lcom/sun/jna/platform/mac/XAttr;->INSTANCE:Lcom/sun/jna/platform/mac/XAttr;

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lcom/sun/jna/platform/mac/XAttr;->removexattr(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static setXAttr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    .line 79
    invoke-static {p2}, Lcom/sun/jna/platform/mac/XAttrUtil;->encodeString(Ljava/lang/String;)Lcom/sun/jna/Memory;

    move-result-object v3

    .line 80
    sget-object v0, Lcom/sun/jna/platform/mac/XAttr;->INSTANCE:Lcom/sun/jna/platform/mac/XAttr;

    invoke-virtual {v3}, Lcom/sun/jna/Memory;->size()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v7}, Lcom/sun/jna/platform/mac/XAttr;->setxattr(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/Pointer;JII)I

    move-result p0

    return p0
.end method
