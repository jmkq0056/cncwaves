.class final Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FileChannels.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/util/cio/FileChannelsKt$readChannel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "buffer",
        "Ljava/nio/ByteBuffer;",
        "invoke",
        "(Ljava/nio/ByteBuffer;)Ljava/lang/Boolean;"
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
.field final synthetic $endInclusive:J

.field final synthetic $fileChannel:Ljava/nio/channels/FileChannel;

.field final synthetic $position:Lkotlin/jvm/internal/Ref$LongRef;


# direct methods
.method constructor <init>(JLkotlin/jvm/internal/Ref$LongRef;Ljava/nio/channels/FileChannel;)V
    .locals 0

    iput-wide p1, p0, Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$2;->$endInclusive:J

    iput-object p3, p0, Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$2;->$position:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p4, p0, Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$2;->$fileChannel:Ljava/nio/channels/FileChannel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/nio/ByteBuffer;)Ljava/lang/Boolean;
    .locals 5

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-wide v0, p0, Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$2;->$endInclusive:J

    iget-object v2, p0, Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$2;->$position:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v2, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 65
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 66
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 67
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    long-to-int v0, v0

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 68
    iget-object v0, p0, Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$2;->$fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 69
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$2;->$fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    .line 75
    iget-object p1, p0, Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$2;->$position:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v1, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    :cond_1
    const/4 p1, -0x1

    if-eq v0, p1, :cond_2

    .line 77
    iget-object p1, p0, Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$2;->$position:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v0, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-wide v2, p0, Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$2;->$endInclusive:J

    cmp-long p1, v0, v2

    if-gtz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 63
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$2;->invoke(Ljava/nio/ByteBuffer;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
