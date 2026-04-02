.class public final Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultAccessibilityJackRabbitApiFactoryFactory;
.super Ljava/lang/Object;
.source "TerminalJackRabbitRequestFactoryModule_ProvideDefaultAccessibilityJackRabbitApiFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultAccessibilityJackRabbitApiFactoryFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/DefaultAccessibilityJackRabbitApiFactory;",
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

.method public static create()Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultAccessibilityJackRabbitApiFactoryFactory;
    .locals 1

    .line 34
    invoke-static {}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultAccessibilityJackRabbitApiFactoryFactory$InstanceHolder;->access$000()Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultAccessibilityJackRabbitApiFactoryFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideDefaultAccessibilityJackRabbitApiFactory()Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/DefaultAccessibilityJackRabbitApiFactory;
    .locals 1

    .line 39
    sget-object v0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule;->INSTANCE:Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule;->provideDefaultAccessibilityJackRabbitApiFactory()Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/DefaultAccessibilityJackRabbitApiFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/DefaultAccessibilityJackRabbitApiFactory;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/DefaultAccessibilityJackRabbitApiFactory;
    .locals 1

    .line 29
    invoke-static {}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultAccessibilityJackRabbitApiFactoryFactory;->provideDefaultAccessibilityJackRabbitApiFactory()Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/DefaultAccessibilityJackRabbitApiFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultAccessibilityJackRabbitApiFactoryFactory;->get()Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/DefaultAccessibilityJackRabbitApiFactory;

    move-result-object v0

    return-object v0
.end method
