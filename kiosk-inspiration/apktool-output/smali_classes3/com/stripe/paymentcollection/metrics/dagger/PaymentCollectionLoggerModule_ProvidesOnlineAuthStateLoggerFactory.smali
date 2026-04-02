.class public final Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesOnlineAuthStateLoggerFactory;
.super Ljava/lang/Object;
.source "PaymentCollectionLoggerModule_ProvidesOnlineAuthStateLoggerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;",
        ">;"
    }
.end annotation


# instance fields
.field private final stageEventLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/metrics/StageEventLogger;",
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
            "Lcom/stripe/paymentcollection/metrics/StageEventLogger;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesOnlineAuthStateLoggerFactory;->stageEventLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesOnlineAuthStateLoggerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/metrics/StageEventLogger;",
            ">;)",
            "Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesOnlineAuthStateLoggerFactory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesOnlineAuthStateLoggerFactory;

    invoke-direct {v0, p0}, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesOnlineAuthStateLoggerFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesOnlineAuthStateLogger(Lcom/stripe/paymentcollection/metrics/StageEventLogger;)Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;
    .locals 1

    .line 48
    sget-object v0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule;->INSTANCE:Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule;

    invoke-virtual {v0, p0}, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule;->providesOnlineAuthStateLogger(Lcom/stripe/paymentcollection/metrics/StageEventLogger;)Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesOnlineAuthStateLoggerFactory;->stageEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    invoke-static {v0}, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesOnlineAuthStateLoggerFactory;->providesOnlineAuthStateLogger(Lcom/stripe/paymentcollection/metrics/StageEventLogger;)Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesOnlineAuthStateLoggerFactory;->get()Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;

    move-result-object v0

    return-object v0
.end method
