.class final Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$copy$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Reading.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/jvm/nio/ReadingKt;->copyTo(Ljava/nio/channels/ReadableByteChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "bb",
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
.field final synthetic $copied:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $eof:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $limit:J

.field final synthetic $this_copyTo:Ljava/nio/channels/ReadableByteChannel;


# direct methods
.method constructor <init>(JLkotlin/jvm/internal/Ref$LongRef;Ljava/nio/channels/ReadableByteChannel;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-wide p1, p0, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$copy$1;->$limit:J

    iput-object p3, p0, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$copy$1;->$copied:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p4, p0, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$copy$1;->$this_copyTo:Ljava/nio/channels/ReadableByteChannel;

    iput-object p5, p0, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$copy$1;->$eof:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$copy$1;->invoke(Ljava/nio/ByteBuffer;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/nio/ByteBuffer;)V
    .locals 7

    const-string v0, "bb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-wide v0, p0, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$copy$1;->$limit:J

    iget-object v2, p0, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$copy$1;->$copied:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v2, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    sub-long/2addr v0, v2

    .line 24
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-gez v2, :cond_1

    .line 25
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 26
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    long-to-int v0, v0

    add-int/2addr v5, v0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 27
    iget-object v0, p0, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$copy$1;->$this_copyTo:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 29
    iget-object v0, p0, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$copy$1;->$eof:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v3, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_0

    .line 30
    :cond_0
    iget-object v1, p0, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$copy$1;->$copied:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v3, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 31
    :goto_0
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void

    .line 33
    :cond_1
    iget-object v0, p0, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$copy$1;->$this_copyTo:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-ne p1, v4, :cond_2

    .line 35
    iget-object p1, p0, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$copy$1;->$eof:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v3, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void

    .line 36
    :cond_2
    iget-object v0, p0, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$copy$1;->$copied:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    return-void
.end method
