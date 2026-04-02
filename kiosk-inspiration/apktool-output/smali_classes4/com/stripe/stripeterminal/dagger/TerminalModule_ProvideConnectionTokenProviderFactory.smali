.class public final Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideConnectionTokenProviderFactory;
.super Ljava/lang/Object;
.source "TerminalModule_ProvideConnectionTokenProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final handoffConnectionTokenProviderSupplierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/HandoffConnectionTokenProviderSupplier;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/stripe/stripeterminal/dagger/TerminalModule;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/HandoffConnectionTokenProviderSupplier;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideConnectionTokenProviderFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    .line 36
    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideConnectionTokenProviderFactory;->handoffConnectionTokenProviderSupplierProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideConnectionTokenProviderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/HandoffConnectionTokenProviderSupplier;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideConnectionTokenProviderFactory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideConnectionTokenProviderFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideConnectionTokenProviderFactory;-><init>(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideConnectionTokenProvider(Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/stripeterminal/internal/common/terminalsession/HandoffConnectionTokenProviderSupplier;)Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/dagger/TerminalModule;->provideConnectionTokenProvider(Lcom/stripe/stripeterminal/internal/common/terminalsession/HandoffConnectionTokenProviderSupplier;)Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideConnectionTokenProviderFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideConnectionTokenProviderFactory;->handoffConnectionTokenProviderSupplierProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/HandoffConnectionTokenProviderSupplier;

    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideConnectionTokenProviderFactory;->provideConnectionTokenProvider(Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/stripeterminal/internal/common/terminalsession/HandoffConnectionTokenProviderSupplier;)Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideConnectionTokenProviderFactory;->get()Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;

    move-result-object v0

    return-object v0
.end method
