.class public final Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt;
.super Ljava/lang/Object;
.source "TimeoutExceptionsCommon.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u001a\u001c\u0010\u0000\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "mapEngineExceptions",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "input",
        "request",
        "Lio/ktor/client/request/HttpRequestData;",
        "Lio/ktor/utils/io/ByteWriteChannel;",
        "output",
        "ktor-client-core"
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
.method public static final mapEngineExceptions(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/client/request/HttpRequestData;)Lio/ktor/utils/io/ByteReadChannel;
    .locals 7
    .annotation runtime Lio/ktor/util/InternalAPI;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lio/ktor/util/PlatformUtils;->INSTANCE:Lio/ktor/util/PlatformUtils;

    invoke-virtual {v0}, Lio/ktor/util/PlatformUtils;->getIS_NATIVE()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 34
    :cond_0
    invoke-static {p2}, Lio/ktor/client/network/sockets/TimeoutExceptionsKt;->ByteChannelWithMappedExceptions(Lio/ktor/client/request/HttpRequestData;)Lio/ktor/utils/io/ByteChannel;

    move-result-object v3

    .line 37
    new-instance p2, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$1;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v3, v0}, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$1;-><init>(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteChannel;Lkotlin/coroutines/Continuation;)V

    move-object v4, p2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lio/ktor/utils/io/CoroutinesKt;->writer$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/ByteChannel;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lio/ktor/utils/io/WriterJob;

    .line 45
    check-cast v3, Lio/ktor/utils/io/ByteReadChannel;

    return-object v3
.end method

.method public static final mapEngineExceptions(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/client/request/HttpRequestData;)Lio/ktor/utils/io/ByteWriteChannel;
    .locals 7
    .annotation runtime Lio/ktor/util/InternalAPI;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lio/ktor/util/PlatformUtils;->INSTANCE:Lio/ktor/util/PlatformUtils;

    invoke-virtual {v0}, Lio/ktor/util/PlatformUtils;->getIS_NATIVE()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 58
    :cond_0
    invoke-static {p2}, Lio/ktor/client/network/sockets/TimeoutExceptionsKt;->ByteChannelWithMappedExceptions(Lio/ktor/client/request/HttpRequestData;)Lio/ktor/utils/io/ByteChannel;

    move-result-object v3

    .line 61
    new-instance p2, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$2;

    const/4 v0, 0x0

    invoke-direct {p2, v3, p1, v0}, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$2;-><init>(Lio/ktor/utils/io/ByteChannel;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)V

    move-object v4, p2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lio/ktor/utils/io/CoroutinesKt;->writer$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/ByteChannel;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lio/ktor/utils/io/WriterJob;

    .line 69
    check-cast v3, Lio/ktor/utils/io/ByteWriteChannel;

    return-object v3
.end method
