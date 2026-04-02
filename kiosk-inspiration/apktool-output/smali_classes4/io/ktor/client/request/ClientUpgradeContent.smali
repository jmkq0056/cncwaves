.class public abstract Lio/ktor/client/request/ClientUpgradeContent;
.super Lio/ktor/http/content/OutgoingContent$NoContent;
.source "ClientUpgradeContent.kt"


# annotations
.annotation runtime Lio/ktor/util/InternalAPI;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\'\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0019\u0010\r\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\nH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H&R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\t\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0013"
    }
    d2 = {
        "Lio/ktor/client/request/ClientUpgradeContent;",
        "Lio/ktor/http/content/OutgoingContent$NoContent;",
        "()V",
        "content",
        "Lio/ktor/utils/io/ByteChannel;",
        "getContent",
        "()Lio/ktor/utils/io/ByteChannel;",
        "content$delegate",
        "Lkotlin/Lazy;",
        "output",
        "Lio/ktor/utils/io/ByteWriteChannel;",
        "getOutput",
        "()Lio/ktor/utils/io/ByteWriteChannel;",
        "pipeTo",
        "",
        "(Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "verify",
        "headers",
        "Lio/ktor/http/Headers;",
        "ktor-client-core"
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
.field private final content$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lio/ktor/http/content/OutgoingContent$NoContent;-><init>()V

    .line 15
    sget-object v0, Lio/ktor/client/request/ClientUpgradeContent$content$2;->INSTANCE:Lio/ktor/client/request/ClientUpgradeContent$content$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/client/request/ClientUpgradeContent;->content$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getContent()Lio/ktor/utils/io/ByteChannel;
    .locals 1

    .line 15
    iget-object v0, p0, Lio/ktor/client/request/ClientUpgradeContent;->content$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/ByteChannel;

    return-object v0
.end method


# virtual methods
.method public final getOutput()Lio/ktor/utils/io/ByteWriteChannel;
    .locals 1

    .line 17
    invoke-direct {p0}, Lio/ktor/client/request/ClientUpgradeContent;->getContent()Lio/ktor/utils/io/ByteChannel;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/ByteWriteChannel;

    return-object v0
.end method

.method public final pipeTo(Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lio/ktor/client/request/ClientUpgradeContent;->getContent()Lio/ktor/utils/io/ByteChannel;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/ktor/utils/io/ByteReadChannel;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Lio/ktor/utils/io/ByteReadChannelKt;->copyAndClose$default(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public abstract verify(Lio/ktor/http/Headers;)V
.end method
