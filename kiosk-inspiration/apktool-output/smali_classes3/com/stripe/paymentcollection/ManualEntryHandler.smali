.class public final Lcom/stripe/paymentcollection/ManualEntryHandler;
.super Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;
.source "PaymentCollectionStateHandlers.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/paymentcollection/ManualEntryHandler$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u001c\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000eH\u0016J\u001a\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u000c2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000cH\u0016J\u0010\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0018\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/ManualEntryHandler;",
        "Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;",
        "timer",
        "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;",
        "manualEntryStateMachine",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;",
        "logger",
        "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;",
        "(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V",
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
        "sendManualEntryCollectionResult",
        "result",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;",
        "sendManualEntryFailureUiEvent",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "transactionType",
        "Lcom/stripe/hardware/paymentcollection/TransactionType;",
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

.field private final manualEntryStateMachine:Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;


# direct methods
.method public constructor <init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V
    .locals 1

    const-string v0, "timer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manualEntryStateMachine"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1060
    sget-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->MANUAL_ENTRY:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 1059
    invoke-direct {p0, v0, p1, p3}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    .line 1057
    iput-object p2, p0, Lcom/stripe/paymentcollection/ManualEntryHandler;->manualEntryStateMachine:Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;

    .line 1058
    iput-object p3, p0, Lcom/stripe/paymentcollection/ManualEntryHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    return-void
.end method

.method public static final synthetic access$sendManualEntryCollectionResult(Lcom/stripe/paymentcollection/ManualEntryHandler;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;)V
    .locals 0

    .line 1055
    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/ManualEntryHandler;->sendManualEntryCollectionResult(Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;)V

    return-void
.end method

.method private final sendManualEntryCollectionResult(Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;)V
    .locals 1

    .line 1081
    new-instance v0, Lcom/stripe/paymentcollection/ManualEntryCollectionResultEvent;

    invoke-direct {v0, p1}, Lcom/stripe/paymentcollection/ManualEntryCollectionResultEvent;-><init>(Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;)V

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/ManualEntryHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method private final sendManualEntryFailureUiEvent(Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;)V
    .locals 2

    .line 1126
    new-instance v0, Lcom/stripe/paymentcollection/ManualEntryEvent;

    .line 1127
    new-instance v1, Lcom/stripe/hardware/paymentcollection/ManualEntryFailureModel;

    invoke-direct {v1, p1, p2}, Lcom/stripe/hardware/paymentcollection/ManualEntryFailureModel;-><init>(Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;)V

    check-cast v1, Lcom/stripe/hardware/paymentcollection/ManualEntryModel;

    .line 1126
    invoke-direct {v0, v1}, Lcom/stripe/paymentcollection/ManualEntryEvent;-><init>(Lcom/stripe/hardware/paymentcollection/ManualEntryModel;)V

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    .line 1125
    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/ManualEntryHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method


