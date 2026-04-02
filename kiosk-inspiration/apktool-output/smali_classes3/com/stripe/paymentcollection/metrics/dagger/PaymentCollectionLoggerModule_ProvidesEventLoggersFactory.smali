.class public final Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesEventLoggersFactory;
.super Ljava/lang/Object;
.source "PaymentCollectionLoggerModule_ProvidesEventLoggersFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/paymentcollection/metrics/EventLoggers;",
        ">;"
    }
.end annotation


# instance fields
.field private final discreteEventLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final endToEndEventLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final onlineAuthStateLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final stageEventLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/metrics/StageEventLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final tippingLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/metrics/TippingLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/metrics/StageEventLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/metrics/TippingLogger;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesEventLoggersFactory;->endToEndEventLoggerProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p2, p0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesEventLoggersFactory;->stageEventLoggerProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p3, p0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesEventLoggersFactory;->discreteEventLoggerProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p4, p0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesEventLoggersFactory;->onlineAuthStateLoggerProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p5, p0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesEventLoggersFactory;->tippingLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesEventLoggersFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/metrics/StageEventLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/metrics/TippingLogger;",
            ">;)",
            "Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesEventLoggersFactory;"
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesEventLoggersFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesEventLoggersFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesEventLoggers(Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;Lcom/stripe/paymentcollection/metrics/StageEventLogger;Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;Lcom/stripe/paymentcollection/metrics/TippingLogger;)Lcom/stripe/paymentcollection/metrics/EventLoggers;
    .locals 6

    .line 73
    sget-object v0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule;->INSTANCE:Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule;->providesEventLoggers(Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;Lcom/stripe/paymentcollection/metrics/StageEventLogger;Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;Lcom/stripe/paymentcollection/metrics/TippingLogger;)Lcom/stripe/paymentcollection/metrics/EventLoggers;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/paymentcollection/metrics/EventLoggers;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/paymentcollection/metrics/EventLoggers;
    .locals 5

    .line 58
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesEventLoggersFactory;->endToEndEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;

    iget-object v1, p0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesEventLoggersFactory;->stageEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    iget-object v2, p0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesEventLoggersFactory;->discreteEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;

    iget-object v3, p0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesEventLoggersFactory;->onlineAuthStateLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;

    iget-object v4, p0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesEventLoggersFactory;->tippingLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/paymentcollection/metrics/TippingLogger;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesEventLoggersFactory;->providesEventLoggers(Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;Lcom/stripe/paymentcollection/metrics/StageEventLogger;Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;Lcom/stripe/paymentcollection/metrics/TippingLogger;)Lcom/stripe/paymentcollection/metrics/EventLoggers;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesEventLoggersFactory;->get()Lcom/stripe/paymentcollection/metrics/EventLoggers;

    move-result-object v0

    return-object v0
.end method
