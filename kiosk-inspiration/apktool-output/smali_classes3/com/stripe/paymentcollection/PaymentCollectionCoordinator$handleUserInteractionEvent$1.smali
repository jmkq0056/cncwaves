.class final Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PaymentCollectionCoordinator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->handleUserInteractionEvent(Lcom/stripe/paymentcollection/UserInteractionEvent;)Lkotlinx/coroutines/Job;
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
    c = "com.stripe.paymentcollection.PaymentCollectionCoordinator$handleUserInteractionEvent$1"
    f = "PaymentCollectionCoordinator.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $userInteractionEvent:Lcom/stripe/paymentcollection/UserInteractionEvent;

.field label:I

.field final synthetic this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;


# direct methods
.method constructor <init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/paymentcollection/UserInteractionEvent;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;",
            "Lcom/stripe/paymentcollection/UserInteractionEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    iput-object p2, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1;->$userInteractionEvent:Lcom/stripe/paymentcollection/UserInteractionEvent;

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

    new-instance p1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1;

    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    iget-object v1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1;->$userInteractionEvent:Lcom/stripe/paymentcollection/UserInteractionEvent;

    invoke-direct {p1, v0, v1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/paymentcollection/UserInteractionEvent;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 935
    iget v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1;->label:I

    if-nez v0, :cond_15

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 936
    iget-object p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-static {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getLogger$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleUserInteractionEvent "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1;->$userInteractionEvent:Lcom/stripe/paymentcollection/UserInteractionEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    invoke-interface {p1, v0, v1}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 937
    iget-object p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-static {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getPaymentCollectionContext$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1;->$userInteractionEvent:Lcom/stripe/paymentcollection/UserInteractionEvent;

    iget-object v1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    .line 939
    instance-of v2, v0, Lcom/stripe/paymentcollection/TippingSelectionEvent;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionListener()Lcom/stripe/paymentcollection/PaymentCollectionListener;

    move-result-object v2

    .line 940
    check-cast v0, Lcom/stripe/paymentcollection/TippingSelectionEvent;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/TippingSelectionEvent;->getModel()Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;

    move-result-object v0

    .line 939
    new-instance v3, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$1;

    invoke-direct {v3, p1, v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$1;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v0, v3}, Lcom/stripe/paymentcollection/PaymentCollectionListener;->onRequestTippingSelection(Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 957
    :cond_0
    instance-of v2, v0, Lcom/stripe/paymentcollection/ManualEntryEvent;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionListener()Lcom/stripe/paymentcollection/PaymentCollectionListener;

    move-result-object v2

    .line 958
    check-cast v0, Lcom/stripe/paymentcollection/ManualEntryEvent;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/ManualEntryEvent;->getModel()Lcom/stripe/hardware/paymentcollection/ManualEntryModel;

    move-result-object v0

    .line 957
    new-instance v3, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$2;

    invoke-direct {v3, p1, v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$2;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v0, v3}, Lcom/stripe/paymentcollection/PaymentCollectionListener;->onRequestManualEntry(Lcom/stripe/hardware/paymentcollection/ManualEntryModel;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 971
    :cond_1
    instance-of v2, v0, Lcom/stripe/paymentcollection/PresentPaymentMethodEvent;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionListener()Lcom/stripe/paymentcollection/PaymentCollectionListener;

    move-result-object p1

    .line 972
    check-cast v0, Lcom/stripe/paymentcollection/PresentPaymentMethodEvent;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PresentPaymentMethodEvent;->getModel()Lcom/stripe/hardware/paymentcollection/CollectionModel;

    move-result-object v0

    .line 971
    new-instance v2, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$3;

    invoke-direct {v2, v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$3;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v0, v2}, Lcom/stripe/paymentcollection/PaymentCollectionListener;->onRequestPaymentMethodCollection(Lcom/stripe/hardware/paymentcollection/CollectionModel;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 989
    :cond_2
    instance-of v2, v0, Lcom/stripe/paymentcollection/DisplayRecoverableErrorEvent;

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionListener()Lcom/stripe/paymentcollection/PaymentCollectionListener;

    move-result-object v2

    .line 990
    check-cast v0, Lcom/stripe/paymentcollection/DisplayRecoverableErrorEvent;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/DisplayRecoverableErrorEvent;->getModel()Lcom/stripe/hardware/paymentcollection/RecoverableErrorModel;

    move-result-object v0

    .line 989
    new-instance v3, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$4;

    invoke-direct {v3, p1, v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$4;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v0, v3}, Lcom/stripe/paymentcollection/PaymentCollectionListener;->onRequestDisplayRecoverableError(Lcom/stripe/hardware/paymentcollection/RecoverableErrorModel;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 1003
    :cond_3
    instance-of v2, v0, Lcom/stripe/paymentcollection/PresentRemoveCardEvent;

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionListener()Lcom/stripe/paymentcollection/PaymentCollectionListener;

    move-result-object p1

    .line 1004
    check-cast v0, Lcom/stripe/paymentcollection/PresentRemoveCardEvent;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PresentRemoveCardEvent;->getModel()Lcom/stripe/hardware/paymentcollection/RemoveCardModel;

    move-result-object v0

    .line 1003
    invoke-interface {p1, v0}, Lcom/stripe/paymentcollection/PaymentCollectionListener;->onRequestCardRemoval(Lcom/stripe/hardware/paymentcollection/RemoveCardModel;)V

    goto/16 :goto_0

    .line 1007
    :cond_4
    instance-of v2, v0, Lcom/stripe/paymentcollection/CollectionCompleteEvent;

    if-eqz v2, :cond_5

    .line 1008
    check-cast v0, Lcom/stripe/paymentcollection/CollectionCompleteEvent;

    invoke-static {v1, v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$handleCollectionCompletion(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/paymentcollection/CollectionCompleteEvent;)V

    goto/16 :goto_0

    .line 1011
    :cond_5
    instance-of v2, v0, Lcom/stripe/paymentcollection/PresentApplicationSelectionEvent;

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionListener()Lcom/stripe/paymentcollection/PaymentCollectionListener;

    move-result-object v2

    .line 1012
    check-cast v0, Lcom/stripe/paymentcollection/PresentApplicationSelectionEvent;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PresentApplicationSelectionEvent;->getModel()Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel;

    move-result-object v0

    .line 1011
    new-instance v3, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$5;

    invoke-direct {v3, p1, v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$5;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v0, v3}, Lcom/stripe/paymentcollection/PaymentCollectionListener;->onRequestApplicationSelection(Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 1027
    :cond_6
    instance-of v2, v0, Lcom/stripe/paymentcollection/PresentAccountTypeSelectionEvent;

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionListener()Lcom/stripe/paymentcollection/PaymentCollectionListener;

    move-result-object p1

    .line 1028
    check-cast v0, Lcom/stripe/paymentcollection/PresentAccountTypeSelectionEvent;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PresentAccountTypeSelectionEvent;->getModel()Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;

    move-result-object v0

    .line 1027
    new-instance v2, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$6;

    invoke-direct {v2, v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$6;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v0, v2}, Lcom/stripe/paymentcollection/PaymentCollectionListener;->onRequestAccountTypeSelection(Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 1041
    :cond_7
    instance-of v2, v0, Lcom/stripe/paymentcollection/PresentPinEntryEvent;

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionListener()Lcom/stripe/paymentcollection/PaymentCollectionListener;

    move-result-object p1

    .line 1042
    check-cast v0, Lcom/stripe/paymentcollection/PresentPinEntryEvent;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PresentPinEntryEvent;->getModel()Lcom/stripe/hardware/paymentcollection/PinEntryModel;

    move-result-object v0

    .line 1041
    new-instance v2, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$7;

    invoke-direct {v2, v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$7;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v0, v2}, Lcom/stripe/paymentcollection/PaymentCollectionListener;->onRequestPinEntry(Lcom/stripe/hardware/paymentcollection/PinEntryModel;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 1055
    :cond_8
    instance-of v2, v0, Lcom/stripe/paymentcollection/PresentProcessingEvent;

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionListener()Lcom/stripe/paymentcollection/PaymentCollectionListener;

    move-result-object p1

    .line 1056
    check-cast v0, Lcom/stripe/paymentcollection/PresentProcessingEvent;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PresentProcessingEvent;->getTransactionType()Lcom/stripe/hardware/paymentcollection/TransactionType;

    move-result-object v1

    .line 1057
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PresentProcessingEvent;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 1058
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PresentProcessingEvent;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object v0

    .line 1055
    invoke-interface {p1, v1, v2, v0}, Lcom/stripe/paymentcollection/PaymentCollectionListener;->onProcessing(Lcom/stripe/hardware/paymentcollection/TransactionType;Ljava/lang/String;Lcom/stripe/currency/Amount;)V

    goto/16 :goto_0

    .line 1061
    :cond_9
    instance-of v2, v0, Lcom/stripe/paymentcollection/CardStateUpdateEvent;

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionListener()Lcom/stripe/paymentcollection/PaymentCollectionListener;

    move-result-object p1

    .line 1062
    check-cast v0, Lcom/stripe/paymentcollection/CardStateUpdateEvent;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/CardStateUpdateEvent;->getCardState()Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    move-result-object v0

    .line 1061
    invoke-interface {p1, v0}, Lcom/stripe/paymentcollection/PaymentCollectionListener;->onCardStateUpdate(Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;)V

    goto/16 :goto_0

    .line 1065
    :cond_a
    instance-of v2, v0, Lcom/stripe/paymentcollection/CollectionCancelledEvent;

    if-eqz v2, :cond_b

    .line 1066
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionListener()Lcom/stripe/paymentcollection/PaymentCollectionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/stripe/paymentcollection/PaymentCollectionListener;->onCancelled()V

    .line 1067
    invoke-static {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$sendCancelResult(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)V

    goto/16 :goto_0

    .line 1070
    :cond_b
    instance-of v2, v0, Lcom/stripe/paymentcollection/DisplayCartEvent;

    if-eqz v2, :cond_c

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionListener()Lcom/stripe/paymentcollection/PaymentCollectionListener;

    move-result-object p1

    .line 1071
    check-cast v0, Lcom/stripe/paymentcollection/DisplayCartEvent;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/DisplayCartEvent;->getModel()Lcom/stripe/hardware/paymentcollection/DisplayCartModel;

    move-result-object v0

    .line 1070
    invoke-interface {p1, v0}, Lcom/stripe/paymentcollection/PaymentCollectionListener;->onRequestDisplayCart(Lcom/stripe/hardware/paymentcollection/DisplayCartModel;)V

    goto/16 :goto_0

    .line 1074
    :cond_c
    instance-of v2, v0, Lcom/stripe/paymentcollection/TimeoutEvent;

    if-eqz v2, :cond_d

    .line 1075
    invoke-static {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$sendTimeoutResult(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)V

    goto/16 :goto_0

    .line 1078
    :cond_d
    instance-of v2, v0, Lcom/stripe/paymentcollection/CollectPaymentMethodApiErrorEvent;

    if-eqz v2, :cond_e

    .line 1079
    invoke-static {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$sendFailedResult(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)V

    goto/16 :goto_0

    .line 1082
    :cond_e
    instance-of v2, v0, Lcom/stripe/paymentcollection/PresentDynamicCurrencyConversionSelectionEvent;

    if-eqz v2, :cond_f

    .line 1083
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionListener()Lcom/stripe/paymentcollection/PaymentCollectionListener;

    move-result-object p1

    check-cast v0, Lcom/stripe/paymentcollection/PresentDynamicCurrencyConversionSelectionEvent;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PresentDynamicCurrencyConversionSelectionEvent;->getModel()Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;

    move-result-object v0

    new-instance v2, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$8;

    invoke-direct {v2, v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$8;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v0, v2}, Lcom/stripe/paymentcollection/PaymentCollectionListener;->onRequestDynamicCurrencySelection(Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 1096
    :cond_f
    instance-of v2, v0, Lcom/stripe/paymentcollection/PresentNonCardPaymentMethodsSelectionEvent;

    if-eqz v2, :cond_10

    .line 1097
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionListener()Lcom/stripe/paymentcollection/PaymentCollectionListener;

    move-result-object v2

    .line 1098
    check-cast v0, Lcom/stripe/paymentcollection/PresentNonCardPaymentMethodsSelectionEvent;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PresentNonCardPaymentMethodsSelectionEvent;->getModel()Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodSelectionModel;

    move-result-object v0

    .line 1097
    new-instance v3, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$9;

    invoke-direct {v3, v1, p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$9;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v0, v3}, Lcom/stripe/paymentcollection/PaymentCollectionListener;->onRequestDisplayNonCardPaymentMethodsSelection(Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodSelectionModel;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 1112
    :cond_10
    instance-of v2, v0, Lcom/stripe/paymentcollection/SelectNonCardPaymentMethodEvent;

    if-eqz v2, :cond_11

    .line 1113
    check-cast v0, Lcom/stripe/paymentcollection/SelectNonCardPaymentMethodEvent;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/SelectNonCardPaymentMethodEvent;->getPaymentMethodType()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->setSelectedNonCardPaymentMethod(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;)V

    goto :goto_0

    .line 1116
    :cond_11
    instance-of v2, v0, Lcom/stripe/paymentcollection/PresentNonCardPaymentMethodActionRequiredEvent;

    if-eqz v2, :cond_12

    .line 1117
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionListener()Lcom/stripe/paymentcollection/PaymentCollectionListener;

    move-result-object p1

    .line 1118
    check-cast v0, Lcom/stripe/paymentcollection/PresentNonCardPaymentMethodActionRequiredEvent;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PresentNonCardPaymentMethodActionRequiredEvent;->getModel()Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;

    move-result-object v0

    .line 1117
    new-instance v2, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$10;

    invoke-direct {v2, v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$10;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v0, v2}, Lcom/stripe/paymentcollection/PaymentCollectionListener;->onRequestDisplayNonCardPaymentMethodActionRequired(Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 1140
    :cond_12
    instance-of v1, v0, Lcom/stripe/paymentcollection/PresentInterstitialEvent;

    if-eqz v1, :cond_13

    .line 1141
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionListener()Lcom/stripe/paymentcollection/PaymentCollectionListener;

    move-result-object p1

    check-cast v0, Lcom/stripe/paymentcollection/PresentInterstitialEvent;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PresentInterstitialEvent;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/stripe/paymentcollection/PaymentCollectionListener;->onInterstitial(Ljava/lang/String;)V

    goto :goto_0

    .line 1143
    :cond_13
    instance-of v1, v0, Lcom/stripe/paymentcollection/PresentNonCardPaymentMethodLoadingEvent;

    if-eqz v1, :cond_14

    .line 1144
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionListener()Lcom/stripe/paymentcollection/PaymentCollectionListener;

    move-result-object p1

    check-cast v0, Lcom/stripe/paymentcollection/PresentNonCardPaymentMethodLoadingEvent;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PresentNonCardPaymentMethodLoadingEvent;->getPaymentMethodType()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/stripe/paymentcollection/PaymentCollectionListener;->onNonCardPaymentMethodLoading(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;)V

    .line 1147
    :cond_14
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 935
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
