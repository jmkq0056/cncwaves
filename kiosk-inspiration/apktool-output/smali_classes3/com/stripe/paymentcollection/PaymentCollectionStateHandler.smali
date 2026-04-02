.class public abstract Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;
.super Lcom/stripe/statemachine/StateMachine$StateHandler;
.source "PaymentCollectionStateHandlers.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/paymentcollection/PaymentCollectionStateHandler$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/statemachine/StateMachine$StateHandler<",
        "Lcom/stripe/paymentcollection/PaymentCollectionState;",
        "Lcom/stripe/paymentcollection/PaymentCollectionData;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentCollectionStateHandlers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentCollectionStateHandlers.kt\ncom/stripe/paymentcollection/PaymentCollectionStateHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2902:1\n1#2:2903\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\"\u001a\u00020#H\u0002J\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0003H\u0004J\u0008\u0010\'\u001a\u00020#H\u0004J\u0010\u0010(\u001a\u00020)2\u0006\u0010&\u001a\u00020\u0003H\u0004J\u0017\u0010*\u001a\u0004\u0018\u00010#2\u0006\u0010&\u001a\u00020\u0003H\u0004\u00a2\u0006\u0002\u0010+J\u0008\u0010,\u001a\u00020#H\u0004J\u000f\u0010-\u001a\u0004\u0018\u00010#H\u0004\u00a2\u0006\u0002\u0010.J\u0008\u0010/\u001a\u00020#H\u0004J<\u00100\u001a\u00020#2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042\u0008\u00105\u001a\u0004\u0018\u0001062\u0008\u00107\u001a\u0004\u0018\u0001082\u0006\u00109\u001a\u00020%2\u0006\u0010:\u001a\u00020;H\u0004J\u001a\u0010<\u001a\u00020;2\u0006\u0010=\u001a\u00020\u00032\u0008\u0010>\u001a\u0004\u0018\u00010\u0003H\u0004J\u001c\u0010?\u001a\u00020#2\u0008\u0010@\u001a\u0004\u0018\u00010\u00032\u0008\u0010A\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010B\u001a\u00020#2\u0006\u0010C\u001a\u00020\u0002H\u0016J\u001a\u0010D\u001a\u00020#2\u0006\u0010=\u001a\u00020\u00032\u0008\u0010>\u001a\u0004\u0018\u00010\u0003H\u0016J\u001a\u0010E\u001a\u00020#2\u0006\u0010F\u001a\u00020GH\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008H\u0010IJ\u0018\u0010J\u001a\u00020#2\u0006\u0010=\u001a\u00020\u00032\u0008\u0010>\u001a\u0004\u0018\u00010\u0003J\u0010\u0010K\u001a\u00020#2\u0006\u0010&\u001a\u00020\u0003H\u0004J\u000e\u0010L\u001a\u00020#2\u0006\u0010\u0012\u001a\u00020\u0013J\u0015\u0010M\u001a\u00020#2\u0006\u0010\u0014\u001a\u00020\u0015H\u0000\u00a2\u0006\u0002\u0008NJ\u0010\u0010O\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0003H\u0004J\u0012\u0010P\u001a\u00020#2\u0008\u0010&\u001a\u0004\u0018\u00010\u0003H\u0002J\u0010\u0010Q\u001a\u00020#2\u0006\u0010R\u001a\u00020SH\u0004R\u0014\u0010\n\u001a\u00020\u000b8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000f8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u00020\u00178DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u00020\u001b8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u00020\u001f8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006T"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;",
        "Lcom/stripe/statemachine/StateMachine$StateHandler;",
        "Lcom/stripe/paymentcollection/PaymentCollectionState;",
        "Lcom/stripe/paymentcollection/PaymentCollectionData;",
        "state",
        "timer",
        "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;",
        "logger",
        "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;",
        "(Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V",
        "collectionEventLogger",
        "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;",
        "getCollectionEventLogger",
        "()Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;",
        "discreteEventLogger",
        "Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;",
        "getDiscreteEventLogger",
        "()Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;",
        "eventDelegate",
        "Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;",
        "eventLoggers",
        "Lcom/stripe/paymentcollection/metrics/EventLoggers;",
        "onlineAuthStateLogger",
        "Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;",
        "getOnlineAuthStateLogger",
        "()Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;",
        "stageEventLogger",
        "Lcom/stripe/paymentcollection/metrics/StageEventLogger;",
        "getStageEventLogger",
        "()Lcom/stripe/paymentcollection/metrics/StageEventLogger;",
        "tippingLogger",
        "Lcom/stripe/paymentcollection/metrics/TippingLogger;",
        "getTippingLogger",
        "()Lcom/stripe/paymentcollection/metrics/TippingLogger;",
        "cancelTimer",
        "",
        "checkForPrematureTransactionCompletionAndTransitionIfNeeded",
        "",
        "data",
        "clearContactCardStateAndPrepareNextCollection",
        "createPresentProcessingEvent",
        "Lcom/stripe/paymentcollection/PresentProcessingEvent;",
        "generateDisplayCartEvent",
        "(Lcom/stripe/paymentcollection/PaymentCollectionData;)Lkotlin/Unit;",
        "generateStartPinEntryEvent",
        "generateStartPollingForCardStatusEvent",
        "()Lkotlin/Unit;",
        "generateStopReaderEvent",
        "generateUserInteractionEvent",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "numberOfAsterisks",
        "",
        "language",
        "",
        "pinEntryRetryReason",
        "Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;",
        "enableCustomerCancellation",
        "pinEntryAccessibilityData",
        "Lcom/stripe/hardware/paymentcollection/PinEntryAccessibilityData;",
        "getPinEntryAccessibilityData",
        "new",
        "old",
        "onEnter",
        "current",
        "from",
        "onExit",
        "to",
        "onPaymentCollectionDataUpdate",
        "onPaymentCollectionTimeout",
        "timeout",
        "Lkotlin/time/Duration;",
        "onPaymentCollectionTimeout-LRDsOJo",
        "(J)V",
        "onUpdate",
        "sendOnlineAuthRequestEventIfNeeded",
        "setEventDelegate",
        "setEventLoggers",
        "setEventLoggers$public_release",
        "startCollectionIfNeeded",
        "startTimeoutCountdown",
        "yieldEvent",
        "paymentCollectionEvent",
        "Lcom/stripe/paymentcollection/PaymentCollectionEvent;",
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
.field private eventDelegate:Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;

