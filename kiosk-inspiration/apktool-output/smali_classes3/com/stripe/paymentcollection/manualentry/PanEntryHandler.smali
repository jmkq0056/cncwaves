.class public final Lcom/stripe/paymentcollection/manualentry/PanEntryHandler;
.super Lcom/stripe/paymentcollection/manualentry/ManualEntryHandler;
.source "ManualEntryStates.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001c\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u001a\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\n2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\nH\u0014J\u0010\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\nH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/manualentry/PanEntryHandler;",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryHandler;",
        "eventDelegate",
        "Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;",
        "logger",
        "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;",
        "(Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V",
        "onEnter",
        "",
        "current",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryData;",
        "from",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryState;",
        "onProcessDataUpdate",
        "new",
        "old",
        "sendPanEntryUiEvent",
        "data",
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
.method public constructor <init>(Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V
    .locals 1

    const-string v0, "eventDelegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    sget-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->PAN_ENTRY:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-direct {p0, v0, p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryHandler;-><init>(Lcom/stripe/paymentcollection/manualentry/ManualEntryState;Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;)V

    .line 88
    iput-object p2, p0, Lcom/stripe/paymentcollection/manualentry/PanEntryHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    return-void
.end method

.method private final sendPanEntryUiEvent(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;)V
    .locals 8

    .line 104
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/manualentry/PanEntryHandler;->getEventDelegate()Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;

    move-result-object v0

    .line 105
    new-instance v1, Lcom/stripe/paymentcollection/ManualEntryEvent;

    .line 106
    new-instance v2, Lcom/stripe/hardware/paymentcollection/PanEntryModel;

    .line 107
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object v3

    .line 108
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->getPanUnmaskedDigits()Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->getPanAsteriskCount()I

    move-result v5

    .line 110
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->getShowError()Z

    move-result v6

    .line 111
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->getTransactionType()Lcom/stripe/hardware/paymentcollection/TransactionType;

    move-result-object v7

    .line 106
    invoke-direct/range {v2 .. v7}, Lcom/stripe/hardware/paymentcollection/PanEntryModel;-><init>(Lcom/stripe/currency/Amount;Ljava/lang/String;IZLcom/stripe/hardware/paymentcollection/TransactionType;)V

    check-cast v2, Lcom/stripe/hardware/paymentcollection/ManualEntryModel;

    .line 105
    invoke-direct {v1, v2}, Lcom/stripe/paymentcollection/ManualEntryEvent;-><init>(Lcom/stripe/hardware/paymentcollection/ManualEntryModel;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    .line 104
    invoke-interface {v0, v1}, Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;->onHandlePaymentCollectionEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method


# virtual methods
.method public onEnter(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;Lcom/stripe/paymentcollection/manualentry/ManualEntryState;)V
    .locals 2

    .line 91
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/manualentry/ManualEntryHandler;->onEnter(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    iget-object p2, p0, Lcom/stripe/paymentcollection/manualentry/PanEntryHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "PanEntryHandler.onEnter"

    invoke-interface {p2, v1, v0}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    if-eqz p1, :cond_0

    .line 94
    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/manualentry/PanEntryHandler;->sendPanEntryUiEvent(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;)V

    .line 95
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/manualentry/PanEntryHandler;->sendStartPinEvent()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onEnter(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 86
    check-cast p1, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;

    check-cast p2, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/manualentry/PanEntryHandler;->onEnter(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;Lcom/stripe/paymentcollection/manualentry/ManualEntryState;)V

    return-void
.end method

.method protected onProcessDataUpdate(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;Lcom/stripe/paymentcollection/manualentry/ManualEntryData;)V
    .locals 0

    const-string p2, "new"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/manualentry/PanEntryHandler;->sendPanEntryUiEvent(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;)V

    return-void
.end method
