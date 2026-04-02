.class public interface abstract Lcom/stripe/paymentcollection/PaymentCollectionListener;
.super Ljava/lang/Object;
.source "PaymentCollectionListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c0\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0003H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000cH&J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH&J\u0012\u0010\u0010\u001a\u00020\u00032\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H&J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0015H&J$\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH&J*\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u001c2\u0018\u0010\u001d\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020 0\u001f\u0012\u0004\u0012\u00020\u00030\u001eH&J*\u0010!\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\"2\u0018\u0010\u001d\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020#0\u001f\u0012\u0004\u0012\u00020\u00030\u001eH&J\u0010\u0010$\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020%H&J\u0010\u0010&\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\'H&J*\u0010(\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020)2\u0018\u0010\u001d\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u001f\u0012\u0004\u0012\u00020\u00030\u001eH&J*\u0010*\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020+2\u0018\u0010\u001d\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u001f\u0012\u0004\u0012\u00020\u00030\u001eH&J*\u0010,\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020-2\u0018\u0010\u001d\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u001f\u0012\u0004\u0012\u00020\u00030\u001eH&J*\u0010.\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020/2\u0018\u0010\u001d\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002000\u001f\u0012\u0004\u0012\u00020\u00030\u001eH&J*\u00101\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u0002022\u0018\u0010\u001d\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002030\u001f\u0012\u0004\u0012\u00020\u00030\u001eH&J\"\u00104\u001a\u00020\u00032\u0018\u0010\u001d\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u001f\u0012\u0004\u0012\u00020\u00030\u001eH&J*\u00105\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u0002062\u0018\u0010\u001d\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002070\u001f\u0012\u0004\u0012\u00020\u00030\u001eH&J*\u00108\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u0002092\u0018\u0010:\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u001f\u0012\u0004\u0012\u00020\u00030\u001eH&J\u0010\u0010;\u001a\u00020\u00032\u0006\u0010<\u001a\u00020=H&J*\u0010>\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020?2\u0018\u0010\u001d\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020@0\u001f\u0012\u0004\u0012\u00020\u00030\u001eH&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006A\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/PaymentCollectionListener;",
        "",
        "onAdditionalReaderDisplayMessage",
        "",
        "message",
        "Lcom/stripe/hardware/status/ReaderDisplayMessage;",
        "onCancelled",
        "onCardStateUpdate",
        "cardState",
        "Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;",
        "onChargeSummary",
        "chargeAttempt",
        "Lcom/stripe/transaction/ChargeAttempt;",
        "onCollectionComplete",
        "model",
        "Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;",
        "onInterstitial",
        "language",
        "",
        "onNonCardPaymentMethodLoading",
        "paymentMethodType",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
        "onProcessing",
        "transactionType",
        "Lcom/stripe/hardware/paymentcollection/TransactionType;",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "onRequestAccountTypeSelection",
        "Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;",
        "onCompletion",
        "Lkotlin/Function1;",
        "Lcom/stripe/hardware/paymentcollection/Disposition;",
        "Lcom/stripe/hardware/emv/AccountType;",
        "onRequestApplicationSelection",
        "Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel;",
        "",
        "onRequestCardRemoval",
        "Lcom/stripe/hardware/paymentcollection/RemoveCardModel;",
        "onRequestDisplayCart",
        "Lcom/stripe/hardware/paymentcollection/DisplayCartModel;",
        "onRequestDisplayNonCardPaymentMethodActionRequired",
        "Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;",
        "onRequestDisplayNonCardPaymentMethodsSelection",
        "Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodSelectionModel;",
        "onRequestDisplayRecoverableError",
        "Lcom/stripe/hardware/paymentcollection/RecoverableErrorModel;",
        "onRequestDynamicCurrencySelection",
        "Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;",
        "",
        "onRequestManualEntry",
        "Lcom/stripe/hardware/paymentcollection/ManualEntryModel;",
        "Lcom/stripe/hardware/paymentcollection/ManualEntryResult;",
        "onRequestMerchantUiFinished",
        "onRequestPaymentMethodCollection",
        "Lcom/stripe/hardware/paymentcollection/CollectionModel;",
        "Lcom/stripe/hardware/paymentcollection/PaymentMethodCollectionResult;",
        "onRequestPinEntry",
        "Lcom/stripe/hardware/paymentcollection/PinEntryModel;",
        "onCancelation",
        "onRequestProduceAudioTone",
        "audioAlertType",
        "Lcom/stripe/hardware/status/AudioAlertType;",
        "onRequestTippingSelection",
        "Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;",
        "Lcom/stripe/hardware/paymentcollection/TippingSelectionResult;",
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
.method public abstract onAdditionalReaderDisplayMessage(Lcom/stripe/hardware/status/ReaderDisplayMessage;)V
.end method

.method public abstract onCancelled()V
.end method

.method public abstract onCardStateUpdate(Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;)V
.end method

.method public abstract onChargeSummary(Lcom/stripe/transaction/ChargeAttempt;)V
.end method

.method public abstract onCollectionComplete(Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;)V
.end method

.method public abstract onInterstitial(Ljava/lang/String;)V
.end method

.method public abstract onNonCardPaymentMethodLoading(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;)V
.end method

.method public abstract onProcessing(Lcom/stripe/hardware/paymentcollection/TransactionType;Ljava/lang/String;Lcom/stripe/currency/Amount;)V
.end method

.method public abstract onRequestAccountTypeSelection(Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/hardware/paymentcollection/Disposition<",
            "Lcom/stripe/hardware/emv/AccountType;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRequestApplicationSelection(Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/hardware/paymentcollection/Disposition<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRequestCardRemoval(Lcom/stripe/hardware/paymentcollection/RemoveCardModel;)V
.end method

.method public abstract onRequestDisplayCart(Lcom/stripe/hardware/paymentcollection/DisplayCartModel;)V
.end method

.method public abstract onRequestDisplayNonCardPaymentMethodActionRequired(Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/hardware/paymentcollection/Disposition<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRequestDisplayNonCardPaymentMethodsSelection(Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodSelectionModel;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodSelectionModel;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/hardware/paymentcollection/Disposition<",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRequestDisplayRecoverableError(Lcom/stripe/hardware/paymentcollection/RecoverableErrorModel;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/paymentcollection/RecoverableErrorModel;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/hardware/paymentcollection/Disposition<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRequestDynamicCurrencySelection(Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/hardware/paymentcollection/Disposition<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRequestManualEntry(Lcom/stripe/hardware/paymentcollection/ManualEntryModel;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/paymentcollection/ManualEntryModel;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/hardware/paymentcollection/Disposition<",
            "Lcom/stripe/hardware/paymentcollection/ManualEntryResult;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRequestMerchantUiFinished(Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/hardware/paymentcollection/Disposition<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRequestPaymentMethodCollection(Lcom/stripe/hardware/paymentcollection/CollectionModel;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/paymentcollection/CollectionModel;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/hardware/paymentcollection/Disposition<",
            "Lcom/stripe/hardware/paymentcollection/PaymentMethodCollectionResult;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRequestPinEntry(Lcom/stripe/hardware/paymentcollection/PinEntryModel;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/paymentcollection/PinEntryModel;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/hardware/paymentcollection/Disposition<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRequestProduceAudioTone(Lcom/stripe/hardware/status/AudioAlertType;)V
.end method

.method public abstract onRequestTippingSelection(Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/hardware/paymentcollection/Disposition<",
            "Lcom/stripe/hardware/paymentcollection/TippingSelectionResult;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method
