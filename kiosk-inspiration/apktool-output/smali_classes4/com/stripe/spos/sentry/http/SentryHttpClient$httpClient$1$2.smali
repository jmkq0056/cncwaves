.class final Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1$2;
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
        "Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config;",
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
        "Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config;",
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


# static fields
.field public static final INSTANCE:Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1$2;

    invoke-direct {v0}, Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1$2;-><init>()V

    sput-object v0, Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1$2;->INSTANCE:Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p1, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config;

    invoke-virtual {p0, p1}, Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1$2;->invoke(Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config;)V
    .locals 3

    const-string v0, "$this$install"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    check-cast p1, Lio/ktor/serialization/Configuration;

    .line 46
    sget-object v0, Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1$2$1;->INSTANCE:Lcom/stripe/spos/sentry/http/SentryHttpClient$httpClient$1$2$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object v0

    const/4 v1, 0x2

    .line 45
    invoke-static {p1, v0, v2, v1, v2}, Lio/ktor/serialization/kotlinx/json/JsonSupportKt;->json$default(Lio/ktor/serialization/Configuration;Lkotlinx/serialization/json/Json;Lio/ktor/http/ContentType;ILjava/lang/Object;)V

    return-void
.end method
