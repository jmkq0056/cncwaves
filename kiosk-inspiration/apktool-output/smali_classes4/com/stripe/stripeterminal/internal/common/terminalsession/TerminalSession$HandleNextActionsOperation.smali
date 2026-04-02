.class final Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$HandleNextActionsOperation;
.super Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;
.source "TerminalSession.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HandleNextActionsOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation<",
        "Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTerminalSession.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TerminalSession.kt\ncom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$HandleNextActionsOperation\n+ 2 TerminalSession.kt\ncom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession\n*L\n1#1,3360:1\n1013#2:3361\n1024#2:3362\n1013#2:3363\n1024#2:3364\n*S KotlinDebug\n*F\n+ 1 TerminalSession.kt\ncom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$HandleNextActionsOperation\n*L\n3154#1:3361\n3154#1:3362\n3164#1:3363\n3164#1:3364\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0083\u0004\u0018\u00002\u000c\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0015\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000cH\u0010\u00a2\u0006\u0002\u0008\rJ\u000e\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0005J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0015\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0012H\u0010\u00a2\u0006\u0002\u0008\u0013R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$HandleNextActionsOperation;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;",
        "Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
        "paymentIntent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "callback",
        "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;)V",
        "executeIfNotCanceled",
        "",
        "onFailure",
        "e",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "onFailure$terminalsession_release",
        "onSuccess",
        "sdkRequest",
        "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;",
        "startCancel",
        "Lcom/stripe/stripeterminal/external/callable/Callback;",
        "startCancel$terminalsession_release",
        "terminalsession_release"
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
.field private final paymentIntent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
            "Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "paymentIntent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3115
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$HandleNextActionsOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    .line 3118
    check-cast p3, Lcom/stripe/stripeterminal/external/callable/ErrorCallback;

    invoke-direct {p0, p1, p3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/callable/ErrorCallback;)V

    .line 3116
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$HandleNextActionsOperation;->paymentIntent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    return-void
.end method

.method public static final synthetic access$getPaymentIntent$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$HandleNextActionsOperation;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 0

    .line 3114
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$HandleNextActionsOperation;->paymentIntent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    return-object p0
.end method


# virtual methods
.method public executeIfNotCanceled()V
    .locals 20

    move-object/from16 v5, p0

    .line 3136
    iget-object v0, v5, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$HandleNextActionsOperation;->paymentIntent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getNextAction()Lcom/stripe/stripeterminal/external/models/NextAction;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3140
    iget-object v1, v5, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$HandleNextActionsOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getTransactionRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/core/transaction/TransactionRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/core/transaction/TransactionRepository;->getNonCardPaymentMethodType()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 3144
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/NextAction;->getNonCardPaymentMethodTypeAndImageUrl()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 3148
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$HandleNextActionsOperation$executeIfNotCanceled$apiFailureCallback$1;

    invoke-direct {v0, v5}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$HandleNextActionsOperation$executeIfNotCanceled$apiFailureCallback$1;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$HandleNextActionsOperation;)V

    .line 3154
    iget-object v8, v5, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$HandleNextActionsOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    .line 3361
    invoke-static {v8}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getBackgroundScope$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v14

    new-instance v6, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$HandleNextActionsOperation$executeIfNotCanceled$$inlined$runSuspendingApiRequest$1;

    move-object v1, v0

    check-cast v1, Lcom/stripe/stripeterminal/external/callable/ErrorCallback;

    const/4 v10, 0x0

    const-string v9, "Unknown error downloading QR image from URL"

    move-object v11, v8

    move-object v7, v1

    invoke-direct/range {v6 .. v13}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$HandleNextActionsOperation$executeIfNotCanceled$$inlined$runSuspendingApiRequest$1;-><init>(Lcom/stripe/stripeterminal/external/callable/ErrorCallback;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodType;)V

    move-object/from16 v17, v6

    check-cast v17, Lkotlin/jvm/functions/Function2;

    const/16 v18, 0x3

    const/16 v19, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v14 .. v19}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 3164
    iget-object v2, v5, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$HandleNextActionsOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    .line 3363
    invoke-static {v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getBackgroundScope$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v7

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$HandleNextActionsOperation$executeIfNotCanceled$$inlined$runSuspendingApiRequest$2;

    const/4 v4, 0x0

    const-string v3, "Failure while polling PaymentIntent for action completion."

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$HandleNextActionsOperation$executeIfNotCanceled$$inlined$runSuspendingApiRequest$2;-><init>(Lcom/stripe/stripeterminal/external/callable/ErrorCallback;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$HandleNextActionsOperation;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    move-object v3, v7

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 3144
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to extract non-card payment method type from PaymentIntent"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3140
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "transactionRepository must have a nonCardPaymentMethodType"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3136
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PaymentIntent must have a next action to handle next actions"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onFailure$terminalsession_release(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3124
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$HandleNextActionsOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getProxyResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->cancelPaymentIntentActionRequired()V

    .line 3125
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$HandleNextActionsOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->endPaymentFlow()V

    .line 3126
    invoke-super {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->onFailure$terminalsession_release(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    return-void
.end method

.method public final onSuccess(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V
    .locals 1

    const-string v0, "paymentIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3130
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;->success(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->onSuccess$terminalsession_release(Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;)V

    .line 3131
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$HandleNextActionsOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->endPaymentFlow()V

    .line 3132
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$HandleNextActionsOperation;->getCallback()Lcom/stripe/stripeterminal/external/callable/ErrorCallback;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;

    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;->onSuccess(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V

    return-void
.end method

.method public sdkRequest()Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 1

    .line 3120
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;->handleNextActions()Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    move-result-object v0

    return-object v0
.end method

.method public startCancel$terminalsession_release(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3181
    invoke-super {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->startCancel$terminalsession_release(Lcom/stripe/stripeterminal/external/callable/Callback;)V

    .line 3183
    :try_start_0
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$HandleNextActionsOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getAdapter$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/Adapter;->cancelCollectPaymentMethod()V

    .line 3186
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$HandleNextActionsOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getProxyResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->cancelPaymentIntentActionRequired()V

    .line 3187
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$HandleNextActionsOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->endPaymentFlow()V

    .line 3188
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$HandleNextActionsOperation;->onCancelSuccess()V
    :try_end_0
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3190
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$HandleNextActionsOperation;->onCancelFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    return-void
.end method
