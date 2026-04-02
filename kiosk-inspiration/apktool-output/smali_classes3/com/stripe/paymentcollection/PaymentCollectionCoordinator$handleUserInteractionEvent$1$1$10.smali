.class final Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$10;
.super Lkotlin/jvm/internal/Lambda;
.source "PaymentCollectionCoordinator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/stripe/hardware/paymentcollection/Disposition<",
        "Lkotlin/Unit;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/stripe/hardware/paymentcollection/Disposition;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;


# direct methods
.method constructor <init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$10;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1117
    check-cast p1, Lcom/stripe/hardware/paymentcollection/Disposition;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$10;->invoke(Lcom/stripe/hardware/paymentcollection/Disposition;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/stripe/hardware/paymentcollection/Disposition;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/paymentcollection/Disposition<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1121
    instance-of p1, p1, Lcom/stripe/hardware/paymentcollection/Disposition$Canceled;

    if-eqz p1, :cond_1

    .line 1122
    iget-object p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$10;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-static {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$getPaymentCollectionContext$p(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1123
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getNonCardPaymentMethodResult()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1124
    new-instance v0, Lcom/stripe/hardware/emv/TransactionResult;

    sget-object v1, Lcom/stripe/hardware/emv/TransactionResult$Result;->CANCELED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/TransactionResult;-><init>(Lcom/stripe/hardware/emv/TransactionResult$Result;Ljava/lang/String;)V

    .line 1123
    invoke-interface {p1, v0}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 1127
    :cond_0
    iget-object p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$10;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-static {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$cancelPaymentMethodCollectionViaCustomer(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lkotlinx/coroutines/Job;

    return-void

    .line 1131
    :cond_1
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 1132
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 1131
    const-string v2, "Unexpected event for NonCardPaymentMethodActionRequired state."

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method
