.class public final Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionTimeoutSupplier$wiringFactory;
.super Ljava/lang/Object;
.source "PaymentCollectionModule_ProvidePaymentCollectionTimeoutSupplier$wiringFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionTimeoutSupplier$wiringFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/paymentcollection/PaymentCollectionTimeoutSupplier;",
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

.method public static create()Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionTimeoutSupplier$wiringFactory;
    .locals 1

    .line 34
    invoke-static {}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionTimeoutSupplier$wiringFactory$InstanceHolder;->access$000()Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionTimeoutSupplier$wiringFactory;

    move-result-object v0

    return-object v0
.end method

.method public static providePaymentCollectionTimeoutSupplier$wiring()Lcom/stripe/paymentcollection/PaymentCollectionTimeoutSupplier;
    .locals 1

    .line 38
    sget-object v0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule;->INSTANCE:Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule;->providePaymentCollectionTimeoutSupplier$wiring()Lcom/stripe/paymentcollection/PaymentCollectionTimeoutSupplier;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionTimeoutSupplier;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/paymentcollection/PaymentCollectionTimeoutSupplier;
    .locals 1

    .line 29
    invoke-static {}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionTimeoutSupplier$wiringFactory;->providePaymentCollectionTimeoutSupplier$wiring()Lcom/stripe/paymentcollection/PaymentCollectionTimeoutSupplier;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionTimeoutSupplier$wiringFactory;->get()Lcom/stripe/paymentcollection/PaymentCollectionTimeoutSupplier;

    move-result-object v0

    return-object v0
.end method
