.class public final Lcom/stripe/paymentcollection/FinishedHandler;
.super Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;
.source "PaymentCollectionStateHandlers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u001c\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/FinishedHandler;",
        "Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;",
        "timer",
        "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;",
        "logger",
        "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;",
        "(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V",
        "generateCollectionCompleteEvent",
        "",
        "data",
        "Lcom/stripe/paymentcollection/PaymentCollectionData;",
        "onEnter",
        "current",
        "from",
        "Lcom/stripe/paymentcollection/PaymentCollectionState;",
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

    .line 2510
    sget-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->FINISHED:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 2509
    invoke-direct {p0, v0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    .line 2508
    iput-object p2, p0, Lcom/stripe/paymentcollection/FinishedHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    return-void
.end method

.method private final generateCollectionCompleteEvent(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 9

    .line 2523
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getCollectionResultType()Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    move-result-object v2

    .line 2524
    sget-object v0, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;->NOT_FINISHED:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    if-ne v2, v0, :cond_0

    .line 2526
    iget-object v0, p0, Lcom/stripe/paymentcollection/FinishedHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    const-string v1, "Finished but can\'t decide the result."

    invoke-interface {v0, v1}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->e(Ljava/lang/String;)V

    .line 2530
    :cond_0
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isCollectionEndedWithFailure()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getConfirmedCollection()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2531
    move-object p1, p0

    check-cast p1, Lcom/stripe/statemachine/StateMachine$StateHandler;

    sget-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->DISPLAY_CART_POST_COLLECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lcom/stripe/statemachine/StateMachine$StateHandler;->transitionTo$default(Lcom/stripe/statemachine/StateMachine$StateHandler;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 2533
    :cond_1
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getCardSlotState()Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    move-result-object v0

    sget-object v3, Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;->EMPTY:Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    if-eq v0, v3, :cond_2

    .line 2534
    iget-object v0, p0, Lcom/stripe/paymentcollection/FinishedHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    const-string v3, "Update card slot to EMPTY. Transaction is likely failed with device failure or timed out."

    invoke-interface {v0, v3}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->e(Ljava/lang/String;)V

    .line 2535
    new-instance v0, Lcom/stripe/paymentcollection/CardStateUpdateEvent;

    sget-object v3, Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;->EMPTY:Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    invoke-direct {v0, v3}, Lcom/stripe/paymentcollection/CardStateUpdateEvent;-><init>(Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;)V

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/FinishedHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    .line 2538
    :cond_2
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getNonCardPaymentMethodData()Lcom/stripe/transaction/NonCardPaymentMethodData;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2539
    sget-object v1, Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;->TRANSACTION_TIMED_OUT:Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;

    goto :goto_0

    .line 2540
    :cond_3
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getNonCardPaymentMethodConfirmationRequested()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2541
    sget-object v1, Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;->TRANSACTION_NOT_PROCESSED:Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;

    :cond_4
    :goto_0
    move-object v5, v1

    .line 2544
    new-instance v8, Lcom/stripe/paymentcollection/CollectionCompleteEvent;

    .line 2545
    new-instance v0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;

    .line 2546
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getTransactionType()Lcom/stripe/hardware/paymentcollection/TransactionType;

    move-result-object v1

    .line 2548
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object v3

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 2545
    invoke-direct/range {v0 .. v7}, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;-><init>(Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2544
    invoke-direct {v8, v0}, Lcom/stripe/paymentcollection/CollectionCompleteEvent;-><init>(Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;)V

    check-cast v8, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    .line 2543
    invoke-virtual {p0, v8}, Lcom/stripe/paymentcollection/FinishedHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method


# virtual methods
.method public onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 1

    .line 2515
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    if-eqz p1, :cond_0

    .line 2517
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/FinishedHandler;->getCollectionEventLogger()Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;

    move-result-object p2

    invoke-virtual {p0}, Lcom/stripe/paymentcollection/FinishedHandler;->getState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-interface {p2, p1, v0}, Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;->end(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    .line 2518
    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/FinishedHandler;->generateCollectionCompleteEvent(Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onEnter(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2506
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    check-cast p2, Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/FinishedHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method
