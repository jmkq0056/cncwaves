.class public final Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionScopeFactory;
.super Ljava/lang/Object;
.source "PaymentCollectionModule_ProvidePaymentCollectionScopeFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionScopeFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lkotlinx/coroutines/CoroutineScope;",
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

.method public static create()Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionScopeFactory;
    .locals 1

    .line 33
    invoke-static {}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionScopeFactory$InstanceHolder;->access$000()Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionScopeFactory;

    move-result-object v0

    return-object v0
.end method

.method public static providePaymentCollectionScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 37
    sget-object v0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule;->INSTANCE:Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule;->providePaymentCollectionScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionScopeFactory;->get()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method public get()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 29
    invoke-static {}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionScopeFactory;->providePaymentCollectionScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method
