.class final Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$confirmPaymentIntent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ProxyResourceRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->confirmPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
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
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
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
.field final synthetic $amountSurcharge:Ljava/lang/Long;

.field final synthetic $authStateListener:Lcom/stripe/paymentcollection/OnlineAuthStateListener;

.field final synthetic $collectScaPaymentMethodData:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $getCollectiblePayment:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/stripe/transaction/CollectiblePayment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $handleAuthResponse:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/Deferred<",
            "Lcom/stripe/hardware/emv/TransactionResult;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $immediateRecollectForSca:Z

.field final synthetic $paymentIntent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

.field final synthetic $returnUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/stripe/transaction/CollectiblePayment;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Lkotlinx/coroutines/Deferred<",
            "Lcom/stripe/hardware/emv/TransactionResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
            ">;Z",
            "Lcom/stripe/paymentcollection/OnlineAuthStateListener;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$confirmPaymentIntent$1;->$paymentIntent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$confirmPaymentIntent$1;->$getCollectiblePayment:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$confirmPaymentIntent$1;->$handleAuthResponse:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$confirmPaymentIntent$1;->$collectScaPaymentMethodData:Lkotlin/jvm/functions/Function0;

    iput-boolean p5, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$confirmPaymentIntent$1;->$immediateRecollectForSca:Z

    iput-object p6, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$confirmPaymentIntent$1;->$authStateListener:Lcom/stripe/paymentcollection/OnlineAuthStateListener;

    iput-object p7, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$confirmPaymentIntent$1;->$amountSurcharge:Ljava/lang/Long;

    iput-object p8, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$confirmPaymentIntent$1;->$returnUrl:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 10

    const-string v0, "$this$withCurrentRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$confirmPaymentIntent$1;->$paymentIntent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    .line 115
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$confirmPaymentIntent$1;->$getCollectiblePayment:Lkotlin/jvm/functions/Function0;

    .line 116
    iget-object v4, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$confirmPaymentIntent$1;->$handleAuthResponse:Lkotlin/jvm/functions/Function1;

    .line 117
    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$confirmPaymentIntent$1;->$collectScaPaymentMethodData:Lkotlin/jvm/functions/Function0;

    .line 118
    iget-boolean v6, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$confirmPaymentIntent$1;->$immediateRecollectForSca:Z

    .line 119
    iget-object v7, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$confirmPaymentIntent$1;->$authStateListener:Lcom/stripe/paymentcollection/OnlineAuthStateListener;

    .line 120
    iget-object v8, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$confirmPaymentIntent$1;->$amountSurcharge:Ljava/lang/Long;

    .line 121
    iget-object v9, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$confirmPaymentIntent$1;->$returnUrl:Ljava/lang/String;

    move-object v1, p1

    .line 113
    invoke-interface/range {v1 .. v9}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;->confirmPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 112
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$confirmPaymentIntent$1;->invoke(Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p1

    return-object p1
.end method
