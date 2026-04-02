.class public final Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideEnsureSingleDiscoverOperationFactory;
.super Ljava/lang/Object;
.source "TerminalModule_ProvideEnsureSingleDiscoverOperationFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;",
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
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideEnsureSingleDiscoverOperationFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/TerminalModule;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideEnsureSingleDiscoverOperationFactory;
    .locals 1

    .line 40
    new-instance v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideEnsureSingleDiscoverOperationFactory;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideEnsureSingleDiscoverOperationFactory;-><init>(Lcom/stripe/stripeterminal/dagger/TerminalModule;)V

    return-object v0
.end method

.method public static provideEnsureSingleDiscoverOperation(Lcom/stripe/stripeterminal/dagger/TerminalModule;)Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/TerminalModule;->provideEnsureSingleDiscoverOperation()Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideEnsureSingleDiscoverOperationFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    invoke-static {v0}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideEnsureSingleDiscoverOperationFactory;->provideEnsureSingleDiscoverOperation(Lcom/stripe/stripeterminal/dagger/TerminalModule;)Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideEnsureSingleDiscoverOperationFactory;->get()Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;

    move-result-object v0

    return-object v0
.end method
