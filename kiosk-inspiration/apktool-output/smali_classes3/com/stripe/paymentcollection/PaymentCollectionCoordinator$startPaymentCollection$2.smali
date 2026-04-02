.class final Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PaymentCollectionCoordinator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->startPaymentCollection(Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/currency/Amount;ZZZLcom/stripe/currency/Amount;ZLcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLjava/lang/String;Ljava/util/List;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.stripe.paymentcollection.PaymentCollectionCoordinator$startPaymentCollection$2"
    f = "PaymentCollectionCoordinator.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $amount:Lcom/stripe/currency/Amount;

.field final synthetic $domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

.field final synthetic $enableCustomerCancellation:Z

.field final synthetic $forceMagstripePin:Z

.field final synthetic $forcePinEntry:Z

.field final synthetic $isApplicationSelectionInQuickChipEnabled:Z

.field final synthetic $isDeferredAuthorizationCountry:Z

.field final synthetic $isOffline:Z

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

.field final synthetic $paymentCollectionListener:Lcom/stripe/paymentcollection/PaymentCollectionListener;

.field final synthetic $promptPinEntryForServiceCode:Z

.field final synthetic $requestIncrementalAuthorizationSupport:Z

.field final synthetic $skipTipping:Z

.field final synthetic $surchargeNotice:Ljava/lang/String;

.field final synthetic $tipEligibleAmount:Lcom/stripe/currency/Amount;

.field final synthetic $tippingAmount:Lcom/stripe/currency/Amount;

.field final synthetic $transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

.field label:I

.field final synthetic this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;


# direct methods
.method constructor <init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;ZZLcom/stripe/currency/Amount;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/currency/Amount;ZZLcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLjava/lang/String;Ljava/util/List;ZZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;",
            "Lcom/stripe/currency/Amount;",
            "Lcom/stripe/hardware/paymentcollection/TransactionType;",
            "ZZ",
            "Lcom/stripe/currency/Amount;",
            "Lcom/stripe/paymentcollection/PaymentCollectionListener;",
            "Lcom/stripe/currency/Amount;",
            "ZZ",
            "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;",
            "ZZZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;ZZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    iput-object p2, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$amount:Lcom/stripe/currency/Amount;

    iput-object p3, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    iput-boolean p4, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$skipTipping:Z

    iput-boolean p5, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$manualEntry:Z

    iput-object p6, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$tipEligibleAmount:Lcom/stripe/currency/Amount;

    iput-object p7, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$paymentCollectionListener:Lcom/stripe/paymentcollection/PaymentCollectionListener;

    iput-object p8, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$tippingAmount:Lcom/stripe/currency/Amount;

    iput-boolean p9, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$isOffline:Z

    iput-boolean p10, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$isDeferredAuthorizationCountry:Z

    iput-object p11, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    iput-boolean p12, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$isApplicationSelectionInQuickChipEnabled:Z

    iput-boolean p13, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$promptPinEntryForServiceCode:Z

    iput-boolean p14, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$forceMagstripePin:Z

    iput-boolean p15, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$enableCustomerCancellation:Z

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$surchargeNotice:Ljava/lang/String;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$nonCardPaymentMethodTypes:Ljava/util/List;

    move/from16 p1, p18

    iput-boolean p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$requestIncrementalAuthorizationSupport:Z

    move/from16 p1, p19

    iput-boolean p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$forcePinEntry:Z

    const/4 p1, 0x2

    move-object/from16 p2, p20

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 22
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

    new-instance v1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;

    iget-object v2, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    iget-object v3, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$amount:Lcom/stripe/currency/Amount;

    iget-object v4, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    iget-boolean v5, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$skipTipping:Z

    iget-boolean v6, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$manualEntry:Z

    iget-object v7, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$tipEligibleAmount:Lcom/stripe/currency/Amount;

    iget-object v8, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$paymentCollectionListener:Lcom/stripe/paymentcollection/PaymentCollectionListener;

    iget-object v9, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$tippingAmount:Lcom/stripe/currency/Amount;

    iget-boolean v10, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$isOffline:Z

    iget-boolean v11, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$isDeferredAuthorizationCountry:Z

    iget-object v12, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    iget-boolean v13, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$isApplicationSelectionInQuickChipEnabled:Z

    iget-boolean v14, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$promptPinEntryForServiceCode:Z

    iget-boolean v15, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$forceMagstripePin:Z

    move-object/from16 p1, v1

    iget-boolean v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$enableCustomerCancellation:Z

    move/from16 v16, v1

    iget-object v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$surchargeNotice:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$nonCardPaymentMethodTypes:Ljava/util/List;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$requestIncrementalAuthorizationSupport:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$forcePinEntry:Z

    move-object/from16 v21, p2

    move/from16 v20, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v21}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;ZZLcom/stripe/currency/Amount;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/currency/Amount;ZZLcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLjava/lang/String;Ljava/util/List;ZZLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/coroutines/Continuation;

    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 412
    iget v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->label:I

    if-nez v1, :cond_3

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 413
    iget-object v2, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    iget-object v3, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$amount:Lcom/stripe/currency/Amount;

    iget-object v4, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    iget-boolean v5, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$skipTipping:Z

    iget-boolean v6, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$manualEntry:Z

    iget-object v7, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$tipEligibleAmount:Lcom/stripe/currency/Amount;

    invoke-static/range {v2 .. v7}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getTippingState(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;ZZLcom/stripe/currency/Amount;)Lcom/stripe/paymentcollection/TippingState;

    move-result-object v12

    .line 414
    iget-object v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    iget-object v2, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$amount:Lcom/stripe/currency/Amount;

    invoke-static {v1, v2, v12}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getTippingConfig(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/currency/Amount;Lcom/stripe/paymentcollection/TippingState;)Lcom/stripe/hardware/tipping/TipConfigValidationResult;

    move-result-object v13

    .line 415
    iget-object v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-virtual {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v18

    .line 418
    iget-object v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-static {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getPaymentCollectionContext$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->canStartCollection()Z

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    iget-object v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-static {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$cancelCurrentTransaction(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)V

    .line 426
    iget-object v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-static {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getPaymentCollectionContextFactory$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;

    move-result-object v3

    .line 427
    iget-object v4, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$paymentCollectionListener:Lcom/stripe/paymentcollection/PaymentCollectionListener;

    .line 428
    iget-object v5, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$amount:Lcom/stripe/currency/Amount;

    .line 429
    iget-object v6, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    .line 426
    invoke-interface {v3, v4, v5, v6}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;->create(Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$setPaymentCollectionContext$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;)V

    .line 432
    :goto_0
    iget-object v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-static {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getPaymentCollectionContext$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v9, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    iget-object v10, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$amount:Lcom/stripe/currency/Amount;

    iget-object v3, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    iget-object v14, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$tippingAmount:Lcom/stripe/currency/Amount;

    iget-boolean v4, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$manualEntry:Z

    iget-boolean v5, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$isOffline:Z

    iget-object v6, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$tipEligibleAmount:Lcom/stripe/currency/Amount;

    iget-boolean v7, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$isDeferredAuthorizationCountry:Z

    iget-object v8, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    iget-boolean v11, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$isApplicationSelectionInQuickChipEnabled:Z

    iget-boolean v15, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$promptPinEntryForServiceCode:Z

    iget-boolean v2, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$forceMagstripePin:Z

    move-object/from16 v16, v1

    iget-boolean v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$enableCustomerCancellation:Z

    move/from16 v27, v1

    iget-object v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$surchargeNotice:Ljava/lang/String;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$nonCardPaymentMethodTypes:Ljava/util/List;

    move-object/from16 v29, v1

    iget-boolean v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$requestIncrementalAuthorizationSupport:Z

    move/from16 v17, v1

    iget-boolean v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->$forcePinEntry:Z

    .line 433
    invoke-virtual/range {v16 .. v16}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object v16

    move/from16 v23, v11

    .line 436
    invoke-static {v3}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getEmvTransactionType(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/hardware/emv/EmvTransactionType;

    move-result-object v11

    .line 440
    invoke-static {v3}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getTransactionRepository$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/TransactionRepository;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/stripe/paymentcollection/TransactionRepository;->getIntegrationType()Lcom/stripe/restclient/IntegrationType;

    move-result-object v19

    move/from16 v20, v17

    .line 442
    invoke-static {v3}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getDeviceCapability(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/transaction/PaymentCollectionDeviceCapability;

    move-result-object v17

    .line 451
    invoke-static {v3}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getTransactionRepository$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/TransactionRepository;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/stripe/paymentcollection/TransactionRepository;->getDomesticDebitAids()Ljava/util/List;

    move-result-object v26

    .line 455
    invoke-static {v3}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getPaymentCollectionFeatureFlagRepository$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;->predipDisabled()Z

    move-result v30

    if-eqz v20, :cond_1

    .line 458
    invoke-static {v3}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getPaymentCollectionFeatureFlagRepository$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;

    move-result-object v3

    invoke-interface {v3}, Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;->newIncrementalAuthUiEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v31, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    move/from16 v31, v3

    :goto_1
    move/from16 v32, v1

    move/from16 v25, v2

    move-object/from16 v20, v6

    move/from16 v21, v7

    move-object/from16 v22, v8

    move/from16 v24, v15

    move-object/from16 v8, v16

    move-object/from16 v15, v19

    move/from16 v16, v4

    move/from16 v19, v5

    .line 433
    invoke-virtual/range {v8 .. v32}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->collectPayment(Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;Lcom/stripe/restclient/IntegrationType;ZLcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;ZLcom/stripe/currency/Amount;ZLcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZLjava/util/List;ZLjava/lang/String;Ljava/util/List;ZZZ)Z

    .line 463
    :cond_2
    iget-object v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$startPaymentCollection$2;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-static {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getPaymentCollectionContext$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getCollectionResult()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v1

    return-object v1

    .line 412
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
