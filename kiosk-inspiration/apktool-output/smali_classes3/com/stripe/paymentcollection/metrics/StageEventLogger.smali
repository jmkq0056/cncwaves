.class public interface abstract Lcom/stripe/paymentcollection/metrics/StageEventLogger;
.super Ljava/lang/Object;
.source "StageEventLogger.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH&J\u0018\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0018\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0018\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u001a\u0010\u000f\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0010\u001a\u00020\u0011H&J$\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016H&J\u0010\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0012\u0010\u0018\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u001c\u0010\u0019\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH&J\u0010\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u001a\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u001f2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u001a\u0010 \u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020!2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0008\u0010\"\u001a\u00020\u0003H&J\u0008\u0010#\u001a\u00020\u0003H&J\u0008\u0010$\u001a\u00020\u0003H&J\u0008\u0010%\u001a\u00020\u0003H&J\u0008\u0010&\u001a\u00020\u0003H&J\u0008\u0010\'\u001a\u00020\u0003H&J\u0010\u0010(\u001a\u00020\u00032\u0006\u0010)\u001a\u00020*H&J\u0008\u0010+\u001a\u00020\u0003H&J\u0008\u0010,\u001a\u00020\u0003H&J\u0008\u0010-\u001a\u00020\u0003H&J\u0010\u0010.\u001a\u00020\u00032\u0006\u0010/\u001a\u00020\u001bH&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u00060\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/metrics/StageEventLogger;",
        "",
        "closeAccountSelectionLog",
        "",
        "data",
        "Lcom/stripe/paymentcollection/PaymentCollectionData;",
        "nextState",
        "Lcom/stripe/paymentcollection/PaymentCollectionState;",
        "closeApplicationSelectionLog",
        "closeDisplayCartLog",
        "displayCartResult",
        "Lcom/stripe/paymentcollection/metrics/DisplayCartResult;",
        "closeDynamicCurrencyConversionSelectionLog",
        "closeNonCardPaymentMethodActionRequiredLog",
        "closeNonCardPaymentMethodSelectionLog",
        "closeOnlineAuthenticationLog",
        "authState",
        "Lcom/stripe/paymentcollection/OnlineAuthState;",
        "closePinEntryLog",
        "result",
        "Lcom/stripe/paymentcollection/metrics/Result;",
        "knownFailureReason",
        "Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;",
        "closeRemoveCardLog",
        "closeWaitForCardPresentLog",
        "closeWaitForPosCommandLog",
        "closingCommand",
        "Lcom/stripe/paymentcollection/metrics/PendingPosCommand;",
        "onCancel",
        "onHardwareEvent",
        "event",
        "Lcom/stripe/paymentcollection/HardwareEvent;",
        "onHardwareListenerEvent",
        "Lcom/stripe/paymentcollection/HardwareListenerEvent;",
        "openAccountSelectionLog",
        "openApplicationSelectionLog",
        "openDisplayCartLog",
        "openDynamicCurrencyConversionSelectionLog",
        "openNonCardPaymentMethodActionRequiredLog",
        "openNonCardPaymentMethodSelectionLog",
        "openOnlineAuthenticationLog",
        "authType",
        "Lcom/stripe/paymentcollection/OnlineAuthType;",
        "openPinEntryLog",
        "openRemoveCardLog",
        "openWaitForCardPresentLog",
        "openWaitForPosCommandLog",
        "pendingCommand",
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
.method public static synthetic closePinEntryLog$default(Lcom/stripe/paymentcollection/metrics/StageEventLogger;Lcom/stripe/paymentcollection/metrics/Result;Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 30
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->closePinEntryLog(Lcom/stripe/paymentcollection/metrics/Result;Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: closePinEntryLog"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract closeAccountSelectionLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
.end method

.method public abstract closeApplicationSelectionLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
.end method

.method public abstract closeDisplayCartLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/DisplayCartResult;)V
.end method

.method public abstract closeDynamicCurrencyConversionSelectionLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
.end method

.method public abstract closeNonCardPaymentMethodActionRequiredLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
.end method

.method public abstract closeNonCardPaymentMethodSelectionLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
.end method

.method public abstract closeOnlineAuthenticationLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/OnlineAuthState;)V
.end method

.method public abstract closePinEntryLog(Lcom/stripe/paymentcollection/metrics/Result;Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;)V
.end method

.method public abstract closeRemoveCardLog(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
.end method

.method public abstract closeWaitForCardPresentLog(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
.end method

.method public abstract closeWaitForPosCommandLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/PendingPosCommand;)V
.end method

.method public abstract onCancel(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
.end method

.method public abstract onHardwareEvent(Lcom/stripe/paymentcollection/HardwareEvent;Lcom/stripe/paymentcollection/PaymentCollectionData;)V
.end method

.method public abstract onHardwareListenerEvent(Lcom/stripe/paymentcollection/HardwareListenerEvent;Lcom/stripe/paymentcollection/PaymentCollectionData;)V
.end method

.method public abstract openAccountSelectionLog()V
.end method

.method public abstract openApplicationSelectionLog()V
.end method

.method public abstract openDisplayCartLog()V
.end method

.method public abstract openDynamicCurrencyConversionSelectionLog()V
.end method

.method public abstract openNonCardPaymentMethodActionRequiredLog()V
.end method

.method public abstract openNonCardPaymentMethodSelectionLog()V
.end method

.method public abstract openOnlineAuthenticationLog(Lcom/stripe/paymentcollection/OnlineAuthType;)V
.end method

.method public abstract openPinEntryLog()V
.end method

.method public abstract openRemoveCardLog()V
.end method

.method public abstract openWaitForCardPresentLog()V
.end method

.method public abstract openWaitForPosCommandLog(Lcom/stripe/paymentcollection/metrics/PendingPosCommand;)V
.end method
