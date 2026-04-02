.class public final Lcom/stripe/paymentcollection/NonCardPaymentMethodActionRequiredHandler;
.super Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;
.source "PaymentCollectionStateHandlers.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentCollectionStateHandlers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentCollectionStateHandlers.kt\ncom/stripe/paymentcollection/NonCardPaymentMethodActionRequiredHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2902:1\n1#2:2903\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u001c\u0010\r\u001a\u00020\u00082\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u0011H\u0016J\u001a\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u000f2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000fH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/NonCardPaymentMethodActionRequiredHandler;",
        "Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;",
        "timer",
        "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;",
        "logger",
        "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;",
        "(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V",
        "generateUserInteractionEvent",
        "",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "data",
        "Lcom/stripe/transaction/NonCardPaymentMethodData;",
        "onEnter",
        "current",
        "Lcom/stripe/paymentcollection/PaymentCollectionData;",
        "from",
        "Lcom/stripe/paymentcollection/PaymentCollectionState;",
        "onExit",
        "to",
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

    .line 2768
    sget-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->NON_CARD_PAYMENT_METHOD_ACTION_REQUIRED:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 2767
    invoke-direct {p0, v0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    .line 2766
    iput-object p2, p0, Lcom/stripe/paymentcollection/NonCardPaymentMethodActionRequiredHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    return-void
.end method

.method private final generateUserInteractionEvent(Lcom/stripe/currency/Amount;Lcom/stripe/transaction/NonCardPaymentMethodData;)V
    .locals 3

    .line 2842
    new-instance v0, Lcom/stripe/paymentcollection/PresentNonCardPaymentMethodActionRequiredEvent;

    .line 2843
    new-instance v1, Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;

    .line 2844
    invoke-virtual {p2}, Lcom/stripe/transaction/NonCardPaymentMethodData;->getType()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    move-result-object v2

    .line 2845
    invoke-virtual {p2}, Lcom/stripe/transaction/NonCardPaymentMethodData;->getData()[B

    move-result-object p2

    .line 2843
    invoke-direct {v1, v2, p2, p1}, Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;-><init>(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;[BLcom/stripe/currency/Amount;)V

    .line 2842
    invoke-direct {v0, v1}, Lcom/stripe/paymentcollection/PresentNonCardPaymentMethodActionRequiredEvent;-><init>(Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;)V

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    .line 2841
    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/NonCardPaymentMethodActionRequiredHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method


# virtual methods
.method public onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 0

    .line 2773
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    if-eqz p1, :cond_0

    .line 2775
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/NonCardPaymentMethodActionRequiredHandler;->getStageEventLogger()Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->openNonCardPaymentMethodActionRequiredLog()V

    .line 2776
    invoke-virtual {p0, p1, p1}, Lcom/stripe/paymentcollection/NonCardPaymentMethodActionRequiredHandler;->onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onEnter(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2764
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    check-cast p2, Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/NonCardPaymentMethodActionRequiredHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public onExit(Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 2

    const-string v0, "to"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2781
    invoke-super {p0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onExit(Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    .line 2782
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/NonCardPaymentMethodActionRequiredHandler;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/stripe/paymentcollection/NonCardPaymentMethodActionRequiredHandler;->getStageEventLogger()Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->closeNonCardPaymentMethodActionRequiredLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onExit(Ljava/lang/Object;)V
    .locals 0

    .line 2764
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/NonCardPaymentMethodActionRequiredHandler;->onExit(Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 4

    const-string v0, "new"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2786
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    .line 2788
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getSelectedNonCardPaymentMethod()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    move-result-object p2

    if-nez p2, :cond_0

    .line 2790
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->NON_CARD_PAYMENT_METHOD_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 2791
    const-string p2, "User requested to return to non card payment selection."

    .line 2789
    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/NonCardPaymentMethodActionRequiredHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2796
    :cond_0
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getNonCardPaymentMethodData()Lcom/stripe/transaction/NonCardPaymentMethodData;

    move-result-object p2

    if-nez p2, :cond_1

    .line 2798
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->NON_CARD_PAYMENT_METHOD_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 2799
    const-string p2, "No data available"

    .line 2797
    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/NonCardPaymentMethodActionRequiredHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2804
    :cond_1
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getChargeAttempt()Lcom/stripe/transaction/ChargeAttempt;

    move-result-object p2

    instance-of p2, p2, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt;

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 2806
    new-instance p2, Lcom/stripe/paymentcollection/NonCardPaymentMethodActionCompletionEvent;

    .line 2807
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getChargeAttempt()Lcom/stripe/transaction/ChargeAttempt;

    move-result-object v1

    .line 2808
    instance-of v2, v1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulNonCardCharge;

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 2809
    :cond_2
    instance-of v1, v1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;

    if-eqz v1, :cond_3

    goto :goto_0

    .line 2811
    :cond_3
    iget-object v1, p0, Lcom/stripe/paymentcollection/NonCardPaymentMethodActionRequiredHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received unexpected chargeAttempt type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getChargeAttempt()Lcom/stripe/transaction/ChargeAttempt;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ". Failing transaction."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->w(Ljava/lang/String;)V

    .line 2806
    :goto_0
    invoke-direct {p2, v0}, Lcom/stripe/paymentcollection/NonCardPaymentMethodActionCompletionEvent;-><init>(Z)V

    check-cast p2, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    .line 2805
    invoke-virtual {p0, p2}, Lcom/stripe/paymentcollection/NonCardPaymentMethodActionRequiredHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    .line 2818
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->FINISHED:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 2819
    const-string p2, "Received completed charge."

    .line 2817
    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/NonCardPaymentMethodActionRequiredHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2822
    :cond_4
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getChargeAttempt()Lcom/stripe/transaction/ChargeAttempt;

    move-result-object p2

    instance-of p2, p2, Lcom/stripe/transaction/ChargeAttempt$IncompleteAttempt;

    if-eqz p2, :cond_5

    .line 2823
    iget-object p1, p0, Lcom/stripe/paymentcollection/NonCardPaymentMethodActionRequiredHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    .line 2824
    const-string p2, "Transaction received un-completable charge attempt (timeout). Failing transaction."

    .line 2823
    invoke-interface {p1, p2}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->w(Ljava/lang/String;)V

    .line 2826
    new-instance p1, Lcom/stripe/paymentcollection/NonCardPaymentMethodActionCompletionEvent;

    invoke-direct {p1, v0}, Lcom/stripe/paymentcollection/NonCardPaymentMethodActionCompletionEvent;-><init>(Z)V

    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/NonCardPaymentMethodActionRequiredHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    .line 2827
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->FINISHED:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "Received un-completable Charge"

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/NonCardPaymentMethodActionRequiredHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2832
    :cond_5
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object p2

    .line 2833
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getNonCardPaymentMethodData()Lcom/stripe/transaction/NonCardPaymentMethodData;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2831
    invoke-direct {p0, p2, p1}, Lcom/stripe/paymentcollection/NonCardPaymentMethodActionRequiredHandler;->generateUserInteractionEvent(Lcom/stripe/currency/Amount;Lcom/stripe/transaction/NonCardPaymentMethodData;)V

    return-void
.end method
