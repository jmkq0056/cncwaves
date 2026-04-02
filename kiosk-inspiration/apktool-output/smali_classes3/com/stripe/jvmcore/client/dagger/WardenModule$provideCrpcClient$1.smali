.class final Lcom/stripe/jvmcore/client/dagger/WardenModule$provideCrpcClient$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WardenModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/jvmcore/client/dagger/WardenModule;->provideCrpcClient(Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/crpcclient/CrpcClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lokhttp3/OkHttpClient;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lokhttp3/OkHttpClient;",
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
.field final synthetic $httpClientConfigurator:Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;

.field final synthetic $okHttpClientProvider:Lcom/stripe/jvmcore/client/OkHttpClientProvider;


# direct methods
.method constructor <init>(Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;Lcom/stripe/jvmcore/client/OkHttpClientProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/jvmcore/client/dagger/WardenModule$provideCrpcClient$1;->$httpClientConfigurator:Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;

    iput-object p2, p0, Lcom/stripe/jvmcore/client/dagger/WardenModule$provideCrpcClient$1;->$okHttpClientProvider:Lcom/stripe/jvmcore/client/OkHttpClientProvider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/stripe/jvmcore/client/dagger/WardenModule$provideCrpcClient$1;->invoke()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lokhttp3/OkHttpClient;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/stripe/jvmcore/client/dagger/WardenModule$provideCrpcClient$1;->$httpClientConfigurator:Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;

    iget-object v1, p0, Lcom/stripe/jvmcore/client/dagger/WardenModule$provideCrpcClient$1;->$okHttpClientProvider:Lcom/stripe/jvmcore/client/OkHttpClientProvider;

    .line 42
    invoke-interface {v1}, Lcom/stripe/jvmcore/client/OkHttpClientProvider;->get()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 44
    invoke-interface {v0, v1}, Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;->configure(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
