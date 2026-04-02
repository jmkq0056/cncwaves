.class public abstract Lio/ktor/utils/io/core/Output;
.super Ljava/lang/Object;
.source "Output.kt"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOutput.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Output.kt\nio/ktor/utils/io/core/Output\n+ 2 Buffers.kt\nio/ktor/utils/io/core/BuffersKt\n+ 3 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Numbers.kt\nio/ktor/utils/io/core/internal/NumbersKt\n+ 6 Memory.kt\nio/ktor/utils/io/bits/MemoryKt\n+ 7 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 8 UTF8.kt\nio/ktor/utils/io/core/internal/UTF8Kt\n+ 9 Input.kt\nio/ktor/utils/io/core/Input\n+ 10 PacketDirect.kt\nio/ktor/utils/io/core/PacketDirectKt\n*L\n1#1,576:1\n371#1,3:622\n374#1:653\n376#1,3:655\n55#1:708\n35#2,6:577\n41#2,3:584\n69#3:583\n69#3:588\n69#3:658\n69#3:659\n59#3:660\n74#3:661\n74#3:662\n59#3:663\n1#4:587\n1#4:654\n6#5,2:589\n99#6:591\n99#6:603\n99#6:634\n37#7,2:592\n37#7,2:597\n37#7,2:628\n319#8,3:594\n322#8,4:599\n326#8,18:604\n319#8,3:625\n322#8,4:630\n326#8,18:635\n77#9:664\n77#9:686\n8#10,21:665\n8#10,21:687\n*S KotlinDebug\n*F\n+ 1 Output.kt\nio/ktor/utils/io/core/Output\n*L\n176#1:622,3\n176#1:653\n176#1:655,3\n355#1:708\n65#1:577,6\n65#1:584,3\n66#1:583\n100#1:588\n237#1:658\n238#1:659\n242#1:660\n242#1:661\n260#1:662\n260#1:663\n176#1:654\n100#1:589,2\n137#1:591\n166#1:603\n177#1:634\n137#1:592,2\n166#1:597,2\n177#1:628,2\n166#1:594,3\n166#1:599,4\n166#1:604,18\n177#1:625,3\n177#1:630,4\n177#1:635,18\n308#1:664\n328#1:686\n313#1:665,21\n333#1:687,21\n*E\n"
.end annotation

