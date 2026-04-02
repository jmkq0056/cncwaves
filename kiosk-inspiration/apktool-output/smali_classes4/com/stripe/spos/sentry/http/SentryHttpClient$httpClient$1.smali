.class final Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SentryHttpClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/spos/sentry/http/SentryHttpClient;-><init>(Lio/ktor/client/engine/HttpClientEngine;Lkotlinx/datetime/Clock;Lcom/stripe/spos/sentry/http/SentryConfig;Lkotlinx/coroutines/CoroutineScope;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/ktor/client/HttpClientConfig<",
        "*>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u0006\u0012\u0002\u0008\u00030\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lio/ktor/client/HttpClientConfig;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $clock:Lkotlinx/datetime/Clock;

.field final synthetic this$0:Lcom/stripe/spos/sentry/http/SentryHttpClient;


# direct methods
.method constructor <init>(Lcom/stripe/spos/sentry/http/SentryHttpClient;Lkotlinx/datetime/Clock;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1;->this$0:Lcom/stripe/spos/sentry/http/SentryHttpClient;

    iput-object p2, p0, Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1;->$clock:Lkotlinx/datetime/Clock;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, Lio/ktor/client/HttpClientConfig;

    invoke-virtual {p0, p1}, Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1;->invoke(Lio/ktor/client/HttpClientConfig;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lio/ktor/client/HttpClientConfig;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/HttpClientConfig<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "$this$HttpClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lio/ktor/client/plugins/UserAgent;->Plugin:Lio/ktor/client/plugins/UserAgent$Plugin;

    check-cast v0, Lio/ktor/client/plugins/HttpClientPlugin;

    new-instance v1, Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1$1;

    iget-object v2, p0, Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1;->this$0:Lcom/stripe/spos/sentry/http/SentryHttpClient;

    invoke-direct {v1, v2}, Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1$1;-><init>(Lcom/stripe/spos/sentry/http/SentryHttpClient;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0, v1}, Lio/ktor/client/HttpClientConfig;->install(Lio/ktor/client/plugins/HttpClientPlugin;Lkotlin/jvm/functions/Function1;)V

    .line 44
    sget-object v0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation;->Plugin:Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Plugin;

    check-cast v0, Lio/ktor/client/plugins/HttpClientPlugin;

    sget-object v1, Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1$2;->INSTANCE:Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1$2;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0, v1}, Lio/ktor/client/HttpClientConfig;->install(Lio/ktor/client/plugins/HttpClientPlugin;Lkotlin/jvm/functions/Function1;)V

    .line 52
    sget-object v0, Lio/ktor/client/plugins/DefaultRequest;->Plugin:Lio/ktor/client/plugins/DefaultRequest$Plugin;

    check-cast v0, Lio/ktor/client/plugins/HttpClientPlugin;

    new-instance v1, Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1$3;

    iget-object v2, p0, Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1;->this$0:Lcom/stripe/spos/sentry/http/SentryHttpClient;

    iget-object v3, p0, Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1;->$clock:Lkotlinx/datetime/Clock;

    invoke-direct {v1, v2, v3}, Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1$3;-><init>(Lcom/stripe/spos/sentry/http/SentryHttpClient;Lkotlinx/datetime/Clock;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0, v1}, Lio/ktor/client/HttpClientConfig;->install(Lio/ktor/client/plugins/HttpClientPlugin;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
