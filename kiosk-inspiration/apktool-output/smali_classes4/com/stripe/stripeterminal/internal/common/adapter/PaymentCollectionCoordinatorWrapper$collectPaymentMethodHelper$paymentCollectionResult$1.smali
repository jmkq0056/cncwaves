.class final Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PaymentCollectionCoordinatorWrapper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->collectPaymentMethodHelper(Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/paymentcollection/SCARequirement;ZZZLcom/stripe/currency/Amount;ZLcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZLjava/lang/String;Ljava/util/List;ZZ)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
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
        "Lcom/stripe/paymentcollection/PaymentCollectionResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
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
    c = "com.stripe.stripeterminal.internal.common.adapter.PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1"
    f = "PaymentCollectionCoordinatorWrapper.kt"
    i = {}
    l = {
        0x17e,
        0x18f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $amount:Lcom/stripe/currency/Amount;

.field final synthetic $domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

.field final synthetic $enableCustomerCancellation:Z

.field final synthetic $forcePinEntry:Z

.field final synthetic $isDeferredAuthorizationCountry:Z

.field final synthetic $isOffline:Z

.field final synthetic $listener:Lcom/stripe/paymentcollection/PaymentCollectionListener;

.field final synthetic $manualEntry:Z

.field final synthetic $nonCardPaymentMethodTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $requestIncrementalAuthorizationSupport:Z

.field final synthetic $scaRequirement:Lcom/stripe/paymentcollection/SCARequirement;

.field final synthetic $skipTipping:Z

.field final synthetic $surchargeNotice:Ljava/lang/String;

.field final synthetic $tipEligibleAmount:Lcom/stripe/currency/Amount;

.field final synthetic $tippingAmount:Lcom/stripe/currency/Amount;

.field final synthetic $transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

.field label:I

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/currency/Amount;ZZZLcom/stripe/currency/Amount;ZLcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZLjava/lang/String;Ljava/util/List;ZZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;",
            "Lcom/stripe/currency/Amount;",
            "Lcom/stripe/hardware/paymentcollection/TransactionType;",
            "Lcom/stripe/paymentcollection/PaymentCollectionListener;",
            "Lcom/stripe/paymentcollection/SCARequirement;",
            "Lcom/stripe/currency/Amount;",
            "ZZZ",
            "Lcom/stripe/currency/Amount;",
            "Z",
            "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;ZZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$amount:Lcom/stripe/currency/Amount;

    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$listener:Lcom/stripe/paymentcollection/PaymentCollectionListener;

    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$scaRequirement:Lcom/stripe/paymentcollection/SCARequirement;

    iput-object p6, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$tippingAmount:Lcom/stripe/currency/Amount;

    iput-boolean p7, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$skipTipping:Z

    iput-boolean p8, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$manualEntry:Z

    iput-boolean p9, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$isOffline:Z

    iput-object p10, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$tipEligibleAmount:Lcom/stripe/currency/Amount;

    iput-boolean p11, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$isDeferredAuthorizationCountry:Z

    iput-object p12, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    iput-boolean p13, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$enableCustomerCancellation:Z

    iput-object p14, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$surchargeNotice:Ljava/lang/String;

    iput-object p15, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$nonCardPaymentMethodTypes:Ljava/util/List;

    move/from16 p1, p16

    iput-boolean p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$requestIncrementalAuthorizationSupport:Z

    move/from16 p1, p17

    iput-boolean p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$forcePinEntry:Z

    const/4 p1, 0x2

    move-object/from16 p2, p18

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 20
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

    move-object/from16 v0, p0

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;

    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;

    iget-object v3, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$amount:Lcom/stripe/currency/Amount;

    iget-object v4, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    iget-object v5, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$listener:Lcom/stripe/paymentcollection/PaymentCollectionListener;

    iget-object v6, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$scaRequirement:Lcom/stripe/paymentcollection/SCARequirement;

    iget-object v7, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$tippingAmount:Lcom/stripe/currency/Amount;

    iget-boolean v8, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$skipTipping:Z

    iget-boolean v9, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$manualEntry:Z

    iget-boolean v10, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$isOffline:Z

    iget-object v11, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$tipEligibleAmount:Lcom/stripe/currency/Amount;

    iget-boolean v12, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$isDeferredAuthorizationCountry:Z

    iget-object v13, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    iget-boolean v14, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$enableCustomerCancellation:Z

    iget-object v15, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$surchargeNotice:Ljava/lang/String;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$nonCardPaymentMethodTypes:Ljava/util/List;

    move-object/from16 v16, v1

    iget-boolean v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$requestIncrementalAuthorizationSupport:Z

    move/from16 v17, v1

    iget-boolean v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$forcePinEntry:Z

    move-object/from16 v19, p2

    move/from16 v18, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v19}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/currency/Amount;ZZZLcom/stripe/currency/Amount;ZLcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZLjava/lang/String;Ljava/util/List;ZZLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/coroutines/Continuation;

    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/stripe/paymentcollection/PaymentCollectionResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 381
    iget v2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 382
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;

    invoke-static {v2}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->access$getPaymentCollectionCoordinator$p(Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    move-result-object v5

    .line 383
    iget-object v6, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$amount:Lcom/stripe/currency/Amount;

    .line 384
    iget-object v7, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    .line 385
    iget-object v8, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$listener:Lcom/stripe/paymentcollection/PaymentCollectionListener;

    .line 386
    iget-object v9, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$scaRequirement:Lcom/stripe/paymentcollection/SCARequirement;

    .line 387
    iget-object v10, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$tippingAmount:Lcom/stripe/currency/Amount;

    .line 388
    iget-boolean v11, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$skipTipping:Z

    .line 389
    iget-boolean v12, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$manualEntry:Z

    .line 390
    iget-boolean v13, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$isOffline:Z

    .line 391
    iget-object v14, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$tipEligibleAmount:Lcom/stripe/currency/Amount;

    .line 392
    iget-boolean v15, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$isDeferredAuthorizationCountry:Z

    .line 393
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    .line 394
    iget-boolean v3, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$enableCustomerCancellation:Z

    .line 395
    iget-object v4, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$surchargeNotice:Ljava/lang/String;

    move-object/from16 v17, v2

    .line 396
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$nonCardPaymentMethodTypes:Ljava/util/List;

    move-object/from16 v19, v2

    .line 397
    iget-boolean v2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$requestIncrementalAuthorizationSupport:Z

    move/from16 v20, v2

    .line 398
    iget-boolean v2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->$forcePinEntry:Z

    move-object/from16 v22, v0

    check-cast v22, Lkotlin/coroutines/Continuation;

    move/from16 v21, v2

    const/4 v2, 0x1

    .line 382
    iput v2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->label:I

    move-object/from16 v18, v4

    move-object/from16 v16, v17

    move/from16 v17, v3

    invoke-virtual/range {v5 .. v22}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->collectPaymentMethod(Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/currency/Amount;ZZZLcom/stripe/currency/Amount;ZLcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZLjava/lang/String;Ljava/util/List;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    goto :goto_1

    .line 381
    :cond_3
    :goto_0
    check-cast v2, Lkotlinx/coroutines/Deferred;

    move-object v3, v0

    check-cast v3, Lkotlin/coroutines/Continuation;

    const/4 v4, 0x2

    .line 399
    iput v4, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;->label:I

    invoke-interface {v2, v3}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    :goto_1
    return-object v1

    :cond_4
    return-object v2
.end method
