.class public interface abstract Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;
.super Ljava/lang/Object;
.source "PaymentEventReceiver.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0003H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH&J\u0008\u0010\n\u001a\u00020\u0003H&J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\rH&J\u0008\u0010\u000e\u001a\u00020\u0003H&J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0011H&J\u0008\u0010\u0012\u001a\u00020\u0003H&J\u0008\u0010\u0013\u001a\u00020\u0003H&J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0016H&J\u0010\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0019H&J(\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u001c2\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u001eH&J\u0016\u0010 \u001a\u00020\u00032\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020#0\"H&J\u0008\u0010$\u001a\u00020\u0003H&J\u0008\u0010%\u001a\u00020\u0003H&J\u0010\u0010&\u001a\u00020\u00032\u0006\u0010\'\u001a\u00020\u001eH&J\u0010\u0010(\u001a\u00020\u00032\u0006\u0010)\u001a\u00020*H&J\u0008\u0010+\u001a\u00020\u0003H&J\u0016\u0010,\u001a\u00020\u00032\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u001e0.H&J\u0008\u0010/\u001a\u00020\u0003H&J\u0010\u00100\u001a\u00020\u00032\u0006\u00101\u001a\u00020\u001eH&J\u0010\u00102\u001a\u00020\u00032\u0006\u00103\u001a\u000204H&J\u0010\u00105\u001a\u00020\u00032\u0006\u00106\u001a\u000207H&J\u0008\u00108\u001a\u00020\u0003H&J\u0010\u00109\u001a\u00020\u00032\u0006\u0010:\u001a\u00020;H&J\u0008\u0010<\u001a\u00020\u0003H&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006=\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;",
        "",
        "onAccessiblePinPadEvent",
        "",
        "accessiblePinPadTouchEvent",
        "Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;",
        "onBatteryCriticallyLow",
        "onCardSwiped",
        "readResult",
        "Lcom/stripe/hardware/magstripe/MagStripeReadResult;",
        "onChipCardInitializationFailed",
        "onContactCardStateUpdate",
        "slotState",
        "Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;",
        "onDeviceMissingEncryptionKeys",
        "onDisplayAdditionalMessage",
        "message",
        "Lcom/stripe/hardware/status/ReaderDisplayMessage;",
        "onEmptyCandidateList",
        "onHardwareTransactionCanceled",
        "onIntermediateTransactionError",
        "error",
        "Lcom/stripe/hardware/emv/IntermediateTransactionError;",
        "onKernelTippingSelectionResult",
        "tipSelectionResult",
        "Lcom/stripe/hardware/tipping/TipSelectionResult;",
        "onPinEntryStatusChange",
        "pinEntryStatus",
        "Lcom/stripe/hardware/paymentcollection/PinEntryStatus;",
        "epb",
        "",
        "ksn",
        "onReaderTypesChanged",
        "readerTypes",
        "",
        "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
        "onReadingCard",
        "onRequestFinalConfirm",
        "onRequestOnlineAuthorisation",
        "authorisationData",
        "onRequestProduceAudioTone",
        "audioAlertType",
        "Lcom/stripe/hardware/status/AudioAlertType;",
        "onRequestSelectAccountType",
        "onRequestSelectApplication",
        "appList",
        "",
        "onResetPaymentInterfaces",
        "onReturnFinalTlvBlob",
        "tlv",
        "onReturnTransactionResult",
        "transactionResult",
        "Lcom/stripe/hardware/emv/TransactionResult$Result;",
        "onSetPinPadButtonsResult",
        "isSuccess",
        "",
        "onShowThankYou",
        "onUpdatePinEntryAsteriskCount",
        "count",
        "",
        "waitForCardPresent",
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
.method public static synthetic onPinEntryStatusChange$default(Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 38
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onPinEntryStatusChange(Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: onPinEntryStatusChange"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract onAccessiblePinPadEvent(Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;)V
.end method

.method public abstract onBatteryCriticallyLow()V
.end method

.method public abstract onCardSwiped(Lcom/stripe/hardware/magstripe/MagStripeReadResult;)V
.end method

.method public abstract onChipCardInitializationFailed()V
.end method

.method public abstract onContactCardStateUpdate(Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;)V
.end method

.method public abstract onDeviceMissingEncryptionKeys()V
.end method

.method public abstract onDisplayAdditionalMessage(Lcom/stripe/hardware/status/ReaderDisplayMessage;)V
.end method

.method public abstract onEmptyCandidateList()V
.end method

.method public abstract onHardwareTransactionCanceled()V
.end method

.method public abstract onIntermediateTransactionError(Lcom/stripe/hardware/emv/IntermediateTransactionError;)V
.end method

.method public abstract onKernelTippingSelectionResult(Lcom/stripe/hardware/tipping/TipSelectionResult;)V
.end method

.method public abstract onPinEntryStatusChange(Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onReaderTypesChanged(Ljava/util/Set;)V
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

.method public abstract onReadingCard()V
.end method

.method public abstract onRequestFinalConfirm()V
.end method

.method public abstract onRequestOnlineAuthorisation(Ljava/lang/String;)V
.end method

.method public abstract onRequestProduceAudioTone(Lcom/stripe/hardware/status/AudioAlertType;)V
.end method

.method public abstract onRequestSelectAccountType()V
.end method

.method public abstract onRequestSelectApplication(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onResetPaymentInterfaces()V
.end method

.method public abstract onReturnFinalTlvBlob(Ljava/lang/String;)V
.end method

.method public abstract onReturnTransactionResult(Lcom/stripe/hardware/emv/TransactionResult$Result;)V
.end method

.method public abstract onSetPinPadButtonsResult(Z)V
.end method

.method public abstract onShowThankYou()V
.end method

.method public abstract onUpdatePinEntryAsteriskCount(I)V
.end method

.method public abstract waitForCardPresent()V
.end method
