.class public interface abstract Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundJackRabbitApiFactory;
.super Ljava/lang/Object;
.source "RefundJackRabbitApiFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J,\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000b\u001a\u00020\u000cH&J \u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\tH&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0014\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundJackRabbitApiFactory;",
        "",
        "cancelConfirmInteracRefund",
        "Lcom/stripe/proto/api/sdk/CancelConfirmInteracRefundRequest;",
        "collectInteracRefundMethod",
        "Lcom/stripe/proto/api/sdk/CollectInteracRefundMethodRequest;",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "paymentIntentId",
        "",
        "chargeId",
        "enableCustomerCancellation",
        "",
        "confirmInteracRefund",
        "Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest;",
        "refundParams",
        "Lcom/stripe/stripeterminal/external/models/RefundParameters;",
        "paymentMethod",
        "Lcom/stripe/proto/model/sdk/PaymentMethod;",
        "refundReason",
        "terminal-requestfactories"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract cancelConfirmInteracRefund()Lcom/stripe/proto/api/sdk/CancelConfirmInteracRefundRequest;
.end method

.method public abstract collectInteracRefundMethod(Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;Z)Lcom/stripe/proto/api/sdk/CollectInteracRefundMethodRequest;
.end method

.method public abstract confirmInteracRefund(Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/proto/model/sdk/PaymentMethod;Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest;
.end method
