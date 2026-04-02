.class final Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SentryHttpClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1;->invoke(Lio/ktor/client/HttpClientConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/ktor/client/plugins/DefaultRequest$DefaultRequestBuilder;",
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
        "Lio/ktor/client/plugins/DefaultRequest$DefaultRequestBuilder;",
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

    iput-object p1, p0, Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1$3;->this$0:Lcom/stripe/spos/sentry/http/SentryHttpClient;

    iput-object p2, p0, Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1$3;->$clock:Lkotlinx/datetime/Clock;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 52
    check-cast p1, Lio/ktor/client/plugins/DefaultRequest$DefaultRequestBuilder;

    invoke-virtual {p0, p1}, Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1$3;->invoke(Lio/ktor/client/plugins/DefaultRequest$DefaultRequestBuilder;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lio/ktor/client/plugins/DefaultRequest$DefaultRequestBuilder;)V
    .locals 2

    const-string v0, "$this$install"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1$3$1;

    iget-object v1, p0, Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1$3;->this$0:Lcom/stripe/spos/sentry/http/SentryHttpClient;

    invoke-direct {v0, v1}, Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1$3$1;-><init>(Lcom/stripe/spos/sentry/http/SentryHttpClient;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Lio/ktor/client/plugins/DefaultRequest$DefaultRequestBuilder;->url(Lkotlin/jvm/functions/Function1;)V

    .line 58
    check-cast p1, Lio/ktor/http/HttpMessageBuilder;

    iget-object v0, p0, Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1$3;->this$0:Lcom/stripe/spos/sentry/http/SentryHttpClient;

    invoke-static {v0}, Lcom/stripe/spos/sentry/http/SentryHttpClient;->access$getConfig$p(Lcom/stripe/spos/sentry/http/SentryHttpClient;)Lcom/stripe/spos/sentry/http/SentryConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1$3;->$clock:Lkotlinx/datetime/Clock;

    invoke-interface {v1}, Lkotlinx/datetime/Clock;->now()Lkotlinx/datetime/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/spos/sentry/http/SentryConfig;->createAuthHeader$sentry_http(Lkotlinx/datetime/Instant;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-Sentry-Auth"

    invoke-static {p1, v1, v0}, Lio/ktor/client/request/UtilsKt;->header(Lio/ktor/http/HttpMessageBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    sget-object v0, Lio/ktor/http/ContentType$Application;->INSTANCE:Lio/ktor/http/ContentType$Application;

    invoke-virtual {v0}, Lio/ktor/http/ContentType$Application;->getJson()Lio/ktor/http/ContentType;

    move-result-object v0

    invoke-static {p1, v0}, Lio/ktor/http/HttpMessagePropertiesKt;->contentType(Lio/ktor/http/HttpMessageBuilder;Lio/ktor/http/ContentType;)V

    return-void
.end method