# virtual methods
.method public onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 6

    .line 1065
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    if-eqz p1, :cond_1

    .line 1067
    iget-object p2, p0, Lcom/stripe/paymentcollection/ManualEntryHandler;->manualEntryStateMachine:Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;

    invoke-virtual {p2}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->reset()V

    .line 1068
    iget-object v0, p0, Lcom/stripe/paymentcollection/ManualEntryHandler;->manualEntryStateMachine:Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;

    .line 1069
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object v1

    .line 1070
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getTransactionType()Lcom/stripe/hardware/paymentcollection/TransactionType;

    move-result-object v2

    .line 1071
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getEmvTransactionType()Lcom/stripe/hardware/emv/EmvTransactionType;

    move-result-object v3

    .line 1072
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getIntegrationType()Lcom/stripe/restclient/IntegrationType;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/stripe/restclient/IntegrationType;->LOCAL_POS:Lcom/stripe/restclient/IntegrationType;

    :cond_0
    move-object v4, p1

    .line 1068
    new-instance p1, Lcom/stripe/paymentcollection/ManualEntryHandler$onEnter$1$1;

    invoke-direct {p1, p0}, Lcom/stripe/paymentcollection/ManualEntryHandler$onEnter$1$1;-><init>(Lcom/stripe/paymentcollection/ManualEntryHandler;)V

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-virtual/range {v0 .. v5}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->startTransaction(Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/restclient/IntegrationType;Lkotlin/jvm/functions/Function1;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onEnter(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1055
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    check-cast p2, Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/ManualEntryHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public onExit(Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 2

    const-string v0, "to"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1136
    invoke-super {p0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onExit(Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    .line 1139
    sget-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->CANCEL:Lcom/stripe/paymentcollection/PaymentCollectionState;

    if-ne p1, v0, :cond_5

    .line 1140
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/ManualEntryHandler;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getCancelReason()Lcom/stripe/paymentcollection/CancelReason;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, -0x1

    if-nez p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/stripe/paymentcollection/ManualEntryHandler$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/CancelReason;->ordinal()I

    move-result p1

    aget p1, v1, p1

    :goto_1
    if-eq p1, v0, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto :goto_2

    .line 1143
    :cond_2
    iget-object p1, p0, Lcom/stripe/paymentcollection/ManualEntryHandler;->manualEntryStateMachine:Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->notifyMerchantCancel()V

    return-void

    .line 1141
    :cond_3
    iget-object p1, p0, Lcom/stripe/paymentcollection/ManualEntryHandler;->manualEntryStateMachine:Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->notifyHardwareCancel()V

    return-void

    .line 1145
    :cond_4
    iget-object p1, p0, Lcom/stripe/paymentcollection/ManualEntryHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    const-string v0, "Manual entry cancelled without a reason."

    invoke-interface {p1, v0}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->w(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public bridge synthetic onExit(Ljava/lang/Object;)V
    .locals 0

    .line 1055
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/ManualEntryHandler;->onExit(Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 6

    const-string v0, "new"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1085
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    .line 1087
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getManualEntryCollectionResult()Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;

    move-result-object p2

    .line 1088
    instance-of v0, p2, Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult$Failure;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 1089
    iget-object v0, p0, Lcom/stripe/paymentcollection/ManualEntryHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MOTO collection failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Lkotlin/Pair;

    invoke-interface {v0, v4, v1}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 1090
    check-cast p2, Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult$Failure;

    invoke-virtual {p2}, Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult$Failure;->getReason()Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    move-result-object p2

    sget-object v0, Lcom/stripe/paymentcollection/ManualEntryHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    if-eq p2, v2, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 1100
    :cond_0
    move-object p1, p0

    check-cast p1, Lcom/stripe/statemachine/StateMachine$StateHandler;

    sget-object p2, Lcom/stripe/paymentcollection/PaymentCollectionState;->TIMEOUT:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-static {p1, p2, v3, v2, v3}, Lcom/stripe/statemachine/StateMachine$StateHandler;->transitionTo$default(Lcom/stripe/statemachine/StateMachine$StateHandler;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 1095
    :cond_1
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object p2

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getTransactionType()Lcom/stripe/hardware/paymentcollection/TransactionType;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/stripe/paymentcollection/ManualEntryHandler;->sendManualEntryFailureUiEvent(Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;)V

    .line 1096
    move-object p1, p0

    check-cast p1, Lcom/stripe/statemachine/StateMachine$StateHandler;

    sget-object p2, Lcom/stripe/paymentcollection/PaymentCollectionState;->FINISHED:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-static {p1, p2, v3, v2, v3}, Lcom/stripe/statemachine/StateMachine$StateHandler;->transitionTo$default(Lcom/stripe/statemachine/StateMachine$StateHandler;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 1111
    :cond_2
    instance-of p1, p2, Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult$Success;

    if-eqz p1, :cond_3

    .line 1112
    iget-object p1, p0, Lcom/stripe/paymentcollection/ManualEntryHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "MOTO collection success: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Lkotlin/Pair;

    invoke-interface {p1, v0, v1}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 1113
    new-instance p1, Lcom/stripe/paymentcollection/ManualEntryAuthorizationRequestEvent;

    check-cast p2, Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult$Success;

    invoke-virtual {p2}, Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult$Success;->getData()Lcom/stripe/paymentcollection/manualentry/ManualEntryResultModel;

    move-result-object p2

    sget-object v0, Lcom/stripe/paymentcollection/TippingState$Ineligible;->INSTANCE:Lcom/stripe/paymentcollection/TippingState$Ineligible;

    check-cast v0, Lcom/stripe/paymentcollection/TippingState$EndState;

    invoke-direct {p1, p2, v0}, Lcom/stripe/paymentcollection/ManualEntryAuthorizationRequestEvent;-><init>(Lcom/stripe/paymentcollection/manualentry/ManualEntryResultModel;Lcom/stripe/paymentcollection/TippingState$EndState;)V

    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/ManualEntryHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    .line 1114
    move-object p1, p0

    check-cast p1, Lcom/stripe/statemachine/StateMachine$StateHandler;

    sget-object p2, Lcom/stripe/paymentcollection/PaymentCollectionState;->COLLECTION_COMPLETE:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-static {p1, p2, v3, v2, v3}, Lcom/stripe/statemachine/StateMachine$StateHandler;->transitionTo$default(Lcom/stripe/statemachine/StateMachine$StateHandler;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method
