.class public final Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultActivateJackRabbitApiFactoryFactory;
.super Ljava/lang/Object;
.source "TerminalJackRabbitRequestFactoryModule_ProvideDefaultActivateJackRabbitApiFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/terminal/requestfactories/activate/DefaultActivateApiFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final applicationInformationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultActivateJackRabbitApiFactoryFactory;->applicationInformationProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p2, p0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultActivateJackRabbitApiFactoryFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultActivateJackRabbitApiFactoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultActivateJackRabbitApiFactoryFactory;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultActivateJackRabbitApiFactoryFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultActivateJackRabbitApiFactoryFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideDefaultActivateJackRabbitApiFactory(Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/jvmcore/terminal/requestfactories/activate/DefaultActivateApiFactory;
    .locals 1

    .line 54
    sget-object v0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule;->INSTANCE:Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule;

    invoke-virtual {v0, p0, p1}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule;->provideDefaultActivateJackRabbitApiFactory(Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/jvmcore/terminal/requestfactories/activate/DefaultActivateApiFactory;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/terminal/requestfactories/activate/DefaultActivateApiFactory;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/terminal/requestfactories/activate/DefaultActivateApiFactory;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultActivateJackRabbitApiFactoryFactory;->applicationInformationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

    iget-object v1, p0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultActivateJackRabbitApiFactoryFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static {v0, v1}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultActivateJackRabbitApiFactoryFactory;->provideDefaultActivateJackRabbitApiFactory(Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/jvmcore/terminal/requestfactories/activate/DefaultActivateApiFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultActivateJackRabbitApiFactoryFactory;->get()Lcom/stripe/jvmcore/terminal/requestfactories/activate/DefaultActivateApiFactory;

    move-result-object v0

    return-object v0
.end method
