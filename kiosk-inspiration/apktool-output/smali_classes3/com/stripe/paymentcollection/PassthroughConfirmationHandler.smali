.class public final Lcom/stripe/paymentcollection/PassthroughConfirmationHandler;
.super Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;
.source "PaymentCollectionStateHandlers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u001c\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u001a\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\r2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\rH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/PassthroughConfirmationHandler;",
        "Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;",
        "timer",
        "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;",
        "logger",
        "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;",
        "(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V",
        "generatePassthroughConfirmationEvent",
        "",
        "result",
        "Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;",
        "onEnter",
        "current",
        "Lcom/stripe/paymentcollection/PaymentCollectionData;",
        "from",
        "Lcom/stripe/paymentcollection/PaymentCollectionState;",
        "onPaymentCollectionDataUpdate",
        "new",
        "old",
        "public_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;


# direct methods
.method public constructor <init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V
    .locals 1

    const-string v0, "timer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2860
    sget-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->PASSTHROUGH_CONFIRMATION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 2859
    invoke-direct {p0, v0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    .line 2858
    iput-object p2, p0, Lcom/stripe/paymentcollection/PassthroughConfirmationHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    return-void
.end method

.method private final generatePassthroughConfirmationEvent(Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;)V
    .locals 1

    .line 2899
    new-instance v0, Lcom/stripe/paymentcollection/PassthroughConfirmationRequestEvent;

    invoke-direct {v0, p1}, Lcom/stripe/paymentcollection/PassthroughConfirmationRequestEvent;-><init>(Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;)V

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/PassthroughConfirmationHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method


# virtual methods
.method public onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 2

    .line 2866
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    if-eqz p1, :cond_1

    .line 2868
    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/PassthroughConfirmationHandler;->createPresentProcessingEvent(Lcom/stripe/paymentcollection/PaymentCollectionData;)Lcom/stripe/paymentcollection/PresentProcessingEvent;

    move-result-object p2

    check-cast p2, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, p2}, Lcom/stripe/paymentcollection/PassthroughConfirmationHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    .line 2870
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getMagStripeReadResult()Lcom/stripe/hardware/magstripe/MagStripeReadResult;

    move-result-object p1

    .line 2871
    instance-of p2, p1, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    if-eqz p2, :cond_0

    .line 2872
    iget-object p2, p0, Lcom/stripe/paymentcollection/PassthroughConfirmationHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "Received MagStripeReadSuccess for Passthrough Confirmation, yielding network request event"

    invoke-interface {p2, v1, v0}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 2873
    check-cast p1, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/PassthroughConfirmationHandler;->generatePassthroughConfirmationEvent(Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;)V

    return-void

    .line 2875
    :cond_0
    iget-object p1, p0, Lcom/stripe/paymentcollection/PassthroughConfirmationHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    const-string p2, "Entered Passthrough Confirmation without card data"

    invoke-interface {p1, p2}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->e(Ljava/lang/String;)V

    .line 2876
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->PREPARE_TO_COLLECT_AGAIN:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "Did not receive passthrough card data"

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/PassthroughConfirmationHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onEnter(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2856
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    check-cast p2, Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/PassthroughConfirmationHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 1

    const-string v0, "new"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2882
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    .line 2883
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/PassthroughConfirmationHandler;->getDiscreteEventLogger()Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;->logPassthroughSwiped(Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    .line 2885
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getChargeAttempt()Lcom/stripe/transaction/ChargeAttempt;

    move-result-object p2

    instance-of p2, p2, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulCollectedData;

    if-eqz p2, :cond_0

    .line 2886
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->FINISHED:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "Received successful passthrough confirmation from the backend"

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/PassthroughConfirmationHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2887
    :cond_0
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getChargeAttempt()Lcom/stripe/transaction/ChargeAttempt;

    move-result-object p1

    instance-of p1, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$InvalidCollectedData;

    if-eqz p1, :cond_1

    .line 2888
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->FINISHED:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "Received declined passthrough confirmation from the backend"

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/PassthroughConfirmationHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
