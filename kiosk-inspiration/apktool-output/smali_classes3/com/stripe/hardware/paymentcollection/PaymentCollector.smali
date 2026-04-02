.class public interface abstract Lcom/stripe/hardware/paymentcollection/PaymentCollector;
.super Ljava/lang/Object;
.source "PaymentCollector.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\'J\u0016\u0010\u0004\u001a\u00020\u00032\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\'J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\rH&J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0013H&J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0016H&J\u0010\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\rH&J\u0008\u0010\u0019\u001a\u00020\u0003H&J\u0008\u0010\u001a\u001a\u00020\u0003H&J\u0016\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u001dH\u00a6@\u00a2\u0006\u0002\u0010\u001eJ\u0018\u0010\u001f\u001a\u00020\u00032\u0008\u0008\u0002\u0010 \u001a\u00020!H\u00a6@\u00a2\u0006\u0002\u0010\"\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006#\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/hardware/paymentcollection/PaymentCollector;",
        "",
        "cancelCollectTipAmount",
        "",
        "checkCardUntilRemoved",
        "readerType",
        "",
        "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
        "collectTipAmount",
        "tipConfigValidationResult",
        "Lcom/stripe/hardware/tipping/TipConfigValidationResult;",
        "handleAuthorisationResponseData",
        "tlvBlob",
        "",
        "handleFinalConfirmationRequest",
        "confirm",
        "",
        "selectAccountType",
        "accountType",
        "Lcom/stripe/hardware/emv/AccountType;",
        "selectApplication",
        "index",
        "",
        "selectLanguage",
        "language",
        "setPinEntryButtons",
        "startPinEntry",
        "startReader",
        "configuration",
        "Lcom/stripe/hardware/ReaderConfiguration;",
        "(Lcom/stripe/hardware/ReaderConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "stopReader",
        "phase",
        "Lcom/stripe/hardware/emv/CancellationPhase;",
        "(Lcom/stripe/hardware/emv/CancellationPhase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public static synthetic stopReader$default(Lcom/stripe/hardware/paymentcollection/PaymentCollector;Lcom/stripe/hardware/emv/CancellationPhase;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 22
    sget-object p1, Lcom/stripe/hardware/emv/CancellationPhase;->COLLECTION:Lcom/stripe/hardware/emv/CancellationPhase;

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/stripe/hardware/paymentcollection/PaymentCollector;->stopReader(Lcom/stripe/hardware/emv/CancellationPhase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: stopReader"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract cancelCollectTipAmount()V
    .annotation runtime Lcom/stripe/jvmcore/dagger/BluetoothUsbPinPadReaders;
    .end annotation
.end method

.method public checkCardUntilRemoved(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "readerType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract collectTipAmount(Lcom/stripe/hardware/tipping/TipConfigValidationResult;)V
    .annotation runtime Lcom/stripe/jvmcore/dagger/BluetoothUsbPinPadReaders;
    .end annotation
.end method

.method public abstract handleAuthorisationResponseData(Ljava/lang/String;)V
.end method

.method public abstract handleFinalConfirmationRequest(Z)V
.end method

.method public abstract selectAccountType(Lcom/stripe/hardware/emv/AccountType;)V
.end method

.method public abstract selectApplication(I)V
.end method

.method public abstract selectLanguage(Ljava/lang/String;)V
.end method

.method public abstract setPinEntryButtons()V
.end method

.method public abstract startPinEntry()V
.end method

.method public abstract startReader(Lcom/stripe/hardware/ReaderConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/ReaderConfiguration;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract stopReader(Lcom/stripe/hardware/emv/CancellationPhase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/emv/CancellationPhase;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
