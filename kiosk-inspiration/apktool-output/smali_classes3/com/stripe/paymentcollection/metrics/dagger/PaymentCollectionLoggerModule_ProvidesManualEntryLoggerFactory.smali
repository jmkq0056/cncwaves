.class public final Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesManualEntryLoggerFactory;
.super Ljava/lang/Object;
.source "PaymentCollectionLoggerModule_ProvidesManualEntryLoggerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;",
        ">;"
    }
.end annotation


# instance fields
.field private final endToEndEventLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;",
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
            "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesManualEntryLoggerFactory;->healthLoggerBuilderProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p2, p0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesManualEntryLoggerFactory;->endToEndEventLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesManualEntryLoggerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;",
            ">;)",
            "Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesManualEntryLoggerFactory;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesManualEntryLoggerFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesManualEntryLoggerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesManualEntryLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;
    .locals 1

    .line 54
    sget-object v0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule;->INSTANCE:Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule;

    invoke-virtual {v0, p0, p1}, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule;->providesManualEntryLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesManualEntryLoggerFactory;->healthLoggerBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;

    iget-object v1, p0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesManualEntryLoggerFactory;->endToEndEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;

    invoke-static {v0, v1}, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesManualEntryLoggerFactory;->providesManualEntryLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesManualEntryLoggerFactory;->get()Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;

    move-result-object v0

    return-object v0
.end method
