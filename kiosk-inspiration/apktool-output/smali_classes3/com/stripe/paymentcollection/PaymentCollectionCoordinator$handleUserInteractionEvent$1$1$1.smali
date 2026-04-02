.class final Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$1;
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
        "Lcom/stripe/hardware/paymentcollection/TippingSelectionResult;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/stripe/hardware/paymentcollection/Disposition;",
        "Lcom/stripe/hardware/paymentcollection/TippingSelectionResult;",
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
.field final synthetic $context:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

.field final synthetic this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;


# direct methods
.method constructor <init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$1;->$context:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    iput-object p2, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$1;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 939
    check-cast p1, Lcom/stripe/hardware/paymentcollection/Disposition;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$1;->invoke(Lcom/stripe/hardware/paymentcollection/Disposition;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/stripe/hardware/paymentcollection/Disposition;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/paymentcollection/Disposition<",
            "Lcom/stripe/hardware/paymentcollection/TippingSelectionResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 943
    instance-of v0, p1, Lcom/stripe/hardware/paymentcollection/Disposition$Completed;

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$1;->$context:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object v0

    check-cast p1, Lcom/stripe/hardware/paymentcollection/Disposition$Completed;

    invoke-virtual {p1}, Lcom/stripe/hardware/paymentcollection/Disposition$Completed;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/hardware/paymentcollection/TippingSelectionResult;

    invoke-virtual {v0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->setTippingSelectionResult(Lcom/stripe/hardware/paymentcollection/TippingSelectionResult;)V

    return-void

    .line 947
    :cond_0
    instance-of v0, p1, Lcom/stripe/hardware/paymentcollection/Disposition$Canceled;

    if-eqz v0, :cond_2

    .line 948
    check-cast p1, Lcom/stripe/hardware/paymentcollection/Disposition$Canceled;

    invoke-virtual {p1}, Lcom/stripe/hardware/paymentcollection/Disposition$Canceled;->getReason()Lcom/stripe/hardware/paymentcollection/Disposition$Canceled$Reason;

    move-result-object p1

    sget-object v0, Lcom/stripe/hardware/paymentcollection/Disposition$Canceled$Reason;->RESET:Lcom/stripe/hardware/paymentcollection/Disposition$Canceled$Reason;

    if-ne p1, v0, :cond_1

    .line 949
    iget-object p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$1;->$context:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->resetTipSelection()V

    return-void

    .line 951
    :cond_1
    iget-object p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$handleUserInteractionEvent$1$1$1;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-static {p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->access$cancelPaymentMethodCollectionViaCustomer(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lkotlinx/coroutines/Job;

    :cond_2
    return-void
.end method
