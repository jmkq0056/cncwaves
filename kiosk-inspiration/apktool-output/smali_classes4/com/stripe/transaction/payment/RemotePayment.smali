.class public final Lcom/stripe/transaction/payment/RemotePayment;
.super Lcom/stripe/transaction/payment/Payment;
.source "RemotePayment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/stripe/transaction/payment/RemotePayment;",
        "Lcom/stripe/transaction/payment/Payment;",
        "paymentMethod",
        "Lcom/stripe/proto/model/sdk/PaymentMethod;",
        "(Lcom/stripe/proto/model/sdk/PaymentMethod;)V",
        "public_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lcom/stripe/proto/model/sdk/PaymentMethod;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/stripe/transaction/payment/Payment;-><init>()V

    .line 9
    invoke-virtual {p0, p1}, Lcom/stripe/transaction/payment/RemotePayment;->setSdkSource(Lcom/stripe/proto/model/sdk/PaymentMethod;)V

    return-void
.end method