.field private eventLoggers:Lcom/stripe/paymentcollection/metrics/EventLoggers;

.field private final logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

.field private final timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;


# direct methods
.method public constructor <init>(Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/stripe/statemachine/StateMachine$StateHandler;-><init>(Ljava/lang/Object;)V

    .line 68
    iput-object p2, p0, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    .line 69
    iput-object p3, p0, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    return-void
.end method

.method private final cancelTimer()V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    invoke-interface {v0}, Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;->cancel()V

    return-void
.end method

.method private final onPaymentCollectionTimeout-LRDsOJo(J)V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Payment collection timed-out after "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Lkotlin/Pair;

    invoke-interface {v0, p1, p2}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 141
    move-object p1, p0

    check-cast p1, Lcom/stripe/statemachine/StateMachine$StateHandler;

    sget-object p2, Lcom/stripe/paymentcollection/PaymentCollectionState;->TIMEOUT:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, p2, v0, v1, v0}, Lcom/stripe/statemachine/StateMachine$StateHandler;->transitionTo$default(Lcom/stripe/statemachine/StateMachine$StateHandler;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final startTimeoutCountdown(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    invoke-virtual {p0}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->getState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionState;

    new-instance v2, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler$startTimeoutCountdown$1;

    invoke-direct {v2, p0}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler$startTimeoutCountdown$1;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v1, p1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;->start(Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/PaymentCollectionData;Lkotlin/jvm/functions/Function0;)Z

    return-void
.end method


# virtual methods
.method protected final checkForPrematureTransactionCompletionAndTransitionIfNeeded(Lcom/stripe/paymentcollection/PaymentCollectionData;)Z
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isDeclined()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 167
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->PREPARE_TO_COLLECT_AGAIN:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v0, "Declined."

    invoke-virtual {p0, p1, v0}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 171
    :cond_0
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getHardwareTransactionResult()Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v0

    aget v0, v2, v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 211
    :pswitch_0
    sget-object p1, Lcom/stripe/paymentcollection/HardwareTransactionCancelledEvent;->INSTANCE:Lcom/stripe/paymentcollection/HardwareTransactionCancelledEvent;

    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return v1

    .line 206
    :pswitch_1
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->TIMEOUT:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v0, "Transaction timed out."

    invoke-virtual {p0, p1, v0}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 201
    :pswitch_2
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->PREPARE_TO_COLLECT_AGAIN:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v0, "Previous card still inserted."

    invoke-virtual {p0, p1, v0}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 196
    :pswitch_3
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->FINISHED:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v0, "Device failure."

    invoke-virtual {p0, p1, v0}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 191
    :pswitch_4
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->PREPARE_TO_COLLECT_AGAIN:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v0, "Card blocked."

    invoke-virtual {p0, p1, v0}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 182
    :pswitch_5
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getDeviceCapability()Lcom/stripe/transaction/PaymentCollectionDeviceCapability;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->getRetryUponTerminate()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 183
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->PREPARE_TO_COLLECT_AGAIN:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v0, "Terminated."

    invoke-virtual {p0, p1, v0}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 185
    :cond_2
    sget-object p1, Lcom/stripe/paymentcollection/HardwareTransactionCancelledEvent;->INSTANCE:Lcom/stripe/paymentcollection/HardwareTransactionCancelledEvent;

    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    :goto_1
    return v1

    .line 173
    :pswitch_6
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->getDiscreteEventLogger()Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;

    move-result-object p1

    invoke-virtual {p0}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-interface {p1, v0}, Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;->logPrematureCardRemoval(Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    .line 175
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->PREPARE_TO_COLLECT_AGAIN:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 176
    const-string v0, "Card removed prematurely."

    .line 174
    invoke-virtual {p0, p1, v0}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final clearContactCardStateAndPrepareNextCollection()V
    .locals 76

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->getData()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v1, :cond_2

    .line 359
    invoke-virtual {v1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getHardwareTransactionResult()Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object v0

    sget-object v2, Lcom/stripe/hardware/emv/TransactionResult$Result;->TERMINATED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    if-ne v0, v2, :cond_0

    .line 360
    invoke-virtual {v1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getIntermediateTransactionError()Lcom/stripe/hardware/emv/IntermediateTransactionError;

    move-result-object v0

    sget-object v2, Lcom/stripe/hardware/emv/IntermediateTransactionError;->TOO_MANY_TAPS:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    if-ne v0, v2, :cond_0

    .line 365
    sget-object v0, Lcom/stripe/hardware/emv/TransactionResult$Result;->MOBILE_WALLET_TOO_MANY_TAPS:Lcom/stripe/hardware/emv/TransactionResult$Result;

    goto :goto_0

    .line 369
    :cond_0
    invoke-virtual {v1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getHardwareTransactionResult()Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getLastCollectionResult()Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object v0

    :cond_1
    :goto_0
    move-object/from16 v35, v0

    .line 373
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 376
    sget-object v0, Lcom/stripe/paymentcollection/AccountSelectionStatus$NotRequested;->INSTANCE:Lcom/stripe/paymentcollection/AccountSelectionStatus$NotRequested;

    .line 377
    sget-object v17, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->NOT_REQUESTED:Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    .line 376
    move-object/from16 v16, v0

    check-cast v16, Lcom/stripe/paymentcollection/AccountSelectionStatus;

    const/16 v74, 0x3f

    const/16 v75, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

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

    const v72, 0x780803bf

    const v73, -0x21090

    .line 372
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v0

    move-object/from16 v1, p0

    .line 371
    invoke-virtual {v1, v0}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->updateDataWithoutCallback(Ljava/lang/Object;)V

    return-void

    :cond_2
    move-object/from16 v1, p0

    return-void
.end method

.method protected final createPresentProcessingEvent(Lcom/stripe/paymentcollection/PaymentCollectionData;)Lcom/stripe/paymentcollection/PresentProcessingEvent;
    .locals 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getDynamicCurrencyConversionData()Lcom/stripe/transaction/DynamicCurrencyConversionData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/transaction/DynamicCurrencyConversionData;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 408
    :goto_0
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getSelectedDynamicCurrencyConversion()Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    :cond_1
    if-nez v1, :cond_2

    .line 409
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object v1

    .line 411
    :cond_2
    new-instance v0, Lcom/stripe/paymentcollection/PresentProcessingEvent;

    .line 412
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getTransactionType()Lcom/stripe/hardware/paymentcollection/TransactionType;

    move-result-object v2

    .line 414
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getSelectedLanguage()Ljava/lang/String;

    move-result-object p1

    .line 411
    invoke-direct {v0, v2, v1, p1}, Lcom/stripe/paymentcollection/PresentProcessingEvent;-><init>(Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final generateDisplayCartEvent(Lcom/stripe/paymentcollection/PaymentCollectionData;)Lkotlin/Unit;
    .locals 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getCartToDisplay()Lcom/stripe/cart/Cart;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 222
    new-instance v1, Lcom/stripe/paymentcollection/DisplayCartEvent;

    .line 223
    new-instance v2, Lcom/stripe/hardware/paymentcollection/DisplayCartModel;

    .line 225
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isPreDipEnabled()Z

    move-result v3

    .line 226
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getOnlineAuthorizationData()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 223
    :goto_0
    invoke-direct {v2, v0, v3, p1}, Lcom/stripe/hardware/paymentcollection/DisplayCartModel;-><init>(Lcom/stripe/cart/Cart;ZZ)V

    .line 222
    invoke-direct {v1, v2}, Lcom/stripe/paymentcollection/DisplayCartEvent;-><init>(Lcom/stripe/hardware/paymentcollection/DisplayCartModel;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    .line 221
    invoke-virtual {p0, v1}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    .line 220
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final generateStartPinEntryEvent()V
    .locals 1

    .line 298
    sget-object v0, Lcom/stripe/paymentcollection/StartPinEntryEvent;->INSTANCE:Lcom/stripe/paymentcollection/StartPinEntryEvent;

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method protected final generateStartPollingForCardStatusEvent()Lkotlin/Unit;
    .locals 2

    .line 337
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getDeviceCapability()Lcom/stripe/transaction/PaymentCollectionDeviceCapability;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->getCheckForCardBehavior()Lcom/stripe/hardware/emv/CheckForCardBehavior;

    move-result-object v0

    sget-object v1, Lcom/stripe/hardware/emv/CheckForCardBehavior;->POLL_FOR_CARD_REMOVAL:Lcom/stripe/hardware/emv/CheckForCardBehavior;

    if-ne v0, v1, :cond_0

    .line 341
    new-instance v0, Lcom/stripe/paymentcollection/StartPollingForCardStatusEvent;

    sget-object v1, Lcom/stripe/hardware/ReaderConfiguration;->Companion:Lcom/stripe/hardware/ReaderConfiguration$Companion;

    invoke-virtual {v1}, Lcom/stripe/hardware/ReaderConfiguration$Companion;->getINSERT()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/stripe/paymentcollection/StartPollingForCardStatusEvent;-><init>(Ljava/util/Set;)V

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    .line 337
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final generateStopReaderEvent()V
    .locals 2

    .line 346
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getStateWhenCancelled()Lcom/stripe/paymentcollection/PaymentCollectionState;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 351
    sget-object v0, Lcom/stripe/hardware/emv/CancellationPhase;->COLLECTION:Lcom/stripe/hardware/emv/CancellationPhase;

    goto :goto_2

    .line 350
    :cond_2
    sget-object v0, Lcom/stripe/hardware/emv/CancellationPhase;->AUTH:Lcom/stripe/hardware/emv/CancellationPhase;

    goto :goto_2

    .line 349
    :cond_3
    sget-object v0, Lcom/stripe/hardware/emv/CancellationPhase;->PIN:Lcom/stripe/hardware/emv/CancellationPhase;

    goto :goto_2

    .line 348
    :cond_4
    sget-object v0, Lcom/stripe/hardware/emv/CancellationPhase;->ACCOUNT_TYPE_SELECTION:Lcom/stripe/hardware/emv/CancellationPhase;

    goto :goto_2

    .line 347
    :cond_5
    sget-object v0, Lcom/stripe/hardware/emv/CancellationPhase;->APPLICATION_SELECTION:Lcom/stripe/hardware/emv/CancellationPhase;

    .line 353
    :goto_2
    new-instance v1, Lcom/stripe/paymentcollection/StopReaderEvent;

    invoke-direct {v1, v0}, Lcom/stripe/paymentcollection/StopReaderEvent;-><init>(Lcom/stripe/hardware/emv/CancellationPhase;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v1}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method protected final generateUserInteractionEvent(Lcom/stripe/currency/Amount;ILjava/lang/String;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;ZLcom/stripe/hardware/paymentcollection/PinEntryAccessibilityData;)V
    .locals 8

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pinEntryAccessibilityData"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    new-instance v1, Lcom/stripe/hardware/paymentcollection/PinEntryModel;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/stripe/hardware/paymentcollection/PinEntryModel;-><init>(Lcom/stripe/currency/Amount;ILjava/lang/String;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;ZLcom/stripe/hardware/paymentcollection/PinEntryAccessibilityData;)V

    .line 291
    new-instance p1, Lcom/stripe/paymentcollection/PresentPinEntryEvent;

    invoke-direct {p1, v1}, Lcom/stripe/paymentcollection/PresentPinEntryEvent;-><init>(Lcom/stripe/hardware/paymentcollection/PinEntryModel;)V

    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method protected final getCollectionEventLogger()Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->eventLoggers:Lcom/stripe/paymentcollection/metrics/EventLoggers;

    if-nez v0, :cond_0

    const-string v0, "eventLoggers"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/metrics/EventLoggers;->getEndToEndEventLogger()Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;

    move-result-object v0

    return-object v0
.end method

.method protected final getDiscreteEventLogger()Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->eventLoggers:Lcom/stripe/paymentcollection/metrics/EventLoggers;

    if-nez v0, :cond_0

    const-string v0, "eventLoggers"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/metrics/EventLoggers;->getDiscreteEventLogger()Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;

    move-result-object v0

    return-object v0
.end method

.method protected final getOnlineAuthStateLogger()Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->eventLoggers:Lcom/stripe/paymentcollection/metrics/EventLoggers;

    if-nez v0, :cond_0

    const-string v0, "eventLoggers"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/metrics/EventLoggers;->getOnlineAuthStateLogger()Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;

    move-result-object v0

    return-object v0
.end method

.method protected final getPinEntryAccessibilityData(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)Lcom/stripe/hardware/paymentcollection/PinEntryAccessibilityData;
    .locals 2

    const-string v0, "new"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getPinEntryStatus()Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    move-result-object v0

    sget-object v1, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->INCORRECT_PIN:Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 423
    :goto_0
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getAccessiblePinPadTouchEvent()Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 424
    invoke-virtual {p2}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getAccessiblePinPadTouchEvent()Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    move-object p1, v1

    .line 421
    :goto_2
    new-instance p2, Lcom/stripe/hardware/paymentcollection/PinEntryAccessibilityData;

    invoke-direct {p2, p1, v0}, Lcom/stripe/hardware/paymentcollection/PinEntryAccessibilityData;-><init>(Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Z)V

    return-object p2
.end method

.method protected final getStageEventLogger()Lcom/stripe/paymentcollection/metrics/StageEventLogger;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->eventLoggers:Lcom/stripe/paymentcollection/metrics/EventLoggers;

    if-nez v0, :cond_0

    const-string v0, "eventLoggers"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/metrics/EventLoggers;->getStageEventLogger()Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    move-result-object v0

    return-object v0
.end method

.method protected final getTippingLogger()Lcom/stripe/paymentcollection/metrics/TippingLogger;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->eventLoggers:Lcom/stripe/paymentcollection/metrics/EventLoggers;

    if-nez v0, :cond_0

    const-string v0, "eventLoggers"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/metrics/EventLoggers;->getTippingLogger()Lcom/stripe/paymentcollection/metrics/TippingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 4

    .line 127
    invoke-super {p0, p1, p2}, Lcom/stripe/statemachine/StateMachine$StateHandler;->onEnter(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "current"

    invoke-static {v2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "from"

    invoke-static {v2, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string p2, "onEnter"

    invoke-interface {v0, p2, v1}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 129
    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->startTimeoutCountdown(Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    return-void
.end method

.method public bridge synthetic onEnter(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 66
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    check-cast p2, Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public onExit(Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 1

    const-string v0, "to"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-super {p0, p1}, Lcom/stripe/statemachine/StateMachine$StateHandler;->onExit(Ljava/lang/Object;)V

    .line 136
    invoke-direct {p0}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->cancelTimer()V

    return-void
.end method

.method public bridge synthetic onExit(Ljava/lang/Object;)V
    .locals 0

    .line 66
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onExit(Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 4

    const-string v0, "new"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    const/4 v2, 0x2

    new-array v2, v2, [Lkotlin/Pair;

    const/4 v3, 0x0

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "old"

    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "onPaymentCollectionDataUpdate"

    invoke-interface {v1, v0, v2}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 152
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getCardSlotState()Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getCardSlotState()Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eq v0, p2, :cond_1

    .line 153
    new-instance p2, Lcom/stripe/paymentcollection/CardStateUpdateEvent;

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getCardSlotState()Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/stripe/paymentcollection/CardStateUpdateEvent;-><init>(Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;)V

    check-cast p2, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    :cond_1
    return-void
.end method

.method public final onUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 2

    const-string v0, "new"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 117
    invoke-virtual {p2}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isCancelled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    sget-object p2, Lcom/stripe/paymentcollection/PaymentCollectionState;->CANCEL:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getCancelReason()Lcom/stripe/paymentcollection/CancelReason;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/CancelReason;->name()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 120
    :cond_2
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    return-void
.end method

.method public bridge synthetic onUpdate(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 66
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    check-cast p2, Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    return-void
.end method

.method protected final sendOnlineAuthRequestEventIfNeeded(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 79

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "data"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    invoke-virtual {v1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getOnlineAuthorizationData()Ljava/lang/String;

    move-result-object v2

    .line 310
    invoke-virtual {v1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getTippingState()Lcom/stripe/paymentcollection/TippingState;

    move-result-object v3

    if-eqz v2, :cond_0

    .line 312
    instance-of v4, v3, Lcom/stripe/paymentcollection/TippingState$EndState;

    if-eqz v4, :cond_0

    .line 313
    invoke-virtual {v1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getOnlineAuthorizationRequested()Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v74, 0x3f

    const/16 v75, 0x0

    move-object v4, v2

    const/4 v2, 0x0

    move-object v5, v3

    const/4 v3, 0x0

    move-object v6, v4

    const/4 v4, 0x0

    move-object v7, v5

    const/4 v5, 0x0

    move-object v8, v6

    const/4 v6, 0x0

    move-object v9, v7

    const/4 v7, 0x0

    move-object v10, v8

    const/4 v8, 0x0

    move-object v11, v9

    const/4 v9, 0x0

    move-object v12, v10

    const/4 v10, 0x0

    move-object v13, v11

    const/4 v11, 0x0

    move-object v14, v12

    const/4 v12, 0x0

    move-object v15, v13

    const/4 v13, 0x0

    move-object/from16 v16, v14

    const/4 v14, 0x0

    move-object/from16 v17, v15

    const/4 v15, 0x0

    move-object/from16 v18, v16

    const/16 v16, 0x0

    move-object/from16 v19, v17

    const/16 v17, 0x0

    move-object/from16 v20, v18

    const/16 v18, 0x0

    move-object/from16 v21, v19

    const/16 v19, 0x0

    move-object/from16 v22, v20

    const/16 v20, 0x0

    move-object/from16 v23, v21

    const/16 v21, 0x0

    move-object/from16 v24, v22

    const/16 v22, 0x0

    move-object/from16 v25, v23

    const/16 v23, 0x0

    move-object/from16 v26, v24

    const/16 v24, 0x1

    move-object/from16 v27, v25

    const/16 v25, 0x0

    move-object/from16 v28, v26

    const/16 v26, 0x0

    move-object/from16 v29, v27

    const/16 v27, 0x0

    move-object/from16 v30, v28

    const/16 v28, 0x0

    move-object/from16 v31, v29

    const/16 v29, 0x0

    move-object/from16 v32, v30

    const/16 v30, 0x0

    move-object/from16 v33, v31

    const/16 v31, 0x0

    move-object/from16 v34, v32

    const/16 v32, 0x0

    move-object/from16 v35, v33

    const/16 v33, 0x0

    move-object/from16 v36, v34

    const/16 v34, 0x0

    move-object/from16 v37, v35

    const/16 v35, 0x0

    move-object/from16 v38, v36

    const/16 v36, 0x0

    move-object/from16 v39, v37

    const/16 v37, 0x0

    move-object/from16 v40, v38

    const/16 v38, 0x0

    move-object/from16 v41, v39

    const/16 v39, 0x0

    move-object/from16 v42, v40

    const/16 v40, 0x0

    move-object/from16 v43, v41

    const/16 v41, 0x0

    move-object/from16 v44, v42

    const/16 v42, 0x0

    move-object/from16 v45, v43

    const/16 v43, 0x0

    move-object/from16 v46, v44

    const/16 v44, 0x0

    move-object/from16 v47, v45

    const/16 v45, 0x0

    move-object/from16 v48, v46

    const/16 v46, 0x0

    move-object/from16 v49, v47

    const/16 v47, 0x0

    move-object/from16 v50, v48

    const/16 v48, 0x0

    move-object/from16 v51, v49

    const/16 v49, 0x0

    move-object/from16 v52, v50

    const/16 v50, 0x0

    move-object/from16 v53, v51

    const/16 v51, 0x0

    move-object/from16 v54, v52

    const/16 v52, 0x0

    move-object/from16 v55, v53

    const/16 v53, 0x0

    move-object/from16 v56, v54

    const/16 v54, 0x0

    move-object/from16 v57, v55

    const/16 v55, 0x0

    move-object/from16 v58, v56

    const/16 v56, 0x0

    move-object/from16 v59, v57

    const/16 v57, 0x0

    move-object/from16 v60, v58

    const/16 v58, 0x0

    move-object/from16 v61, v59

    const/16 v59, 0x0

    move-object/from16 v62, v60

    const/16 v60, 0x0

    move-object/from16 v63, v61

    const/16 v61, 0x0

    move-object/from16 v64, v62

    const/16 v62, 0x0

    move-object/from16 v65, v63

    const/16 v63, 0x0

    move-object/from16 v66, v64

    const/16 v64, 0x0

    move-object/from16 v67, v65

    const/16 v65, 0x0

    move-object/from16 v68, v66

    const/16 v66, 0x0

    move-object/from16 v69, v67

    const/16 v67, 0x0

    move-object/from16 v70, v68

    const/16 v68, 0x0

    move-object/from16 v71, v69

    const/16 v69, 0x0

    move-object/from16 v72, v70

    const/16 v70, 0x0

    move-object/from16 v73, v71

    const/16 v71, 0x0

    move-object/from16 v76, v72

    const v72, -0x400001

    move-object/from16 v77, v73

    const/16 v73, -0x1

    move-object/from16 v78, v76

    .line 316
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->updateDataWithoutCallback(Ljava/lang/Object;)V

    .line 318
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->getOnlineAuthStateLogger()Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;

    move-result-object v2

    sget-object v3, Lcom/stripe/paymentcollection/OnlineAuthState$ReadyToStartConfirmation;->INSTANCE:Lcom/stripe/paymentcollection/OnlineAuthState$ReadyToStartConfirmation;

    check-cast v3, Lcom/stripe/paymentcollection/OnlineAuthState;

    invoke-interface {v2, v3, v1}, Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;->updateOnlineAuthState(Lcom/stripe/paymentcollection/OnlineAuthState;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    .line 320
    new-instance v1, Lcom/stripe/paymentcollection/OnlineAuthorizationRequestEvent;

    .line 321
    invoke-static/range {v78 .. v78}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandlersKt;->interfaceTypeFromTlv(Ljava/lang/String;)Lcom/stripe/hardware/emv/InterfaceType;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 323
    move-object/from16 v3, v77

    check-cast v3, Lcom/stripe/paymentcollection/TippingState$EndState;

    move-object/from16 v4, v78

    .line 320
    invoke-direct {v1, v2, v4, v3}, Lcom/stripe/paymentcollection/OnlineAuthorizationRequestEvent;-><init>(Lcom/stripe/hardware/emv/InterfaceType;Ljava/lang/String;Lcom/stripe/paymentcollection/TippingState$EndState;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    .line 319
    invoke-virtual {v0, v1}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    :cond_0
    return-void
.end method

.method public final setEventDelegate(Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;)V
    .locals 1

    const-string v0, "eventDelegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->eventDelegate:Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;

    return-void
.end method

.method public final setEventLoggers$public_release(Lcom/stripe/paymentcollection/metrics/EventLoggers;)V
    .locals 1

    const-string v0, "eventLoggers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iput-object p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->eventLoggers:Lcom/stripe/paymentcollection/metrics/EventLoggers;

    return-void
.end method

.method protected final startCollectionIfNeeded(Lcom/stripe/paymentcollection/PaymentCollectionData;)Z
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getConfirmedCollection()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isPreDipEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    new-instance p1, Lkotlin/Pair;

    sget-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->DISPLAY_CART_PRE_COLLECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v1, "Display cart."

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getTippingState()Lcom/stripe/paymentcollection/TippingState;

    move-result-object v0

    instance-of v0, v0, Lcom/stripe/paymentcollection/TippingState$SelectionNeeded;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getConfirmedCollection()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 246
    new-instance p1, Lkotlin/Pair;

    sget-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->TIPPING_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v1, "Tipping required."

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 248
    :cond_1
    new-instance p1, Lkotlin/Pair;

    sget-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->COLLECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v1, "Tipping and manual entry not required."

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 243
    :goto_0
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 242
    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 251
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->getState()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 252
    invoke-virtual {p0, v0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method protected final yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V
    .locals 1

    const-string v0, "paymentCollectionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->eventDelegate:Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;

    if-nez v0, :cond_0

    const-string v0, "eventDelegate"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;->onHandlePaymentCollectionEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method
