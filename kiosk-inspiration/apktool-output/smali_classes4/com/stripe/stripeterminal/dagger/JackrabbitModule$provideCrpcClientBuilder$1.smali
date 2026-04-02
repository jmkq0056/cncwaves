.class final Lcom/stripe/stripeterminal/dagger/JackrabbitModule$provideCrpcClientBuilder$1;
.super Lkotlin/jvm/internal/Lambda;
.source "JackrabbitModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/dagger/JackrabbitModule;->provideCrpcClientBuilder(Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lokhttp3/Dns;Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;Lokhttp3/Interceptor;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;
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
.field final synthetic $internetReaderDns:Lokhttp3/Dns;

.field final synthetic $okHttpClientProvider:Lcom/stripe/jvmcore/client/OkHttpClientProvider;

.field final synthetic $tracingInterceptor:Lokhttp3/Interceptor;


# direct methods
.method constructor <init>(Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lokhttp3/Dns;Lokhttp3/Interceptor;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/JackrabbitModule$provideCrpcClientBuilder$1;->$okHttpClientProvider:Lcom/stripe/jvmcore/client/OkHttpClientProvider;

    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/JackrabbitModule$provideCrpcClientBuilder$1;->$internetReaderDns:Lokhttp3/Dns;

    iput-object p3, p0, Lcom/stripe/stripeterminal/dagger/JackrabbitModule$provideCrpcClientBuilder$1;->$tracingInterceptor:Lokhttp3/Interceptor;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/JackrabbitModule$provideCrpcClientBuilder$1;->invoke()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lokhttp3/OkHttpClient;
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/JackrabbitModule$provideCrpcClientBuilder$1;->$okHttpClientProvider:Lcom/stripe/jvmcore/client/OkHttpClientProvider;

    invoke-interface {v0}, Lcom/stripe/jvmcore/client/OkHttpClientProvider;->get()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/JackrabbitModule$provideCrpcClientBuilder$1;->$internetReaderDns:Lokhttp3/Dns;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/JackrabbitModule$provideCrpcClientBuilder$1;->$tracingInterceptor:Lokhttp3/Interceptor;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 82
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2d

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 83
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
