.class public final Lio/ktor/utils/io/core/ScannerJVMKt;
.super Ljava/lang/Object;
.source "ScannerJVM.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScannerJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScannerJVM.kt\nio/ktor/utils/io/core/ScannerJVMKt\n+ 2 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 3 Scanner.kt\nio/ktor/utils/io/core/ScannerKt\n+ 4 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 5 PrimiteArrays.kt\nio/ktor/utils/io/bits/PrimiteArraysKt\n+ 6 Output.kt\nio/ktor/utils/io/core/OutputKt\n+ 7 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n*L\n1#1,257:1\n211#1,14:277\n211#1,14:308\n229#1,7:336\n236#1,2:347\n239#1,13:350\n254#1,2:370\n229#1,7:386\n236#1,2:397\n239#1,13:400\n254#1,2:420\n69#2:258\n69#2:259\n69#2:276\n69#2:307\n74#2:349\n74#2:399\n74#2:426\n191#3,5:260\n196#3,7:266\n203#3:275\n191#3,5:291\n196#3,7:297\n203#3:306\n208#3,5:322\n213#3,8:328\n208#3,5:372\n213#3,8:378\n26#4:265\n26#4:296\n26#4:327\n26#4:377\n15#5,2:273\n15#5,2:304\n488#6,4:343\n492#6,6:364\n488#6,4:393\n492#6,6:414\n488#6,4:422\n492#6,6:428\n361#7:363\n361#7:413\n361#7:427\n*S KotlinDebug\n*F\n+ 1 ScannerJVM.kt\nio/ktor/utils/io/core/ScannerJVMKt\n*L\n82#1:277,14\n134#1:308,14\n161#1:336,7\n161#1:347,2\n161#1:350,13\n161#1:370,2\n182#1:386,7\n182#1:397,2\n182#1:400,13\n182#1:420,2\n20#1:258\n47#1:259\n87#1:276\n139#1:307\n161#1:349\n182#1:399\n237#1:426\n75#1:260,5\n75#1:266,7\n75#1:275\n121#1:291,5\n121#1:297,7\n121#1:306\n156#1:322,5\n156#1:328,8\n177#1:372,5\n177#1:378,8\n75#1:265\n121#1:296\n156#1:327\n177#1:377\n75#1:273,2\n121#1:304,2\n161#1:343,4\n161#1:364,6\n182#1:393,4\n182#1:414,6\n235#1:422,4\n235#1:428,6\n161#1:363\n182#1:413\n251#1:427\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u001a \u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0005H\u0002\u001a0\u0010\t\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0001H\u0002\u001a)\u0010\u000e\u001a\u00020\u0001*\u00020\u00032\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\n\u001a\u00020\u0012H\u0082\u0008\u001aA\u0010\u000e\u001a\u00020\u0001*\u00020\u00132\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\u0014\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0001H\u0082\u0008\u001a9\u0010\u0015\u001a\u00020\u0001*\u00020\u00132\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0001H\u0082\u0008\u001a\u0014\u0010\u0016\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u001a\u001c\u0010\u0017\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0005H\u0000\u001a\u001c\u0010\t\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0012H\u0000\u001a\u001c\u0010\u0018\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0012H\u0000\u001a,\u0010\u0018\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0001H\u0002\u001a\u001c\u0010\u0019\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0012H\u0000\u001a,\u0010\u0019\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0001H\u0000\u001a$\u0010\u001a\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0012H\u0000\u001a4\u0010\u001a\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0001H\u0002\u001a$\u0010\u001b\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0012H\u0000\u001a4\u0010\u001b\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0001H\u0002\u001a$\u0010\u001c\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0012H\u0000\u001a4\u0010\u001c\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0001H\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "discardUntilDelimiterImplArrays",
        "",
        "buffer",
        "Lio/ktor/utils/io/core/Buffer;",
        "delimiter",
        "",
        "discardUntilDelimitersImplArrays",
        "delimiter1",
        "delimiter2",
        "readUntilDelimiterArrays",
        "dst",
        "",
        "offset",
        "length",
        "copyUntilArrays",
        "predicate",
        "Lkotlin/Function1;",
        "",
        "Lio/ktor/utils/io/core/Output;",
        "Ljava/nio/ByteBuffer;",
        "bufferOffset",
        "copyUntilDirect",
        "discardUntilDelimiterImpl",
        "discardUntilDelimitersImpl",
        "readUntilDelimiterDirect",
        "readUntilDelimiterImpl",
        "readUntilDelimitersArrays",
        "readUntilDelimitersDirect",
        "readUntilDelimitersImpl",
        "ktor-io"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final copyUntilArrays(Lio/ktor/utils/io/core/Buffer;Lkotlin/jvm/functions/Function1;Lio/ktor/utils/io/core/Output;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Buffer;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Byte;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/ktor/utils/io/core/Output;",
            ")I"
        }
    .end annotation

    .line 229
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 231
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3

    add-int/2addr v2, v3

    .line 232
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v0

    add-int/2addr v3, v0

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 422
    invoke-static {p2, v4, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    const/4 v5, 0x0

    .line 425
    :goto_0
    :try_start_0
    move-object v6, v0

    check-cast v6, Lio/ktor/utils/io/core/Buffer;

    .line 426
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v7

    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/2addr v7, v2

    .line 237
    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 239
    array-length v8, v1

    if-gt v7, v8, :cond_0

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_1

    .line 241
    aget-byte v9, v1, v8

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-interface {p1, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    move v8, v2

    :cond_1
    sub-int v7, v8, v2

    .line 248
    const-string v9, "array"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v1, v2, v7}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeFully(Lio/ktor/utils/io/core/Buffer;[BII)V

    add-int/2addr v5, v7

    .line 427
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v2

    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v6

    if-le v2, v6, :cond_2

    goto :goto_2

    :cond_2
    if-ge v8, v3, :cond_3

    .line 428
    invoke-static {p2, v4, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v8

    goto :goto_0

    .line 431
    :cond_3
    :goto_2
    invoke-virtual {p2}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 254
    invoke-virtual {p0, v8}, Lio/ktor/utils/io/core/Buffer;->discardUntilIndex$ktor_io(I)V

    return v5

    :catchall_0
    move-exception p0

    .line 431
    invoke-virtual {p2}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw p0
.end method

.method private static final copyUntilArrays(Ljava/nio/ByteBuffer;Lkotlin/jvm/functions/Function1;I[BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Byte;",
            "Ljava/lang/Boolean;",
            ">;I[BII)I"
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 212
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    add-int/2addr p2, v1

    .line 214
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-static {p5, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    add-int/2addr p0, p2

    .line 215
    array-length p5, v0

    if-gt p0, p5, :cond_0

    move p5, p2

    :goto_0
    if-ge p5, p0, :cond_1

    .line 217
    aget-byte v1, v0, p5

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    move p5, p2

    :cond_1
    sub-int/2addr p5, p2

    .line 223
    invoke-static {v0, p2, p3, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p5
.end method

.method private static final copyUntilDirect(Ljava/nio/ByteBuffer;Lkotlin/jvm/functions/Function1;[BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Byte;",
            "Ljava/lang/Boolean;",
            ">;[BII)I"
        }
    .end annotation

    .line 191
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr p4, v0

    move v1, v0

    .line 194
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-ge v1, v2, :cond_0

    if-ge v1, p4, :cond_0

    .line 195
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v0

    .line 200
    invoke-virtual {p0, p2, p3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return v1
.end method

.method public static final discardUntilDelimiterImpl(Lio/ktor/utils/io/core/Buffer;B)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {p0}, Lio/ktor/utils/io/core/ByteBuffersKt;->hasArray(Lio/ktor/utils/io/core/Buffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {p0, p1}, Lio/ktor/utils/io/core/ScannerJVMKt;->discardUntilDelimiterImplArrays(Lio/ktor/utils/io/core/Buffer;B)I

    move-result p0

    return p0

    .line 10
    :cond_0
    invoke-static {p0, p1}, Lio/ktor/utils/io/core/ScannerKt;->discardUntilDelimiterImplMemory(Lio/ktor/utils/io/core/Buffer;B)I

    move-result p0

    return p0
.end method

.method private static final discardUntilDelimiterImplArrays(Lio/ktor/utils/io/core/Buffer;B)I
    .locals 5

    .line 16
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 18
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v0

    add-int/2addr v2, v0

    .line 258
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3

    sub-int/2addr v0, v3

    add-int/2addr v0, v2

    .line 21
    array-length v3, v1

    if-gt v0, v3, :cond_0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 23
    aget-byte v4, v1, v3

    if-eq v4, p1, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 28
    :cond_1
    invoke-virtual {p0, v3}, Lio/ktor/utils/io/core/Buffer;->discardUntilIndex$ktor_io(I)V

    sub-int/2addr v3, v2

    return v3
.end method

.method public static final discardUntilDelimitersImpl(Lio/ktor/utils/io/core/Buffer;BB)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {p0}, Lio/ktor/utils/io/core/ByteBuffersKt;->hasArray(Lio/ktor/utils/io/core/Buffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/ScannerJVMKt;->discardUntilDelimitersImplArrays(Lio/ktor/utils/io/core/Buffer;BB)I

    move-result p0

    return p0

    .line 37
    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/ScannerKt;->discardUntilDelimitersImplMemory(Lio/ktor/utils/io/core/Buffer;BB)I

    move-result p0

    return p0
.end method

.method private static final discardUntilDelimitersImplArrays(Lio/ktor/utils/io/core/Buffer;BB)I
    .locals 5

    .line 43
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 45
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v0

    add-int/2addr v2, v0

    .line 259
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3

    sub-int/2addr v0, v3

    add-int/2addr v0, v2

    .line 48
    array-length v3, v1

    if-gt v0, v3, :cond_1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 50
    aget-byte v4, v1, v3

    if-eq v4, p1, :cond_2

    if-ne v4, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 56
    :cond_2
    :goto_1
    invoke-virtual {p0, v3}, Lio/ktor/utils/io/core/Buffer;->discardUntilIndex$ktor_io(I)V

    sub-int/2addr v3, v2

    return v3
.end method

.method public static final readUntilDelimiterArrays(Lio/ktor/utils/io/core/Buffer;BLio/ktor/utils/io/core/Output;)I
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 338
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3

    add-int/2addr v2, v3

    .line 339
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v0

    add-int/2addr v3, v0

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 343
    invoke-static {p2, v4, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    const/4 v5, 0x0

    .line 346
    :goto_0
    :try_start_0
    move-object v6, v0

    check-cast v6, Lio/ktor/utils/io/core/Buffer;

    .line 349
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v7

    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/2addr v7, v2

    .line 348
    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 350
    array-length v8, v1

    if-gt v7, v8, :cond_1

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_2

    .line 352
    aget-byte v9, v1, v8

    if-ne v9, p1, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    move v8, v2

    :cond_2
    :goto_2
    sub-int v7, v8, v2

    .line 359
    const-string v9, "array"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v1, v2, v7}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeFully(Lio/ktor/utils/io/core/Buffer;[BII)V

    add-int/2addr v5, v7

    .line 363
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v2

    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v6

    if-le v2, v6, :cond_3

    goto :goto_3

    :cond_3
    if-ge v8, v3, :cond_4

    .line 364
    invoke-static {p2, v4, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v8

    goto :goto_0

    .line 367
    :cond_4
    :goto_3
    invoke-virtual {p2}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 370
    invoke-virtual {p0, v8}, Lio/ktor/utils/io/core/Buffer;->discardUntilIndex$ktor_io(I)V

    return v5

    :catchall_0
    move-exception p0

    .line 367
    invoke-virtual {p2}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw p0
.end method

.method private static final readUntilDelimiterArrays(Lio/ktor/utils/io/core/Buffer;B[BII)I
    .locals 4

    .line 82
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 84
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v1

    .line 276
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v2

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3

    sub-int/2addr v2, v3

    .line 87
    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 277
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 278
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int/2addr v1, v3

    .line 280
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    add-int/2addr p4, v1

    .line 281
    array-length v0, v2

    if-gt p4, v0, :cond_1

    move v0, v1

    :goto_0
    if-ge v0, p4, :cond_2

    .line 283
    aget-byte v3, v2, v0

    if-ne v3, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    sub-int/2addr v0, v1

    .line 289
    invoke-static {v2, v1, p2, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    return v0
.end method

.method public static final readUntilDelimiterDirect(Lio/ktor/utils/io/core/Buffer;BLio/ktor/utils/io/core/Output;)I
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v0

    .line 323
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v1

    .line 324
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v2

    :goto_0
    if-eq v0, v1, :cond_1

    .line 327
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    if-ne v3, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result p1

    sub-int/2addr v0, p1

    .line 334
    invoke-static {p2, p0, v0}, Lio/ktor/utils/io/core/OutputKt;->writeFully(Lio/ktor/utils/io/core/Output;Lio/ktor/utils/io/core/Buffer;I)V

    return v0
.end method

.method private static final readUntilDelimiterDirect(Lio/ktor/utils/io/core/Buffer;B[BII)I
    .locals 4

    .line 260
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v0

    .line 261
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v1

    add-int/2addr p4, v0

    invoke-static {v1, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 262
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v1

    move v2, v0

    :goto_0
    if-ge v2, p4, :cond_1

    .line 265
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    if-ne v3, p1, :cond_0

    move p4, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sub-int/2addr p4, v0

    .line 273
    invoke-static {v1, p2, v0, p4, p3}, Lio/ktor/utils/io/bits/MemoryJvmKt;->copyTo-9zorpBc(Ljava/nio/ByteBuffer;[BIII)V

    .line 76
    invoke-virtual {p0, p4}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    return p4
.end method

.method public static final readUntilDelimiterImpl(Lio/ktor/utils/io/core/Buffer;BLio/ktor/utils/io/core/Output;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-static {p0}, Lio/ktor/utils/io/core/ByteBuffersKt;->hasArray(Lio/ktor/utils/io/core/Buffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/ScannerJVMKt;->readUntilDelimiterArrays(Lio/ktor/utils/io/core/Buffer;BLio/ktor/utils/io/core/Output;)I

    move-result p0

    return p0

    .line 150
    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/ScannerJVMKt;->readUntilDelimiterDirect(Lio/ktor/utils/io/core/Buffer;BLio/ktor/utils/io/core/Output;)I

    move-result p0

    return p0
.end method

.method public static final readUntilDelimiterImpl(Lio/ktor/utils/io/core/Buffer;B[BII)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    array-length v0, p2

    .line 66
    invoke-static {p0}, Lio/ktor/utils/io/core/ByteBuffersKt;->hasArray(Lio/ktor/utils/io/core/Buffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/core/ScannerJVMKt;->readUntilDelimiterArrays(Lio/ktor/utils/io/core/Buffer;B[BII)I

    move-result p0

    return p0

    .line 69
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/core/ScannerJVMKt;->readUntilDelimiterDirect(Lio/ktor/utils/io/core/Buffer;B[BII)I

    move-result p0

    return p0
.end method

.method public static final readUntilDelimitersArrays(Lio/ktor/utils/io/core/Buffer;BBLio/ktor/utils/io/core/Output;)I
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 388
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3

    add-int/2addr v2, v3

    .line 389
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v0

    add-int/2addr v3, v0

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 393
    invoke-static {p3, v4, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    const/4 v5, 0x0

    .line 396
    :goto_0
    :try_start_0
    move-object v6, v0

    check-cast v6, Lio/ktor/utils/io/core/Buffer;

    .line 399
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v7

    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/2addr v7, v2

    .line 398
    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 400
    array-length v8, v1

    if-gt v7, v8, :cond_1

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_2

    .line 402
    aget-byte v9, v1, v8

    if-eq v9, p1, :cond_2

    if-ne v9, p2, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    move v8, v2

    :cond_2
    :goto_2
    sub-int v7, v8, v2

    .line 409
    const-string v9, "array"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v1, v2, v7}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeFully(Lio/ktor/utils/io/core/Buffer;[BII)V

    add-int/2addr v5, v7

    .line 413
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v2

    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v6

    if-le v2, v6, :cond_3

    goto :goto_3

    :cond_3
    if-ge v8, v3, :cond_4

    .line 414
    invoke-static {p3, v4, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v8

    goto :goto_0

    .line 417
    :cond_4
    :goto_3
    invoke-virtual {p3}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 420
    invoke-virtual {p0, v8}, Lio/ktor/utils/io/core/Buffer;->discardUntilIndex$ktor_io(I)V

    return v5

    :catchall_0
    move-exception p0

    .line 417
    invoke-virtual {p3}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw p0
.end method

.method private static final readUntilDelimitersArrays(Lio/ktor/utils/io/core/Buffer;BB[BII)I
    .locals 4

    .line 134
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v1

    .line 307
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v2

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3

    sub-int/2addr v2, v3

    .line 139
    invoke-static {p5, v2}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 308
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 309
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int/2addr v1, v3

    .line 311
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result p5

    add-int/2addr p5, v1

    .line 312
    array-length v0, v2

    if-gt p5, v0, :cond_1

    move v0, v1

    :goto_0
    if-ge v0, p5, :cond_2

    .line 314
    aget-byte v3, v2, v0

    if-eq v3, p1, :cond_2

    if-ne v3, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    sub-int/2addr v0, v1

    .line 320
    invoke-static {v2, v1, p3, p4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    return v0
.end method

.method public static final readUntilDelimitersDirect(Lio/ktor/utils/io/core/Buffer;BBLio/ktor/utils/io/core/Output;)I
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v0

    .line 373
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v1

    .line 374
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v2

    :goto_0
    if-eq v0, v1, :cond_1

    .line 377
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    if-eq v3, p1, :cond_1

    if-ne v3, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 383
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result p1

    sub-int/2addr v0, p1

    .line 384
    invoke-static {p3, p0, v0}, Lio/ktor/utils/io/core/OutputKt;->writeFully(Lio/ktor/utils/io/core/Output;Lio/ktor/utils/io/core/Buffer;I)V

    return v0
.end method

.method private static final readUntilDelimitersDirect(Lio/ktor/utils/io/core/Buffer;BB[BII)I
    .locals 4

    .line 291
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v0

    .line 292
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v1

    add-int/2addr p5, v0

    invoke-static {v1, p5}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 293
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v1

    move v2, v0

    :goto_0
    if-ge v2, p5, :cond_2

    .line 296
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    if-eq v3, p1, :cond_1

    if-ne v3, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move p5, v2

    :cond_2
    sub-int/2addr p5, v0

    .line 304
    invoke-static {v1, p3, v0, p5, p4}, Lio/ktor/utils/io/bits/MemoryJvmKt;->copyTo-9zorpBc(Ljava/nio/ByteBuffer;[BIII)V

    .line 122
    invoke-virtual {p0, p5}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    return p5
.end method

.method public static final readUntilDelimitersImpl(Lio/ktor/utils/io/core/Buffer;BBLio/ktor/utils/io/core/Output;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-static {p0}, Lio/ktor/utils/io/core/ByteBuffersKt;->hasArray(Lio/ktor/utils/io/core/Buffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/ScannerJVMKt;->readUntilDelimitersArrays(Lio/ktor/utils/io/core/Buffer;BBLio/ktor/utils/io/core/Output;)I

    move-result p0

    return p0

    .line 171
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/ScannerJVMKt;->readUntilDelimitersDirect(Lio/ktor/utils/io/core/Buffer;BBLio/ktor/utils/io/core/Output;)I

    move-result p0

    return p0
.end method

.method public static final readUntilDelimitersImpl(Lio/ktor/utils/io/core/Buffer;BB[BII)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    array-length v0, p3

    .line 106
    invoke-static {p0}, Lio/ktor/utils/io/core/ByteBuffersKt;->hasArray(Lio/ktor/utils/io/core/Buffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static/range {p0 .. p5}, Lio/ktor/utils/io/core/ScannerJVMKt;->readUntilDelimitersArrays(Lio/ktor/utils/io/core/Buffer;BB[BII)I

    move-result p0

    return p0

    .line 109
    :cond_0
    invoke-static/range {p0 .. p5}, Lio/ktor/utils/io/core/ScannerJVMKt;->readUntilDelimitersDirect(Lio/ktor/utils/io/core/Buffer;BB[BII)I

    move-result p0

    return p0
.end method
