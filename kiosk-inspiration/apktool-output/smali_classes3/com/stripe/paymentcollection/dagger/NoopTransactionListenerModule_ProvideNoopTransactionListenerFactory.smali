.class public final Lcom/stripe/paymentcollection/dagger/NoopTransactionListenerModule_ProvideNoopTransactionListenerFactory;
.super Ljava/lang/Object;
.source "NoopTransactionListenerModule_ProvideNoopTransactionListenerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/paymentcollection/dagger/NoopTransactionListenerModule_ProvideNoopTransactionListenerFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/paymentcollection/TransactionListener;",
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

.method public static create()Lcom/stripe/paymentcollection/dagger/NoopTransactionListenerModule_ProvideNoopTransactionListenerFactory;
    .locals 1

    .line 33
    invoke-static {}, Lcom/stripe/paymentcollection/dagger/NoopTransactionListenerModule_ProvideNoopTransactionListenerFactory$InstanceHolder;->access$000()Lcom/stripe/paymentcollection/dagger/NoopTransactionListenerModule_ProvideNoopTransactionListenerFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideNoopTransactionListener()Lcom/stripe/paymentcollection/TransactionListener;
    .locals 1

    .line 37
    sget-object v0, Lcom/stripe/paymentcollection/dagger/NoopTransactionListenerModule;->INSTANCE:Lcom/stripe/paymentcollection/dagger/NoopTransactionListenerModule;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/dagger/NoopTransactionListenerModule;->provideNoopTransactionListener()Lcom/stripe/paymentcollection/TransactionListener;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/TransactionListener;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/paymentcollection/TransactionListener;
    .locals 1

    .line 29
    invoke-static {}, Lcom/stripe/paymentcollection/dagger/NoopTransactionListenerModule_ProvideNoopTransactionListenerFactory;->provideNoopTransactionListener()Lcom/stripe/paymentcollection/TransactionListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/dagger/NoopTransactionListenerModule_ProvideNoopTransactionListenerFactory;->get()Lcom/stripe/paymentcollection/TransactionListener;

    move-result-object v0

    return-object v0
.end method
