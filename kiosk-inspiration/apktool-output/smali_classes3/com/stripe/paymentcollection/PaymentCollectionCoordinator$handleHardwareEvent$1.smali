.class final Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareEvent$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PaymentCollectionCoordinator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->handleHardwareEvent(Lcom/stripe/paymentcollection/HardwareEvent;)Lkotlinx/coroutines/Job;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.stripe.paymentcollection.PaymentCollectionCoordinator$handleHardwareEvent$1"
    f = "PaymentCollectionCoordinator.kt"
    i = {}
    l = {
        0x2cc,
        0x2f4
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $hardwareEvent:Lcom/stripe/paymentcollection/HardwareEvent;

.field label:I

.field final synthetic this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;


# direct methods
.method constructor <init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/paymentcollection/HardwareEvent;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;",
            "Lcom/stripe/paymentcollection/HardwareEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareEvent$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareEvent$1;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    iput-object p2, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareEvent$1;->$hardwareEvent:Lcom/stripe/paymentcollection/HardwareEvent;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareEvent$1;

    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareEvent$1;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    iget-object v1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareEvent$1;->$hardwareEvent:Lcom/stripe/paymentcollection/HardwareEvent;

    invoke-direct {p1, v0, v1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareEvent$1;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/paymentcollection/HardwareEvent;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareEvent$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareEvent$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareEvent$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareEvent$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 708
    iget v1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareEvent$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 709
    iget-object p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareEvent$1;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-static {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getPaymentCollectionContext$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object v1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareEvent$1;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    iget-object v4, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareEvent$1;->$hardwareEvent:Lcom/stripe/paymentcollection/HardwareEvent;

    .line 710
    invoke-static {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getEventLoggers$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/metrics/EventLoggers;

    move-result-object v5

    invoke-virtual {v5}, Lcom/stripe/paymentcollection/metrics/EventLoggers;->getStageEventLogger()Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    move-result-object v5

    .line 712
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    .line 710
    invoke-interface {v5, v4, p1}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->onHardwareEvent(Lcom/stripe/paymentcollection/HardwareEvent;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    .line 715
    instance-of p1, v4, Lcom/stripe/paymentcollection/ConfigureReaderEvent;

    if-eqz p1, :cond_3

    .line 716
    invoke-static {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getPaymentCollector$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/hardware/paymentcollection/PaymentCollector;

    move-result-object p1

    check-cast v4, Lcom/stripe/paymentcollection/ConfigureReaderEvent;

    invoke-virtual {v4}, Lcom/stripe/paymentcollection/ConfigureReaderEvent;->getConfiguration()Lcom/stripe/hardware/ReaderConfiguration;

    move-result-object v1

    iput v3, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareEvent$1;->label:I

    invoke-interface {p1, v1, p0}, Lcom/stripe/hardware/paymentcollection/PaymentCollector;->startReader(Lcom/stripe/hardware/ReaderConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_e

    goto/16 :goto_1

    .line 719
    :cond_3
    instance-of p1, v4, Lcom/stripe/paymentcollection/SelectApplicationEvent;

    if-eqz p1, :cond_4

    .line 720
    invoke-static {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getPaymentCollector$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/hardware/paymentcollection/PaymentCollector;

    move-result-object p1

    check-cast v4, Lcom/stripe/paymentcollection/SelectApplicationEvent;

    invoke-virtual {v4}, Lcom/stripe/paymentcollection/SelectApplicationEvent;->getIndex()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/stripe/hardware/paymentcollection/PaymentCollector;->selectApplication(I)V

    goto/16 :goto_2

    .line 723
    :cond_4
    instance-of p1, v4, Lcom/stripe/paymentcollection/SelectLanguageEvent;

    if-eqz p1, :cond_5

    .line 724
    invoke-static {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getPaymentCollector$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/hardware/paymentcollection/PaymentCollector;

    move-result-object p1

    check-cast v4, Lcom/stripe/paymentcollection/SelectLanguageEvent;

    invoke-virtual {v4}, Lcom/stripe/paymentcollection/SelectLanguageEvent;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/stripe/hardware/paymentcollection/PaymentCollector;->selectLanguage(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 727
    :cond_5
    instance-of p1, v4, Lcom/stripe/paymentcollection/SelectAccountTypeEvent;

    if-eqz p1, :cond_6

    .line 728
    invoke-static {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getPaymentCollector$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/hardware/paymentcollection/PaymentCollector;

    move-result-object p1

    check-cast v4, Lcom/stripe/paymentcollection/SelectAccountTypeEvent;

    invoke-virtual {v4}, Lcom/stripe/paymentcollection/SelectAccountTypeEvent;->getAccountType()Lcom/stripe/hardware/emv/AccountType;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/stripe/hardware/paymentcollection/PaymentCollector;->selectAccountType(Lcom/stripe/hardware/emv/AccountType;)V

    goto/16 :goto_2

    .line 731
    :cond_6
    instance-of p1, v4, Lcom/stripe/paymentcollection/StartPinEntryEvent;

    if-eqz p1, :cond_7

    .line 732
    invoke-static {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getPaymentCollector$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/hardware/paymentcollection/PaymentCollector;

    move-result-object p1

    invoke-interface {p1}, Lcom/stripe/hardware/paymentcollection/PaymentCollector;->setPinEntryButtons()V

    goto/16 :goto_2

    .line 735
    :cond_7
    instance-of p1, v4, Lcom/stripe/paymentcollection/StartPollingForCardStatusEvent;

    if-eqz p1, :cond_8

    .line 736
    invoke-static {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getPaymentCollector$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/hardware/paymentcollection/PaymentCollector;

    move-result-object p1

    check-cast v4, Lcom/stripe/paymentcollection/StartPollingForCardStatusEvent;

    invoke-virtual {v4}, Lcom/stripe/paymentcollection/StartPollingForCardStatusEvent;->getReaderType()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/stripe/hardware/paymentcollection/PaymentCollector;->checkCardUntilRemoved(Ljava/util/Set;)V

    goto :goto_2

    .line 739
    :cond_8
    instance-of p1, v4, Lcom/stripe/paymentcollection/AuthorizePaymentEvent;

    if-eqz p1, :cond_9

    .line 740
    invoke-static {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getPaymentCollector$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/hardware/paymentcollection/PaymentCollector;

    move-result-object p1

    check-cast v4, Lcom/stripe/paymentcollection/AuthorizePaymentEvent;

    invoke-virtual {v4}, Lcom/stripe/paymentcollection/AuthorizePaymentEvent;->getTlv()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/stripe/hardware/paymentcollection/PaymentCollector;->handleAuthorisationResponseData(Ljava/lang/String;)V

    goto :goto_2

    .line 743
    :cond_9
    instance-of p1, v4, Lcom/stripe/paymentcollection/SendFinalConfirmEvent;

    if-eqz p1, :cond_a

    .line 744
    invoke-static {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getPaymentCollector$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/hardware/paymentcollection/PaymentCollector;

    move-result-object p1

    check-cast v4, Lcom/stripe/paymentcollection/SendFinalConfirmEvent;

    invoke-virtual {v4}, Lcom/stripe/paymentcollection/SendFinalConfirmEvent;->getConfirm()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/stripe/hardware/paymentcollection/PaymentCollector;->handleFinalConfirmationRequest(Z)V

    goto :goto_2

    .line 747
    :cond_a
    instance-of p1, v4, Lcom/stripe/paymentcollection/HardwareTippingCollectionEvent;

    if-eqz p1, :cond_b

    .line 748
    invoke-static {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getPaymentCollector$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/hardware/paymentcollection/PaymentCollector;

    move-result-object p1

    check-cast v4, Lcom/stripe/paymentcollection/HardwareTippingCollectionEvent;

    invoke-virtual {v4}, Lcom/stripe/paymentcollection/HardwareTippingCollectionEvent;->getConfig()Lcom/stripe/hardware/tipping/TipConfigValidationResult;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/stripe/hardware/paymentcollection/PaymentCollector;->collectTipAmount(Lcom/stripe/hardware/tipping/TipConfigValidationResult;)V

    goto :goto_2

    .line 751
    :cond_b
    instance-of p1, v4, Lcom/stripe/paymentcollection/CancelHardwareTippingCollectionEvent;

    if-eqz p1, :cond_c

    .line 752
    invoke-static {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getPaymentCollector$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/hardware/paymentcollection/PaymentCollector;

    move-result-object p1

    invoke-interface {p1}, Lcom/stripe/hardware/paymentcollection/PaymentCollector;->cancelCollectTipAmount()V

    goto :goto_2

    .line 755
    :cond_c
    instance-of p1, v4, Lcom/stripe/paymentcollection/StopReaderEvent;

    if-eqz p1, :cond_d

    .line 756
    invoke-static {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getPaymentCollector$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/hardware/paymentcollection/PaymentCollector;

    move-result-object p1

    check-cast v4, Lcom/stripe/paymentcollection/StopReaderEvent;

    invoke-virtual {v4}, Lcom/stripe/paymentcollection/StopReaderEvent;->getPhase()Lcom/stripe/hardware/emv/CancellationPhase;

    move-result-object v1

    iput v2, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleHardwareEvent$1;->label:I

    invoke-interface {p1, v1, p0}, Lcom/stripe/hardware/paymentcollection/PaymentCollector;->stopReader(Lcom/stripe/hardware/emv/CancellationPhase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_e

    :goto_1
    return-object v0

    .line 759
    :cond_d
    sget-object p1, Lcom/stripe/paymentcollection/RequestPinEntryEvent;->INSTANCE:Lcom/stripe/paymentcollection/RequestPinEntryEvent;

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 760
    invoke-static {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getPaymentCollector$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/hardware/paymentcollection/PaymentCollector;

    move-result-object p1

    invoke-interface {p1}, Lcom/stripe/hardware/paymentcollection/PaymentCollector;->startPinEntry()V

    .line 764
    :cond_e
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
