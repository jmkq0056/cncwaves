.class public final Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule$providesPaymentCollectionTransactionRepository$1;
.super Ljava/lang/Object;
.source "PaymentCollectionExternalModule.kt"

# interfaces
.implements Lcom/stripe/paymentcollection/TransactionRepository;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;->providesPaymentCollectionTransactionRepository(Lcom/stripe/core/transaction/TransactionRepository;)Lcom/stripe/paymentcollection/TransactionRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R(\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00148V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001a\u001a\u0004\u0018\u00010\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "com/stripe/stripeterminal/dagger/PaymentCollectionExternalModule$providesPaymentCollectionTransactionRepository$1",
        "Lcom/stripe/paymentcollection/TransactionRepository;",
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
        "value",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
        "nonCardPaymentMethodType",
        "getNonCardPaymentMethodType",
        "()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
        "setNonCardPaymentMethodType",
        "(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;)V",
        "paymentIntentId",
        "getPaymentIntentId",
        "()Ljava/lang/String;",
        "sdkmanager_publish"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $coreTransactionRepository:Lcom/stripe/core/transaction/TransactionRepository;


# direct methods
.method constructor <init>(Lcom/stripe/core/transaction/TransactionRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule$providesPaymentCollectionTransactionRepository$1;->$coreTransactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmountTip()Lcom/stripe/currency/Amount;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule$providesPaymentCollectionTransactionRepository$1;->$coreTransactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v0}, Lcom/stripe/core/transaction/TransactionRepository;->getAmountTip()Lcom/stripe/currency/Amount;

    move-result-object v0

    return-object v0
.end method

.method public getDevicePaymentCapability()Lcom/stripe/transaction/PaymentCollectionDeviceCapability;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule$providesPaymentCollectionTransactionRepository$1;->$coreTransactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v0}, Lcom/stripe/core/transaction/TransactionRepository;->getDevicePaymentCapability()Lcom/stripe/transaction/PaymentCollectionDeviceCapability;

    move-result-object v0

    return-object v0
.end method

.method public getDomesticDebitAids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule$providesPaymentCollectionTransactionRepository$1;->$coreTransactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v0}, Lcom/stripe/core/transaction/TransactionRepository;->getDomesticDebitAids()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIntegrationType()Lcom/stripe/restclient/IntegrationType;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule$providesPaymentCollectionTransactionRepository$1;->$coreTransactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v0}, Lcom/stripe/core/transaction/TransactionRepository;->getIntegrationType()Lcom/stripe/restclient/IntegrationType;

    move-result-object v0

    return-object v0
.end method

.method public getNonCardPaymentMethodType()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule$providesPaymentCollectionTransactionRepository$1;->$coreTransactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v0}, Lcom/stripe/core/transaction/TransactionRepository;->getNonCardPaymentMethodType()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    move-result-object v0

    return-object v0
.end method

.method public getPaymentIntentId()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule$providesPaymentCollectionTransactionRepository$1;->$coreTransactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v0}, Lcom/stripe/core/transaction/TransactionRepository;->getPaymentIntentId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setNonCardPaymentMethodType(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule$providesPaymentCollectionTransactionRepository$1;->$coreTransactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v0, p1}, Lcom/stripe/core/transaction/TransactionRepository;->setNonCardPaymentMethodType(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;)V

    return-void
.end method
