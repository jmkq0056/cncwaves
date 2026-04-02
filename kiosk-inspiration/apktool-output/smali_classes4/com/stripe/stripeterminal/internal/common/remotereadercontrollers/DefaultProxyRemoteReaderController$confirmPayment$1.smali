.class final Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$confirmPayment$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ProxyRemoteReaderController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->confirmPayment(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;",
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
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;",
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

.field final synthetic $paymentIntent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

.field final synthetic $returnUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$confirmPayment$1;->$paymentIntent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$confirmPayment$1;->$amountSurcharge:Ljava/lang/Long;

    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$confirmPayment$1;->$returnUrl:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 3

    const-string v0, "$this$withCurrentController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$confirmPayment$1;->$paymentIntent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$confirmPayment$1;->$amountSurcharge:Ljava/lang/Long;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$confirmPayment$1;->$returnUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;->confirmPayment(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 149
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$confirmPayment$1;->invoke(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p1

    return-object p1
.end method
