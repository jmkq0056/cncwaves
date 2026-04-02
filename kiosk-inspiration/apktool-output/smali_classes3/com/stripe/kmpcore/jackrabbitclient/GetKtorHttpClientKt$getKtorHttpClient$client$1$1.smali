.class final Lcom/stripe/kmpcore/jackrabbitclient/GetKtorHttpClientKt$getKtorHttpClient$client$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "GetKtorHttpClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/kmpcore/jackrabbitclient/GetKtorHttpClientKt$getKtorHttpClient$client$1;->invoke(Lio/ktor/client/HttpClientConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/ktor/client/engine/okhttp/OkHttpConfig;",
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
        "Lio/ktor/client/engine/okhttp/OkHttpConfig;",
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
.field final synthetic $okHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/kmpcore/jackrabbitclient/GetKtorHttpClientKt$getKtorHttpClient$client$1$1;->$okHttpClient:Lokhttp3/OkHttpClient;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    check-cast p1, Lio/ktor/client/engine/okhttp/OkHttpConfig;

    invoke-virtual {p0, p1}, Lcom/stripe/kmpcore/jackrabbitclient/GetKtorHttpClientKt$getKtorHttpClient$client$1$1;->invoke(Lio/ktor/client/engine/okhttp/OkHttpConfig;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lio/ktor/client/engine/okhttp/OkHttpConfig;)V
    .locals 1

    const-string v0, "$this$engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/GetKtorHttpClientKt$getKtorHttpClient$client$1$1;->$okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p1, v0}, Lio/ktor/client/engine/okhttp/OkHttpConfig;->setPreconfigured(Lokhttp3/OkHttpClient;)V

    return-void
.end method
