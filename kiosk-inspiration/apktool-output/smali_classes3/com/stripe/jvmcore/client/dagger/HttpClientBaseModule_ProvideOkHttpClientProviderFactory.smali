.class public final Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule_ProvideOkHttpClientProviderFactory;
.super Ljava/lang/Object;
.source "HttpClientBaseModule_ProvideOkHttpClientProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final certificatesFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final eventListenerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lokhttp3/EventListener$Factory;",
            ">;>;"
        }
    .end annotation
.end field

.field private final interceptorsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lokhttp3/Interceptor;",
            ">;>;"
        }
    .end annotation
.end field

.field private final isCotsIncludedProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lokhttp3/Interceptor;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lokhttp3/EventListener$Factory;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule_ProvideOkHttpClientProviderFactory;->module:Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;

    .line 48
    iput-object p2, p0, Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule_ProvideOkHttpClientProviderFactory;->interceptorsProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p3, p0, Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule_ProvideOkHttpClientProviderFactory;->isCotsIncludedProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p4, p0, Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule_ProvideOkHttpClientProviderFactory;->eventListenerFactoryProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p5, p0, Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule_ProvideOkHttpClientProviderFactory;->certificatesFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule_ProvideOkHttpClientProviderFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lokhttp3/Interceptor;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lokhttp3/EventListener$Factory;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;",
            ">;)",
            "Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule_ProvideOkHttpClientProviderFactory;"
        }
    .end annotation

    .line 64
    new-instance v0, Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule_ProvideOkHttpClientProviderFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule_ProvideOkHttpClientProviderFactory;-><init>(Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideOkHttpClientProvider(Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Ljava/util/Set;ZLjava/util/Optional;Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;)Lcom/stripe/jvmcore/client/OkHttpClientProvider;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;",
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

    .line 71
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;->provideOkHttpClientProvider(Ljava/util/Set;ZLjava/util/Optional;Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;)Lcom/stripe/jvmcore/client/OkHttpClientProvider;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/client/OkHttpClientProvider;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/client/OkHttpClientProvider;
    .locals 5

    .line 56
    iget-object v0, p0, Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule_ProvideOkHttpClientProviderFactory;->module:Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;

    iget-object v1, p0, Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule_ProvideOkHttpClientProviderFactory;->interceptorsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    iget-object v2, p0, Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule_ProvideOkHttpClientProviderFactory;->isCotsIncludedProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule_ProvideOkHttpClientProviderFactory;->eventListenerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Optional;

    iget-object v4, p0, Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule_ProvideOkHttpClientProviderFactory;->certificatesFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule_ProvideOkHttpClientProviderFactory;->provideOkHttpClientProvider(Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Ljava/util/Set;ZLjava/util/Optional;Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;)Lcom/stripe/jvmcore/client/OkHttpClientProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule_ProvideOkHttpClientProviderFactory;->get()Lcom/stripe/jvmcore/client/OkHttpClientProvider;

    move-result-object v0

    return-object v0
.end method
