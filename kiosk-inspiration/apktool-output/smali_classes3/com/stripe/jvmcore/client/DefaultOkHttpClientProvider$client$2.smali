.class final Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider$client$2;
.super Lkotlin/jvm/internal/Lambda;
.source "OkHttpClientProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider;-><init>(Ljava/util/Set;ZLjava/util/Optional;Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOkHttpClientProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkHttpClientProvider.kt\ncom/stripe/jvmcore/client/DefaultOkHttpClientProvider$client$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,56:1\n1855#2,2:57\n*S KotlinDebug\n*F\n+ 1 OkHttpClientProvider.kt\ncom/stripe/jvmcore/client/DefaultOkHttpClientProvider$client$2\n*L\n39#1:57,2\n*E\n"
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
.field final synthetic this$0:Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider;


# direct methods
.method public static synthetic $r8$lambda$KEqVN6gOSlT9B3in0NZ3CFarkTI(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider$client$2;->invoke$lambda$2$lambda$1$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider$client$2;->this$0:Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$2$lambda$1$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider$client$2;->invoke()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lokhttp3/OkHttpClient;
    .locals 6

    .line 29
    iget-object v0, p0, Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider$client$2;->this$0:Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider;

    invoke-static {v0}, Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider;->access$getCertificatesFactory$p(Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider;)Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;->create()Lokhttp3/tls/HandshakeCertificates;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider$client$2;->this$0:Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider;

    .line 30
    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 31
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1e

    invoke-virtual {v2, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 32
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 33
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 37
    invoke-virtual {v0}, Lokhttp3/tls/HandshakeCertificates;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-virtual {v0}, Lokhttp3/tls/HandshakeCertificates;->trustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 39
    invoke-static {v1}, Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider;->access$getInterceptors$p(Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider;)Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 57
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/Interceptor;

    .line 39
    invoke-virtual {v0, v3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {v1}, Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider;->access$getEventListenerFactory$p(Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider$client$2$1$1$2;

    invoke-direct {v3, v0}, Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider$client$2$1$1$2;-><init>(Ljava/lang/Object;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    new-instance v4, Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider$client$2$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider$client$2$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 44
    invoke-static {v1}, Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider;->access$isCotsIncluded$p(Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    sget-object v1, Lcom/stripe/jvmcore/restclient/StripeCertificatePinner;->INSTANCE:Lcom/stripe/jvmcore/restclient/StripeCertificatePinner;

    invoke-virtual {v1}, Lcom/stripe/jvmcore/restclient/StripeCertificatePinner;->getCertificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->certificatePinner(Lokhttp3/CertificatePinner;)Lokhttp3/OkHttpClient$Builder;

    .line 50
    :cond_1
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
