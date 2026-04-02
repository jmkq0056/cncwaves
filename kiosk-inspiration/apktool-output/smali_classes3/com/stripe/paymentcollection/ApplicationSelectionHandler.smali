.class public final Lcom/stripe/paymentcollection/ApplicationSelectionHandler;
.super Lcom/stripe/paymentcollection/PaymentCollectionScreenInputStateHandler;
.source "PaymentCollectionStateHandlers.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/paymentcollection/ApplicationSelectionHandler$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentCollectionStateHandlers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentCollectionStateHandlers.kt\ncom/stripe/paymentcollection/ApplicationSelectionHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2902:1\n1603#2,9:2903\n1855#2:2912\n1856#2:2914\n1612#2:2915\n1#3:2913\n*S KotlinDebug\n*F\n+ 1 PaymentCollectionStateHandlers.kt\ncom/stripe/paymentcollection/ApplicationSelectionHandler\n*L\n1376#1:2903,9\n1376#1:2912\n1376#1:2914\n1376#1:2915\n1376#1:2913\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0002J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u001c\u0010\u000f\u001a\u00020\u00082\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u0012H\u0016J\u0010\u0010\u0015\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u001a\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u000e2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u000eH\u0016J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/ApplicationSelectionHandler;",
        "Lcom/stripe/paymentcollection/PaymentCollectionScreenInputStateHandler;",
        "timer",
        "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;",
        "logger",
        "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;",
        "(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V",
        "generateAutoSelectApplicationEvent",
        "",
        "generateSelectApplicationEvent",
        "index",
        "",
        "generateUserInteractionEvent",
        "data",
        "Lcom/stripe/paymentcollection/PaymentCollectionData;",
        "onEnter",
        "current",
        "from",
        "Lcom/stripe/paymentcollection/PaymentCollectionState;",
        "onExit",
        "to",
        "onImplicitSelection",
        "onPaymentCollectionDataUpdate",
        "new",
        "old",
        "parseApplicationTlv",
        "Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$Application;",
        "blob",
        "",
        "Companion",
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


# static fields
.field private static final AUTO_SELECTED_APPLICATION_INDEX:I = 0x0

.field public static final Companion:Lcom/stripe/paymentcollection/ApplicationSelectionHandler$Companion;

.field public static final UNKNOWN_SELECTED_APPLICATION_INDEX:I = -0x1


