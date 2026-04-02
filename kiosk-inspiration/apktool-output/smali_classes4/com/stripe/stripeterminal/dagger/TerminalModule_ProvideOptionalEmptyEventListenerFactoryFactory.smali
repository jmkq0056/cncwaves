.class public final Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideOptionalEmptyEventListenerFactoryFactory;
.super Ljava/lang/Object;
.source "TerminalModule_ProvideOptionalEmptyEventListenerFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/Optional<",
        "Lokhttp3/EventListener$Factory;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final module:Lcom/stripe/stripeterminal/dagger/TerminalModule;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/TerminalModule;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideOptionalEmptyEventListenerFactoryFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/TerminalModule;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideOptionalEmptyEventListenerFactoryFactory;
    .locals 1

    .line 41
    new-instance v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideOptionalEmptyEventListenerFactoryFactory;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideOptionalEmptyEventListenerFactoryFactory;-><init>(Lcom/stripe/stripeterminal/dagger/TerminalModule;)V

    return-object v0
.end method

.method public static provideOptionalEmptyEventListenerFactory(Lcom/stripe/stripeterminal/dagger/TerminalModule;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule;",
            ")",
            "Ljava/util/Optional<",
            "Lokhttp3/EventListener$Factory;",
            ">;"
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/TerminalModule;->provideOptionalEmptyEventListenerFactory()Ljava/util/Optional;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideOptionalEmptyEventListenerFactoryFactory;->get()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lokhttp3/EventListener$Factory;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideOptionalEmptyEventListenerFactoryFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    invoke-static {v0}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideOptionalEmptyEventListenerFactoryFactory;->provideOptionalEmptyEventListenerFactory(Lcom/stripe/stripeterminal/dagger/TerminalModule;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
