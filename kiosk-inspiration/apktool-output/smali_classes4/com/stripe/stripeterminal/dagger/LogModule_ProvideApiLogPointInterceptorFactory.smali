.class public final Lcom/stripe/stripeterminal/dagger/LogModule_ProvideApiLogPointInterceptorFactory;
.super Ljava/lang/Object;
.source "LogModule_ProvideApiLogPointInterceptorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/restclient/RestInterceptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final apiLogPointInterceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logginginterceptors/ApiLogPointInterceptor;",
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
            "Lcom/stripe/jvmcore/logginginterceptors/ApiLogPointInterceptor;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideApiLogPointInterceptorFactory;->apiLogPointInterceptorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/LogModule_ProvideApiLogPointInterceptorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logginginterceptors/ApiLogPointInterceptor;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/LogModule_ProvideApiLogPointInterceptorFactory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideApiLogPointInterceptorFactory;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideApiLogPointInterceptorFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideApiLogPointInterceptor(Lcom/stripe/jvmcore/logginginterceptors/ApiLogPointInterceptor;)Lcom/stripe/jvmcore/restclient/RestInterceptor;
    .locals 1

    .line 48
    sget-object v0, Lcom/stripe/stripeterminal/dagger/LogModule;->INSTANCE:Lcom/stripe/stripeterminal/dagger/LogModule;

    invoke-virtual {v0, p0}, Lcom/stripe/stripeterminal/dagger/LogModule;->provideApiLogPointInterceptor(Lcom/stripe/jvmcore/logginginterceptors/ApiLogPointInterceptor;)Lcom/stripe/jvmcore/restclient/RestInterceptor;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/restclient/RestInterceptor;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/restclient/RestInterceptor;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideApiLogPointInterceptorFactory;->apiLogPointInterceptorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/logginginterceptors/ApiLogPointInterceptor;

    invoke-static {v0}, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideApiLogPointInterceptorFactory;->provideApiLogPointInterceptor(Lcom/stripe/jvmcore/logginginterceptors/ApiLogPointInterceptor;)Lcom/stripe/jvmcore/restclient/RestInterceptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideApiLogPointInterceptorFactory;->get()Lcom/stripe/jvmcore/restclient/RestInterceptor;

    move-result-object v0

    return-object v0
.end method
