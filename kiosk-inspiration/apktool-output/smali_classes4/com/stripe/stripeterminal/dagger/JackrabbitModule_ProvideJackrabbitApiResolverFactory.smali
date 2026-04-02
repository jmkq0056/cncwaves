.class public final Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideJackrabbitApiResolverFactory;
.super Ljava/lang/Object;
.source "JackrabbitModule_ProvideJackrabbitApiResolverFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver<",
        "Lcom/stripe/proto/api/sdk/JackRabbitApi;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final crpcClientBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;",
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
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideJackrabbitApiResolverFactory;->crpcClientBuilderProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideJackrabbitApiResolverFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideJackrabbitApiResolverFactory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideJackrabbitApiResolverFactory;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideJackrabbitApiResolverFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideJackrabbitApiResolver(Ldagger/Lazy;)Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;",
            ">;)",
            "Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver<",
            "Lcom/stripe/proto/api/sdk/JackRabbitApi;",
            ">;"
        }
    .end annotation

    .line 51
    sget-object v0, Lcom/stripe/stripeterminal/dagger/JackrabbitModule;->INSTANCE:Lcom/stripe/stripeterminal/dagger/JackrabbitModule;

    invoke-virtual {v0, p0}, Lcom/stripe/stripeterminal/dagger/JackrabbitModule;->provideJackrabbitApiResolver(Ldagger/Lazy;)Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver<",
            "Lcom/stripe/proto/api/sdk/JackRabbitApi;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideJackrabbitApiResolverFactory;->crpcClientBuilderProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideJackrabbitApiResolverFactory;->provideJackrabbitApiResolver(Ldagger/Lazy;)Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideJackrabbitApiResolverFactory;->get()Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;

    move-result-object v0

    return-object v0
.end method
