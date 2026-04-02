.class public final Lcom/stripe/paymentcollection/InterstitialHandler;
.super Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;
.source "PaymentCollectionStateHandlers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001c\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u0010\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000cH\u0016J\u001a\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\n2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\nH\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/InterstitialHandler;",
        "Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;",
        "timer",
        "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;",
        "logger",
        "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;",
        "(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V",
        "onEnter",
        "",
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


# direct methods
.method public constructor <init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V
    .locals 1

    const-string v0, "timer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1258
    sget-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->INTERSTITIAL:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 1257
    invoke-direct {p0, v0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    return-void
.end method


# virtual methods
.method public onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 8

    .line 1263
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    if-eqz p1, :cond_0

    .line 1265
    new-instance p2, Lcom/stripe/paymentcollection/PresentInterstitialEvent;

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getSelectedLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/stripe/paymentcollection/PresentInterstitialEvent;-><init>(Ljava/lang/String;)V

    check-cast p2, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, p2}, Lcom/stripe/paymentcollection/InterstitialHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    .line 1267
    new-instance p2, Lcom/stripe/paymentcollection/CollectionCompleteEvent;

    .line 1268
    new-instance v0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;

    .line 1269
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getTransactionType()Lcom/stripe/hardware/paymentcollection/TransactionType;

    move-result-object v1

    .line 1270
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getCollectionResultType()Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    move-result-object v2

    .line 1271
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object v3

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1268
    invoke-direct/range {v0 .. v7}, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;-><init>(Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1267
    invoke-direct {p2, v0}, Lcom/stripe/paymentcollection/CollectionCompleteEvent;-><init>(Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;)V

    check-cast p2, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    .line 1266
    invoke-virtual {p0, p2}, Lcom/stripe/paymentcollection/InterstitialHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onEnter(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1254
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    check-cast p2, Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/InterstitialHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public onExit(Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 1

    const-string v0, "to"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1294
    invoke-super {p0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onExit(Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    .line 1295
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/InterstitialHandler;->getCollectionEventLogger()Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;

    move-result-object p1

    invoke-interface {p1}, Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;->start()V

    return-void
.end method

.method public bridge synthetic onExit(Ljava/lang/Object;)V
    .locals 0

    .line 1254
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/InterstitialHandler;->onExit(Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 1

    const-string v0, "new"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1283
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    .line 1285
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getShouldStartManualEntry()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1286
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->MANUAL_ENTRY:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "Manual entry required."

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/InterstitialHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1290
    :cond_0
    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/InterstitialHandler;->startCollectionIfNeeded(Lcom/stripe/paymentcollection/PaymentCollectionData;)Z

    return-void
.end method