# instance fields
.field private final logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/paymentcollection/ApplicationSelectionHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/paymentcollection/ApplicationSelectionHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/paymentcollection/ApplicationSelectionHandler;->Companion:Lcom/stripe/paymentcollection/ApplicationSelectionHandler$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V
    .locals 1

    const-string v0, "timer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1307
    sget-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->APPLICATION_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 1306
    invoke-direct {p0, v0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionScreenInputStateHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    .line 1305
    iput-object p2, p0, Lcom/stripe/paymentcollection/ApplicationSelectionHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    return-void
.end method

.method private final generateAutoSelectApplicationEvent()V
    .locals 2

    .line 1395
    new-instance v0, Lcom/stripe/paymentcollection/AutoSelectApplicationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/paymentcollection/AutoSelectApplicationEvent;-><init>(I)V

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/ApplicationSelectionHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method private final generateSelectApplicationEvent(I)V
    .locals 1

    .line 1368
    new-instance v0, Lcom/stripe/paymentcollection/SelectApplicationEvent;

    invoke-direct {v0, p1}, Lcom/stripe/paymentcollection/SelectApplicationEvent;-><init>(I)V

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/ApplicationSelectionHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method private final generateUserInteractionEvent(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 4

    .line 1376
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getApplicationList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 2903
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 2912
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2911
    check-cast v2, Ljava/lang/String;

    .line 1377
    invoke-direct {p0, v2}, Lcom/stripe/paymentcollection/ApplicationSelectionHandler;->parseApplicationTlv(Ljava/lang/String;)Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$Application;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2911
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2915
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 1380
    move-object v0, v1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getApplicationList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 1381
    new-instance v0, Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel;

    .line 1383
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object v2

    .line 1384
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getEnableCustomerCancellation()Z

    move-result v3

    .line 1385
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getApplicationSelectionRetryReason()Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;

    move-result-object p1

    .line 1381
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel;-><init>(Ljava/util/List;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;)V

    .line 1387
    new-instance p1, Lcom/stripe/paymentcollection/PresentApplicationSelectionEvent;

    invoke-direct {p1, v0}, Lcom/stripe/paymentcollection/PresentApplicationSelectionEvent;-><init>(Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel;)V

    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/ApplicationSelectionHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    :cond_2
    return-void
.end method

.method private final parseApplicationTlv(Ljava/lang/String;)Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$Application;
    .locals 3

    .line 1403
    sget-object v0, Lcom/stripe/hardware/emv/TlvMap;->Companion:Lcom/stripe/hardware/emv/TlvMap$Companion;

    invoke-virtual {v0, p1}, Lcom/stripe/hardware/emv/TlvMap$Companion;->toTlvMap(Ljava/lang/String;)Lcom/stripe/hardware/emv/TlvMap;

    move-result-object v0

    if-nez v0, :cond_0

    move-object p1, p0

    check-cast p1, Lcom/stripe/paymentcollection/ApplicationSelectionHandler;

    .line 1404
    iget-object p1, p0, Lcom/stripe/paymentcollection/ApplicationSelectionHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    const-string v0, "Unable to parse TLV blob received in application selection"

    invoke-interface {p1, v0}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->w(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 1408
    :cond_0
    new-instance v1, Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$Application;

    .line 1409
    invoke-virtual {v0}, Lcom/stripe/hardware/emv/TlvMap;->getApplicationName()Ljava/lang/String;

    move-result-object v2

    .line 1410
    invoke-virtual {v0}, Lcom/stripe/hardware/emv/TlvMap;->getDedicatedFileName()Ljava/lang/String;

    move-result-object v0

    .line 1408
    invoke-direct {v1, v2, v0, p1}, Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$Application;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 0

    .line 1318
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionScreenInputStateHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    if-eqz p1, :cond_1

    .line 1320
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/ApplicationSelectionHandler;->getStageEventLogger()Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->openApplicationSelectionLog()V

    .line 1322
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getShouldAutoSelectApplication()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1323
    invoke-direct {p0}, Lcom/stripe/paymentcollection/ApplicationSelectionHandler;->generateAutoSelectApplicationEvent()V

    .line 1326
    :cond_0
    invoke-virtual {p0, p1, p1}, Lcom/stripe/paymentcollection/ApplicationSelectionHandler;->onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onEnter(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1303
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    check-cast p2, Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/ApplicationSelectionHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public onExit(Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 2

    const-string v0, "to"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1331
    invoke-super {p0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionScreenInputStateHandler;->onExit(Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    .line 1332
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/ApplicationSelectionHandler;->getStageEventLogger()Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/stripe/paymentcollection/ApplicationSelectionHandler;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-interface {v0, v1, p1}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->closeApplicationSelectionLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public bridge synthetic onExit(Ljava/lang/Object;)V
    .locals 0

    .line 1303
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/ApplicationSelectionHandler;->onExit(Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public onImplicitSelection(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 77

    move-object/from16 v0, p0

    const-string v1, "data"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 1313
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v75, 0x3f

    const/16 v76, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, -0x1001

    const/16 v74, -0x1

    invoke-static/range {v2 .. v76}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/paymentcollection/ApplicationSelectionHandler;->updateDataWithoutCallback(Ljava/lang/Object;)V

    .line 1314
    sget-object v1, Lcom/stripe/paymentcollection/PaymentCollectionState;->PROCESSING:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v2, "Application selected with unknown value."

    invoke-virtual {v0, v1, v2}, Lcom/stripe/paymentcollection/ApplicationSelectionHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 1

    const-string v0, "new"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1339
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionScreenInputStateHandler;->onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    .line 1342
    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/ApplicationSelectionHandler;->transitionOnImplicitSelectionIfNeeded(Lcom/stripe/paymentcollection/PaymentCollectionData;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1345
    :cond_0
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getSelectedApplicationIndex()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 1346
    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/ApplicationSelectionHandler;->generateSelectApplicationEvent(I)V

    .line 1347
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->LANGUAGE_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "Application index recorded."

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/ApplicationSelectionHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1352
    :cond_1
    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/ApplicationSelectionHandler;->checkForPrematureTransactionCompletionAndTransitionIfNeeded(Lcom/stripe/paymentcollection/PaymentCollectionData;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 1357
    :cond_2
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getShouldAutoSelectApplication()Z

    move-result p2

    if-nez p2, :cond_3

    .line 1358
    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/ApplicationSelectionHandler;->generateUserInteractionEvent(Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    :cond_3
    :goto_0
    return-void
.end method
