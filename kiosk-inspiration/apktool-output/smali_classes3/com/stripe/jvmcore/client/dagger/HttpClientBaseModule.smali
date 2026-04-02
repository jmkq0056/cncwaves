.class public final Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;
.super Ljava/lang/Object;
.source "HttpClientBaseModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J;\u0010\u0003\u001a\u00020\u00042\u0011\u0010\u0005\u001a\r\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0002\u0008\u00082\u0008\u0008\u0001\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;",
        "",
        "()V",
        "provideOkHttpClientProvider",
        "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
        "interceptors",
        "",
        "Lokhttp3/Interceptor;",
        "Lkotlin/jvm/JvmSuppressWildcards;",
        "isCotsIncluded",
        "",
        "eventListenerFactory",
        "Ljava/util/Optional;",
        "Lokhttp3/EventListener$Factory;",
        "certificatesFactory",
        "Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;",
        "client"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideOkHttpClientProvider(Ljava/util/Set;ZLjava/util/Optional;Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;)Lcom/stripe/jvmcore/client/OkHttpClientProvider;
    .locals 1
    .param p2    # Z
        .annotation runtime Lcom/stripe/jvmcore/dagger/IsCotsIncluded;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lokhttp3/Interceptor;",
            ">;Z",
            "Ljava/util/Optional<",
            "Lokhttp3/EventListener$Factory;",
            ">;",
            "Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;",
            ")",
            "Lcom/stripe/jvmcore/client/OkHttpClientProvider;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "interceptors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListenerFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "certificatesFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider;-><init>(Ljava/util/Set;ZLjava/util/Optional;Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;)V

    check-cast v0, Lcom/stripe/jvmcore/client/OkHttpClientProvider;

    return-object v0
.end method
