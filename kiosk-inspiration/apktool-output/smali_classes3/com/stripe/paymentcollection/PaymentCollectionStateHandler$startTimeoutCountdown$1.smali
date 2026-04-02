.class final Lcom/stripe/paymentcollection/PaymentCollectionStateHandler$startTimeoutCountdown$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PaymentCollectionStateHandlers.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->startTimeoutCountdown(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic this$0:Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;


# direct methods
.method constructor <init>(Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler$startTimeoutCountdown$1;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 260
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler$startTimeoutCountdown$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 261
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler$startTimeoutCountdown$1;->this$0:Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;

    check-cast v0, Lcom/stripe/statemachine/StateMachine$StateHandler;

    sget-object v1, Lcom/stripe/paymentcollection/PaymentCollectionState;->TIMEOUT:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/stripe/statemachine/StateMachine$StateHandler;->transitionTo$default(Lcom/stripe/statemachine/StateMachine$StateHandler;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
