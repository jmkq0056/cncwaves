.class public final Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionHandler;
.super Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;
.source "PaymentCollectionStateHandlers.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentCollectionStateHandlers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentCollectionStateHandlers.kt\ncom/stripe/paymentcollection/DynamicCurrencyConversionSelectionHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2902:1\n1#2:2903\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\"\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u001c\u0010\u000f\u001a\u00020\u00082\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u0013H\u0016J\u001a\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u00112\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0011H\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionHandler;",
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
        "details",
        "Lcom/stripe/transaction/DynamicCurrencyConversionData;",
        "enableCustomerCancellation",
        "",
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


# direct methods
.method public constructor <init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V
    .locals 1

    const-string v0, "timer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2564
    sget-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->DCC_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 2563
    invoke-direct {p0, v0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    return-void
.end method

.method private final generateUserInteractionEvent(Lcom/stripe/currency/Amount;Lcom/stripe/transaction/DynamicCurrencyConversionData;Z)V
    .locals 11

    if-eqz p2, :cond_2

    .line 2609
    invoke-virtual {p2}, Lcom/stripe/transaction/DynamicCurrencyConversionData;->getReferenceFxRate()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/stripe/transaction/DynamicCurrencyConversionData;->getReferenceMarkupPercent()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    if-eqz v7, :cond_1

    .line 2610
    invoke-virtual {p2}, Lcom/stripe/transaction/DynamicCurrencyConversionData;->getReferenceMarkupPercent()Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/stripe/transaction/DynamicCurrencyConversionData;->getTransactionMarkupPercent()F

    move-result v0

    :goto_1
    move v5, v0

    .line 2612
    new-instance v0, Lcom/stripe/paymentcollection/PresentDynamicCurrencyConversionSelectionEvent;

    .line 2613
    new-instance v1, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;

    .line 2615
    invoke-virtual {p2}, Lcom/stripe/transaction/DynamicCurrencyConversionData;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object v3

    .line 2616
    invoke-virtual {p2}, Lcom/stripe/transaction/DynamicCurrencyConversionData;->getCardholderRate()F

    move-result v4

    .line 2618
    sget-object v2, Lcom/stripe/hardware/paymentcollection/DisclosureMode;->Companion:Lcom/stripe/hardware/paymentcollection/DisclosureMode$Companion;

    .line 2619
    invoke-virtual {p2}, Lcom/stripe/transaction/DynamicCurrencyConversionData;->getSetupFutureUsage()Z

    move-result v6

    .line 2620
    invoke-virtual {p2}, Lcom/stripe/transaction/DynamicCurrencyConversionData;->getRequestIncrementalAuth()Z

    move-result v8

    .line 2621
    invoke-virtual {p2}, Lcom/stripe/transaction/DynamicCurrencyConversionData;->getRequestExtendedAuth()Z

    move-result v9

    .line 2618
    invoke-virtual {v2, v6, v8, v9}, Lcom/stripe/hardware/paymentcollection/DisclosureMode$Companion;->fromOptions(ZZZ)Lcom/stripe/hardware/paymentcollection/DisclosureMode;

    move-result-object v6

    .line 2625
    invoke-virtual {p2}, Lcom/stripe/transaction/DynamicCurrencyConversionData;->getReaderCountry()Lcom/stripe/currency/CountryCode;

    move-result-object v9

    .line 2626
    invoke-virtual {p2}, Lcom/stripe/transaction/DynamicCurrencyConversionData;->getCardCountry()Lcom/stripe/currency/CountryCode;

    move-result-object v10

    move-object v2, p1

    move v8, p3

    .line 2613
    invoke-direct/range {v1 .. v10}, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;-><init>(Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;FFLcom/stripe/hardware/paymentcollection/DisclosureMode;ZZLcom/stripe/currency/CountryCode;Lcom/stripe/currency/CountryCode;)V

    .line 2612
    invoke-direct {v0, v1}, Lcom/stripe/paymentcollection/PresentDynamicCurrencyConversionSelectionEvent;-><init>(Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;)V

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    .line 2611
    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 0

    .line 2569
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    if-eqz p1, :cond_0

    .line 2571
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionHandler;->getStageEventLogger()Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->openDynamicCurrencyConversionSelectionLog()V

    .line 2572
    invoke-virtual {p0, p1, p1}, Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionHandler;->onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onEnter(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2560
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    check-cast p2, Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public onExit(Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 2

    const-string v0, "to"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2577
    invoke-super {p0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onExit(Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    .line 2578
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionHandler;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionHandler;->getStageEventLogger()Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->closeDynamicCurrencyConversionSelectionLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onExit(Ljava/lang/Object;)V
    .locals 0

    .line 2560
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionHandler;->onExit(Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 1

    .line 2587
    const-string v0, "new"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2585
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    .line 2587
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getSelectedDynamicCurrencyConversion()Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2589
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->PROCESSING:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 2590
    const-string p2, "Dynamic Currency Conversion selected"

    .line 2588
    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2596
    :cond_0
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object p2

    .line 2597
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getDynamicCurrencyConversionData()Lcom/stripe/transaction/DynamicCurrencyConversionData;

    move-result-object v0

    .line 2598
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getEnableCustomerCancellation()Z

    move-result p1

    .line 2595
    invoke-direct {p0, p2, v0, p1}, Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionHandler;->generateUserInteractionEvent(Lcom/stripe/currency/Amount;Lcom/stripe/transaction/DynamicCurrencyConversionData;Z)V

    return-void
.end method
