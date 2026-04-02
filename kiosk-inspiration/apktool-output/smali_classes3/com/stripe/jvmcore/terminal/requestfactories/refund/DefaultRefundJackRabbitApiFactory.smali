.class public final Lcom/stripe/jvmcore/terminal/requestfactories/refund/DefaultRefundJackRabbitApiFactory;
.super Ljava/lang/Object;
.source "DefaultRefundJackRabbitApiFactory.kt"

# interfaces
.implements Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundJackRabbitApiFactory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J,\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000c\u001a\u00020\rH\u0016J \u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\nH\u0016\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/jvmcore/terminal/requestfactories/refund/DefaultRefundJackRabbitApiFactory;",
        "Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundJackRabbitApiFactory;",
        "()V",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelConfirmInteracRefund()Lcom/stripe/proto/api/sdk/CancelConfirmInteracRefundRequest;
    .locals 3

    .line 47
    new-instance v0, Lcom/stripe/proto/api/sdk/CancelConfirmInteracRefundRequest;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/stripe/proto/api/sdk/CancelConfirmInteracRefundRequest;-><init>(Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public collectInteracRefundMethod(Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;Z)Lcom/stripe/proto/api/sdk/CollectInteracRefundMethodRequest;
    .locals 12

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v1, Lcom/stripe/proto/model/sdk/ChargeAmount;

    .line 21
    invoke-virtual {p1}, Lcom/stripe/currency/Amount;->getValue()J

    move-result-wide v2

    .line 22
    invoke-static {p1}, Lcom/stripe/currency/AmountExtensionsKt;->getCurrencyCode(Lcom/stripe/currency/Amount;)Ljava/lang/String;

    move-result-object v6

    const/16 v10, 0x1a

    const/4 v11, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 20
    invoke-direct/range {v1 .. v11}, Lcom/stripe/proto/model/sdk/ChargeAmount;-><init>(JJLjava/lang/String;JLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 19
    new-instance p1, Lcom/stripe/proto/api/sdk/CollectInteracRefundMethodRequest;

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v5, p2

    move-object v4, p3

    move/from16 v3, p4

    move-object v2, v1

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/stripe/proto/api/sdk/CollectInteracRefundMethodRequest;-><init>(Lcom/stripe/proto/model/sdk/ChargeAmount;ZLjava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public confirmInteracRefund(Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/proto/model/sdk/PaymentMethod;Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest;
    .locals 13

    const-string v0, "refundParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentMethod"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refundReason"

    move-object/from16 v2, p3

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/RefundParameters;->getChargeId()Ljava/lang/String;

    move-result-object v8

    .line 37
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/RefundParameters;->getPaymentIntentId()Ljava/lang/String;

    move-result-object v9

    .line 39
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/RefundParameters;->getReverseTransfer()Z

    move-result v4

    .line 40
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/RefundParameters;->getRefundApplicationFee()Z

    move-result v3

    .line 41
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/RefundParameters;->getMetadata()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    :cond_0
    move-object v6, p1

    .line 35
    new-instance v1, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest;

    const/16 v11, 0x120

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v5, p2

    invoke-direct/range {v1 .. v12}, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest;-><init>(Ljava/lang/String;ZZLcom/stripe/proto/model/sdk/PaymentMethod;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method
