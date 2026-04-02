.class public interface abstract Lcom/stripe/paymentcollection/metrics/TippingLogger;
.super Ljava/lang/Object;
.source "TippingLogger.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\"\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH&J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0012\u0010\r\u001a\u00020\u00032\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH&J\u001a\u0010\u000e\u001a\u00020\u00032\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0008\u0010\u0011\u001a\u00020\u0003H&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0012\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/metrics/TippingLogger;",
        "",
        "closeTippingSelectionLog",
        "",
        "data",
        "Lcom/stripe/paymentcollection/PaymentCollectionData;",
        "logCurrencyMismatch",
        "tippingCurrencies",
        "",
        "currencyCode",
        "integrationType",
        "Lcom/stripe/restclient/IntegrationType;",
        "logReselectTipping",
        "logSkipTipping",
        "logTipEligible",
        "eligibleAmount",
        "",
        "openTippingSelectionLog",
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
.method public abstract closeTippingSelectionLog(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
.end method

.method public abstract logCurrencyMismatch(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/restclient/IntegrationType;)V
.end method

.method public abstract logReselectTipping(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
.end method

.method public abstract logSkipTipping(Lcom/stripe/restclient/IntegrationType;)V
.end method

.method public abstract logTipEligible(Lcom/stripe/restclient/IntegrationType;J)V
.end method

.method public abstract openTippingSelectionLog()V
.end method
