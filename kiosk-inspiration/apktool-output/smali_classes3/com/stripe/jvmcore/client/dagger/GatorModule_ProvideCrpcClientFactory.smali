.class public final Lcom/stripe/jvmcore/client/dagger/GatorModule_ProvideCrpcClientFactory;
.super Ljava/lang/Object;
.source "GatorModule_ProvideCrpcClientFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
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

.field private final httpClientConfiguratorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;",
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

.field private final observabilityClientFailuresInterceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;",
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

.field private final serviceUrlProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final traceLoggingInterceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/stripe/jvmcore/client/dagger/GatorModule_ProvideCrpcClientFactory;->okHttpClientProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p2, p0, Lcom/stripe/jvmcore/client/dagger/GatorModule_ProvideCrpcClientFactory;->serviceUrlProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p3, p0, Lcom/stripe/jvmcore/client/dagger/GatorModule_ProvideCrpcClientFactory;->crpcRequestContextProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p4, p0, Lcom/stripe/jvmcore/client/dagger/GatorModule_ProvideCrpcClientFactory;->traceLoggingInterceptorProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p5, p0, Lcom/stripe/jvmcore/client/dagger/GatorModule_ProvideCrpcClientFactory;->observabilityClientFailuresInterceptorProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p6, p0, Lcom/stripe/jvmcore/client/dagger/GatorModule_ProvideCrpcClientFactory;->httpClientConfiguratorProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p7, p0, Lcom/stripe/jvmcore/client/dagger/GatorModule_ProvideCrpcClientFactory;->logWriterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/client/dagger/GatorModule_ProvideCrpcClientFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;)",
            "Lcom/stripe/jvmcore/client/dagger/GatorModule_ProvideCrpcClientFactory;"
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/stripe/jvmcore/client/dagger/GatorModule_ProvideCrpcClientFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/stripe/jvmcore/client/dagger/GatorModule_ProvideCrpcClientFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideCrpcClient(Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/crpcclient/CrpcClient;
    .locals 8

    .line 87
    sget-object v0, Lcom/stripe/jvmcore/client/dagger/GatorModule;->INSTANCE:Lcom/stripe/jvmcore/client/dagger/GatorModule;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/stripe/jvmcore/client/dagger/GatorModule;->provideCrpcClient(Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/crpcclient/CrpcClient;
    .locals 8

    .line 67
    iget-object v0, p0, Lcom/stripe/jvmcore/client/dagger/GatorModule_ProvideCrpcClientFactory;->okHttpClientProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/jvmcore/client/OkHttpClientProvider;

    iget-object v0, p0, Lcom/stripe/jvmcore/client/dagger/GatorModule_ProvideCrpcClientFactory;->serviceUrlProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;

    iget-object v0, p0, Lcom/stripe/jvmcore/client/dagger/GatorModule_ProvideCrpcClientFactory;->crpcRequestContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    iget-object v0, p0, Lcom/stripe/jvmcore/client/dagger/GatorModule_ProvideCrpcClientFactory;->traceLoggingInterceptorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;

    iget-object v0, p0, Lcom/stripe/jvmcore/client/dagger/GatorModule_ProvideCrpcClientFactory;->observabilityClientFailuresInterceptorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;

    iget-object v0, p0, Lcom/stripe/jvmcore/client/dagger/GatorModule_ProvideCrpcClientFactory;->httpClientConfiguratorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;

    iget-object v0, p0, Lcom/stripe/jvmcore/client/dagger/GatorModule_ProvideCrpcClientFactory;->logWriterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/stripe/logwriter/LogWriter;

    invoke-static/range {v1 .. v7}, Lcom/stripe/jvmcore/client/dagger/GatorModule_ProvideCrpcClientFactory;->provideCrpcClient(Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/jvmcore/client/dagger/GatorModule_ProvideCrpcClientFactory;->get()Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    move-result-object v0

    return-object v0
.end method
