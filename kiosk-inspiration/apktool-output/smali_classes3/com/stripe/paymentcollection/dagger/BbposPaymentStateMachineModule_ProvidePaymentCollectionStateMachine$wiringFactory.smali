.class public final Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule_ProvidePaymentCollectionStateMachine$wiringFactory;
.super Ljava/lang/Object;
.source "BbposPaymentStateMachineModule_ProvidePaymentCollectionStateMachine$wiringFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;",
        ">;"
    }
.end annotation


# instance fields
.field private final eventDelegateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final eventLoggersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/metrics/EventLoggers;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final manualEntryStateMachineProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;

.field private final paymentCollectionFeatureFlagRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final timerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/metrics/EventLoggers;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule_ProvidePaymentCollectionStateMachine$wiringFactory;->module:Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;

    .line 57
    iput-object p2, p0, Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule_ProvidePaymentCollectionStateMachine$wiringFactory;->eventDelegateProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p3, p0, Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule_ProvidePaymentCollectionStateMachine$wiringFactory;->eventLoggersProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p4, p0, Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule_ProvidePaymentCollectionStateMachine$wiringFactory;->timerProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p5, p0, Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule_ProvidePaymentCollectionStateMachine$wiringFactory;->paymentCollectionFeatureFlagRepositoryProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p6, p0, Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule_ProvidePaymentCollectionStateMachine$wiringFactory;->manualEntryStateMachineProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p7, p0, Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule_ProvidePaymentCollectionStateMachine$wiringFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule_ProvidePaymentCollectionStateMachine$wiringFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/metrics/EventLoggers;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;",
            ">;)",
            "Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule_ProvidePaymentCollectionStateMachine$wiringFactory;"
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule_ProvidePaymentCollectionStateMachine$wiringFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule_ProvidePaymentCollectionStateMachine$wiringFactory;-><init>(Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providePaymentCollectionStateMachine$wiring(Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;Lcom/stripe/paymentcollection/metrics/EventLoggers;Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;)Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;
    .locals 0

    .line 87
    invoke-virtual/range {p0 .. p6}, Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;->providePaymentCollectionStateMachine$wiring(Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;Lcom/stripe/paymentcollection/metrics/EventLoggers;Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;)Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;
    .locals 7

    .line 67
    iget-object v0, p0, Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule_ProvidePaymentCollectionStateMachine$wiringFactory;->module:Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;

    iget-object v1, p0, Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule_ProvidePaymentCollectionStateMachine$wiringFactory;->eventDelegateProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;

    iget-object v2, p0, Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule_ProvidePaymentCollectionStateMachine$wiringFactory;->eventLoggersProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/paymentcollection/metrics/EventLoggers;

    iget-object v3, p0, Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule_ProvidePaymentCollectionStateMachine$wiringFactory;->timerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    iget-object v4, p0, Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule_ProvidePaymentCollectionStateMachine$wiringFactory;->paymentCollectionFeatureFlagRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;

    iget-object v5, p0, Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule_ProvidePaymentCollectionStateMachine$wiringFactory;->manualEntryStateMachineProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;

    iget-object v6, p0, Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule_ProvidePaymentCollectionStateMachine$wiringFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;

    invoke-static/range {v0 .. v6}, Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule_ProvidePaymentCollectionStateMachine$wiringFactory;->providePaymentCollectionStateMachine$wiring(Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;Lcom/stripe/paymentcollection/metrics/EventLoggers;Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;)Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule_ProvidePaymentCollectionStateMachine$wiringFactory;->get()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object v0

    return-object v0
.end method
