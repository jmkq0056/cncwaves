.class public interface abstract Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;
.super Ljava/lang/Object;
.source "DiscreteEventLogger.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH&J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0016\u0010\r\u001a\u00020\u00032\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH&J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0012\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;",
        "",
        "logAllowingMagStripe",
        "",
        "data",
        "Lcom/stripe/paymentcollection/PaymentCollectionData;",
        "logNonCardPaymentMethodConfirmResult",
        "logOnlineConfirmResult",
        "logPartialAuthApproved",
        "authorizedAmount",
        "",
        "logPassthroughSwiped",
        "logPrematureCardRemoval",
        "logReaderInterfaceChanged",
        "readerTypes",
        "",
        "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
        "logSurcharge",
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
.method public abstract logAllowingMagStripe(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
.end method

.method public abstract logNonCardPaymentMethodConfirmResult(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
.end method

.method public abstract logOnlineConfirmResult(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
.end method

.method public abstract logPartialAuthApproved(Lcom/stripe/paymentcollection/PaymentCollectionData;J)V
.end method

.method public abstract logPassthroughSwiped(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
.end method

.method public abstract logPrematureCardRemoval(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
.end method

.method public abstract logReaderInterfaceChanged(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract logSurcharge(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
.end method
