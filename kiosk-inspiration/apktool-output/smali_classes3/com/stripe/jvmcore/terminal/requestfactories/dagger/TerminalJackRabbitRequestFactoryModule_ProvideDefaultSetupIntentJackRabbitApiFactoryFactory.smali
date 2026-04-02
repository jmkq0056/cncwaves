.class public final Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultSetupIntentJackRabbitApiFactoryFactory;
.super Ljava/lang/Object;
.source "TerminalJackRabbitRequestFactoryModule_ProvideDefaultSetupIntentJackRabbitApiFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/terminal/requestfactories/setup/DefaultSetupIntentJackRabbitApiFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final setupIntentRestFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;",
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
            "Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultSetupIntentJackRabbitApiFactoryFactory;->setupIntentRestFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultSetupIntentJackRabbitApiFactoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;",
            ">;)",
            "Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultSetupIntentJackRabbitApiFactoryFactory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultSetupIntentJackRabbitApiFactoryFactory;

    invoke-direct {v0, p0}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultSetupIntentJackRabbitApiFactoryFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideDefaultSetupIntentJackRabbitApiFactory(Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;)Lcom/stripe/jvmcore/terminal/requestfactories/setup/DefaultSetupIntentJackRabbitApiFactory;
    .locals 1

    .line 48
    sget-object v0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule;->INSTANCE:Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule;

    invoke-virtual {v0, p0}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule;->provideDefaultSetupIntentJackRabbitApiFactory(Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;)Lcom/stripe/jvmcore/terminal/requestfactories/setup/DefaultSetupIntentJackRabbitApiFactory;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/terminal/requestfactories/setup/DefaultSetupIntentJackRabbitApiFactory;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/terminal/requestfactories/setup/DefaultSetupIntentJackRabbitApiFactory;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultSetupIntentJackRabbitApiFactoryFactory;->setupIntentRestFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;

    invoke-static {v0}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultSetupIntentJackRabbitApiFactoryFactory;->provideDefaultSetupIntentJackRabbitApiFactory(Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;)Lcom/stripe/jvmcore/terminal/requestfactories/setup/DefaultSetupIntentJackRabbitApiFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultSetupIntentJackRabbitApiFactoryFactory;->get()Lcom/stripe/jvmcore/terminal/requestfactories/setup/DefaultSetupIntentJackRabbitApiFactory;

    move-result-object v0

    return-object v0
.end method
