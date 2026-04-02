.class public final Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionStateTimer$wiringFactory;
.super Ljava/lang/Object;
.source "PaymentCollectionModule_ProvidePaymentCollectionStateTimer$wiringFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;",
        ">;"
    }
.end annotation


# instance fields
.field private final loggerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final scopeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;"
        }
    .end annotation
.end field

.field private final timeoutSupplierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionTimeoutSupplier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionTimeoutSupplier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionStateTimer$wiringFactory;->scopeProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p2, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionStateTimer$wiringFactory;->timeoutSupplierProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p3, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionStateTimer$wiringFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionStateTimer$wiringFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionTimeoutSupplier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;",
            ">;)",
            "Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionStateTimer$wiringFactory;"
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionStateTimer$wiringFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionStateTimer$wiringFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providePaymentCollectionStateTimer$wiring(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/paymentcollection/PaymentCollectionTimeoutSupplier;Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;)Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;
    .locals 1

    .line 61
    sget-object v0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule;->INSTANCE:Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule;

    invoke-virtual {v0, p0, p1, p2}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule;->providePaymentCollectionStateTimer$wiring(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/paymentcollection/PaymentCollectionTimeoutSupplier;Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;)Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionStateTimer$wiringFactory;->scopeProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionStateTimer$wiringFactory;->timeoutSupplierProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionTimeoutSupplier;

    iget-object v2, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionStateTimer$wiringFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;

    invoke-static {v0, v1, v2}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionStateTimer$wiringFactory;->providePaymentCollectionStateTimer$wiring(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/paymentcollection/PaymentCollectionTimeoutSupplier;Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;)Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionStateTimer$wiringFactory;->get()Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    move-result-object v0

    return-object v0
.end method
