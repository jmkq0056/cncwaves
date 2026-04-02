.class final Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SentryHttpClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1$3;->invoke(Lio/ktor/client/plugins/DefaultRequest$DefaultRequestBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/ktor/http/URLBuilder;",
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
        "Lio/ktor/http/URLBuilder;",
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
.field final synthetic this$0:Lcom/stripe/spos/sentry/http/SentryHttpClient;


# direct methods
.method constructor <init>(Lcom/stripe/spos/sentry/http/SentryHttpClient;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1$3$1;->this$0:Lcom/stripe/spos/sentry/http/SentryHttpClient;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 53
    check-cast p1, Lio/ktor/http/URLBuilder;

    invoke-virtual {p0, p1}, Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1$3$1;->invoke(Lio/ktor/http/URLBuilder;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lio/ktor/http/URLBuilder;)V
    .locals 3

    const-string v0, "$this$url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1$3$1;->this$0:Lcom/stripe/spos/sentry/http/SentryHttpClient;

    invoke-static {v0}, Lcom/stripe/spos/sentry/http/SentryHttpClient;->access$getConfig$p(Lcom/stripe/spos/sentry/http/SentryHttpClient;)Lcom/stripe/spos/sentry/http/SentryConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/spos/sentry/http/SentryConfig;->getDsn()Lcom/stripe/spos/sentry/http/models/Dsn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/spos/sentry/http/models/Dsn;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/ktor/http/URLBuilder;->setHost(Ljava/lang/String;)V

    .line 55
    sget-object v0, Lio/ktor/http/URLProtocol;->Companion:Lio/ktor/http/URLProtocol$Companion;

    invoke-virtual {v0}, Lio/ktor/http/URLProtocol$Companion;->getHTTPS()Lio/ktor/http/URLProtocol;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/ktor/http/URLBuilder;->setProtocol(Lio/ktor/http/URLProtocol;)V

    const/4 v0, 0x1

    .line 56
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "api/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1$3$1;->this$0:Lcom/stripe/spos/sentry/http/SentryHttpClient;

    invoke-static {v2}, Lcom/stripe/spos/sentry/http/SentryHttpClient;->access$getConfig$p(Lcom/stripe/spos/sentry/http/SentryHttpClient;)Lcom/stripe/spos/sentry/http/SentryConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/spos/sentry/http/SentryConfig;->getDsn()Lcom/stripe/spos/sentry/http/models/Dsn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/spos/sentry/http/models/Dsn;->getProjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lio/ktor/http/URLBuilderKt;->path(Lio/ktor/http/URLBuilder;[Ljava/lang/String;)V

    return-void
.end method
