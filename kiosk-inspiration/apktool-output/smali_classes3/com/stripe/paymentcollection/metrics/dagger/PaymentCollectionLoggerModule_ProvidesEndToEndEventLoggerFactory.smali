.class public final Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesEndToEndEventLoggerFactory;
.super Ljava/lang/Object;
.source "PaymentCollectionLoggerModule_ProvidesEndToEndEventLoggerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;",
        ">;"
    }
.end annotation


# instance fields
.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesEndToEndEventLoggerFactory;->healthLoggerBuilderProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p2, p0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesEndToEndEventLoggerFactory;->clockProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesEndToEndEventLoggerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;)",
            "Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesEndToEndEventLoggerFactory;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesEndToEndEventLoggerFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesEndToEndEventLoggerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesEndToEndEventLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/time/Clock;)Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;
    .locals 1

    .line 52
    sget-object v0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule;->INSTANCE:Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule;

    invoke-virtual {v0, p0, p1}, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule;->providesEndToEndEventLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/time/Clock;)Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesEndToEndEventLoggerFactory;->healthLoggerBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;

    iget-object v1, p0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesEndToEndEventLoggerFactory;->clockProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/time/Clock;

    invoke-static {v0, v1}, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesEndToEndEventLoggerFactory;->providesEndToEndEventLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/time/Clock;)Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesEndToEndEventLoggerFactory;->get()Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;

    move-result-object v0

    return-object v0
.end method
