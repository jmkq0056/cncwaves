.class public final Lio/ktor/client/utils/ContentKt;
.super Ljava/lang/Object;
.source "Content.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "wrapHeaders",
        "Lio/ktor/http/content/OutgoingContent;",
        "block",
        "Lkotlin/Function1;",
        "Lio/ktor/http/Headers;",
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
.method public static final wrapHeaders(Lio/ktor/http/content/OutgoingContent;Lkotlin/jvm/functions/Function1;)Lio/ktor/http/content/OutgoingContent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/content/OutgoingContent;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/http/Headers;",
            "+",
            "Lio/ktor/http/Headers;",
            ">;)",
            "Lio/ktor/http/content/OutgoingContent;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    instance-of v0, p0, Lio/ktor/http/content/OutgoingContent$NoContent;

    if-eqz v0, :cond_0

    new-instance v0, Lio/ktor/client/utils/ContentKt$wrapHeaders$1;

    invoke-direct {v0, p1, p0}, Lio/ktor/client/utils/ContentKt$wrapHeaders$1;-><init>(Lkotlin/jvm/functions/Function1;Lio/ktor/http/content/OutgoingContent;)V

    check-cast v0, Lio/ktor/http/content/OutgoingContent;

    return-object v0

    .line 34
    :cond_0
    instance-of v0, p0, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;

    if-eqz v0, :cond_1

    new-instance v0, Lio/ktor/client/utils/ContentKt$wrapHeaders$2;

    invoke-direct {v0, p1, p0}, Lio/ktor/client/utils/ContentKt$wrapHeaders$2;-><init>(Lkotlin/jvm/functions/Function1;Lio/ktor/http/content/OutgoingContent;)V

    check-cast v0, Lio/ktor/http/content/OutgoingContent;

    return-object v0

    .line 45
    :cond_1
    instance-of v0, p0, Lio/ktor/http/content/OutgoingContent$WriteChannelContent;

    if-eqz v0, :cond_2

    new-instance v0, Lio/ktor/client/utils/ContentKt$wrapHeaders$3;

    invoke-direct {v0, p1, p0}, Lio/ktor/client/utils/ContentKt$wrapHeaders$3;-><init>(Lkotlin/jvm/functions/Function1;Lio/ktor/http/content/OutgoingContent;)V

    check-cast v0, Lio/ktor/http/content/OutgoingContent;

    return-object v0

    .line 54
    :cond_2
    instance-of v0, p0, Lio/ktor/http/content/OutgoingContent$ByteArrayContent;

    if-eqz v0, :cond_3

    new-instance v0, Lio/ktor/client/utils/ContentKt$wrapHeaders$4;

    invoke-direct {v0, p1, p0}, Lio/ktor/client/utils/ContentKt$wrapHeaders$4;-><init>(Lkotlin/jvm/functions/Function1;Lio/ktor/http/content/OutgoingContent;)V

    check-cast v0, Lio/ktor/http/content/OutgoingContent;

    return-object v0

    .line 63
    :cond_3
    instance-of v0, p0, Lio/ktor/http/content/OutgoingContent$ProtocolUpgrade;

    if-eqz v0, :cond_4

    new-instance v0, Lio/ktor/client/utils/ContentKt$wrapHeaders$5;

    invoke-direct {v0, p1, p0}, Lio/ktor/client/utils/ContentKt$wrapHeaders$5;-><init>(Lkotlin/jvm/functions/Function1;Lio/ktor/http/content/OutgoingContent;)V

    check-cast v0, Lio/ktor/http/content/OutgoingContent;

    return-object v0

    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
