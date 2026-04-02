.class final Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$awaitActionRequiredPaymentIntentCompletion$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ProxyResourceRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->awaitActionRequiredPaymentIntentCompletion(Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/Deferred;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;",
        "Lkotlinx/coroutines/Deferred<",
        "+",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lkotlinx/coroutines/Deferred;",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;",
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
.field final synthetic $accountId:Ljava/lang/String;

.field final synthetic $paymentIntentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$awaitActionRequiredPaymentIntentCompletion$1;->$paymentIntentId:Ljava/lang/String;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$awaitActionRequiredPaymentIntentCompletion$1;->$accountId:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 172
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$awaitActionRequiredPaymentIntentCompletion$1;->invoke(Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;)Lkotlinx/coroutines/Deferred;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;",
            ")",
            "Lkotlinx/coroutines/Deferred<",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$withCurrentRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$awaitActionRequiredPaymentIntentCompletion$1;->$paymentIntentId:Ljava/lang/String;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$awaitActionRequiredPaymentIntentCompletion$1;->$accountId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;->awaitActionRequiredPaymentIntentCompletion(Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    return-object p1
.end method
