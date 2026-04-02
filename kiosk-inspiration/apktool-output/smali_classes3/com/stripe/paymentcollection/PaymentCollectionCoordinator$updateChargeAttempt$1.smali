.class final Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$updateChargeAttempt$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PaymentCollectionCoordinator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->updateChargeAttempt(Lcom/stripe/transaction/ChargeAttempt;)Lkotlinx/coroutines/Job;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentCollectionCoordinator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentCollectionCoordinator.kt\ncom/stripe/paymentcollection/PaymentCollectionCoordinator$updateChargeAttempt$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1416:1\n1#2:1417\n*E\n"
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
    c = "com.stripe.paymentcollection.PaymentCollectionCoordinator$updateChargeAttempt$1"
    f = "PaymentCollectionCoordinator.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $chargeAttempt:Lcom/stripe/transaction/ChargeAttempt;

.field label:I

.field final synthetic this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;


# direct methods
.method constructor <init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/transaction/ChargeAttempt;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;",
            "Lcom/stripe/transaction/ChargeAttempt;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$updateChargeAttempt$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$updateChargeAttempt$1;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    iput-object p2, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$updateChargeAttempt$1;->$chargeAttempt:Lcom/stripe/transaction/ChargeAttempt;

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

    new-instance p1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$updateChargeAttempt$1;

    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$updateChargeAttempt$1;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    iget-object v1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$updateChargeAttempt$1;->$chargeAttempt:Lcom/stripe/transaction/ChargeAttempt;

    invoke-direct {p1, v0, v1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$updateChargeAttempt$1;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/transaction/ChargeAttempt;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$updateChargeAttempt$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$updateChargeAttempt$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$updateChargeAttempt$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$updateChargeAttempt$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 341
    iget v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$updateChargeAttempt$1;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 342
    iget-object p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$updateChargeAttempt$1;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-static {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getPaymentCollectionContext$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$updateChargeAttempt$1;->$chargeAttempt:Lcom/stripe/transaction/ChargeAttempt;

    .line 344
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->getState()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/stripe/paymentcollection/PaymentCollectionState;->NON_CARD_PAYMENT_METHOD_CONFIRMATION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    if-ne v1, v2, :cond_0

    .line 345
    instance-of v1, v0, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;

    if-eqz v1, :cond_0

    .line 349
    sget-object v0, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownChargeResult;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownChargeResult;

    check-cast v0, Lcom/stripe/transaction/ChargeAttempt;

    .line 356
    :cond_0
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->getState()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/stripe/paymentcollection/PaymentCollectionState;->INTERSTITIAL:Lcom/stripe/paymentcollection/PaymentCollectionState;

    if-ne v1, v2, :cond_1

    .line 357
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 359
    :cond_1
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->updateChargeAttempt(Lcom/stripe/transaction/ChargeAttempt;)V

    if-eqz v0, :cond_2

    .line 360
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionListener()Lcom/stripe/paymentcollection/PaymentCollectionListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/stripe/paymentcollection/PaymentCollectionListener;->onChargeSummary(Lcom/stripe/transaction/ChargeAttempt;)V

    .line 362
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 341
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
