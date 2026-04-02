.class public final Lio/ktor/utils/io/core/internal/UTF8Kt;
.super Ljava/lang/Object;
.source "UTF8.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUTF8.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UTF8.kt\nio/ktor/utils/io/core/internal/UTF8Kt\n+ 2 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 3 Memory.kt\nio/ktor/utils/io/bits/MemoryKt\n+ 4 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 5 Input.kt\nio/ktor/utils/io/core/InputKt\n+ 6 Buffer.kt\nio/ktor/utils/io/core/Buffer\n*L\n1#1,379:1\n123#1,5:401\n128#1,2:411\n130#1,61:415\n193#1:478\n319#1,3:517\n322#1,4:522\n326#1,18:527\n309#1,7:545\n319#1,3:552\n322#1,4:557\n326#1,18:562\n372#2,5:380\n377#2,2:387\n372#2,5:406\n377#2,2:476\n372#2,5:506\n377#2,2:513\n84#3:385\n84#3:413\n84#3:511\n99#3:526\n99#3:561\n99#3:582\n99#3:585\n99#3:588\n99#3:591\n99#3:594\n99#3:597\n99#3:600\n99#3:603\n99#3:606\n26#4:386\n26#4:414\n26#4:512\n37#4,2:515\n37#4,2:520\n37#4,2:555\n37#4,2:580\n37#4,2:583\n37#4,2:586\n37#4,2:589\n37#4,2:592\n37#4,2:595\n37#4,2:598\n37#4,2:601\n37#4,2:604\n37#4,2:607\n852#5,8:389\n862#5,3:398\n866#5,11:479\n877#5,15:491\n69#6:397\n59#6:490\n*S KotlinDebug\n*F\n+ 1 UTF8.kt\nio/ktor/utils/io/core/internal/UTF8Kt\n*L\n42#1:401,5\n42#1:411,2\n42#1:415,61\n42#1:478\n255#1:517,3\n255#1:522,4\n255#1:527,18\n297#1:545,7\n301#1:552,3\n301#1:557,4\n301#1:562,18\n9#1:380,5\n9#1:387,2\n42#1:406,5\n42#1:476,2\n127#1:506,5\n127#1:513,2\n11#1:385\n42#1:413\n129#1:511\n255#1:526\n301#1:561\n325#1:582\n326#1:585\n330#1:588\n331#1:591\n332#1:594\n336#1:597\n337#1:600\n338#1:603\n339#1:606\n11#1:386\n42#1:414\n129#1:512\n211#1:515,2\n255#1:520,2\n301#1:555,2\n321#1:580,2\n325#1:583,2\n326#1:586,2\n330#1:589,2\n331#1:592,2\n332#1:595,2\n336#1:598,2\n337#1:601,2\n338#1:604,2\n339#1:607,2\n40#1:389,8\n40#1:398,3\n40#1:479,11\n40#1:491,15\n40#1:397\n40#1:490\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0001\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0014\u001a\u0010\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0001H\u0000\u001a\u0011\u0010\u0008\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u0001H\u0082\u0008\u001a\u0018\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cH\u0000\u001a_\u0010\u000e\u001a\u00020\u000f2\n\u0010\u0010\u001a\u00060\u0011j\u0002`\u00122\u0006\u0010\u0013\u001a\u00020\u00012$\u0010\u0014\u001a \u0008\u0001\u0012\u0004\u0012\u00020\u0001\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u00152\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u001b0\u001aH\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001c\u001a\u0010\u0010\u001d\u001a\u00020\u00012\u0006\u0010\u001e\u001a\u00020\u0001H\u0001\u001a\u0010\u0010\u001f\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u0001H\u0001\u001a\u0010\u0010 \u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u0001H\u0001\u001a\u0010\u0010!\u001a\u00020\u00012\u0006\u0010\u001e\u001a\u00020\u0001H\u0001\u001a\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0001H\u0001\u001a\u0010\u0010%\u001a\u00020#2\u0006\u0010&\u001a\u00020\u0001H\u0001\u001a\u0010\u0010\'\u001a\u00020#2\u0006\u0010(\u001a\u00020\u0001H\u0002\u001a$\u0010)\u001a\u00020\u000f*\u00020*2\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000f0\u001aH\u0080\u0008\u00f8\u0001\u0001\u001a$\u0010,\u001a\u00020\u0001*\u00020*2\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000f0\u001aH\u0080\u0008\u00f8\u0001\u0001\u001aA\u0010-\u001a\u00020.*\u00020/2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u00020\u00012\u0006\u00103\u001a\u00020\u00012\u0006\u00104\u001a\u00020\u00012\u0006\u00105\u001a\u00020\u0001H\u0000\u00f8\u0001\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u00086\u00107\u001aQ\u00108\u001a\u00020.*\u00020/2\u0006\u00100\u001a\u0002012\u0006\u00109\u001a\u00020\u00012\u0006\u0010:\u001a\u00020\u00012\u0006\u00102\u001a\u00020\u00012\u0006\u0010;\u001a\u00020\u00012\u0006\u0010<\u001a\u00020\u00012\u0006\u00104\u001a\u00020\u0001H\u0002\u00f8\u0001\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008=\u0010>\u001aQ\u0010?\u001a\u00020.*\u00020/2\u0006\u00100\u001a\u0002012\u0006\u00109\u001a\u00020\u00012\u0006\u0010:\u001a\u00020\u00012\u0006\u00102\u001a\u00020\u00012\u0006\u0010;\u001a\u00020\u00012\u0006\u0010<\u001a\u00020\u00012\u0006\u00104\u001a\u00020\u0001H\u0002\u00f8\u0001\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008@\u0010>\u001a*\u0010A\u001a\u00020\u0001*\u00020/2\u0006\u0010B\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u0001H\u0080\u0008\u00f8\u0001\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008C\u0010D\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0012\n\u0002\u0008\u0019\n\u0005\u0008\u009920\u0001\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006E"
    }
    d2 = {
        "HighSurrogateMagic",
        "",
        "MaxCodePoint",
        "MinHighSurrogate",
        "MinLowSurrogate",
        "MinSupplementary",
        "byteCountUtf8",
        "firstByte",
        "charactersSize",
        "v",
        "codePoint",
        "high",
        "",
        "low",
        "decodeUTF8LineLoopSuspend",
        "",
        "out",
        "Ljava/lang/Appendable;",
        "Lkotlin/text/Appendable;",
        "limit",
        "nextChunk",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "Lio/ktor/utils/io/core/Input;",
        "",
        "afterRead",
        "Lkotlin/Function1;",
        "",
        "(Ljava/lang/Appendable;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "highSurrogate",
        "cp",
        "isBmpCodePoint",
        "isValidCodePoint",
        "lowSurrogate",
        "malformedByteCount",
        "",
        "byteCount",
        "malformedCodePoint",
        "value",
        "prematureEndOfStreamUtf",
        "size",
        "decodeASCII",
        "Lio/ktor/utils/io/core/Buffer;",
        "consumer",
        "decodeUTF8",
        "encodeUTF8",
        "Lio/ktor/utils/io/core/internal/EncodeResult;",
        "Lio/ktor/utils/io/bits/Memory;",
        "text",
        "",
        "from",
        "to",
        "dstOffset",
        "dstLimit",
        "encodeUTF8-lBXzO7A",
        "(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;IIII)I",
        "encodeUTF8Stage1",
        "index1",
        "lastCharIndex",
        "resultPosition1",
        "resultLimit",
        "encodeUTF8Stage1-Vm9B2pQ",
        "(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;IIIIII)I",
        "encodeUTF8Stage2",
        "encodeUTF8Stage2-Vm9B2pQ",
        "putUtf8Char",
        "offset",
        "putUtf8Char-62zg_DM",
        "(Ljava/nio/ByteBuffer;II)I",
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


# static fields
.field private static final HighSurrogateMagic:I = 0xd7c0

.field private static final MaxCodePoint:I = 0x10ffff

.field private static final MinHighSurrogate:I = 0xd800

.field private static final MinLowSurrogate:I = 0xdc00

.field private static final MinSupplementary:I = 0x10000


# direct methods
.method public static final byteCountUtf8(I)I
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x80

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_0

    and-int v3, p0, v1

    if-eqz v3, :cond_0

    not-int v3, v1

    and-int/2addr p0, v3

    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static final charactersSize(I)I
    .locals 2

    const/16 v0, 0x80

    const/4 v1, 0x1

    if-gt v1, p0, :cond_0

    if-ge p0, v0, :cond_0

    return v1

    :cond_0
    const/16 v1, 0x800

    if-gt v0, p0, :cond_1

    if-ge p0, v1, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, 0x10000

    if-gt v1, p0, :cond_2

    if-ge p0, v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    if-gt v0, p0, :cond_3

    const/high16 v0, 0x110000

    if-ge p0, v0, :cond_3

    const/4 p0, 0x4

    return p0

    .line 314
    :cond_3
    invoke-static {p0}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final codePoint(CC)I
    .locals 1

    const v0, 0xd7c0

    sub-int/2addr p0, v0

    const v0, 0xdc00

    sub-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0xa

    or-int/2addr p0, p1

    return p0
.end method

.method public static final decodeASCII(Lio/ktor/utils/io/core/Buffer;Lkotlin/jvm/functions/Function1;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Buffer;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Character;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v1

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    .line 386
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v5, v4, 0xff

    const/16 v6, 0x80

    and-int/2addr v4, v6

    if-eq v4, v6, :cond_1

    int-to-char v4, v5

    .line 12
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {p1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sub-int/2addr v3, v1

    .line 13
    invoke-virtual {p0, v3}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    const/4 p0, 0x0

    return p0

    :cond_2
    sub-int/2addr v2, v1

    .line 387
    invoke-virtual {p0, v2}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public static final decodeUTF8(Lio/ktor/utils/io/core/Buffer;Lkotlin/jvm/functions/Function1;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Buffer;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Character;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 510
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v1

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v2

    const/4 v3, 0x0

    move v4, v1

    move v5, v3

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v4, v2, :cond_a

    .line 512
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit16 v9, v8, 0xff

    and-int/lit16 v10, v8, 0x80

    const/4 v11, -0x1

    if-nez v10, :cond_1

    if-nez v5, :cond_0

    int-to-char v8, v9

    .line 133
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-interface {p1, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_9

    sub-int/2addr v4, v1

    .line 134
    invoke-virtual {p0, v4}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    return v11

    .line 132
    :cond_0
    invoke-static {v5}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedByteCount(I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_1
    const/4 v10, 0x1

    if-nez v5, :cond_4

    const/16 v6, 0x80

    move v7, v6

    move v6, v9

    :goto_1
    const/4 v8, 0x7

    if-ge v10, v8, :cond_2

    and-int v8, v6, v7

    if-eqz v8, :cond_2

    not-int v8, v7

    and-int/2addr v6, v8

    shr-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v5, -0x1

    sub-int v8, v2, v4

    if-le v5, v8, :cond_3

    sub-int/2addr v4, v1

    .line 158
    invoke-virtual {p0, v4}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    return v5

    :cond_3
    move v12, v7

    move v7, v5

    move v5, v12

    goto :goto_3

    :cond_4
    shl-int/lit8 v6, v6, 0x6

    and-int/lit8 v8, v8, 0x7f

    or-int/2addr v6, v8

    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_9

    .line 168
    invoke-static {v6}, Lio/ktor/utils/io/core/internal/UTF8Kt;->isBmpCodePoint(I)Z

    move-result v8

    if-eqz v8, :cond_5

    int-to-char v6, v6

    .line 169
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {p1, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_6

    sub-int/2addr v4, v1

    sub-int/2addr v4, v7

    add-int/2addr v4, v10

    .line 170
    invoke-virtual {p0, v4}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    return v11

    .line 173
    :cond_5
    invoke-static {v6}, Lio/ktor/utils/io/core/internal/UTF8Kt;->isValidCodePoint(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 176
    invoke-static {v6}, Lio/ktor/utils/io/core/internal/UTF8Kt;->highSurrogate(I)I

    move-result v8

    int-to-char v8, v8

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-interface {p1, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 177
    invoke-static {v6}, Lio/ktor/utils/io/core/internal/UTF8Kt;->lowSurrogate(I)I

    move-result v6

    int-to-char v6, v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {p1, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    move v6, v3

    goto :goto_3

    :cond_7
    :goto_2
    sub-int/2addr v4, v1

    sub-int/2addr v4, v7

    add-int/2addr v4, v10

    .line 179
    invoke-virtual {p0, v4}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    return v11

    .line 174
    :cond_8
    invoke-static {v6}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_9
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_a
    sub-int/2addr v2, v1

    .line 513
    invoke-virtual {p0, v2}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    return v3
.end method

.method public static final decodeUTF8LineLoopSuspend(Ljava/lang/Appendable;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Appendable;",
            "I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/core/Input;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p4

    instance-of v1, v0, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;

    iget v2, v1, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;

    invoke-direct {v1, v0}, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 25
    iget v3, v1, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->label:I

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v5, :cond_1

    iget v3, v1, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->I$0:I

    iget-object v6, v1, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->L$6:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v7, v1, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->L$5:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v8, v1, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v9, v1, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v10, v1, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function1;

    iget-object v11, v1, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function2;

    iget-object v12, v1, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->L$0:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Appendable;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v28, v7

    move-object v7, v1

    move v1, v3

    move-object v3, v11

    move-object v11, v9

    move-object/from16 v9, v28

    move-object/from16 v28, v8

    move-object v8, v6

    move-object v6, v10

    move-object/from16 v10, v28

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 32
    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v5, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 33
    new-instance v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 34
    new-instance v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    move-object v11, v0

    move-object v10, v3

    move-object v9, v6

    move-object v8, v7

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move-object v7, v1

    move/from16 v1, p1

    .line 36
    :goto_1
    iget-boolean v12, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v12, :cond_4

    iget v12, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eqz v12, :cond_4

    .line 37
    iget v12, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v0, v7, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->L$0:Ljava/lang/Object;

    iput-object v3, v7, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->L$1:Ljava/lang/Object;

    iput-object v6, v7, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->L$2:Ljava/lang/Object;

    iput-object v11, v7, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->L$3:Ljava/lang/Object;

    iput-object v10, v7, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->L$4:Ljava/lang/Object;

    iput-object v9, v7, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->L$5:Ljava/lang/Object;

    iput-object v8, v7, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->L$6:Ljava/lang/Object;

    iput v1, v7, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->I$0:I

    iput v5, v7, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->label:I

    invoke-interface {v3, v12, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v2, :cond_3

    return-object v2

    :cond_3
    move-object/from16 v28, v12

    move-object v12, v0

    move-object/from16 v0, v28

    :goto_2
    move-object v13, v0

    check-cast v13, Lio/ktor/utils/io/core/Input;

    if-nez v13, :cond_5

    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_1f

    .line 38
    :cond_5
    invoke-virtual {v13}, Lio/ktor/utils/io/core/Input;->getRemaining()J

    move-result-wide v14

    .line 391
    invoke-static {v13, v5}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-nez v0, :cond_6

    move-object/from16 v16, v2

    move-object/from16 p0, v3

    move-object/from16 v19, v6

    move-object/from16 p1, v7

    move-object v2, v13

    move-wide/from16 p2, v14

    const/4 v4, 0x0

    goto/16 :goto_1c

    :cond_6
    move-object v4, v0

    move v0, v5

    .line 396
    :goto_3
    :try_start_0
    move-object/from16 v16, v4

    check-cast v16, Lio/ktor/utils/io/core/Buffer;

    .line 397
    invoke-virtual/range {v16 .. v16}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v17

    invoke-virtual/range {v16 .. v16}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    sub-int v5, v17, v16

    if-lt v5, v0, :cond_24

    .line 400
    :try_start_1
    move-object v0, v4

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .line 41
    new-instance v5, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    move-object/from16 v16, v2

    .line 401
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    move-object/from16 p0, v3

    .line 402
    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    move-object/from16 p1, v7

    .line 403
    new-instance v7, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    move-wide/from16 p2, v14

    .line 410
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v15

    move/from16 v17, v15

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v15

    move-object/from16 v19, v6

    move/from16 v6, v17

    :goto_4
    if-ge v6, v15, :cond_21

    move/from16 v20, v15

    .line 414
    invoke-virtual {v14, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move/from16 v21, v6

    and-int/lit16 v6, v15, 0xff

    move-object/from16 v22, v14

    and-int/lit16 v14, v15, 0x80

    move/from16 v23, v14

    .line 416
    const-string v14, " exceeded"

    move/from16 v24, v15

    const-string v15, "Too many characters in line: limit "

    move-object/from16 v25, v4

    const/16 v26, -0x1

    if-nez v23, :cond_d

    .line 417
    :try_start_2
    iget v4, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v4, :cond_c

    int-to-char v4, v6

    const/16 v6, 0xd

    if-ne v4, v6, :cond_8

    .line 45
    :try_start_3
    iget-boolean v4, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_7

    const/4 v6, 0x1

    .line 46
    :try_start_4
    iput-boolean v6, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    move-object/from16 v27, v13

    goto :goto_5

    :cond_7
    const/4 v6, 0x1

    .line 49
    iput-boolean v6, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v27, v13

    goto/16 :goto_12

    :catchall_0
    move-exception v0

    const/4 v6, 0x1

    goto/16 :goto_16

    :cond_8
    move-object/from16 v27, v13

    const/4 v6, 0x1

    const/16 v13, 0xa

    if-ne v4, v13, :cond_9

    .line 53
    :try_start_5
    iput-boolean v6, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 54
    iput v6, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_5

    .line 58
    :cond_9
    iget-boolean v13, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v13, :cond_a

    .line 59
    iput-boolean v6, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :goto_5
    sub-int v6, v21, v17

    .line 419
    invoke-virtual {v0, v6}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    :goto_6
    move/from16 v2, v26

    :goto_7
    const/4 v4, 0x0

    goto/16 :goto_14

    .line 63
    :cond_a
    iget v6, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eq v6, v1, :cond_b

    .line 66
    iget v6, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/16 v18, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    int-to-char v4, v4

    .line 67
    invoke-interface {v12, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto/16 :goto_12

    .line 64
    :cond_b
    new-instance v0, Lio/ktor/utils/io/charsets/TooLongLineException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/ktor/utils/io/charsets/TooLongLineException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move-object/from16 v27, v13

    .line 417
    iget v0, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v0}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedByteCount(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :catchall_1
    move-exception v0

    goto/16 :goto_16

    :cond_d
    move-object/from16 v27, v13

    .line 423
    iget v4, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-nez v4, :cond_f

    .line 427
    iput v6, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/16 v4, 0x80

    const/4 v6, 0x1

    :goto_8
    const/4 v13, 0x7

    if-ge v6, v13, :cond_e

    .line 430
    iget v13, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    and-int/2addr v13, v4

    if-eqz v13, :cond_e

    .line 431
    iget v13, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    not-int v14, v4

    and-int/2addr v13, v14

    iput v13, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    shr-int/lit8 v4, v4, 0x1

    .line 433
    iget v13, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/16 v18, 0x1

    add-int/lit8 v13, v13, 0x1

    iput v13, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 439
    :cond_e
    iget v4, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iput v4, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 440
    iget v4, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 442
    iget v4, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sub-int v15, v20, v21

    if-le v4, v15, :cond_20

    sub-int v6, v21, v17

    .line 443
    invoke-virtual {v0, v6}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 444
    iget v2, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_7

    .line 449
    :cond_f
    iget v4, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    shl-int/lit8 v4, v4, 0x6

    and-int/lit8 v6, v24, 0x7f

    or-int/2addr v4, v6

    iput v4, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 450
    iget v4, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 452
    iget v4, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-nez v4, :cond_20

    .line 453
    iget v4, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v4}, Lio/ktor/utils/io/core/internal/UTF8Kt;->isBmpCodePoint(I)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 454
    iget v4, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    int-to-char v4, v4

    const/16 v6, 0xd

    if-ne v4, v6, :cond_11

    .line 45
    :try_start_6
    iget-boolean v4, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v4, :cond_10

    const/4 v6, 0x1

    .line 46
    :try_start_7
    iput-boolean v6, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_9

    :cond_10
    const/4 v6, 0x1

    .line 49
    iput-boolean v6, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_b

    :catchall_2
    move-exception v0

    const/4 v6, 0x1

    goto/16 :goto_17

    :cond_11
    const/4 v6, 0x1

    const/16 v13, 0xa

    if-ne v4, v13, :cond_12

    .line 53
    iput-boolean v6, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 54
    iput v6, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_9

    .line 58
    :cond_12
    iget-boolean v13, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v13, :cond_13

    .line 59
    iput-boolean v6, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :goto_9
    sub-int v2, v21, v17

    .line 455
    iget v3, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    goto/16 :goto_6

    .line 63
    :cond_13
    iget v6, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eq v6, v1, :cond_14

    .line 66
    iget v6, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/16 v18, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :goto_a
    int-to-char v4, v4

    .line 67
    invoke-interface {v12, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_b
    const/4 v4, 0x0

    goto/16 :goto_11

    .line 64
    :cond_14
    new-instance v0, Lio/ktor/utils/io/charsets/TooLongLineException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/ktor/utils/io/charsets/TooLongLineException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_15
    iget v4, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v4}, Lio/ktor/utils/io/core/internal/UTF8Kt;->isValidCodePoint(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 461
    iget v4, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v4}, Lio/ktor/utils/io/core/internal/UTF8Kt;->highSurrogate(I)I

    move-result v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    int-to-char v4, v4

    const/16 v6, 0xd

    if-ne v4, v6, :cond_17

    .line 45
    :try_start_8
    iget-boolean v4, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v4, :cond_16

    :goto_c
    const/4 v6, 0x1

    .line 46
    :try_start_9
    iput-boolean v6, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_10

    :cond_16
    const/4 v6, 0x1

    .line 49
    iput-boolean v6, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_f

    :cond_17
    const/4 v6, 0x1

    const/16 v13, 0xa

    if-ne v4, v13, :cond_18

    .line 53
    :goto_d
    iput-boolean v6, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 54
    iput v6, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_10

    .line 58
    :cond_18
    iget-boolean v13, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v13, :cond_19

    .line 59
    :goto_e
    iput-boolean v6, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_10

    .line 63
    :cond_19
    iget v13, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eq v13, v1, :cond_1e

    .line 66
    iget v13, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v13, v6

    iput v13, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    int-to-char v4, v4

    .line 67
    invoke-interface {v12, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 462
    :goto_f
    iget v4, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v4}, Lio/ktor/utils/io/core/internal/UTF8Kt;->lowSurrogate(I)I

    move-result v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    int-to-char v4, v4

    const/16 v6, 0xd

    if-ne v4, v6, :cond_1a

    .line 45
    :try_start_a
    iget-boolean v4, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v4, :cond_10

    goto :goto_c

    :cond_1a
    const/4 v6, 0x1

    const/16 v13, 0xa

    if-ne v4, v13, :cond_1b

    goto :goto_d

    .line 58
    :cond_1b
    :try_start_b
    iget-boolean v13, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v13, :cond_1c

    goto :goto_e

    :goto_10
    sub-int v2, v21, v17

    .line 464
    iget v3, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    goto/16 :goto_6

    .line 63
    :cond_1c
    iget v6, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eq v6, v1, :cond_1d

    .line 66
    iget v6, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/16 v18, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto/16 :goto_a

    .line 469
    :goto_11
    iput v4, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_13

    .line 64
    :cond_1d
    new-instance v0, Lio/ktor/utils/io/charsets/TooLongLineException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/ktor/utils/io/charsets/TooLongLineException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    new-instance v0, Lio/ktor/utils/io/charsets/TooLongLineException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/ktor/utils/io/charsets/TooLongLineException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_1f
    iget v0, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v0}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_20
    :goto_12
    const/4 v4, 0x0

    :goto_13
    add-int/lit8 v6, v21, 0x1

    move/from16 v15, v20

    move-object/from16 v14, v22

    move-object/from16 v4, v25

    move-object/from16 v13, v27

    goto/16 :goto_4

    :cond_21
    move-object/from16 v25, v4

    move-object/from16 v27, v13

    move/from16 v20, v15

    const/4 v4, 0x0

    sub-int v15, v20, v17

    .line 476
    invoke-virtual {v0, v15}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    move v2, v4

    .line 42
    :goto_14
    iput v2, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 73
    iget v2, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-lez v2, :cond_22

    .line 74
    iget v2, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v0, v2}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 77
    :cond_22
    iget-boolean v0, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_23

    move v0, v4

    goto :goto_15

    :cond_23
    iget v0, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v6, 0x1

    invoke-static {v0, v6}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    :goto_15
    iput v0, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 79
    iget v0, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 479
    :try_start_c
    move-object/from16 v2, v25

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .line 397
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v2

    sub-int v5, v3, v2

    goto :goto_18

    :catchall_3
    move-exception v0

    goto :goto_17

    :catchall_4
    move-exception v0

    move-object/from16 v25, v4

    :goto_16
    move-object/from16 v27, v13

    .line 479
    :goto_17
    move-object/from16 v4, v25

    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    .line 397
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    .line 479
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_5
    move-exception v0

    move-object/from16 v3, v25

    move-object/from16 v2, v27

    goto/16 :goto_1d

    :cond_24
    move-object/from16 v16, v2

    move-object/from16 p0, v3

    move-object/from16 v25, v4

    move-object/from16 v19, v6

    move-object/from16 p1, v7

    move-object/from16 v27, v13

    move-wide/from16 p2, v14

    const/4 v4, 0x0

    :goto_18
    if-nez v5, :cond_25

    move-object/from16 v3, v25

    move-object/from16 v2, v27

    .line 488
    :try_start_d
    invoke-static {v2, v3}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v5

    goto :goto_1a

    :catchall_6
    move-exception v0

    goto/16 :goto_1e

    :cond_25
    move-object/from16 v3, v25

    move-object/from16 v2, v27

    if-lt v5, v0, :cond_27

    .line 489
    move-object v5, v3

    check-cast v5, Lio/ktor/utils/io/core/Buffer;

    .line 490
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v6

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v5

    sub-int/2addr v6, v5

    const/16 v5, 0x8

    if-ge v6, v5, :cond_26

    goto :goto_19

    :cond_26
    move-object v5, v3

    goto :goto_1a

    .line 491
    :cond_27
    :goto_19
    invoke-static {v2, v3}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 492
    invoke-static {v2, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :goto_1a
    if-nez v5, :cond_28

    move v6, v4

    goto :goto_1b

    :cond_28
    if-gtz v0, :cond_2a

    move-object v3, v5

    const/4 v6, 0x1

    :goto_1b
    if-eqz v6, :cond_29

    .line 502
    invoke-static {v2, v3}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 82
    :cond_29
    :goto_1c
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Input;->getRemaining()J

    move-result-wide v2

    sub-long v14, p2, v2

    long-to-int v0, v14

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v6, v19

    invoke-interface {v6, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object v0, v12

    move-object/from16 v2, v16

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_2a
    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-wide/from16 v14, p2

    move-object v13, v2

    move-object v4, v5

    move-object/from16 v2, v16

    move-object/from16 v6, v19

    const/4 v5, 0x1

    goto/16 :goto_3

    :catchall_7
    move-exception v0

    move-object v3, v4

    move-object v2, v13

    :goto_1d
    const/4 v4, 0x1

    :goto_1e
    if-eqz v4, :cond_2b

    .line 502
    invoke-static {v2, v3}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_2b
    throw v0

    .line 85
    :goto_1f
    iget v0, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v6, 0x1

    if-gt v0, v6, :cond_2f

    .line 86
    iget-boolean v0, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_2c

    .line 87
    iput-boolean v6, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 90
    :cond_2c
    iget v0, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-gtz v0, :cond_2d

    iget-boolean v0, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_2e

    :cond_2d
    move v4, v6

    :cond_2e
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 85
    :cond_2f
    iget v0, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v0}, Lio/ktor/utils/io/core/internal/UTF8Kt;->prematureEndOfStreamUtf(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public static final encodeUTF8-lBXzO7A(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;IIII)I
    .locals 10

    const-string v0, "$this$encodeUTF8"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0xffff

    add-int v1, p2, v0

    .line 199
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 200
    invoke-static {p5, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v8

    move v4, p2

    move v7, p4

    :goto_0
    if-ge v7, v8, :cond_2

    if-lt v4, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p3, v4, 0x1

    .line 209
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p5

    and-int v1, p5, v0

    const v2, 0xff80

    and-int/2addr p5, v2

    if-nez p5, :cond_1

    add-int/lit8 p5, v7, 0x1

    int-to-byte v1, v1

    .line 515
    invoke-virtual {p0, v7, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move v4, p3

    move v7, p5

    goto :goto_0

    :cond_1
    move-object v2, p0

    move-object v3, p1

    move v6, p2

    move v9, p4

    .line 218
    invoke-static/range {v2 .. v9}, Lio/ktor/utils/io/core/internal/UTF8Kt;->encodeUTF8Stage1-Vm9B2pQ(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;IIIIII)I

    move-result p0

    return p0

    :cond_2
    :goto_1
    move v6, p2

    move v9, p4

    sub-int/2addr v4, v6

    int-to-short p0, v4

    .line 206
    invoke-static {p0}, Lkotlin/UShort;->constructor-impl(S)S

    move-result p0

    sub-int/2addr v7, v9

    int-to-short p1, v7

    invoke-static {p1}, Lkotlin/UShort;->constructor-impl(S)S

    move-result p1

    invoke-static {p0, p1}, Lio/ktor/utils/io/core/internal/EncodeResult;->constructor-impl(SS)I

    move-result p0

    return p0
.end method

.method private static final encodeUTF8Stage1-Vm9B2pQ(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;IIIIII)I
    .locals 6

    add-int/lit8 v0, p6, -0x3

    :goto_0
    sub-int v1, v0, p5

    if-lez v1, :cond_8

    if-lt p2, p3, :cond_0

    goto/16 :goto_4

    :cond_0
    add-int/lit8 v1, p2, 0x1

    .line 244
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 246
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    const/16 v4, 0x3f

    if-eqz v3, :cond_3

    if-eq v1, p3, :cond_2

    .line 247
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x2

    .line 250
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v2, v1}, Lio/ktor/utils/io/core/internal/UTF8Kt;->codePoint(CC)I

    move-result v2

    goto :goto_2

    :cond_2
    :goto_1
    move p2, v1

    move v2, v4

    goto :goto_2

    :cond_3
    move p2, v1

    :goto_2
    const/16 v1, 0x80

    if-ltz v2, :cond_4

    if-ge v2, v1, :cond_4

    int-to-byte v1, v2

    .line 520
    invoke-virtual {p0, p5, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/16 v3, 0x800

    if-gt v1, v2, :cond_5

    if-ge v2, v3, :cond_5

    shr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x1f

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    invoke-virtual {p0, p5, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, p5, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-virtual {p0, v3, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/4 v1, 0x2

    goto :goto_3

    :cond_5
    const/high16 v5, 0x10000

    if-gt v3, v2, :cond_6

    if-ge v2, v5, :cond_6

    shr-int/lit8 v3, v2, 0xc

    and-int/lit8 v3, v3, 0xf

    or-int/lit16 v3, v3, 0xe0

    int-to-byte v3, v3

    invoke-virtual {p0, p5, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, p5, 0x1

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v4, v5

    or-int/2addr v4, v1

    int-to-byte v4, v4

    invoke-virtual {p0, v3, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, p5, 0x2

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-virtual {p0, v3, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/4 v1, 0x3

    goto :goto_3

    :cond_6
    if-gt v5, v2, :cond_7

    const/high16 v3, 0x110000

    if-ge v2, v3, :cond_7

    shr-int/lit8 v3, v2, 0x12

    and-int/lit8 v3, v3, 0x7

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    invoke-virtual {p0, p5, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, p5, 0x1

    shr-int/lit8 v5, v2, 0xc

    and-int/2addr v5, v4

    or-int/2addr v5, v1

    int-to-byte v5, v5

    invoke-virtual {p0, v3, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, p5, 0x2

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v4, v5

    or-int/2addr v4, v1

    int-to-byte v4, v4

    invoke-virtual {p0, v3, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, p5, 0x3

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-virtual {p0, v3, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    :goto_3
    add-int/2addr p5, v1

    goto/16 :goto_0

    .line 543
    :cond_7
    invoke-static {v2}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_8
    :goto_4
    if-ne p5, v0, :cond_9

    .line 261
    invoke-static/range {p0 .. p7}, Lio/ktor/utils/io/core/internal/UTF8Kt;->encodeUTF8Stage2-Vm9B2pQ(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;IIIIII)I

    move-result p0

    return p0

    :cond_9
    sub-int/2addr p2, p4

    int-to-short p0, p2

    .line 264
    invoke-static {p0}, Lkotlin/UShort;->constructor-impl(S)S

    move-result p0

    sub-int/2addr p5, p7

    int-to-short p1, p5

    invoke-static {p1}, Lkotlin/UShort;->constructor-impl(S)S

    move-result p1

    invoke-static {p0, p1}, Lio/ktor/utils/io/core/internal/EncodeResult;->constructor-impl(SS)I

    move-result p0

    return p0
.end method

.method private static final encodeUTF8Stage2-Vm9B2pQ(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;IIIIII)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p2

    move/from16 v4, p5

    :goto_0
    sub-int v5, p6, v4

    if-lez v5, :cond_d

    if-lt v3, v2, :cond_0

    goto/16 :goto_5

    :cond_0
    add-int/lit8 v6, v3, 0x1

    .line 286
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 288
    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    const/16 v9, 0x3f

    if-nez v8, :cond_1

    move v3, v6

    goto :goto_2

    :cond_1
    if-eq v6, v2, :cond_3

    .line 290
    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x2

    .line 293
    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v7, v6}, Lio/ktor/utils/io/core/internal/UTF8Kt;->codePoint(CC)I

    move-result v7

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v6

    move v7, v9

    :goto_2
    const/high16 v8, 0x110000

    const/4 v10, 0x3

    const/high16 v11, 0x10000

    const/16 v12, 0x800

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/16 v15, 0x80

    if-gt v14, v7, :cond_4

    if-ge v7, v15, :cond_4

    move v6, v14

    goto :goto_3

    :cond_4
    if-gt v15, v7, :cond_5

    if-ge v7, v12, :cond_5

    move v6, v13

    goto :goto_3

    :cond_5
    if-gt v12, v7, :cond_6

    if-ge v7, v11, :cond_6

    move v6, v10

    goto :goto_3

    :cond_6
    if-gt v11, v7, :cond_c

    if-ge v7, v8, :cond_c

    const/4 v6, 0x4

    :goto_3
    if-le v6, v5, :cond_7

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_5

    :cond_7
    if-ltz v7, :cond_8

    if-ge v7, v15, :cond_8

    int-to-byte v5, v7

    .line 555
    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move v6, v14

    goto :goto_4

    :cond_8
    if-gt v15, v7, :cond_9

    if-ge v7, v12, :cond_9

    shr-int/lit8 v5, v7, 0x6

    and-int/lit8 v5, v5, 0x1f

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v4, 0x1

    and-int/lit8 v6, v7, 0x3f

    or-int/2addr v6, v15

    int-to-byte v6, v6

    invoke-virtual {v0, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move v6, v13

    goto :goto_4

    :cond_9
    if-gt v12, v7, :cond_a

    if-ge v7, v11, :cond_a

    shr-int/lit8 v5, v7, 0xc

    and-int/lit8 v5, v5, 0xf

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v4, 0x1

    shr-int/lit8 v6, v7, 0x6

    and-int/2addr v6, v9

    or-int/2addr v6, v15

    int-to-byte v6, v6

    invoke-virtual {v0, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v4, 0x2

    and-int/lit8 v6, v7, 0x3f

    or-int/2addr v6, v15

    int-to-byte v6, v6

    invoke-virtual {v0, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move v6, v10

    goto :goto_4

    :cond_a
    if-gt v11, v7, :cond_b

    if-ge v7, v8, :cond_b

    shr-int/lit8 v5, v7, 0x12

    and-int/lit8 v5, v5, 0x7

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v4, 0x1

    shr-int/lit8 v6, v7, 0xc

    and-int/2addr v6, v9

    or-int/2addr v6, v15

    int-to-byte v6, v6

    invoke-virtual {v0, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v4, 0x2

    shr-int/lit8 v6, v7, 0x6

    and-int/2addr v6, v9

    or-int/2addr v6, v15

    int-to-byte v6, v6

    invoke-virtual {v0, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v4, 0x3

    and-int/lit8 v6, v7, 0x3f

    or-int/2addr v6, v15

    int-to-byte v6, v6

    invoke-virtual {v0, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/4 v6, 0x4

    :goto_4
    add-int/2addr v4, v6

    goto/16 :goto_0

    .line 578
    :cond_b
    invoke-static {v7}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 550
    :cond_c
    invoke-static {v7}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_d
    :goto_5
    sub-int v3, v3, p4

    int-to-short v0, v3

    .line 305
    invoke-static {v0}, Lkotlin/UShort;->constructor-impl(S)S

    move-result v0

    sub-int v4, v4, p7

    int-to-short v1, v4

    invoke-static {v1}, Lkotlin/UShort;->constructor-impl(S)S

    move-result v1

    invoke-static {v0, v1}, Lio/ktor/utils/io/core/internal/EncodeResult;->constructor-impl(SS)I

    move-result v0

    return v0
.end method

.method public static final highSurrogate(I)I
    .locals 1

    ushr-int/lit8 p0, p0, 0xa

    const v0, 0xd7c0

    add-int/2addr p0, v0

    return p0
.end method

.method public static final isBmpCodePoint(I)Z
    .locals 0

    ushr-int/lit8 p0, p0, 0x10

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final isValidCodePoint(I)Z
    .locals 1

    const v0, 0x10ffff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final lowSurrogate(I)I
    .locals 1

    and-int/lit16 p0, p0, 0x3ff

    const v0, 0xdc00

    add-int/2addr p0, v0

    return p0
.end method

.method public static final malformedByteCount(I)Ljava/lang/Void;
    .locals 3

    .line 347
    new-instance v0, Lio/ktor/utils/io/core/internal/MalformedUTF8InputException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " more character bytes"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/ktor/utils/io/core/internal/MalformedUTF8InputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final malformedCodePoint(I)Ljava/lang/Void;
    .locals 3

    .line 351
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed code-point "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " found"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final prematureEndOfStreamUtf(I)Ljava/lang/Void;
    .locals 3

    .line 94
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Premature end of stream: expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " bytes to decode UTF-8 char"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final putUtf8Char-62zg_DM(Ljava/nio/ByteBuffer;II)I
    .locals 5

    const-string v0, "$this$putUtf8Char"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/16 v1, 0x80

    if-ltz p2, :cond_0

    if-ge p2, v1, :cond_0

    int-to-byte p2, p2

    .line 580
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return v0

    :cond_0
    const/16 v2, 0x800

    const/4 v3, 0x2

    if-gt v1, p2, :cond_1

    if-ge p2, v2, :cond_1

    shr-int/lit8 v2, p2, 0x6

    and-int/lit8 v2, v2, 0x1f

    or-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    .line 583
    invoke-virtual {p0, p1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/2addr p1, v0

    and-int/lit8 p2, p2, 0x3f

    or-int/2addr p2, v1

    int-to-byte p2, p2

    .line 586
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return v3

    :cond_1
    const/4 v0, 0x3

    const/high16 v4, 0x10000

    if-gt v2, p2, :cond_2

    if-ge p2, v4, :cond_2

    shr-int/lit8 v2, p2, 0xc

    and-int/lit8 v2, v2, 0xf

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    .line 589
    invoke-virtual {p0, p1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, p1, 0x1

    shr-int/lit8 v4, p2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v1

    int-to-byte v4, v4

    .line 592
    invoke-virtual {p0, v2, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/2addr p1, v3

    and-int/lit8 p2, p2, 0x3f

    or-int/2addr p2, v1

    int-to-byte p2, p2

    .line 595
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return v0

    :cond_2
    if-gt v4, p2, :cond_3

    const/high16 v2, 0x110000

    if-ge p2, v2, :cond_3

    shr-int/lit8 v2, p2, 0x12

    and-int/lit8 v2, v2, 0x7

    or-int/lit16 v2, v2, 0xf0

    int-to-byte v2, v2

    .line 598
    invoke-virtual {p0, p1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, p1, 0x1

    shr-int/lit8 v3, p2, 0xc

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v1

    int-to-byte v3, v3

    .line 601
    invoke-virtual {p0, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, p1, 0x2

    shr-int/lit8 v3, p2, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v1

    int-to-byte v3, v3

    .line 604
    invoke-virtual {p0, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/2addr p1, v0

    and-int/lit8 p2, p2, 0x3f

    or-int/2addr p2, v1

    int-to-byte p2, p2

    .line 607
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/4 p0, 0x4

    return p0

    .line 342
    :cond_3
    invoke-static {p2}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method
