.class public final Lcom/stripe/paymentcollection/manualentry/ConfirmDetailsHandler;
.super Lcom/stripe/paymentcollection/manualentry/ManualEntryHandler;
.source "ManualEntryStates.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001c\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/manualentry/ConfirmDetailsHandler;",
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

    .line 198
    sget-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->CONFIRM_DETAILS:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-direct {p0, v0, p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryHandler;-><init>(Lcom/stripe/paymentcollection/manualentry/ManualEntryState;Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;)V

    .line 197
    iput-object p2, p0, Lcom/stripe/paymentcollection/manualentry/ConfirmDetailsHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    return-void
.end method


# virtual methods
.method public onEnter(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;Lcom/stripe/paymentcollection/manualentry/ManualEntryState;)V
    .locals 9

    .line 200
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/manualentry/ManualEntryHandler;->onEnter(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 201
    iget-object p2, p0, Lcom/stripe/paymentcollection/manualentry/ConfirmDetailsHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "ConfirmDetailsHandler.onEnter"

    invoke-interface {p2, v1, v0}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    if-eqz p1, :cond_4

    .line 204
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object v3

    .line 205
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->getZipCode()Ljava/lang/String;

    move-result-object v7

    .line 206
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->getEncryptedData()Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;

    move-result-object p2

    const-string v0, ""

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;->getMaskedPan()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, p2

    goto :goto_1

    :cond_1
    :goto_0
    move-object v4, v0

    .line 207
    :goto_1
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->getCvvAsteriskCount()I

    move-result v5

    .line 208
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->getEncryptedData()Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;->getExpiryDate()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    move-object v6, p2

    goto :goto_3

    :cond_3
    :goto_2
    move-object v6, v0

    .line 209
    :goto_3
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->getTransactionType()Lcom/stripe/hardware/paymentcollection/TransactionType;

    move-result-object v8

    .line 203
    new-instance v2, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;

    invoke-direct/range {v2 .. v8}, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;-><init>(Lcom/stripe/currency/Amount;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/stripe/hardware/paymentcollection/TransactionType;)V

    .line 211
    new-instance p1, Lcom/stripe/paymentcollection/ManualEntryEvent;

    check-cast v2, Lcom/stripe/hardware/paymentcollection/ManualEntryModel;

    invoke-direct {p1, v2}, Lcom/stripe/paymentcollection/ManualEntryEvent;-><init>(Lcom/stripe/hardware/paymentcollection/ManualEntryModel;)V

    .line 212
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/manualentry/ConfirmDetailsHandler;->getEventDelegate()Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;

    move-result-object p2

    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-interface {p2, p1}, Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;->onHandlePaymentCollectionEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    :cond_4
    return-void
.end method

.method public bridge synthetic onEnter(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 195
    check-cast p1, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;

    check-cast p2, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/manualentry/ConfirmDetailsHandler;->onEnter(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;Lcom/stripe/paymentcollection/manualentry/ManualEntryState;)V

    return-void
.end method
