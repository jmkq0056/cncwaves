.class final Lio/ktor/utils/io/ByteBufferChannel$peekTo$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ByteBufferChannel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/ByteBufferChannel;->peekTo-lBXzO7A$suspendImpl(Lio/ktor/utils/io/ByteBufferChannel;Ljava/nio/ByteBuffer;JJJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/nio/ByteBuffer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteBufferChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteBufferChannel.kt\nio/ktor/utils/io/ByteBufferChannel$peekTo$2\n+ 2 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n*L\n1#1,2411:1\n15#2:2412\n*S KotlinDebug\n*F\n+ 1 ByteBufferChannel.kt\nio/ktor/utils/io/ByteBufferChannel$peekTo$2\n*L\n2380#1:2412\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "nioBuffer",
        "Ljava/nio/ByteBuffer;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $bytesCopied:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $destination:Ljava/nio/ByteBuffer;

.field final synthetic $destinationOffset:J

.field final synthetic $max:J

.field final synthetic $offset:J


# direct methods
.method constructor <init>(JJLjava/nio/ByteBuffer;JLkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    iput-wide p1, p0, Lio/ktor/utils/io/ByteBufferChannel$peekTo$2;->$offset:J

    iput-wide p3, p0, Lio/ktor/utils/io/ByteBufferChannel$peekTo$2;->$max:J

    iput-object p5, p0, Lio/ktor/utils/io/ByteBufferChannel$peekTo$2;->$destination:Ljava/nio/ByteBuffer;

    iput-wide p6, p0, Lio/ktor/utils/io/ByteBufferChannel$peekTo$2;->$destinationOffset:J

    iput-object p8, p0, Lio/ktor/utils/io/ByteBufferChannel$peekTo$2;->$bytesCopied:Lkotlin/jvm/internal/Ref$IntRef;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2374
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lio/ktor/utils/io/ByteBufferChannel$peekTo$2;->invoke(Ljava/nio/ByteBuffer;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/nio/ByteBuffer;)V
    .locals 7

    const-string v0, "nioBuffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2375
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lio/ktor/utils/io/ByteBufferChannel$peekTo$2;->$offset:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2376
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2377
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-wide v1, p0, Lio/ktor/utils/io/ByteBufferChannel$peekTo$2;->$offset:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2379
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 2380
    iget-wide v1, p0, Lio/ktor/utils/io/ByteBufferChannel$peekTo$2;->$max:J

    iget-object v3, p0, Lio/ktor/utils/io/ByteBufferChannel$peekTo$2;->$destination:Ljava/nio/ByteBuffer;

    .line 2412
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    int-to-long v3, v3

    .line 2380
    iget-wide v5, p0, Lio/ktor/utils/io/ByteBufferChannel$peekTo$2;->$destinationOffset:J

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 2381
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    int-to-long v3, v3

    iget-wide v5, p0, Lio/ktor/utils/io/ByteBufferChannel$peekTo$2;->$offset:J

    add-long/2addr v1, v5

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 2382
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2383
    iget-object v1, p0, Lio/ktor/utils/io/ByteBufferChannel$peekTo$2;->$bytesCopied:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    iput v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 2384
    iget-object v1, p0, Lio/ktor/utils/io/ByteBufferChannel$peekTo$2;->$destination:Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lio/ktor/utils/io/ByteBufferChannel$peekTo$2;->$destinationOffset:J

    long-to-int v2, v2

    invoke-static {p1, v1, v2}, Lio/ktor/utils/io/bits/MemoryJvmKt;->copyTo-SG11BkQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    .line 2385
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_0
    return-void
.end method
