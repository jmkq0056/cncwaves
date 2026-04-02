.class public final Lio/ktor/client/plugins/cache/HttpCacheKt;
.super Ljava/lang/Object;
.source "HttpCache.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u001aN\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u001a\u0010\u000b\u001a\u0016\u0012\u0004\u0012\u00020\u0007\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u000c0\u0006H\u0000\u001a\u000c\u0010\r\u001a\u00020\u000e*\u00020\u000fH\u0002\"\u0018\u0010\u0000\u001a\u00060\u0001j\u0002`\u0002X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0010"
    }
    d2 = {
        "LOGGER",
        "Lorg/slf4j/Logger;",
        "Lio/ktor/util/logging/Logger;",
        "getLOGGER",
        "()Lorg/slf4j/Logger;",
        "mergedHeadersLookup",
        "Lkotlin/Function1;",
        "",
        "content",
        "Lio/ktor/http/content/OutgoingContent;",
        "headerExtractor",
        "allHeadersExtractor",
        "",
        "canStore",
        "",
        "Lio/ktor/http/URLProtocol;",
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


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-string v0, "io.ktor.client.plugins.HttpCache"

    invoke-static {v0}, Lio/ktor/util/logging/KtorSimpleLoggerJvmKt;->KtorSimpleLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/ktor/client/plugins/cache/HttpCacheKt;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public static final synthetic access$canStore(Lio/ktor/http/URLProtocol;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lio/ktor/client/plugins/cache/HttpCacheKt;->canStore(Lio/ktor/http/URLProtocol;)Z

    move-result p0

    return p0
.end method

.method private static final canStore(Lio/ktor/http/URLProtocol;)Z
    .locals 2

    .line 364
    invoke-virtual {p0}, Lio/ktor/http/URLProtocol;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lio/ktor/http/URLProtocol;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "https"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final getLOGGER()Lorg/slf4j/Logger;
    .locals 1

    .line 34
    sget-object v0, Lio/ktor/client/plugins/cache/HttpCacheKt;->LOGGER:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static final mergedHeadersLookup(Lio/ktor/http/content/OutgoingContent;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/content/OutgoingContent;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "content"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headerExtractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allHeadersExtractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    new-instance v0, Lio/ktor/client/plugins/cache/HttpCacheKt$mergedHeadersLookup$1;

    invoke-direct {v0, p0, p1, p2}, Lio/ktor/client/plugins/cache/HttpCacheKt$mergedHeadersLookup$1;-><init>(Lio/ktor/http/content/OutgoingContent;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method
