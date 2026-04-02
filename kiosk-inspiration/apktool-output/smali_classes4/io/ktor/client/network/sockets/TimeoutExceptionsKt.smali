.class public final Lio/ktor/client/network/sockets/TimeoutExceptionsKt;
.super Ljava/lang/Object;
.source "TimeoutExceptions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u00a8\u0006\u0004"
    }
    d2 = {
        "ByteChannelWithMappedExceptions",
        "Lio/ktor/utils/io/ByteChannel;",
        "request",
        "Lio/ktor/client/request/HttpRequestData;",
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
.method public static final ByteChannelWithMappedExceptions(Lio/ktor/client/request/HttpRequestData;)Lio/ktor/utils/io/ByteChannel;
    .locals 3

    const-string v0, "request"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lio/ktor/client/network/sockets/TimeoutExceptionsKt$ByteChannelWithMappedExceptions$1;

    invoke-direct {v0, p0}, Lio/ktor/client/network/sockets/TimeoutExceptionsKt$ByteChannelWithMappedExceptions$1;-><init>(Lio/ktor/client/request/HttpRequestData;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 p0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2, v0, p0, v1}, Lio/ktor/utils/io/ByteChannelKt;->ByteChannel$default(ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/ktor/utils/io/ByteChannel;

    move-result-object p0

    return-object p0
.end method
