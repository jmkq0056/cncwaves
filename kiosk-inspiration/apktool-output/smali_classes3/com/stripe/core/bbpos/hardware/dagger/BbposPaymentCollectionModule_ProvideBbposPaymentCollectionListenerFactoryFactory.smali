.class public final Lcom/stripe/core/bbpos/hardware/dagger/BbposPaymentCollectionModule_ProvideBbposPaymentCollectionListenerFactoryFactory;
.super Ljava/lang/Object;
.source "BbposPaymentCollectionModule_ProvideBbposPaymentCollectionListenerFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$Factory;",
        ">;"
    }
.end annotation


# instance fields
.field private final cardRemovalCheckerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;",
            ">;"
        }
    .end annotation
.end field

.field private final healthLoggerBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final manualEntryEventReceiverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final paymentEventReceiverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposPaymentCollectionModule_ProvideBbposPaymentCollectionListenerFactoryFactory;->paymentEventReceiverProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p2, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposPaymentCollectionModule_ProvideBbposPaymentCollectionListenerFactoryFactory;->manualEntryEventReceiverProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p3, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposPaymentCollectionModule_ProvideBbposPaymentCollectionListenerFactoryFactory;->healthLoggerBuilderProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p4, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposPaymentCollectionModule_ProvideBbposPaymentCollectionListenerFactoryFactory;->cardRemovalCheckerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/bbpos/hardware/dagger/BbposPaymentCollectionModule_ProvideBbposPaymentCollectionListenerFactoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;",
            ">;)",
            "Lcom/stripe/core/bbpos/hardware/dagger/BbposPaymentCollectionModule_ProvideBbposPaymentCollectionListenerFactoryFactory;"
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/stripe/core/bbpos/hardware/dagger/BbposPaymentCollectionModule_ProvideBbposPaymentCollectionListenerFactoryFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/core/bbpos/hardware/dagger/BbposPaymentCollectionModule_ProvideBbposPaymentCollectionListenerFactoryFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideBbposPaymentCollectionListenerFactory(Ldagger/Lazy;Ldagger/Lazy;Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;)Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;",
            ">;",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            "Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;",
            ")",
            "Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$Factory;"
        }
    .end annotation

    .line 70
    sget-object v0, Lcom/stripe/core/bbpos/hardware/dagger/BbposPaymentCollectionModule;->INSTANCE:Lcom/stripe/core/bbpos/hardware/dagger/BbposPaymentCollectionModule;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/stripe/core/bbpos/hardware/dagger/BbposPaymentCollectionModule;->provideBbposPaymentCollectionListenerFactory(Ldagger/Lazy;Ldagger/Lazy;Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;)Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$Factory;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$Factory;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$Factory;
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposPaymentCollectionModule_ProvideBbposPaymentCollectionListenerFactoryFactory;->paymentEventReceiverProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposPaymentCollectionModule_ProvideBbposPaymentCollectionListenerFactoryFactory;->manualEntryEventReceiverProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposPaymentCollectionModule_ProvideBbposPaymentCollectionListenerFactoryFactory;->healthLoggerBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;

    iget-object v3, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposPaymentCollectionModule_ProvideBbposPaymentCollectionListenerFactoryFactory;->cardRemovalCheckerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;

    invoke-static {v0, v1, v2, v3}, Lcom/stripe/core/bbpos/hardware/dagger/BbposPaymentCollectionModule_ProvideBbposPaymentCollectionListenerFactoryFactory;->provideBbposPaymentCollectionListenerFactory(Ldagger/Lazy;Ldagger/Lazy;Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;)Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$Factory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/stripe/core/bbpos/hardware/dagger/BbposPaymentCollectionModule_ProvideBbposPaymentCollectionListenerFactoryFactory;->get()Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$Factory;

    move-result-object v0

    return-object v0
.end method
