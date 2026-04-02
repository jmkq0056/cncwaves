.class final Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$displayCart$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PaymentCollectionCoordinator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->displayCart(Lcom/stripe/cart/Cart;Lcom/stripe/paymentcollection/PaymentCollectionListener;)Lkotlinx/coroutines/Job;
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
    c = "com.stripe.paymentcollection.PaymentCollectionCoordinator$displayCart$1"
    f = "PaymentCollectionCoordinator.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $cart:Lcom/stripe/cart/Cart;

.field final synthetic $paymentCollectionListener:Lcom/stripe/paymentcollection/PaymentCollectionListener;

.field label:I

.field final synthetic this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;


# direct methods
.method constructor <init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/cart/Cart;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;",
            "Lcom/stripe/paymentcollection/PaymentCollectionListener;",
            "Lcom/stripe/cart/Cart;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$displayCart$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$displayCart$1;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    iput-object p2, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$displayCart$1;->$paymentCollectionListener:Lcom/stripe/paymentcollection/PaymentCollectionListener;

    iput-object p3, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$displayCart$1;->$cart:Lcom/stripe/cart/Cart;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$displayCart$1;

    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$displayCart$1;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    iget-object v1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$displayCart$1;->$paymentCollectionListener:Lcom/stripe/paymentcollection/PaymentCollectionListener;

    iget-object v2, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$displayCart$1;->$cart:Lcom/stripe/cart/Cart;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$displayCart$1;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/cart/Cart;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$displayCart$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$displayCart$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$displayCart$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$displayCart$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 260
    iget v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$displayCart$1;->label:I

    if-nez v1, :cond_2

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 261
    iget-object v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$displayCart$1;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-static {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getPaymentCollectionContext$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    move-result-object v1

    if-nez v1, :cond_0

    .line 262
    iget-object v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$displayCart$1;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-static {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getPaymentCollectionContextFactory$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;

    move-result-object v2

    .line 263
    iget-object v3, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$displayCart$1;->$paymentCollectionListener:Lcom/stripe/paymentcollection/PaymentCollectionListener;

    .line 264
    iget-object v4, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$displayCart$1;->$cart:Lcom/stripe/cart/Cart;

    invoke-virtual {v4}, Lcom/stripe/cart/Cart;->getBalance()Lcom/stripe/currency/Amount;

    move-result-object v4

    .line 265
    sget-object v5, Lcom/stripe/hardware/paymentcollection/TransactionType;->CHARGE:Lcom/stripe/hardware/paymentcollection/TransactionType;

    .line 262
    invoke-interface {v2, v3, v4, v5}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;->create(Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$setPaymentCollectionContext$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;)V

    .line 268
    :cond_0
    iget-object v3, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$displayCart$1;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    iget-object v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$displayCart$1;->$cart:Lcom/stripe/cart/Cart;

    invoke-virtual {v1}, Lcom/stripe/cart/Cart;->getBalance()Lcom/stripe/currency/Amount;

    move-result-object v4

    sget-object v5, Lcom/stripe/hardware/paymentcollection/TransactionType;->CHARGE:Lcom/stripe/hardware/paymentcollection/TransactionType;

    const/16 v9, 0x1c

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v10}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->getTippingState$default(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;ZZLcom/stripe/currency/Amount;ILjava/lang/Object;)Lcom/stripe/paymentcollection/TippingState;

    move-result-object v13

    .line 269
    iget-object v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$displayCart$1;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    iget-object v2, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$displayCart$1;->$cart:Lcom/stripe/cart/Cart;

    invoke-virtual {v2}, Lcom/stripe/cart/Cart;->getBalance()Lcom/stripe/currency/Amount;

    move-result-object v2

    invoke-static {v1, v2, v13}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getTippingConfig(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/currency/Amount;Lcom/stripe/paymentcollection/TippingState;)Lcom/stripe/hardware/tipping/TipConfigValidationResult;

    move-result-object v14

    .line 270
    iget-object v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$displayCart$1;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-static {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getPaymentCollectionContext$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 271
    iget-object v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$displayCart$1;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-static {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getEmvTransactionType(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/hardware/emv/EmvTransactionType;

    move-result-object v12

    .line 274
    iget-object v15, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$displayCart$1;->$cart:Lcom/stripe/cart/Cart;

    .line 275
    iget-object v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$displayCart$1;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-static {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getTransactionRepository$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/TransactionRepository;

    move-result-object v1

    invoke-interface {v1}, Lcom/stripe/paymentcollection/TransactionRepository;->getIntegrationType()Lcom/stripe/restclient/IntegrationType;

    move-result-object v16

    .line 276
    iget-object v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$displayCart$1;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-static {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getDeviceCapability(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/transaction/PaymentCollectionDeviceCapability;

    move-result-object v17

    .line 277
    iget-object v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$displayCart$1;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-virtual {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v18

    .line 278
    iget-object v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$displayCart$1;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-static {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getPaymentCollectionFeatureFlagRepository$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;

    move-result-object v1

    invoke-interface {v1}, Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;->applicationSelectionInQuickChipEnabled()Z

    move-result v19

    .line 279
    iget-object v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$displayCart$1;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-static {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getPaymentCollectionFeatureFlagRepository$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;

    move-result-object v1

    invoke-interface {v1}, Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;->magStripePinEnabled()Z

    move-result v20

    .line 280
    iget-object v1, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$displayCart$1;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-static {v1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getSettingsRepository$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/SettingsRepository;

    move-result-object v1

    invoke-interface {v1}, Lcom/stripe/paymentcollection/SettingsRepository;->getMagstripeConfig()Lcom/stripe/proto/model/config/MagstripeConfig;

    move-result-object v1

    iget-boolean v1, v1, Lcom/stripe/proto/model/config/MagstripeConfig;->force_pin_entry:Z

    .line 281
    iget-object v2, v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$displayCart$1;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-static {v2}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getPaymentCollectionFeatureFlagRepository$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;

    move-result-object v2

    invoke-interface {v2}, Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;->predipDisabled()Z

    move-result v22

    move/from16 v21, v1

    .line 270
    invoke-virtual/range {v11 .. v22}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->displayCart(Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/cart/Cart;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;ZZZZ)Z

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 283
    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 260
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