.annotation runtime Lkotlin/Deprecated;
    message = "\n    We\'re migrating to the new kotlinx-io library.\n    This declaration is deprecated and will be removed in Ktor 4.0.0\n    If you have any problems with migration, please contact us in \n    https://youtrack.jetbrains.com/issue/KTOR-6030/Migrate-to-new-kotlinx.io-library\n    "
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u0019\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0005\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\u0008\'\u0018\u00002\u00060\u0001j\u0002`\u00022\u00060\u0003j\u0002`\u0004B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0005B\u0013\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\tJ\r\u0010\'\u001a\u00020(H\u0000\u00a2\u0006\u0002\u0008)J\u0008\u0010*\u001a\u00020(H\u0001J\u0010\u0010+\u001a\u00020\u00002\u0006\u0010,\u001a\u00020-H\u0016J\"\u0010+\u001a\u00060\u0001j\u0002`\u00022\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\u000c2\u0006\u00101\u001a\u00020\u000cJ\u0012\u0010+\u001a\u00020\u00002\u0008\u0010,\u001a\u0004\u0018\u000102H\u0016J\"\u0010+\u001a\u00020\u00002\u0008\u0010,\u001a\u0004\u0018\u0001022\u0006\u00103\u001a\u00020\u000c2\u0006\u00104\u001a\u00020\u000cH\u0016J\u0015\u00105\u001a\u00020(2\u0006\u0010\u0011\u001a\u00020\u0008H\u0000\u00a2\u0006\u0002\u00086J \u00107\u001a\u00020(2\u0006\u0010\u0011\u001a\u00020\u00082\u0006\u00108\u001a\u00020\u00082\u0006\u00109\u001a\u00020\u000cH\u0002J\u0010\u0010:\u001a\u00020(2\u0006\u0010;\u001a\u00020-H\u0002J\u0008\u0010<\u001a\u00020\u0008H\u0002J\u0015\u0010=\u001a\u00020(2\u0006\u0010>\u001a\u00020\u0008H\u0000\u00a2\u0006\u0002\u0008?J\u0006\u0010@\u001a\u00020(J\u0008\u0010A\u001a\u00020(H$J\u0006\u0010B\u001a\u00020(J-\u0010B\u001a\u00020(2\u0006\u0010C\u001a\u00020\u001c2\u0006\u0010D\u001a\u00020\u000c2\u0006\u0010E\u001a\u00020\u000cH$\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008F\u0010GJ\u0008\u0010H\u001a\u00020(H\u0002J\u0015\u0010I\u001a\u00020(2\u0006\u0010>\u001a\u00020\u0008H\u0010\u00a2\u0006\u0002\u0008JJ\u0010\u0010K\u001a\u00020\u00082\u0006\u0010L\u001a\u00020\u000cH\u0001J\u0006\u0010M\u001a\u00020(J\u000f\u0010N\u001a\u0004\u0018\u00010\u0008H\u0000\u00a2\u0006\u0002\u0008OJ(\u0010P\u001a\u00020\u000c2\u0006\u0010Q\u001a\u00020\u000c2\u0012\u0010R\u001a\u000e\u0012\u0004\u0012\u00020T\u0012\u0004\u0012\u00020\u000c0SH\u0081\u0008\u00f8\u0001\u0003J\u000e\u0010U\u001a\u00020(2\u0006\u0010V\u001a\u00020WJ\u0010\u0010X\u001a\u00020(2\u0006\u0010V\u001a\u00020WH\u0002J\u0015\u0010Y\u001a\u00020(2\u0006\u0010Z\u001a\u00020\u0008H\u0000\u00a2\u0006\u0002\u0008[J\u000e\u0010\\\u001a\u00020(2\u0006\u0010]\u001a\u00020^J\u0016\u0010\\\u001a\u00020(2\u0006\u0010_\u001a\u00020^2\u0006\u0010L\u001a\u00020\u000cJ\u0016\u0010\\\u001a\u00020(2\u0006\u0010_\u001a\u00020^2\u0006\u0010L\u001a\u00020`J&\u0010a\u001a\u00020(2\u0006\u0010b\u001a\u00020\u00082\u0006\u0010c\u001a\u00020\u00082\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0002J\u0018\u0010d\u001a\u00020(2\u0006\u0010c\u001a\u00020\u00082\u0006\u0010b\u001a\u00020\u0008H\u0002R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\u000c8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u00088@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u000cX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u000e\"\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R%\u0010\u001b\u001a\u00020\u001cX\u0080\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0010\n\u0002\u0010!\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001a\u0010\"\u001a\u00020\u000cX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u000e\"\u0004\u0008$\u0010\u0019R\u0015\u0010%\u001a\u00020\u000c8\u00c0\u0002X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\u000e\u0082\u0002\u0016\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\n\u0005\u0008\u009920\u0001\u00a8\u0006e"
    }
    d2 = {
        "Lio/ktor/utils/io/core/Output;",
        "Ljava/lang/Appendable;",
        "Lkotlin/text/Appendable;",
        "Ljava/io/Closeable;",
        "Lio/ktor/utils/io/core/Closeable;",
        "()V",
        "pool",
        "Lio/ktor/utils/io/pool/ObjectPool;",
        "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
        "(Lio/ktor/utils/io/pool/ObjectPool;)V",
        "_head",
        "_size",
        "",
        "get_size",
        "()I",
        "_tail",
        "chainedSize",
        "head",
        "getHead$ktor_io",
        "()Lio/ktor/utils/io/core/internal/ChunkBuffer;",
        "getPool",
        "()Lio/ktor/utils/io/pool/ObjectPool;",
        "tailEndExclusive",
        "getTailEndExclusive$ktor_io",
        "setTailEndExclusive$ktor_io",
        "(I)V",
        "tailInitialPosition",
        "tailMemory",
        "Lio/ktor/utils/io/bits/Memory;",
        "getTailMemory-SK3TCg8$ktor_io",
        "()Ljava/nio/ByteBuffer;",
        "setTailMemory-3GNKZMM$ktor_io",
        "(Ljava/nio/ByteBuffer;)V",
        "Ljava/nio/ByteBuffer;",
        "tailPosition",
        "getTailPosition$ktor_io",
        "setTailPosition$ktor_io",
        "tailRemaining",
        "getTailRemaining$ktor_io",
        "afterBytesStolen",
        "",
        "afterBytesStolen$ktor_io",
        "afterHeadWrite",
        "append",
        "value",
        "",
        "csq",
        "",
        "start",
        "end",
        "",
        "startIndex",
        "endIndex",
        "appendChain",
        "appendChain$ktor_io",
        "appendChainImpl",
        "newTail",
        "chainedSizeDelta",
        "appendCharFallback",
        "c",
        "appendNewChunk",
        "appendSingleChunk",
        "buffer",
        "appendSingleChunk$ktor_io",
        "close",
        "closeDestination",
        "flush",
        "source",
        "offset",
        "length",
        "flush-62zg_DM",
        "(Ljava/nio/ByteBuffer;II)V",
        "flushChain",
        "last",
        "last$ktor_io",
        "prepareWriteHead",
        "n",
        "release",
        "stealAll",
        "stealAll$ktor_io",
        "write",
        "size",
        "block",
        "Lkotlin/Function1;",
        "Lio/ktor/utils/io/core/Buffer;",
        "writeByte",
        "v",
        "",
        "writeByteFallback",
        "writeChunkBuffer",
        "chunkBuffer",
        "writeChunkBuffer$ktor_io",
        "writePacket",
        "packet",
        "Lio/ktor/utils/io/core/ByteReadPacket;",
        "p",
        "",
        "writePacketMerging",
        "tail",
        "foreignStolen",
        "writePacketSlowPrepend",
        "ktor-io"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private _head:Lio/ktor/utils/io/core/internal/ChunkBuffer;

.field private _tail:Lio/ktor/utils/io/core/internal/ChunkBuffer;

.field private chainedSize:I

.field private final pool:Lio/ktor/utils/io/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private tailEndExclusive:I

.field private tailInitialPosition:I

.field private tailMemory:Ljava/nio/ByteBuffer;

.field private tailPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    sget-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/ktor/utils/io/core/Output;-><init>(Lio/ktor/utils/io/pool/ObjectPool;)V

    return-void
.end method

.method public constructor <init>(Lio/ktor/utils/io/pool/ObjectPool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pool"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/ktor/utils/io/core/Output;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    .line 42
    sget-object p1, Lio/ktor/utils/io/bits/Memory;->Companion:Lio/ktor/utils/io/bits/Memory$Companion;

    invoke-virtual {p1}, Lio/ktor/utils/io/bits/Memory$Companion;->getEmpty-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/utils/io/core/Output;->tailMemory:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final appendChainImpl(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;I)V
    .locals 2

    .line 114
    iget-object v0, p0, Lio/ktor/utils/io/core/Output;->_tail:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    if-nez v0, :cond_0

    .line 116
    iput-object p1, p0, Lio/ktor/utils/io/core/Output;->_head:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const/4 p1, 0x0

    .line 117
    iput p1, p0, Lio/ktor/utils/io/core/Output;->chainedSize:I

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v0, p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->setNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 120
    iget p1, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    .line 121
    invoke-virtual {v0, p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->commitWrittenUntilIndex(I)Z

    .line 122
    iget v0, p0, Lio/ktor/utils/io/core/Output;->chainedSize:I

    iget v1, p0, Lio/ktor/utils/io/core/Output;->tailInitialPosition:I

    sub-int/2addr p1, v1

    add-int/2addr v0, p1

    iput v0, p0, Lio/ktor/utils/io/core/Output;->chainedSize:I

    .line 125
    :goto_0
    iput-object p2, p0, Lio/ktor/utils/io/core/Output;->_tail:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 126
    iget p1, p0, Lio/ktor/utils/io/core/Output;->chainedSize:I

    add-int/2addr p1, p3

    iput p1, p0, Lio/ktor/utils/io/core/Output;->chainedSize:I

    .line 127
    invoke-virtual {p2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/utils/io/core/Output;->tailMemory:Ljava/nio/ByteBuffer;

    .line 128
    invoke-virtual {p2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result p1

    iput p1, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    .line 129
    invoke-virtual {p2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result p1

    iput p1, p0, Lio/ktor/utils/io/core/Output;->tailInitialPosition:I

    .line 130
    invoke-virtual {p2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getLimit()I

    move-result p1

    iput p1, p0, Lio/ktor/utils/io/core/Output;->tailEndExclusive:I

    return-void
.end method

.method private final appendCharFallback(C)V
    .locals 8

    const/4 v0, 0x3

    .line 622
    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/Output;->prepareWriteHead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    .line 624
    :try_start_0
    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    .line 177
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    const/4 v4, 0x1

    const/16 v5, 0x80

    if-ltz p1, :cond_0

    if-ge p1, v5, :cond_0

    int-to-byte p1, p1

    .line 628
    invoke-virtual {v2, v3, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move v0, v4

    goto :goto_0

    :cond_0
    const/16 v6, 0x800

    const/4 v7, 0x2

    if-gt v5, p1, :cond_1

    if-ge p1, v6, :cond_1

    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x1f

    or-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    invoke-virtual {v2, v3, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/2addr v3, v4

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v5

    int-to-byte p1, p1

    invoke-virtual {v2, v3, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move v0, v7

    goto :goto_0

    :cond_1
    const/high16 v4, 0x10000

    if-gt v6, p1, :cond_2

    if-ge p1, v4, :cond_2

    shr-int/lit8 v4, p1, 0xc

    and-int/lit8 v4, v4, 0xf

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v3, 0x1

    shr-int/lit8 v6, p1, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v5

    int-to-byte v6, v6

    invoke-virtual {v2, v4, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/2addr v3, v7

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v5

    int-to-byte p1, p1

    invoke-virtual {v2, v3, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_2
    if-gt v4, p1, :cond_3

    const/high16 v4, 0x110000

    if-ge p1, v4, :cond_3

    shr-int/lit8 v4, p1, 0x12

    and-int/lit8 v4, v4, 0x7

    or-int/lit16 v4, v4, 0xf0

    int-to-byte v4, v4

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v3, 0x1

    shr-int/lit8 v6, p1, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v5

    int-to-byte v6, v6

    invoke-virtual {v2, v4, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v3, 0x2

    shr-int/lit8 v6, p1, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v5

    int-to-byte v6, v6

    invoke-virtual {v2, v4, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/2addr v3, v0

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v5

    int-to-byte p1, p1

    invoke-virtual {v2, v3, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/4 v0, 0x4

    .line 178
    :goto_0
    invoke-virtual {v1, v0}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    return-void

    .line 651
    :cond_3
    :try_start_1
    invoke-static {p1}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 657
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw p1
.end method

.method private final appendNewChunk()Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 2

    .line 105
    iget-object v0, p0, Lio/ktor/utils/io/core/Output;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-interface {v0}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const/16 v1, 0x8

    .line 106
    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->reserveEndGap(I)V

    .line 108
    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/Output;->appendSingleChunk$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    return-object v0
.end method

.method private final flushChain()V
    .locals 6

    .line 62
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->stealAll$ktor_io()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v1, v0

    .line 66
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v3

    move-object v4, v1

    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    .line 583
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v5, v4

    .line 66
    invoke-virtual {p0, v2, v3, v5}, Lio/ktor/utils/io/core/Output;->flush-62zg_DM(Ljava/nio/ByteBuffer;II)V

    .line 584
    invoke-virtual {v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 69
    iget-object v1, p0, Lio/ktor/utils/io/core/Output;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-static {v0, v1}, Lio/ktor/utils/io/core/BuffersKt;->releaseAll(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/pool/ObjectPool;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/ktor/utils/io/core/Output;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-static {v0, v2}, Lio/ktor/utils/io/core/BuffersKt;->releaseAll(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/pool/ObjectPool;)V

    throw v1
.end method

.method private final writeByteFallback(B)V
    .locals 1

    .line 145
    invoke-direct {p0}, Lio/ktor/utils/io/core/Output;->appendNewChunk()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->writeByte(B)V

    .line 146
    iget p1, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    return-void
.end method

.method private final writePacketMerging(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/pool/ObjectPool;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            ">;)V"
        }
    .end annotation

    .line 235
    iget v0, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    invoke-virtual {p1, v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->commitWrittenUntilIndex(I)Z

    .line 237
    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .line 658
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v1

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v2

    sub-int/2addr v1, v2

    .line 238
    move-object v2, p2

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .line 659
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 241
    invoke-static {}, Lio/ktor/utils/io/core/PacketJVMKt;->getPACKET_MAX_COPY_SIZE()I

    move-result v4

    const/4 v5, -0x1

    if-ge v3, v4, :cond_0

    .line 660
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v6

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v7

    sub-int/2addr v6, v7

    .line 661
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v7

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    if-gt v3, v6, :cond_0

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    if-ge v1, v4, :cond_1

    .line 249
    invoke-virtual {p2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getStartGap()I

    move-result v4

    if-gt v1, v4, :cond_1

    invoke-static {p2}, Lio/ktor/utils/io/core/internal/ChunkBufferKt;->isExclusivelyOwned(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v5

    :goto_1
    if-ne v3, v5, :cond_2

    if-ne v1, v5, :cond_2

    .line 257
    invoke-virtual {p0, p2}, Lio/ktor/utils/io/core/Output;->appendChain$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    return-void

    :cond_2
    if-eq v1, v5, :cond_6

    if-gt v3, v1, :cond_3

    goto :goto_3

    :cond_3
    if-eq v3, v5, :cond_5

    if-ge v1, v3, :cond_4

    goto :goto_2

    .line 270
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "prep = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", app = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 268
    :cond_5
    :goto_2
    invoke-direct {p0, p2, p1}, Lio/ktor/utils/io/core/Output;->writePacketSlowPrepend(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    return-void

    .line 662
    :cond_6
    :goto_3
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result p1

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v1

    sub-int/2addr p1, v1

    .line 663
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v1

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v3

    sub-int/2addr v1, v3

    add-int/2addr p1, v1

    .line 260
    invoke-static {v0, v2, p1}, Lio/ktor/utils/io/core/BufferAppendKt;->writeBufferAppend(Lio/ktor/utils/io/core/Buffer;Lio/ktor/utils/io/core/Buffer;I)I

    .line 261
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 262
    invoke-virtual {p2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->cleanNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 263
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/Output;->appendChain$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 266
    :cond_7
    invoke-virtual {p2, p3}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->release(Lio/ktor/utils/io/pool/ObjectPool;)V

    return-void
.end method

.method private final writePacketSlowPrepend(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 2

    .line 280
    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    move-object v1, p2

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    invoke-static {v0, v1}, Lio/ktor/utils/io/core/BufferAppendKt;->writeBufferPrepend(Lio/ktor/utils/io/core/Buffer;Lio/ktor/utils/io/core/Buffer;)I

    iget-object v0, p0, Lio/ktor/utils/io/core/Output;->_head:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    if-eqz v0, :cond_2

    if-ne v0, p2, :cond_0

    .line 282
    iput-object p1, p0, Lio/ktor/utils/io/core/Output;->_head:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    goto :goto_1

    .line 288
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eq v1, p2, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 293
    :cond_1
    invoke-virtual {v0, p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->setNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 296
    :goto_1
    iget-object v0, p0, Lio/ktor/utils/io/core/Output;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-virtual {p2, v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->release(Lio/ktor/utils/io/pool/ObjectPool;)V

    .line 298
    invoke-static {p1}, Lio/ktor/utils/io/core/BuffersKt;->findTail(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/utils/io/core/Output;->_tail:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    return-void

    .line 280
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "head should\'t be null since it is already handled in the fast-path"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final afterBytesStolen$ktor_io()V
    .locals 2

    .line 387
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->getHead$ktor_io()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    .line 388
    sget-object v1, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 389
    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 390
    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->resetForWrite()V

    const/16 v1, 0x8

    .line 391
    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->reserveEndGap(I)V

    .line 392
    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v1

    iput v1, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    .line 393
    iput v1, p0, Lio/ktor/utils/io/core/Output;->tailInitialPosition:I

    .line 394
    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getLimit()I

    move-result v0

    iput v0, p0, Lio/ktor/utils/io/core/Output;->tailEndExclusive:I

    return-void

    .line 389
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public final afterHeadWrite()V
    .locals 1

    .line 366
    iget-object v0, p0, Lio/ktor/utils/io/core/Output;->_tail:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v0

    iput v0, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    :cond_0
    return-void
.end method

.method public append(C)Lio/ktor/utils/io/core/Output;
    .locals 6

    .line 164
    iget v0, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    .line 165
    iget v1, p0, Lio/ktor/utils/io/core/Output;->tailEndExclusive:I

    sub-int/2addr v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_4

    .line 166
    iget-object v1, p0, Lio/ktor/utils/io/core/Output;->tailMemory:Ljava/nio/ByteBuffer;

    const/16 v3, 0x80

    if-ltz p1, :cond_0

    if-ge p1, v3, :cond_0

    int-to-byte p1, p1

    .line 597
    invoke-virtual {v1, v0, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v4, 0x800

    if-gt v3, p1, :cond_1

    if-ge p1, v4, :cond_1

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x1f

    or-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    invoke-virtual {v1, v0, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v0, 0x1

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v3

    int-to-byte p1, p1

    invoke-virtual {v1, v2, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const/high16 v5, 0x10000

    if-gt v4, p1, :cond_2

    if-ge p1, v5, :cond_2

    shr-int/lit8 v4, p1, 0xc

    and-int/lit8 v4, v4, 0xf

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    invoke-virtual {v1, v0, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, p1, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v3

    int-to-byte v5, v5

    invoke-virtual {v1, v4, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v0, 0x2

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v3

    int-to-byte p1, p1

    invoke-virtual {v1, v4, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_2
    if-gt v5, p1, :cond_3

    const/high16 v2, 0x110000

    if-ge p1, v2, :cond_3

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x7

    or-int/lit16 v2, v2, 0xf0

    int-to-byte v2, v2

    invoke-virtual {v1, v0, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v4, p1, 0xc

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v3

    int-to-byte v4, v4

    invoke-virtual {v1, v2, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v0, 0x2

    shr-int/lit8 v4, p1, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v3

    int-to-byte v4, v4

    invoke-virtual {v1, v2, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v0, 0x3

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v3

    int-to-byte p1, p1

    invoke-virtual {v1, v2, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    :goto_0
    add-int/2addr v0, v2

    .line 167
    iput v0, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    return-object p0

    .line 620
    :cond_3
    invoke-static {p1}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 171
    :cond_4
    invoke-direct {p0, p1}, Lio/ktor/utils/io/core/Output;->appendCharFallback(C)V

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lio/ktor/utils/io/core/Output;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 185
    const-string p1, "null"

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Lio/ktor/utils/io/core/Output;->append(Ljava/lang/CharSequence;II)Lio/ktor/utils/io/core/Output;

    return-object p0

    .line 187
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lio/ktor/utils/io/core/Output;->append(Ljava/lang/CharSequence;II)Lio/ktor/utils/io/core/Output;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lio/ktor/utils/io/core/Output;
    .locals 1

    if-nez p1, :cond_0

    .line 194
    const-string p1, "null"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/utils/io/core/Output;->append(Ljava/lang/CharSequence;II)Lio/ktor/utils/io/core/Output;

    move-result-object p1

    return-object p1

    .line 197
    :cond_0
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, p1, p2, p3, v0}, Lio/ktor/utils/io/core/StringsKt;->writeText(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;)V

    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/Output;->append(C)Lio/ktor/utils/io/core/Output;

    move-result-object p1

    check-cast p1, Ljava/lang/Appendable;

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/Output;->append(Ljava/lang/CharSequence;)Lio/ktor/utils/io/core/Output;

    move-result-object p1

    check-cast p1, Ljava/lang/Appendable;

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/utils/io/core/Output;->append(Ljava/lang/CharSequence;II)Lio/ktor/utils/io/core/Output;

    move-result-object p1

    check-cast p1, Ljava/lang/Appendable;

    return-object p1
.end method

.method public final append([CII)Ljava/lang/Appendable;
    .locals 1

    const-string v0, "csq"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, p1, p2, p3, v0}, Lio/ktor/utils/io/core/StringsKt;->writeText(Lio/ktor/utils/io/core/Output;[CIILjava/nio/charset/Charset;)V

    .line 343
    move-object p1, p0

    check-cast p1, Ljava/lang/Appendable;

    return-object p1
.end method

.method public final appendChain$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 5

    const-string v0, "head"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-static {p1}, Lio/ktor/utils/io/core/BuffersKt;->findTail(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    .line 100
    invoke-static {p1}, Lio/ktor/utils/io/core/BuffersKt;->remainingAll(Lio/ktor/utils/io/core/internal/ChunkBuffer;)J

    move-result-wide v1

    move-object v3, v0

    check-cast v3, Lio/ktor/utils/io/core/Buffer;

    .line 588
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3

    sub-int/2addr v4, v3

    int-to-long v3, v4

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    long-to-int v1, v1

    .line 101
    invoke-direct {p0, p1, v0, v1}, Lio/ktor/utils/io/core/Output;->appendChainImpl(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;I)V

    return-void

    .line 589
    :cond_0
    const-string p1, "total size increase"

    invoke-static {v1, v2, p1}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public final appendSingleChunk$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 1

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, p1, v0}, Lio/ktor/utils/io/core/Output;->appendChainImpl(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;I)V

    return-void

    .line 94
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "It should be a single buffer chunk."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final close()V
    .locals 1

    .line 154
    :try_start_0
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->closeDestination()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->closeDestination()V

    throw v0
.end method

.method protected abstract closeDestination()V
.end method

.method public final flush()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lio/ktor/utils/io/core/Output;->flushChain()V

    return-void
.end method

.method protected abstract flush-62zg_DM(Ljava/nio/ByteBuffer;II)V
.end method

.method public final getHead$ktor_io()Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 1

    .line 40
    iget-object v0, p0, Lio/ktor/utils/io/core/Output;->_head:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    if-nez v0, :cond_0

    sget-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected final getPool()Lio/ktor/utils/io/pool/ObjectPool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lio/ktor/utils/io/core/Output;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    return-object v0
.end method

.method public final getTailEndExclusive$ktor_io()I
    .locals 1

    .line 46
    iget v0, p0, Lio/ktor/utils/io/core/Output;->tailEndExclusive:I

    return v0
.end method

.method public final getTailMemory-SK3TCg8$ktor_io()Ljava/nio/ByteBuffer;
    .locals 1

    .line 42
    iget-object v0, p0, Lio/ktor/utils/io/core/Output;->tailMemory:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final getTailPosition$ktor_io()I
    .locals 1

    .line 44
    iget v0, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    return v0
.end method

.method public final getTailRemaining$ktor_io()I
    .locals 2

    .line 55
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->getTailEndExclusive$ktor_io()I

    move-result v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->getTailPosition$ktor_io()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected final get_size()I
    .locals 3

    .line 21
    iget v0, p0, Lio/ktor/utils/io/core/Output;->chainedSize:I

    iget v1, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    iget v2, p0, Lio/ktor/utils/io/core/Output;->tailInitialPosition:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public last$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 1

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/Output;->appendSingleChunk$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    return-void
.end method

.method public final prepareWriteHead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 2

    .line 708
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->getTailEndExclusive$ktor_io()I

    move-result v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->getTailPosition$ktor_io()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    .line 356
    iget-object p1, p0, Lio/ktor/utils/io/core/Output;->_tail:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    if-eqz p1, :cond_0

    .line 357
    iget v0, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    invoke-virtual {p1, v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->commitWrittenUntilIndex(I)Z

    return-object p1

    .line 361
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/core/Output;->appendNewChunk()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final release()V
    .locals 0

    .line 350
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->close()V

    return-void
.end method

.method public final setTailEndExclusive$ktor_io(I)V
    .locals 0

    .line 46
    iput p1, p0, Lio/ktor/utils/io/core/Output;->tailEndExclusive:I

    return-void
.end method

.method public final setTailMemory-3GNKZMM$ktor_io(Ljava/nio/ByteBuffer;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lio/ktor/utils/io/core/Output;->tailMemory:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final setTailPosition$ktor_io(I)V
    .locals 0

    .line 44
    iput p1, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    return-void
.end method

.method public final stealAll$ktor_io()Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 4

    .line 78
    iget-object v0, p0, Lio/ktor/utils/io/core/Output;->_head:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 80
    :cond_0
    iget-object v2, p0, Lio/ktor/utils/io/core/Output;->_tail:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    if-eqz v2, :cond_1

    iget v3, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    invoke-virtual {v2, v3}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->commitWrittenUntilIndex(I)Z

    .line 82
    :cond_1
    iput-object v1, p0, Lio/ktor/utils/io/core/Output;->_head:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 83
    iput-object v1, p0, Lio/ktor/utils/io/core/Output;->_tail:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const/4 v1, 0x0

    .line 84
    iput v1, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    .line 85
    iput v1, p0, Lio/ktor/utils/io/core/Output;->tailEndExclusive:I

    .line 86
    iput v1, p0, Lio/ktor/utils/io/core/Output;->tailInitialPosition:I

    .line 87
    iput v1, p0, Lio/ktor/utils/io/core/Output;->chainedSize:I

    .line 88
    sget-object v1, Lio/ktor/utils/io/bits/Memory;->Companion:Lio/ktor/utils/io/bits/Memory$Companion;

    invoke-virtual {v1}, Lio/ktor/utils/io/bits/Memory$Companion;->getEmpty-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lio/ktor/utils/io/core/Output;->tailMemory:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final write(ILkotlin/jvm/functions/Function1;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/utils/io/core/Buffer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/Output;->prepareWriteHead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object p1

    .line 373
    :try_start_0
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz p1, :cond_0

    .line 378
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    return p1

    .line 374
    :cond_0
    :try_start_1
    const-string p1, "The returned value shouldn\'t be negative"

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 378
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw p1
.end method

.method public final writeByte(B)V
    .locals 2

    .line 134
    iget v0, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    .line 135
    iget v1, p0, Lio/ktor/utils/io/core/Output;->tailEndExclusive:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 136
    iput v1, p0, Lio/ktor/utils/io/core/Output;->tailPosition:I

    .line 137
    iget-object v1, p0, Lio/ktor/utils/io/core/Output;->tailMemory:Ljava/nio/ByteBuffer;

    .line 592
    invoke-virtual {v1, v0, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void

    .line 141
    :cond_0
    invoke-direct {p0, p1}, Lio/ktor/utils/io/core/Output;->writeByteFallback(B)V

    return-void
.end method

.method public final writeChunkBuffer$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 2

    const-string v0, "chunkBuffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lio/ktor/utils/io/core/Output;->_tail:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    if-nez v0, :cond_0

    .line 227
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/Output;->appendChain$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    return-void

    .line 231
    :cond_0
    iget-object v1, p0, Lio/ktor/utils/io/core/Output;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-direct {p0, v0, p1, v1}, Lio/ktor/utils/io/core/Output;->writePacketMerging(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/pool/ObjectPool;)V

    return-void
.end method

.method public final writePacket(Lio/ktor/utils/io/core/ByteReadPacket;)V
    .locals 2

    const-string v0, "packet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteReadPacket;->stealAll$ktor_io()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 208
    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteReadPacket;->release()V

    return-void

    .line 212
    :cond_0
    iget-object v1, p0, Lio/ktor/utils/io/core/Output;->_tail:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    if-nez v1, :cond_1

    .line 214
    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/Output;->appendChain$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    return-void

    .line 218
    :cond_1
    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteReadPacket;->getPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object p1

    invoke-direct {p0, v1, v0, p1}, Lio/ktor/utils/io/core/Output;->writePacketMerging(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/pool/ObjectPool;)V

    return-void
.end method

.method public final writePacket(Lio/ktor/utils/io/core/ByteReadPacket;I)V
    .locals 4

    const-string v0, "Buffer\'s position shouldn\'t be rewinded"

    const-string v1, "p"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-lez p2, :cond_7

    .line 308
    move-object v1, p1

    check-cast v1, Lio/ktor/utils/io/core/Input;

    .line 664
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Input;->getHeadEndExclusive()I

    move-result v2

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Input;->getHeadPosition()I

    move-result v3

    sub-int/2addr v2, v3

    if-gt v2, p2, :cond_1

    sub-int/2addr p2, v2

    .line 311
    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteReadPacket;->steal$ktor_io()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lio/ktor/utils/io/core/Output;->appendSingleChunk$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "Unexpected end of packet"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x1

    .line 670
    invoke-virtual {v1, p1}, Lio/ktor/utils/io/core/Input;->prepareRead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 671
    invoke-virtual {v2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result p1

    .line 673
    :try_start_0
    move-object v3, v2

    check-cast v3, Lio/ktor/utils/io/core/Buffer;

    .line 314
    invoke-static {p0, v3, p2}, Lio/ktor/utils/io/core/OutputKt;->writeFully(Lio/ktor/utils/io/core/Output;Lio/ktor/utils/io/core/Buffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    invoke-virtual {v2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result p2

    if-lt p2, p1, :cond_3

    .line 679
    invoke-virtual {v2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result p1

    if-ne p2, p1, :cond_2

    .line 680
    invoke-virtual {v1, v2}, Lio/ktor/utils/io/core/Input;->ensureNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    return-void

    .line 682
    :cond_2
    invoke-virtual {v1, p2}, Lio/ktor/utils/io/core/Input;->setHeadPosition(I)V

    return-void

    .line 677
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p2

    .line 675
    invoke-virtual {v2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v3

    if-lt v3, p1, :cond_5

    .line 679
    invoke-virtual {v2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result p1

    if-ne v3, p1, :cond_4

    .line 680
    invoke-virtual {v1, v2}, Lio/ktor/utils/io/core/Input;->ensureNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    goto :goto_1

    .line 682
    :cond_4
    invoke-virtual {v1, v3}, Lio/ktor/utils/io/core/Input;->setHeadPosition(I)V

    :goto_1
    throw p2

    .line 677
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 670
    :cond_6
    invoke-static {p1}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_7
    return-void
.end method

.method public final writePacket(Lio/ktor/utils/io/core/ByteReadPacket;J)V
    .locals 5

    const-string v0, "Buffer\'s position shouldn\'t be rewinded"

    const-string v1, "p"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_7

    .line 328
    move-object v1, p1

    check-cast v1, Lio/ktor/utils/io/core/Input;

    .line 686
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Input;->getHeadEndExclusive()I

    move-result v2

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Input;->getHeadPosition()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v4, v2, p2

    if-gtz v4, :cond_1

    sub-long/2addr p2, v2

    .line 331
    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteReadPacket;->steal$ktor_io()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lio/ktor/utils/io/core/Output;->appendSingleChunk$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "Unexpected end of packet"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x1

    .line 692
    invoke-virtual {v1, p1}, Lio/ktor/utils/io/core/Input;->prepareRead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 693
    invoke-virtual {v2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result p1

    .line 695
    :try_start_0
    move-object v3, v2

    check-cast v3, Lio/ktor/utils/io/core/Buffer;

    long-to-int p2, p2

    .line 334
    invoke-static {p0, v3, p2}, Lio/ktor/utils/io/core/OutputKt;->writeFully(Lio/ktor/utils/io/core/Output;Lio/ktor/utils/io/core/Buffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    invoke-virtual {v2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result p2

    if-lt p2, p1, :cond_3

    .line 701
    invoke-virtual {v2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result p1

    if-ne p2, p1, :cond_2

    .line 702
    invoke-virtual {v1, v2}, Lio/ktor/utils/io/core/Input;->ensureNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    return-void

    .line 704
    :cond_2
    invoke-virtual {v1, p2}, Lio/ktor/utils/io/core/Input;->setHeadPosition(I)V

    return-void

    .line 699
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p2

    .line 697
    invoke-virtual {v2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result p3

    if-lt p3, p1, :cond_5

    .line 701
    invoke-virtual {v2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result p1

    if-ne p3, p1, :cond_4

    .line 702
    invoke-virtual {v1, v2}, Lio/ktor/utils/io/core/Input;->ensureNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    goto :goto_1

    .line 704
    :cond_4
    invoke-virtual {v1, p3}, Lio/ktor/utils/io/core/Input;->setHeadPosition(I)V

    :goto_1
    throw p2

    .line 699
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 692
    :cond_6
    invoke-static {p1}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_7
    return-void
.end method
