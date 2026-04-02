.class public final Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionContextFactory$wiringFactory;
.super Ljava/lang/Object;
.source "PaymentCollectionModule_ProvidePaymentCollectionContextFactory$wiringFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;",
        ">;"
    }
.end annotation


# instance fields
.field private final paymentCollectionStateMachineProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionContextFactory$wiringFactory;->paymentCollectionStateMachineProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionContextFactory$wiringFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;",
            ">;)",
            "Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionContextFactory$wiringFactory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionContextFactory$wiringFactory;

    invoke-direct {v0, p0}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionContextFactory$wiringFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providePaymentCollectionContextFactory$wiring(Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;",
            ">;)",
            "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;"
        }
    .end annotation

    .line 48
    sget-object v0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule;->INSTANCE:Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule;

    invoke-virtual {v0, p0}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule;->providePaymentCollectionContextFactory$wiring(Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionContextFactory$wiringFactory;->paymentCollectionStateMachineProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionContextFactory$wiringFactory;->providePaymentCollectionContextFactory$wiring(Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionContextFactory$wiringFactory;->get()Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;

    move-result-object v0

    return-object v0
.end method
