.class public final Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidesManualEntryEventReceiverFactory;
.super Ljava/lang/Object;
.source "PaymentCollectionModule_ProvidesManualEntryEventReceiverFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;",
        ">;"
    }
.end annotation


# instance fields
.field private final stateMachineProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;",
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
            "Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidesManualEntryEventReceiverFactory;->stateMachineProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidesManualEntryEventReceiverFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;",
            ">;)",
            "Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidesManualEntryEventReceiverFactory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidesManualEntryEventReceiverFactory;

    invoke-direct {v0, p0}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidesManualEntryEventReceiverFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesManualEntryEventReceiver(Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;)Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;
    .locals 1

    .line 48
    sget-object v0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule;->INSTANCE:Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule;

    invoke-virtual {v0, p0}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule;->providesManualEntryEventReceiver(Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;)Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidesManualEntryEventReceiverFactory;->stateMachineProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;

    invoke-static {v0}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidesManualEntryEventReceiverFactory;->providesManualEntryEventReceiver(Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;)Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidesManualEntryEventReceiverFactory;->get()Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;

    move-result-object v0

    return-object v0
.end method
