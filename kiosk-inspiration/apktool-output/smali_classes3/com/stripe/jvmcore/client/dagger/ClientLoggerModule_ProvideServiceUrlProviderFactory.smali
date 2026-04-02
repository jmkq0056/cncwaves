.class public final Lcom/stripe/jvmcore/client/dagger/ClientLoggerModule_ProvideServiceUrlProviderFactory;
.super Ljava/lang/Object;
.source "ClientLoggerModule_ProvideServiceUrlProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final environmentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/environment/EnvironmentProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/environment/EnvironmentProvider;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/stripe/jvmcore/client/dagger/ClientLoggerModule_ProvideServiceUrlProviderFactory;->environmentProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/jvmcore/client/dagger/ClientLoggerModule_ProvideServiceUrlProviderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/environment/EnvironmentProvider;",
            ">;)",
            "Lcom/stripe/jvmcore/client/dagger/ClientLoggerModule_ProvideServiceUrlProviderFactory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/stripe/jvmcore/client/dagger/ClientLoggerModule_ProvideServiceUrlProviderFactory;

    invoke-direct {v0, p0}, Lcom/stripe/jvmcore/client/dagger/ClientLoggerModule_ProvideServiceUrlProviderFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideServiceUrlProvider(Lcom/stripe/jvmcore/environment/EnvironmentProvider;)Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;
    .locals 1

    .line 48
    sget-object v0, Lcom/stripe/jvmcore/client/dagger/ClientLoggerModule;->INSTANCE:Lcom/stripe/jvmcore/client/dagger/ClientLoggerModule;

    invoke-virtual {v0, p0}, Lcom/stripe/jvmcore/client/dagger/ClientLoggerModule;->provideServiceUrlProvider(Lcom/stripe/jvmcore/environment/EnvironmentProvider;)Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/jvmcore/client/dagger/ClientLoggerModule_ProvideServiceUrlProviderFactory;->environmentProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/environment/EnvironmentProvider;

    invoke-static {v0}, Lcom/stripe/jvmcore/client/dagger/ClientLoggerModule_ProvideServiceUrlProviderFactory;->provideServiceUrlProvider(Lcom/stripe/jvmcore/environment/EnvironmentProvider;)Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/jvmcore/client/dagger/ClientLoggerModule_ProvideServiceUrlProviderFactory;->get()Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;

    move-result-object v0

    return-object v0
.end method
