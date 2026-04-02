.class public final Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesManualEntryEventLogger$wiringFactory;
.super Ljava/lang/Object;
.source "PaymentCollectionLoggerModule_ProvidesManualEntryEventLogger$wiringFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryLoggerInterface;",
        ">;"
    }
.end annotation


# instance fields
.field private final manualEntryLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;",
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
            "Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesManualEntryEventLogger$wiringFactory;->manualEntryLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesManualEntryEventLogger$wiringFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;",
            ">;)",
            "Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesManualEntryEventLogger$wiringFactory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesManualEntryEventLogger$wiringFactory;

    invoke-direct {v0, p0}, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesManualEntryEventLogger$wiringFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesManualEntryEventLogger$wiring(Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;)Lcom/stripe/paymentcollection/manualentry/ManualEntryLoggerInterface;
    .locals 1

    .line 48
    sget-object v0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule;->INSTANCE:Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule;

    invoke-virtual {v0, p0}, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule;->providesManualEntryEventLogger$wiring(Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;)Lcom/stripe/paymentcollection/manualentry/ManualEntryLoggerInterface;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryLoggerInterface;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/paymentcollection/manualentry/ManualEntryLoggerInterface;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesManualEntryEventLogger$wiringFactory;->manualEntryLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;

    invoke-static {v0}, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesManualEntryEventLogger$wiringFactory;->providesManualEntryEventLogger$wiring(Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;)Lcom/stripe/paymentcollection/manualentry/ManualEntryLoggerInterface;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesManualEntryEventLogger$wiringFactory;->get()Lcom/stripe/paymentcollection/manualentry/ManualEntryLoggerInterface;

    move-result-object v0

    return-object v0
.end method
