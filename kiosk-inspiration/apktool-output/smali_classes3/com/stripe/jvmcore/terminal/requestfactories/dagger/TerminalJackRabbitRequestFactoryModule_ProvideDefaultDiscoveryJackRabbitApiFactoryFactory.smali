.class public final Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultDiscoveryJackRabbitApiFactoryFactory;
.super Ljava/lang/Object;
.source "TerminalJackRabbitRequestFactoryModule_ProvideDefaultDiscoveryJackRabbitApiFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultDiscoveryJackRabbitApiFactoryFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/terminal/requestfactories/discover/DefaultDiscoveryJackRabbitApiFactory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultDiscoveryJackRabbitApiFactoryFactory;
    .locals 1

    .line 34
    invoke-static {}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultDiscoveryJackRabbitApiFactoryFactory$InstanceHolder;->access$000()Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultDiscoveryJackRabbitApiFactoryFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideDefaultDiscoveryJackRabbitApiFactory()Lcom/stripe/jvmcore/terminal/requestfactories/discover/DefaultDiscoveryJackRabbitApiFactory;
    .locals 1

    .line 38
    sget-object v0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule;->INSTANCE:Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule;->provideDefaultDiscoveryJackRabbitApiFactory()Lcom/stripe/jvmcore/terminal/requestfactories/discover/DefaultDiscoveryJackRabbitApiFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/terminal/requestfactories/discover/DefaultDiscoveryJackRabbitApiFactory;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/terminal/requestfactories/discover/DefaultDiscoveryJackRabbitApiFactory;
    .locals 1

    .line 29
    invoke-static {}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultDiscoveryJackRabbitApiFactoryFactory;->provideDefaultDiscoveryJackRabbitApiFactory()Lcom/stripe/jvmcore/terminal/requestfactories/discover/DefaultDiscoveryJackRabbitApiFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultDiscoveryJackRabbitApiFactoryFactory;->get()Lcom/stripe/jvmcore/terminal/requestfactories/discover/DefaultDiscoveryJackRabbitApiFactory;

    move-result-object v0

    return-object v0
.end method
