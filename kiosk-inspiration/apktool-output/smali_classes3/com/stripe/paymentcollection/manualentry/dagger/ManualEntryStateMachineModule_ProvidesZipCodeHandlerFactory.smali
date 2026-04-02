.class public final Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule_ProvidesZipCodeHandlerFactory;
.super Ljava/lang/Object;
.source "ManualEntryStateMachineModule_ProvidesZipCodeHandlerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/paymentcollection/manualentry/ZipCodeHandler;",
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

.field private final paymentCollectionEventDelegateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule_ProvidesZipCodeHandlerFactory;->paymentCollectionEventDelegateProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p2, p0, Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule_ProvidesZipCodeHandlerFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule_ProvidesZipCodeHandlerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;",
            ">;)",
            "Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule_ProvidesZipCodeHandlerFactory;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule_ProvidesZipCodeHandlerFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule_ProvidesZipCodeHandlerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesZipCodeHandler(Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;)Lcom/stripe/paymentcollection/manualentry/ZipCodeHandler;
    .locals 1

    .line 55
    sget-object v0, Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule;->INSTANCE:Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule;

    invoke-virtual {v0, p0, p1}, Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule;->providesZipCodeHandler(Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;)Lcom/stripe/paymentcollection/manualentry/ZipCodeHandler;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/paymentcollection/manualentry/ZipCodeHandler;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/paymentcollection/manualentry/ZipCodeHandler;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule_ProvidesZipCodeHandlerFactory;->paymentCollectionEventDelegateProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;

    iget-object v1, p0, Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule_ProvidesZipCodeHandlerFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;

    invoke-static {v0, v1}, Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule_ProvidesZipCodeHandlerFactory;->providesZipCodeHandler(Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;)Lcom/stripe/paymentcollection/manualentry/ZipCodeHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule_ProvidesZipCodeHandlerFactory;->get()Lcom/stripe/paymentcollection/manualentry/ZipCodeHandler;

    move-result-object v0

    return-object v0
.end method
