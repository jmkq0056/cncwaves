.class public interface abstract Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundRestApiRequestFactory;
.super Ljava/lang/Object;
.source "RefundRestApiRequestFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001Jr\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00082\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0008H&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0015\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundRestApiRequestFactory;",
        "",
        "refundChargeRequest",
        "Lcom/stripe/jvmcore/restclient/RestRequest;",
        "Lcom/stripe/proto/api/rest/RefundChargeRequest;",
        "Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;",
        "Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundChargeRestRequest;",
        "charge",
        "",
        "paymentIntentId",
        "amount",
        "",
        "paymentMethodData",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
        "reverseTransfer",
        "",
        "refundApplicationFee",
        "reason",
        "metadata",
        "",
        "stripeAccountId",
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
.method public abstract refundChargeRequest(Ljava/lang/String;Ljava/lang/String;JLcom/stripe/proto/api/rest/RequestedPaymentMethod;ZZLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/stripe/jvmcore/restclient/RestRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestRequest<",
            "Lcom/stripe/proto/api/rest/RefundChargeRequest;",
            "Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
