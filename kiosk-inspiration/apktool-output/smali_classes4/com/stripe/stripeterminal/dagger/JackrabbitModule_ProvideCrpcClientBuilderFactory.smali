.class public final Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideCrpcClientBuilderFactory;
.super Ljava/lang/Object;
.source "JackrabbitModule_ProvideCrpcClientBuilderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private final crpcRequestContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final internetReaderDnsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/Dns;",
            ">;"
        }
    .end annotation
.end field

.field private final logWriterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;"
        }
    .end annotation
.end field

.field private final okHttpClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final tracingInterceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/Dns;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/Interceptor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideCrpcClientBuilderFactory;->okHttpClientProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideCrpcClientBuilderFactory;->internetReaderDnsProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p3, p0, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideCrpcClientBuilderFactory;->crpcRequestContextProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p4, p0, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideCrpcClientBuilderFactory;->tracingInterceptorProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p5, p0, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideCrpcClientBuilderFactory;->logWriterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideCrpcClientBuilderFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/Dns;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/Interceptor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideCrpcClientBuilderFactory;"
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideCrpcClientBuilderFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideCrpcClientBuilderFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideCrpcClientBuilder(Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lokhttp3/Dns;Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;Lokhttp3/Interceptor;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;
    .locals 6

    .line 69
    sget-object v0, Lcom/stripe/stripeterminal/dagger/JackrabbitModule;->INSTANCE:Lcom/stripe/stripeterminal/dagger/JackrabbitModule;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/stripe/stripeterminal/dagger/JackrabbitModule;->provideCrpcClientBuilder(Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lokhttp3/Dns;Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;Lokhttp3/Interceptor;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;
    .locals 5

    .line 55
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideCrpcClientBuilderFactory;->okHttpClientProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/client/OkHttpClientProvider;

    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideCrpcClientBuilderFactory;->internetReaderDnsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Dns;

    iget-object v2, p0, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideCrpcClientBuilderFactory;->crpcRequestContextProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    iget-object v3, p0, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideCrpcClientBuilderFactory;->tracingInterceptorProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/Interceptor;

    iget-object v4, p0, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideCrpcClientBuilderFactory;->logWriterProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/logwriter/LogWriter;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideCrpcClientBuilderFactory;->provideCrpcClientBuilder(Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lokhttp3/Dns;Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;Lokhttp3/Interceptor;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideCrpcClientBuilderFactory;->get()Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;

    move-result-object v0

    return-object v0
.end method
