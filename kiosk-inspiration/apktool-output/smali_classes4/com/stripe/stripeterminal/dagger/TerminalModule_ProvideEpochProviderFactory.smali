.class public final Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideEpochProviderFactory;
.super Ljava/lang/Object;
.source "TerminalModule_ProvideEpochProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Long;",
        ">;>;"
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
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideEpochProviderFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/TerminalModule;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideEpochProviderFactory;
    .locals 1

    .line 39
    new-instance v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideEpochProviderFactory;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideEpochProviderFactory;-><init>(Lcom/stripe/stripeterminal/dagger/TerminalModule;)V

    return-object v0
.end method

.method public static provideEpochProvider(Lcom/stripe/stripeterminal/dagger/TerminalModule;)Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule;",
            ")",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/TerminalModule;->provideEpochProvider()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function0;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideEpochProviderFactory;->get()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    return-object v0
.end method

.method public get()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideEpochProviderFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    invoke-static {v0}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideEpochProviderFactory;->provideEpochProvider(Lcom/stripe/stripeterminal/dagger/TerminalModule;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    return-object v0
.end method
