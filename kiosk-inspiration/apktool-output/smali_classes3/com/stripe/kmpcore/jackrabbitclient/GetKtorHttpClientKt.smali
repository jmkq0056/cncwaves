.class public final Lcom/stripe/kmpcore/jackrabbitclient/GetKtorHttpClientKt;
.super Ljava/lang/Object;
.source "GetKtorHttpClient.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "getKtorHttpClient",
        "Lio/ktor/client/HttpClient;",
        "okHttpClient",
        "Lokhttp3/OkHttpClient;",
        "jackrabbitclient_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getKtorHttpClient(Lokhttp3/OkHttpClient;)Lio/ktor/client/HttpClient;
    .locals 2

    const-string v0, "okHttpClient"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lio/ktor/client/engine/okhttp/OkHttp;->INSTANCE:Lio/ktor/client/engine/okhttp/OkHttp;

    check-cast v0, Lio/ktor/client/engine/HttpClientEngineFactory;

    new-instance v1, Lcom/stripe/kmpcore/jackrabbitclient/GetKtorHttpClientKt$getKtorHttpClient$client$1;

    invoke-direct {v1, p0}, Lcom/stripe/kmpcore/jackrabbitclient/GetKtorHttpClientKt$getKtorHttpClient$client$1;-><init>(Lokhttp3/OkHttpClient;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lio/ktor/client/HttpClientKt;->HttpClient(Lio/ktor/client/engine/HttpClientEngineFactory;Lkotlin/jvm/functions/Function1;)Lio/ktor/client/HttpClient;

    move-result-object p0

    return-object p0
.end method
