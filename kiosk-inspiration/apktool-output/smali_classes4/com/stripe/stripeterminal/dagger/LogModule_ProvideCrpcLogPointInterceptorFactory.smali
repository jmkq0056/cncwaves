.class public final Lcom/stripe/stripeterminal/dagger/LogModule_ProvideCrpcLogPointInterceptorFactory;
.super Ljava/lang/Object;
.source "LogModule_ProvideCrpcLogPointInterceptorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final crpcLogPointInterceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/crpc/CrpcLogPointInterceptor;",
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
            "Lcom/stripe/stripeterminal/internal/common/crpc/CrpcLogPointInterceptor;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideCrpcLogPointInterceptorFactory;->crpcLogPointInterceptorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/LogModule_ProvideCrpcLogPointInterceptorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/crpc/CrpcLogPointInterceptor;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/LogModule_ProvideCrpcLogPointInterceptorFactory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideCrpcLogPointInterceptorFactory;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideCrpcLogPointInterceptorFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideCrpcLogPointInterceptor(Lcom/stripe/stripeterminal/internal/common/crpc/CrpcLogPointInterceptor;)Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;
    .locals 1

    .line 48
    sget-object v0, Lcom/stripe/stripeterminal/dagger/LogModule;->INSTANCE:Lcom/stripe/stripeterminal/dagger/LogModule;

    invoke-virtual {v0, p0}, Lcom/stripe/stripeterminal/dagger/LogModule;->provideCrpcLogPointInterceptor(Lcom/stripe/stripeterminal/internal/common/crpc/CrpcLogPointInterceptor;)Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideCrpcLogPointInterceptorFactory;->crpcLogPointInterceptorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/crpc/CrpcLogPointInterceptor;

    invoke-static {v0}, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideCrpcLogPointInterceptorFactory;->provideCrpcLogPointInterceptor(Lcom/stripe/stripeterminal/internal/common/crpc/CrpcLogPointInterceptor;)Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideCrpcLogPointInterceptorFactory;->get()Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;

    move-result-object v0

    return-object v0
.end method
