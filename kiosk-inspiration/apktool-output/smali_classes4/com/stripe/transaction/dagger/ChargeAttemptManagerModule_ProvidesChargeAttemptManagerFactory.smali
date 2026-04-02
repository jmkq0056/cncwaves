.class public final Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule_ProvidesChargeAttemptManagerFactory;
.super Ljava/lang/Object;
.source "ChargeAttemptManagerModule_ProvidesChargeAttemptManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/transaction/ChargeAttemptManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;


# direct methods
.method public constructor <init>(Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule_ProvidesChargeAttemptManagerFactory;->module:Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;

    return-void
.end method

.method public static create(Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;)Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule_ProvidesChargeAttemptManagerFactory;
    .locals 1

    .line 41
    new-instance v0, Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule_ProvidesChargeAttemptManagerFactory;

    invoke-direct {v0, p0}, Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule_ProvidesChargeAttemptManagerFactory;-><init>(Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;)V

    return-object v0
.end method

.method public static providesChargeAttemptManager(Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;)Lcom/stripe/transaction/ChargeAttemptManager;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;->providesChargeAttemptManager()Lcom/stripe/transaction/ChargeAttemptManager;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/transaction/ChargeAttemptManager;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/transaction/ChargeAttemptManager;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule_ProvidesChargeAttemptManagerFactory;->module:Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;

    invoke-static {v0}, Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule_ProvidesChargeAttemptManagerFactory;->providesChargeAttemptManager(Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;)Lcom/stripe/transaction/ChargeAttemptManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule_ProvidesChargeAttemptManagerFactory;->get()Lcom/stripe/transaction/ChargeAttemptManager;

    move-result-object v0

    return-object v0
.end method
