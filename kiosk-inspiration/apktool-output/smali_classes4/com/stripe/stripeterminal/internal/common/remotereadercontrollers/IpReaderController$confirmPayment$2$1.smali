.class final Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$confirmPayment$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "IpReaderController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->confirmPayment(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "pi",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
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
.field final synthetic $completable:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CompletableDeferred;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$confirmPayment$2$1;->$completable:Lkotlinx/coroutines/CompletableDeferred;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 511
    check-cast p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$confirmPayment$2$1;->invoke(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V
    .locals 1

    const-string v0, "pi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$confirmPayment$2$1;->$completable:Lkotlinx/coroutines/CompletableDeferred;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    return-void
.end method
