.class public final Lio/ktor/websocket/internals/DeflaterUtilsKt;
.super Ljava/lang/Object;
.source "DeflaterUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeflaterUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeflaterUtils.kt\nio/ktor/websocket/internals/DeflaterUtilsKt\n+ 2 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n+ 3 Pool.kt\nio/ktor/utils/io/pool/PoolKt\n*L\n1#1,85:1\n12#2,7:86\n19#2,4:98\n12#2,11:102\n12#2,7:113\n19#2,4:125\n159#3,5:93\n159#3,5:120\n*S KotlinDebug\n*F\n+ 1 DeflaterUtils.kt\nio/ktor/websocket/internals/DeflaterUtilsKt\n*L\n19#1:86,7\n19#1:98,4\n35#1:102,11\n45#1:113,7\n45#1:125,4\n20#1:93,5\n46#1:120,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0003\u001a\u00020\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0001H\u0000\u001a$\u0010\u0006\u001a\u00020\u0007*\u00020\u00082\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0002\u001a\u0014\u0010\u000e\u001a\u00020\u0001*\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u0001H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "EMPTY_CHUNK",
        "",
        "PADDED_EMPTY_CHUNK",
        "deflateFully",
        "Ljava/util/zip/Deflater;",
        "data",
        "deflateTo",
        "",
        "Lio/ktor/utils/io/core/BytePacketBuilder;",
        "deflater",
        "buffer",
        "Ljava/nio/ByteBuffer;",
        "flush",
        "",
        "inflateFully",
        "Ljava/util/zip/Inflater;",
        "ktor-websockets"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final EMPTY_CHUNK:[B

.field private static final PADDED_EMPTY_CHUNK:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    .line 13
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lio/ktor/websocket/internals/DeflaterUtilsKt;->PADDED_EMPTY_CHUNK:[B

    const/4 v0, 0x4

    .line 14
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lio/ktor/websocket/internals/DeflaterUtilsKt;->EMPTY_CHUNK:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public static final deflateFully(Ljava/util/zip/Deflater;[B)[B
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p1}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 90
    new-instance p1, Lio/ktor/utils/io/core/BytePacketBuilder;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v0}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    :try_start_0
    invoke-static {}, Lio/ktor/util/cio/ByteBufferPoolKt;->getKtorDefaultPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v2

    .line 93
    invoke-interface {v2}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 95
    :try_start_1
    move-object v4, v3

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 21
    :goto_0
    invoke-virtual {p0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 22
    invoke-static {p1, p0, v4, v6}, Lio/ktor/websocket/internals/DeflaterUtilsKt;->deflateTo(Lio/ktor/utils/io/core/BytePacketBuilder;Ljava/util/zip/Deflater;Ljava/nio/ByteBuffer;Z)I

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {p1, p0, v4, v1}, Lio/ktor/websocket/internals/DeflaterUtilsKt;->deflateTo(Lio/ktor/utils/io/core/BytePacketBuilder;Ljava/util/zip/Deflater;Ljava/nio/ByteBuffer;Z)I

    move-result v5

    if-nez v5, :cond_0

    .line 26
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    :try_start_2
    invoke-interface {v2, v3}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p1}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 29
    sget-object p1, Lio/ktor/websocket/internals/DeflaterUtilsKt;->PADDED_EMPTY_CHUNK:[B

    invoke-static {p0, p1}, Lio/ktor/websocket/internals/BytePacketUtilsKt;->endsWith(Lio/ktor/utils/io/core/ByteReadPacket;[B)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 30
    invoke-virtual {p0}, Lio/ktor/utils/io/core/ByteReadPacket;->getRemaining()J

    move-result-wide v0

    long-to-int p1, v0

    sget-object v0, Lio/ktor/websocket/internals/DeflaterUtilsKt;->EMPTY_CHUNK:[B

    array-length v0, v0

    sub-int/2addr p1, v0

    invoke-static {p0, p1}, Lio/ktor/utils/io/core/StringsKt;->readBytes(Lio/ktor/utils/io/core/ByteReadPacket;I)[B

    move-result-object p1

    .line 31
    invoke-virtual {p0}, Lio/ktor/utils/io/core/ByteReadPacket;->release()V

    return-object p1

    .line 106
    :cond_1
    new-instance p1, Lio/ktor/utils/io/core/BytePacketBuilder;

    invoke-direct {p1, v0, v1, v0}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 36
    :try_start_3
    invoke-virtual {p1, p0}, Lio/ktor/utils/io/core/BytePacketBuilder;->writePacket(Lio/ktor/utils/io/core/ByteReadPacket;)V

    .line 37
    invoke-virtual {p1, v6}, Lio/ktor/utils/io/core/BytePacketBuilder;->writeByte(B)V

    .line 109
    invoke-virtual {p1}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 38
    invoke-static {p0, v6, v1, v0}, Lio/ktor/utils/io/core/StringsKt;->readBytes$default(Lio/ktor/utils/io/core/ByteReadPacket;IILjava/lang/Object;)[B

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 111
    invoke-virtual {p1}, Lio/ktor/utils/io/core/BytePacketBuilder;->release()V

    .line 112
    throw p0

    :catchall_1
    move-exception p0

    .line 97
    :try_start_4
    invoke-interface {v2, v3}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    .line 100
    invoke-virtual {p1}, Lio/ktor/utils/io/core/BytePacketBuilder;->release()V

    .line 101
    throw p0
.end method

.method private static final deflateTo(Lio/ktor/utils/io/core/BytePacketBuilder;Ljava/util/zip/Deflater;Ljava/nio/ByteBuffer;Z)I
    .locals 3

    .line 67
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    if-eqz p3, :cond_0

    .line 70
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p1, p3, v0, v1, v2}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result p1

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p1, p3, v0, v1}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result p1

    :goto_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 79
    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p3

    add-int/2addr p3, p1

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 80
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 81
    check-cast p0, Lio/ktor/utils/io/core/Output;

    invoke-static {p0, p2}, Lio/ktor/utils/io/core/OutputArraysJVMKt;->writeFully(Lio/ktor/utils/io/core/Output;Ljava/nio/ByteBuffer;)V

    return p1
.end method

.method public static final inflateFully(Ljava/util/zip/Inflater;[B)[B
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lio/ktor/websocket/internals/DeflaterUtilsKt;->EMPTY_CHUNK:[B

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    .line 43
    invoke-virtual {p0, p1}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 117
    new-instance v0, Lio/ktor/utils/io/core/BytePacketBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 46
    :try_start_0
    invoke-static {}, Lio/ktor/util/cio/ByteBufferPoolKt;->getKtorDefaultPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v3

    .line 120
    invoke-interface {v3}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 122
    :try_start_1
    move-object v5, v4

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 47
    array-length p1, p1

    int-to-long v6, p1

    invoke-virtual {p0}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 48
    :goto_0
    invoke-virtual {p0}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v8

    cmp-long p1, v8, v6

    if-gez p1, :cond_0

    .line 49
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 50
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    invoke-virtual {p0, p1, v8, v9}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result p1

    .line 51
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, p1

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 52
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 54
    move-object p1, v0

    check-cast p1, Lio/ktor/utils/io/core/Output;

    invoke-static {p1, v5}, Lio/ktor/utils/io/core/OutputArraysJVMKt;->writeFully(Lio/ktor/utils/io/core/Output;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 56
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :try_start_2
    invoke-interface {v3, v4}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 125
    invoke-virtual {v0}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p1, 0x0

    .line 59
    invoke-static {p0, p1, v2, v1}, Lio/ktor/utils/io/core/StringsKt;->readBytes$default(Lio/ktor/utils/io/core/ByteReadPacket;IILjava/lang/Object;)[B

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 124
    :try_start_3
    invoke-interface {v3, v4}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 127
    invoke-virtual {v0}, Lio/ktor/utils/io/core/BytePacketBuilder;->release()V

    .line 128
    throw p0
.end method
