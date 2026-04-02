.class public final Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestPaymentApiRequestFactoryFactory;
.super Ljava/lang/Object;
.source "TerminalRestRequestFactoryModule_ProvideDefaultRestPaymentApiRequestFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestPaymentApiRequestFactoryFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/terminal/requestfactories/payment/DefaultPaymentIntentRestApiFactory;",
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

.method public static create()Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestPaymentApiRequestFactoryFactory;
    .locals 1

    .line 34
    invoke-static {}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestPaymentApiRequestFactoryFactory$InstanceHolder;->access$000()Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestPaymentApiRequestFactoryFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideDefaultRestPaymentApiRequestFactory()Lcom/stripe/jvmcore/terminal/requestfactories/payment/DefaultPaymentIntentRestApiFactory;
    .locals 1

    .line 38
    sget-object v0, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule;->INSTANCE:Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule;->provideDefaultRestPaymentApiRequestFactory()Lcom/stripe/jvmcore/terminal/requestfactories/payment/DefaultPaymentIntentRestApiFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/terminal/requestfactories/payment/DefaultPaymentIntentRestApiFactory;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/terminal/requestfactories/payment/DefaultPaymentIntentRestApiFactory;
    .locals 1

    .line 29
    invoke-static {}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestPaymentApiRequestFactoryFactory;->provideDefaultRestPaymentApiRequestFactory()Lcom/stripe/jvmcore/terminal/requestfactories/payment/DefaultPaymentIntentRestApiFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestPaymentApiRequestFactoryFactory;->get()Lcom/stripe/jvmcore/terminal/requestfactories/payment/DefaultPaymentIntentRestApiFactory;

    move-result-object v0

    return-object v0
.end method
