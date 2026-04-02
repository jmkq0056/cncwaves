.class public final Lcom/stripe/paymentcollection/manualentry/ConfigureReaderHandler;
.super Lcom/stripe/paymentcollection/manualentry/ManualEntryHandler;
.source "ManualEntryStates.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nManualEntryStates.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManualEntryStates.kt\ncom/stripe/paymentcollection/manualentry/ConfigureReaderHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,236:1\n1#2:237\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u001c\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/manualentry/ConfigureReaderHandler;",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryHandler;",
        "eventDelegate",
        "Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;",
        "logger",
        "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;",
        "(Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V",
        "configureReader",
        "",
        "data",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryData;",
        "onEnter",
        "current",
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

    .line 61
    sget-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->CONFIGURE_READER:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-direct {p0, v0, p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryHandler;-><init>(Lcom/stripe/paymentcollection/manualentry/ManualEntryState;Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;)V

    .line 60
    iput-object p2, p0, Lcom/stripe/paymentcollection/manualentry/ConfigureReaderHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    return-void
.end method

.method private final configureReader(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;)V
    .locals 13

    .line 73
    sget-object v0, Lcom/stripe/hardware/ReaderConfiguration;->Companion:Lcom/stripe/hardware/ReaderConfiguration$Companion;

    invoke-virtual {v0}, Lcom/stripe/hardware/ReaderConfiguration$Companion;->getMANUAL_ENTRY()Ljava/util/Set;

    move-result-object v1

    .line 74
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object v2

    .line 75
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->getTransactionType()Lcom/stripe/hardware/paymentcollection/TransactionType;

    move-result-object v3

    .line 76
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->getEmvTransactionType()Lcom/stripe/hardware/emv/EmvTransactionType;

    move-result-object v4

    const/16 v11, 0x3c0

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 72
    invoke-static/range {v1 .. v12}, Lcom/stripe/paymentcollection/UtilsKt;->generateConfigureReaderEvent$default(Ljava/util/Set;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;ZZLcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;Ljava/util/List;ZILjava/lang/Object;)Lcom/stripe/hardware/ReaderConfiguration;

    move-result-object p1

    .line 82
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/manualentry/ConfigureReaderHandler;->getEventDelegate()Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;

    move-result-object v0

    new-instance v1, Lcom/stripe/paymentcollection/ConfigureReaderEvent;

    invoke-direct {v1, p1}, Lcom/stripe/paymentcollection/ConfigureReaderEvent;-><init>(Lcom/stripe/hardware/ReaderConfiguration;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-interface {v0, v1}, Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;->onHandlePaymentCollectionEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method


# virtual methods
.method public onEnter(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;Lcom/stripe/paymentcollection/manualentry/ManualEntryState;)V
    .locals 2

    .line 63
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/manualentry/ManualEntryHandler;->onEnter(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    iget-object p2, p0, Lcom/stripe/paymentcollection/manualentry/ConfigureReaderHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "ConfigureReaderHandler.onEnter"

    invoke-interface {p2, v1, v0}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    if-eqz p1, :cond_0

    .line 68
    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/manualentry/ConfigureReaderHandler;->configureReader(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onEnter(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 58
    check-cast p1, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;

    check-cast p2, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/manualentry/ConfigureReaderHandler;->onEnter(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;Lcom/stripe/paymentcollection/manualentry/ManualEntryState;)V

    return-void
.end method
