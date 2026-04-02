.class public final Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideCancelIntentManagerFactory;
.super Ljava/lang/Object;
.source "TerminalModule_ProvideCancelIntentManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/cancelintent/CancelIntentManager;",
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
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideCancelIntentManagerFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/TerminalModule;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideCancelIntentManagerFactory;
    .locals 1

    .line 39
    new-instance v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideCancelIntentManagerFactory;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideCancelIntentManagerFactory;-><init>(Lcom/stripe/stripeterminal/dagger/TerminalModule;)V

    return-object v0
.end method

.method public static provideCancelIntentManager(Lcom/stripe/stripeterminal/dagger/TerminalModule;)Lcom/stripe/cancelintent/CancelIntentManager;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/TerminalModule;->provideCancelIntentManager()Lcom/stripe/cancelintent/CancelIntentManager;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/cancelintent/CancelIntentManager;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/cancelintent/CancelIntentManager;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideCancelIntentManagerFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    invoke-static {v0}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideCancelIntentManagerFactory;->provideCancelIntentManager(Lcom/stripe/stripeterminal/dagger/TerminalModule;)Lcom/stripe/cancelintent/CancelIntentManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideCancelIntentManagerFactory;->get()Lcom/stripe/cancelintent/CancelIntentManager;

    move-result-object v0

    return-object v0
.end method
