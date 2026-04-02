.class public interface abstract Lcom/stripe/paymentcollection/TransactionRepository;
.super Ljava/lang/Object;
.source "TransactionRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008f\u0018\u00002\u00020\u0001R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0018\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u0004\u0018\u00010\u000cX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001b\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u001c\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/TransactionRepository;",
        "",
        "amountTip",
        "Lcom/stripe/currency/Amount;",
        "getAmountTip",
        "()Lcom/stripe/currency/Amount;",
        "devicePaymentCapability",
        "Lcom/stripe/transaction/PaymentCollectionDeviceCapability;",
        "getDevicePaymentCapability",
        "()Lcom/stripe/transaction/PaymentCollectionDeviceCapability;",
        "domesticDebitAids",
        "",
        "",
        "getDomesticDebitAids",
        "()Ljava/util/List;",
        "integrationType",
        "Lcom/stripe/restclient/IntegrationType;",
        "getIntegrationType",
        "()Lcom/stripe/restclient/IntegrationType;",
        "nonCardPaymentMethodType",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
        "getNonCardPaymentMethodType",
        "()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
        "setNonCardPaymentMethodType",
        "(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;)V",
        "paymentIntentId",
        "getPaymentIntentId",
        "()Ljava/lang/String;",
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


# virtual methods
.method public abstract getAmountTip()Lcom/stripe/currency/Amount;
.end method

.method public abstract getDevicePaymentCapability()Lcom/stripe/transaction/PaymentCollectionDeviceCapability;
.end method

.method public abstract getDomesticDebitAids()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIntegrationType()Lcom/stripe/restclient/IntegrationType;
.end method

.method public abstract getNonCardPaymentMethodType()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;
.end method

.method public abstract getPaymentIntentId()Ljava/lang/String;
.end method

.method public abstract setNonCardPaymentMethodType(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;)V
.end method
