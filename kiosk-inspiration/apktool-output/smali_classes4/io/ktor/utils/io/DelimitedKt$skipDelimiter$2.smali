.class final Lio/ktor/utils/io/DelimitedKt$skipDelimiter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Delimited.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/DelimitedKt;->skipDelimiter(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/ktor/utils/io/LookAheadSession;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lio/ktor/utils/io/LookAheadSession;",
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
.field final synthetic $delimiter:Ljava/nio/ByteBuffer;

.field final synthetic $found:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/nio/ByteBuffer;)V
    .locals 0

    iput-object p1, p0, Lio/ktor/utils/io/DelimitedKt$skipDelimiter$2;->$found:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lio/ktor/utils/io/DelimitedKt$skipDelimiter$2;->$delimiter:Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p1, Lio/ktor/utils/io/LookAheadSession;

    invoke-virtual {p0, p1}, Lio/ktor/utils/io/DelimitedKt$skipDelimiter$2;->invoke(Lio/ktor/utils/io/LookAheadSession;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lio/ktor/utils/io/LookAheadSession;)V
    .locals 2

    const-string v0, "$this$lookAhead"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lio/ktor/utils/io/DelimitedKt$skipDelimiter$2;->$found:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v1, p0, Lio/ktor/utils/io/DelimitedKt$skipDelimiter$2;->$delimiter:Ljava/nio/ByteBuffer;

    invoke-static {p1, v1}, Lio/ktor/utils/io/DelimitedKt;->access$tryEnsureDelimiter(Lio/ktor/utils/io/LookAheadSession;Ljava/nio/ByteBuffer;)I

    move-result p1

    iget-object v1, p0, Lio/ktor/utils/io/DelimitedKt$skipDelimiter$2;->$delimiter:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void
.end method
