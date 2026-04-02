.class public final Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdatePaymentIntentParamRepositoryFactory;
.super Ljava/lang/Object;
.source "TerminalModule_ProvideUpdatePaymentIntentParamRepositoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/stripe/stripeterminal/dagger/TerminalModule;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/TerminalModule;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdatePaymentIntentParamRepositoryFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/TerminalModule;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdatePaymentIntentParamRepositoryFactory;
    .locals 1

    .line 40
    new-instance v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdatePaymentIntentParamRepositoryFactory;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdatePaymentIntentParamRepositoryFactory;-><init>(Lcom/stripe/stripeterminal/dagger/TerminalModule;)V

    return-object v0
.end method

.method public static provideUpdatePaymentIntentParamRepository(Lcom/stripe/stripeterminal/dagger/TerminalModule;)Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/TerminalModule;->provideUpdatePaymentIntentParamRepository()Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdatePaymentIntentParamRepositoryFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    invoke-static {v0}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdatePaymentIntentParamRepositoryFactory;->provideUpdatePaymentIntentParamRepository(Lcom/stripe/stripeterminal/dagger/TerminalModule;)Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdatePaymentIntentParamRepositoryFactory;->get()Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;

    move-result-object v0

    return-object v0
.end method
