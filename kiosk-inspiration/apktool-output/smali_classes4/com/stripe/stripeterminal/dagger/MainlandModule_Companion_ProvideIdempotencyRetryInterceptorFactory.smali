.class public final Lcom/stripe/stripeterminal/dagger/MainlandModule_Companion_ProvideIdempotencyRetryInterceptorFactory;
.super Ljava/lang/Object;
.source "MainlandModule_Companion_ProvideIdempotencyRetryInterceptorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final generatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/restclient/IdempotencyGenerator;",
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
            "Lcom/stripe/jvmcore/restclient/IdempotencyGenerator;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/MainlandModule_Companion_ProvideIdempotencyRetryInterceptorFactory;->generatorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/MainlandModule_Companion_ProvideIdempotencyRetryInterceptorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/restclient/IdempotencyGenerator;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/MainlandModule_Companion_ProvideIdempotencyRetryInterceptorFactory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/stripe/stripeterminal/dagger/MainlandModule_Companion_ProvideIdempotencyRetryInterceptorFactory;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/dagger/MainlandModule_Companion_ProvideIdempotencyRetryInterceptorFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideIdempotencyRetryInterceptor(Lcom/stripe/jvmcore/restclient/IdempotencyGenerator;)Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;
    .locals 1

    .line 48
    sget-object v0, Lcom/stripe/stripeterminal/dagger/MainlandModule;->Companion:Lcom/stripe/stripeterminal/dagger/MainlandModule$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/stripeterminal/dagger/MainlandModule$Companion;->provideIdempotencyRetryInterceptor(Lcom/stripe/jvmcore/restclient/IdempotencyGenerator;)Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/MainlandModule_Companion_ProvideIdempotencyRetryInterceptorFactory;->generatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/restclient/IdempotencyGenerator;

    invoke-static {v0}, Lcom/stripe/stripeterminal/dagger/MainlandModule_Companion_ProvideIdempotencyRetryInterceptorFactory;->provideIdempotencyRetryInterceptor(Lcom/stripe/jvmcore/restclient/IdempotencyGenerator;)Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/MainlandModule_Companion_ProvideIdempotencyRetryInterceptorFactory;->get()Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;

    move-result-object v0

    return-object v0
.end method
