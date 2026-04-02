.class public final Lio/ktor/utils/io/nio/ChannelsKt;
.super Ljava/lang/Object;
.source "Channels.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.kt\nio/ktor/utils/io/nio/ChannelsKt\n+ 2 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n+ 3 PacketDirect.kt\nio/ktor/utils/io/core/PacketDirectKt\n+ 4 BufferUtilsJvm.kt\nio/ktor/utils/io/core/BufferUtilsJvmKt\n+ 5 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 7 Packet.kt\nio/ktor/utils/io/core/PacketKt\n+ 8 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 9 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n*L\n1#1,165:1\n12#2,11:166\n8#3,9:177\n18#3,11:203\n95#4,5:186\n100#4,3:196\n104#4:200\n44#4:217\n45#4:219\n46#4,14:221\n372#5,5:191\n377#5,2:201\n390#5,7:236\n372#5,7:244\n1#6:199\n1#6:215\n1#6:220\n39#7:214\n74#8:216\n74#8:218\n74#8:235\n21#9:243\n21#9:251\n*S KotlinDebug\n*F\n+ 1 Channels.kt\nio/ktor/utils/io/nio/ChannelsKt\n*L\n15#1:166,11\n35#1:177,9\n35#1:203,11\n36#1:186,5\n36#1:196,3\n36#1:200\n95#1:217\n95#1:219\n95#1:221,14\n36#1:191,5\n36#1:201,2\n124#1:236,7\n149#1:244,7\n36#1:199\n95#1:220\n41#1:214\n85#1:216\n95#1:218\n122#1:235\n137#1:243\n160#1:251\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u001a3\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0007\u001a\u0012\u0010\u000b\u001a\u00020\u000c*\u00020\u00022\u0006\u0010\r\u001a\u00020\u000e\u001a\u0012\u0010\u000f\u001a\u00020\u000c*\u00020\u00022\u0006\u0010\r\u001a\u00020\u000e\u001a\u0012\u0010\u0010\u001a\u00020\u000c*\u00020\u00022\u0006\u0010\r\u001a\u00020\u000e\u001a\u001c\u0010\u0011\u001a\u00020\u000c*\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u000eH\u0002\u001a3\u0010\u0014\u001a\u00020\u0001*\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0018\u0010\u0019\u001a\u0014\u0010\u0014\u001a\u00020\u0001*\u00020\u00152\u0006\u0010\t\u001a\u00020\nH\u0007\u001a%\u0010\u001a\u001a\u0004\u0018\u00010\u000c*\u00020\u00152\u0017\u0010\u001b\u001a\u0013\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001e0\u001c\u00a2\u0006\u0002\u0008\u001f\u001a\u0012\u0010\u001a\u001a\u00020 *\u00020\u00152\u0006\u0010!\u001a\u00020\u000c\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\""
    }
    d2 = {
        "read",
        "",
        "Ljava/nio/channels/ReadableByteChannel;",
        "destination",
        "Lio/ktor/utils/io/bits/Memory;",
        "destinationOffset",
        "maxLength",
        "read-UAd2zVI",
        "(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;II)I",
        "buffer",
        "Lio/ktor/utils/io/core/Buffer;",
        "readPacketAtLeast",
        "Lio/ktor/utils/io/core/ByteReadPacket;",
        "n",
        "",
        "readPacketAtMost",
        "readPacketExact",
        "readPacketImpl",
        "min",
        "max",
        "write",
        "Ljava/nio/channels/WritableByteChannel;",
        "source",
        "sourceOffset",
        "write-UAd2zVI",
        "(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;II)I",
        "writePacket",
        "builder",
        "Lkotlin/Function1;",
        "Lio/ktor/utils/io/core/BytePacketBuilder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "",
        "p",
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
.method public static final read(Ljava/nio/channels/ReadableByteChannel;Lio/ktor/utils/io/core/Buffer;)I
    .locals 3
    .annotation runtime Lkotlin/Deprecated;
        message = "Use read(Memory) instead."
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v0

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 240
    :cond_0
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v1

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v2

    sub-int/2addr v2, v1

    .line 125
    invoke-static {v0, v1, v2}, Lio/ktor/utils/io/bits/MemoryJvmKt;->sliceSafe(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    return v0

    .line 241
    :cond_1
    invoke-virtual {p1, p0}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    return p0
.end method

.method public static final read-UAd2zVI(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;II)I
    .locals 1

    const-string v0, "$this$read"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-static {p1, p2, p3}, Lio/ktor/utils/io/bits/MemoryJvmKt;->sliceSafe(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 140
    invoke-interface {p0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public static synthetic read-UAd2zVI$default(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;IIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 243
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p3

    sub-int/2addr p3, p2

    .line 134
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/nio/ChannelsKt;->read-UAd2zVI(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method

.method public static final readPacketAtLeast(Ljava/nio/channels/ReadableByteChannel;J)Lio/ktor/utils/io/core/ByteReadPacket;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 59
    invoke-static {p0, p1, p2, v0, v1}, Lio/ktor/utils/io/nio/ChannelsKt;->readPacketImpl(Ljava/nio/channels/ReadableByteChannel;JJ)Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object p0

    return-object p0
.end method

.method public static final readPacketAtMost(Ljava/nio/channels/ReadableByteChannel;J)Lio/ktor/utils/io/core/ByteReadPacket;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x1

    .line 65
    invoke-static {p0, v0, v1, p1, p2}, Lio/ktor/utils/io/nio/ChannelsKt;->readPacketImpl(Ljava/nio/channels/ReadableByteChannel;JJ)Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object p0

    return-object p0
.end method

.method public static final readPacketExact(Ljava/nio/channels/ReadableByteChannel;J)Lio/ktor/utils/io/core/ByteReadPacket;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {p0, p1, p2, p1, p2}, Lio/ktor/utils/io/nio/ChannelsKt;->readPacketImpl(Ljava/nio/channels/ReadableByteChannel;JJ)Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object p0

    return-object p0
.end method

.method private static final readPacketImpl(Ljava/nio/channels/ReadableByteChannel;JJ)Lio/ktor/utils/io/core/ByteReadPacket;
    .locals 18

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_d

    cmp-long v7, v0, v2

    if-gtz v7, :cond_c

    cmp-long v7, v2, v4

    if-nez v7, :cond_0

    .line 72
    sget-object v0, Lio/ktor/utils/io/core/ByteReadPacket;->Companion:Lio/ktor/utils/io/core/ByteReadPacket$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/ByteReadPacket$Companion;->getEmpty()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    sget-object v7, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v7}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v7

    .line 75
    sget-object v8, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v8}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v8

    move-object v9, v8

    move-object v10, v9

    :goto_0
    cmp-long v11, v4, v0

    if-ltz v11, :cond_2

    if-nez v11, :cond_1

    if-nez v6, :cond_1

    goto :goto_1

    .line 113
    :cond_1
    new-instance v0, Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-direct {v0, v9, v7}, Lio/ktor/utils/io/core/ByteReadPacket;-><init>(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/pool/ObjectPool;)V

    return-object v0

    :cond_2
    :goto_1
    sub-long v11, v2, v4

    const-wide/32 v13, 0x7fffffff

    .line 83
    :try_start_0
    invoke-static {v11, v12, v13, v14}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v11

    long-to-int v11, v11

    .line 85
    move-object v12, v10

    check-cast v12, Lio/ktor/utils/io/core/Buffer;

    .line 216
    invoke-virtual {v12}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v13

    invoke-virtual {v12}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v12

    sub-int/2addr v13, v12

    const/16 v12, 0xc8

    if-gt v13, v12, :cond_4

    if-lt v13, v11, :cond_3

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    move-object v12, v10

    :goto_3
    if-nez v12, :cond_6

    .line 85
    invoke-interface {v7}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    if-ne v9, v8, :cond_5

    move-object v9, v13

    move-object v10, v9

    :cond_5
    check-cast v12, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    :cond_6
    if-eq v10, v12, :cond_7

    .line 91
    invoke-virtual {v10, v12}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->setNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v10, v12

    .line 217
    :cond_7
    :try_start_1
    move-object v13, v12

    check-cast v13, Lio/ktor/utils/io/core/Buffer;

    .line 218
    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v14

    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v13

    sub-int/2addr v14, v13

    const/4 v13, 0x1

    if-gt v13, v14, :cond_b

    .line 221
    invoke-virtual {v12}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 222
    invoke-virtual {v12}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v13

    move/from16 v16, v6

    .line 223
    invoke-virtual {v12}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getLimit()I

    move-result v6

    .line 224
    invoke-virtual {v15, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 225
    invoke-virtual {v15, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 96
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    move-object/from16 v17, v8

    .line 97
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-le v8, v11, :cond_8

    .line 98
    :try_start_2
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v11

    invoke-virtual {v15, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_8
    move-object/from16 v8, p0

    .line 101
    :try_start_3
    invoke-interface {v8, v15}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v11

    const/4 v8, -0x1

    if-eq v11, v8, :cond_a

    .line 104
    invoke-virtual {v15, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v6, v9

    int-to-long v8, v11

    add-long/2addr v4, v8

    .line 229
    :try_start_4
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    sub-int/2addr v8, v13

    if-ltz v8, :cond_9

    if-gt v8, v14, :cond_9

    .line 232
    invoke-virtual {v12, v8}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->commitWritten(I)V

    move-object v9, v6

    move/from16 v6, v16

    move-object/from16 v8, v17

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x1

    .line 230
    invoke-static {v8, v0}, Lio/ktor/utils/io/internal/jvm/ErrorsKt;->wrongBufferPositionChangeError(II)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_a
    move-object v6, v9

    .line 102
    new-instance v2, Ljava/io/EOFException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Premature end of stream: was read "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    move-object v6, v9

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is greater than buffer\'s remaining capacity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    move-object v9, v6

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v6, v9

    goto :goto_4

    :catchall_2
    move-exception v0

    .line 109
    :goto_4
    move-object v1, v9

    check-cast v1, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    invoke-static {v9, v7}, Lio/ktor/utils/io/core/BuffersKt;->releaseAll(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/pool/ObjectPool;)V

    .line 110
    throw v0

    .line 70
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "min shouldn\'t be greater than max: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "min shouldn\'t be negative: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final write(Ljava/nio/channels/WritableByteChannel;Lio/ktor/utils/io/core/Buffer;)I
    .locals 3
    .annotation runtime Lkotlin/Deprecated;
        message = "Use write(Memory) instead."
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v1

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v2

    sub-int/2addr v2, v1

    .line 150
    invoke-static {v0, v1, v2}, Lio/ktor/utils/io/bits/MemoryJvmKt;->sliceSafe(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p0

    .line 249
    invoke-virtual {p1, p0}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    return p0
.end method

.method public static final write-UAd2zVI(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;II)I
    .locals 1

    const-string v0, "$this$write"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-static {p1, p2, p3}, Lio/ktor/utils/io/bits/MemoryJvmKt;->sliceSafe(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 163
    invoke-interface {p0, p1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public static synthetic write-UAd2zVI$default(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;IIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 251
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p3

    sub-int/2addr p3, p2

    .line 157
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/nio/ChannelsKt;->write-UAd2zVI(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method

.method public static final writePacket(Ljava/nio/channels/WritableByteChannel;Lkotlin/jvm/functions/Function1;)Lio/ktor/utils/io/core/ByteReadPacket;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/WritableByteChannel;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/utils/io/core/BytePacketBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/utils/io/core/ByteReadPacket;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    new-instance v0, Lio/ktor/utils/io/core/BytePacketBuilder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 172
    :try_start_0
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-virtual {v0}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    invoke-static {p0, p1}, Lio/ktor/utils/io/nio/ChannelsKt;->writePacket(Ljava/nio/channels/WritableByteChannel;Lio/ktor/utils/io/core/ByteReadPacket;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    return-object v2

    :cond_0
    return-object p1

    :catchall_0
    move-exception p0

    .line 19
    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteReadPacket;->release()V

    .line 20
    throw p0

    :catchall_1
    move-exception p0

    .line 175
    invoke-virtual {v0}, Lio/ktor/utils/io/core/BytePacketBuilder;->release()V

    .line 176
    throw p0
.end method

.method public static final writePacket(Ljava/nio/channels/WritableByteChannel;Lio/ktor/utils/io/core/ByteReadPacket;)Z
    .locals 10

    const-string v0, "Buffer\'s position shouldn\'t be rewinded"

    const-string v1, "<this>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "p"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    :cond_0
    :try_start_0
    move-object v1, p1

    check-cast v1, Lio/ktor/utils/io/core/Input;

    const/4 v2, 0x1

    .line 182
    invoke-virtual {v1, v2}, Lio/ktor/utils/io/core/Input;->prepareRead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 183
    invoke-virtual {v3}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 185
    :try_start_1
    move-object v5, v3

    check-cast v5, Lio/ktor/utils/io/core/Buffer;

    .line 195
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v7

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v8

    sub-int/2addr v8, v7

    .line 196
    invoke-static {v6, v7, v8}, Lio/ktor/utils/io/bits/Memory;->slice-87lwejk(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 37
    invoke-interface {p0, v6}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 198
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    if-ne v9, v8, :cond_4

    .line 200
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 201
    invoke-virtual {v5, v6}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    :try_start_2
    invoke-virtual {v3}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v5

    if-lt v5, v4, :cond_3

    .line 207
    invoke-virtual {v3}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v4

    if-ne v5, v4, :cond_1

    .line 208
    invoke-virtual {v1, v3}, Lio/ktor/utils/io/core/Input;->ensureNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    goto :goto_0

    .line 210
    :cond_1
    invoke-virtual {v1, v5}, Lio/ktor/utils/io/core/Input;->setHeadPosition(I)V

    .line 214
    :goto_0
    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteReadPacket;->getEndOfInput()Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    if-nez v7, :cond_0

    const/4 p0, 0x0

    return p0

    .line 205
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 198
    :cond_4
    :try_start_3
    const-string p0, "Buffer\'s limit change is not allowed"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    .line 203
    :try_start_4
    invoke-virtual {v3}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v2

    if-lt v2, v4, :cond_6

    .line 207
    invoke-virtual {v3}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v0

    if-ne v2, v0, :cond_5

    .line 208
    invoke-virtual {v1, v3}, Lio/ktor/utils/io/core/Input;->ensureNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    goto :goto_1

    .line 210
    :cond_5
    invoke-virtual {v1, v2}, Lio/ktor/utils/io/core/Input;->setHeadPosition(I)V

    :goto_1
    throw p0

    .line 205
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 182
    :cond_7
    invoke-static {v2}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 45
    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteReadPacket;->release()V

    .line 46
    throw p0
.end method
