.class public final Lio/ktor/utils/io/core/InputArraysJvmKt;
.super Ljava/lang/Object;
.source "InputArraysJvm.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInputArraysJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InputArraysJvm.kt\nio/ktor/utils/io/core/InputArraysJvmKt\n+ 2 Input.kt\nio/ktor/utils/io/core/InputKt\n+ 3 Buffer.kt\nio/ktor/utils/io/core/Buffer\n*L\n1#1,30:1\n823#2,6:31\n829#2,13:38\n69#3:37\n*S KotlinDebug\n*F\n+ 1 InputArraysJvm.kt\nio/ktor/utils/io/core/InputArraysJvmKt\n*L\n17#1:31,6\n17#1:38,13\n19#1:37\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0001\u001a\u001c\u0010\u0006\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0001\u00a8\u0006\u0008"
    }
    d2 = {
        "readAvailable",
        "",
        "Lio/ktor/utils/io/core/Input;",
        "dst",
        "Ljava/nio/ByteBuffer;",
        "length",
        "readFully",
        "",
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
.method public static final readAvailable(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;I)I
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 32
    invoke-static {p0, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    move v3, v2

    .line 36
    :cond_1
    :try_start_0
    move-object v4, v1

    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    .line 18
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    .line 19
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 37
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v7

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 19
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 20
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    .line 21
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    invoke-static {v7, p1, v4}, Lio/ktor/utils/io/bits/MemoryJvmKt;->copyTo-62zg_DM(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    .line 22
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    add-int/2addr v3, v6

    .line 25
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_2

    if-ge v3, p2, :cond_2

    .line 41
    :try_start_1
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    return v3

    :catchall_0
    move-exception p1

    move v0, v2

    goto :goto_0

    .line 47
    :cond_2
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    return v3

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_3

    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_3
    throw p1
.end method

.method public static synthetic readAvailable$default(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 14
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/InputArraysJvmKt;->readAvailable(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;I)I

    move-result p0

    return p0
.end method

.method public static final readFully(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;I)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/InputArraysJvmKt;->readAvailable(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;I)I

    move-result p0

    if-lt p0, p2, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-static {p2}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static synthetic readFully$default(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/InputArraysJvmKt;->readFully(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;I)V

    return-void
.end method
