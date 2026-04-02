.class public final Lio/ktor/client/plugins/UserAgentKt;
.super Ljava/lang/Object;
.source "UserAgent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u000e\u0010\u0003\u001a\u00020\u0004*\u0006\u0012\u0002\u0008\u00030\u0005\u001a\u000e\u0010\u0006\u001a\u00020\u0004*\u0006\u0012\u0002\u0008\u00030\u0005\"\u0012\u0010\u0000\u001a\u00060\u0001j\u0002`\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "LOGGER",
        "Lorg/slf4j/Logger;",
        "Lio/ktor/util/logging/Logger;",
        "BrowserUserAgent",
        "",
        "Lio/ktor/client/HttpClientConfig;",
        "CurlUserAgent",
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

    .line 13
    const-string v0, "io.ktor.client.plugins.UserAgent"

    invoke-static {v0}, Lio/ktor/util/logging/KtorSimpleLoggerJvmKt;->KtorSimpleLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/ktor/client/plugins/UserAgentKt;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public static final BrowserUserAgent(Lio/ktor/client/HttpClientConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/HttpClientConfig<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lio/ktor/client/plugins/UserAgent;->Plugin:Lio/ktor/client/plugins/UserAgent$Plugin;

    check-cast v0, Lio/ktor/client/plugins/HttpClientPlugin;

    sget-object v1, Lio/ktor/client/plugins/UserAgentKt$BrowserUserAgent$1;->INSTANCE:Lio/ktor/client/plugins/UserAgentKt$BrowserUserAgent$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0, v1}, Lio/ktor/client/HttpClientConfig;->install(Lio/ktor/client/plugins/HttpClientPlugin;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final CurlUserAgent(Lio/ktor/client/HttpClientConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/HttpClientConfig<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object v0, Lio/ktor/client/plugins/UserAgent;->Plugin:Lio/ktor/client/plugins/UserAgent$Plugin;

    check-cast v0, Lio/ktor/client/plugins/HttpClientPlugin;

    sget-object v1, Lio/ktor/client/plugins/UserAgentKt$CurlUserAgent$1;->INSTANCE:Lio/ktor/client/plugins/UserAgentKt$CurlUserAgent$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0, v1}, Lio/ktor/client/HttpClientConfig;->install(Lio/ktor/client/plugins/HttpClientPlugin;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$getLOGGER$p()Lorg/slf4j/Logger;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/UserAgentKt;->LOGGER:Lorg/slf4j/Logger;

    return-object v0
.end method
