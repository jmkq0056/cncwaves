.class final Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PaymentCollectionCoordinator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->resumeExistingPaymentCollection(Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/paymentcollection/SCARequirement;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lkotlinx/coroutines/CompletableDeferred<",
        "Lcom/stripe/paymentcollection/PaymentCollectionResult;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lkotlinx/coroutines/CompletableDeferred;",
        "Lcom/stripe/paymentcollection/PaymentCollectionResult;",
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
    c = "com.stripe.paymentcollection.PaymentCollectionCoordinator$resumeExistingPaymentCollection$2"
    f = "PaymentCollectionCoordinator.kt"
    i = {}
    l = {
        0x1f8
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $amount:Lcom/stripe/currency/Amount;

.field final synthetic $enableCustomerCancellation:Z

.field final synthetic $paymentCollectionListener:Lcom/stripe/paymentcollection/PaymentCollectionListener;

.field final synthetic $scaRequirement:Lcom/stripe/paymentcollection/SCARequirement;

.field final synthetic $surchargeNotice:Ljava/lang/String;

.field final synthetic $tippingAmount:Lcom/stripe/currency/Amount;

.field label:I

.field final synthetic this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;


# direct methods
.method constructor <init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/currency/Amount;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/currency/Amount;ZLjava/lang/String;Lcom/stripe/paymentcollection/SCARequirement;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;",
            "Lcom/stripe/currency/Amount;",
            "Lcom/stripe/paymentcollection/PaymentCollectionListener;",
            "Lcom/stripe/currency/Amount;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/stripe/paymentcollection/SCARequirement;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    iput-object p2, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;->$amount:Lcom/stripe/currency/Amount;

    iput-object p3, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;->$paymentCollectionListener:Lcom/stripe/paymentcollection/PaymentCollectionListener;

    iput-object p4, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;->$tippingAmount:Lcom/stripe/currency/Amount;

    iput-boolean p5, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;->$enableCustomerCancellation:Z

    iput-object p6, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;->$surchargeNotice:Ljava/lang/String;

    iput-object p7, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;->$scaRequirement:Lcom/stripe/paymentcollection/SCARequirement;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;

    iget-object v1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    iget-object v2, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;->$amount:Lcom/stripe/currency/Amount;

    iget-object v3, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;->$paymentCollectionListener:Lcom/stripe/paymentcollection/PaymentCollectionListener;

    iget-object v4, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;->$tippingAmount:Lcom/stripe/currency/Amount;

    iget-boolean v5, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;->$enableCustomerCancellation:Z

    iget-object v6, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;->$surchargeNotice:Ljava/lang/String;

    iget-object v7, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;->$scaRequirement:Lcom/stripe/paymentcollection/SCARequirement;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/currency/Amount;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/currency/Amount;ZLjava/lang/String;Lcom/stripe/paymentcollection/SCARequirement;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lcom/stripe/paymentcollection/PaymentCollectionResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 483
    iget v2, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto/16 :goto_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 491
    iget-object v2, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-static {v2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getPaymentCollectionContext$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->canResumeCollectionForSca()Z

    move-result v2

    if-ne v2, v3, :cond_4

    .line 494
    iget-object v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-static {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getPaymentCollectionContext$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    move-result-object v2

    if-eqz v2, :cond_2

    const/16 v7, 0xf

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;ILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$setPaymentCollectionContext$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;)V

    .line 496
    iget-object v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-static {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getPaymentCollectionContext$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;->$scaRequirement:Lcom/stripe/paymentcollection/SCARequirement;

    .line 497
    invoke-virtual {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->resumePaymentForSCA(Lcom/stripe/paymentcollection/SCARequirement;)Z

    .line 500
    :cond_3
    iget-object v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-static {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getPaymentCollectionContext$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getCollectionResult()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v1

    return-object v1

    .line 504
    :cond_4
    iget-object v2, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    .line 505
    iget-object v4, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;->$amount:Lcom/stripe/currency/Amount;

    move-object v5, v4

    .line 506
    sget-object v4, Lcom/stripe/hardware/paymentcollection/TransactionType;->STRONG_CUSTOMER_AUTHENTICATION:Lcom/stripe/hardware/paymentcollection/TransactionType;

    move-object v6, v5

    .line 507
    iget-object v5, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;->$paymentCollectionListener:Lcom/stripe/paymentcollection/PaymentCollectionListener;

    move-object v7, v6

    .line 508
    iget-object v6, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;->$tippingAmount:Lcom/stripe/currency/Amount;

    .line 509
    iget-boolean v8, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;->$enableCustomerCancellation:Z

    .line 510
    iget-object v9, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;->$surchargeNotice:Ljava/lang/String;

    .line 511
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v18

    .line 513
    move-object/from16 v21, v0

    check-cast v21, Lkotlin/coroutines/Continuation;

    .line 504
    iput v3, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$resumeExistingPaymentCollection$2;->label:I

    move-object v3, v7

    const/4 v7, 0x0

    move/from16 v16, v8

    const/4 v8, 0x0

    move-object/from16 v17, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x1ff0

    const/16 v23, 0x0

    invoke-static/range {v2 .. v23}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->startPaymentCollection$default(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/currency/Amount;ZZZLcom/stripe/currency/Amount;ZLcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLjava/lang/String;Ljava/util/List;ZZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    return-object v1

    .line 483
    :cond_5
    :goto_1
    check-cast v2, Lkotlinx/coroutines/CompletableDeferred;

    return-object v2
.end method
