.class public abstract Lcom/stripe/core/transaction/TransactionStateSummary;
.super Ljava/lang/Object;
.source "TransactionStateSummary.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/transaction/TransactionStateSummary$AccountSelection;,
        Lcom/stripe/core/transaction/TransactionStateSummary$ApplicationSelection;,
        Lcom/stripe/core/transaction/TransactionStateSummary$Basket;,
        Lcom/stripe/core/transaction/TransactionStateSummary$Canceling;,
        Lcom/stripe/core/transaction/TransactionStateSummary$Cancelled;,
        Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;,
        Lcom/stripe/core/transaction/TransactionStateSummary$Collect;,
        Lcom/stripe/core/transaction/TransactionStateSummary$DynamicCurrencyConversionSelection;,
        Lcom/stripe/core/transaction/TransactionStateSummary$Empty;,
        Lcom/stripe/core/transaction/TransactionStateSummary$ManualEntryConfirmDetails;,
        Lcom/stripe/core/transaction/TransactionStateSummary$ManualEntryCvv;,
        Lcom/stripe/core/transaction/TransactionStateSummary$ManualEntryExpiryDate;,
        Lcom/stripe/core/transaction/TransactionStateSummary$ManualEntryPan;,
        Lcom/stripe/core/transaction/TransactionStateSummary$ManualEntryZipCode;,
        Lcom/stripe/core/transaction/TransactionStateSummary$NonCardPaymentMethodActionRequired;,
        Lcom/stripe/core/transaction/TransactionStateSummary$NonCardPaymentMethodLoading;,
        Lcom/stripe/core/transaction/TransactionStateSummary$NonCardPaymentMethodsSelection;,
        Lcom/stripe/core/transaction/TransactionStateSummary$OnMerchantUiStarted;,
        Lcom/stripe/core/transaction/TransactionStateSummary$OnPaymentMethodCollectedForPaymentIntent;,
        Lcom/stripe/core/transaction/TransactionStateSummary$Pin;,
        Lcom/stripe/core/transaction/TransactionStateSummary$Processing;,
        Lcom/stripe/core/transaction/TransactionStateSummary$RecoverableError;,
        Lcom/stripe/core/transaction/TransactionStateSummary$RemoveCard;,
        Lcom/stripe/core/transaction/TransactionStateSummary$Timeout;,
        Lcom/stripe/core/transaction/TransactionStateSummary$TippingSelection;,
        Lcom/stripe/core/transaction/TransactionStateSummary$UnrecoverableError;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u001b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u001a\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001cB\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\u001a\u001d\u001e\u001f !\"#$%&\'()*+,-./0123456\u00a8\u00067"
    }
    d2 = {
        "Lcom/stripe/core/transaction/TransactionStateSummary;",
        "",
        "()V",
        "AccountSelection",
        "ApplicationSelection",
        "Basket",
        "Canceling",
        "Cancelled",
        "ChargeSummary",
        "Collect",
        "DynamicCurrencyConversionSelection",
        "Empty",
        "ManualEntryConfirmDetails",
        "ManualEntryCvv",
        "ManualEntryExpiryDate",
        "ManualEntryPan",
        "ManualEntryZipCode",
        "NonCardPaymentMethodActionRequired",
        "NonCardPaymentMethodLoading",
        "NonCardPaymentMethodsSelection",
        "OnMerchantUiStarted",
        "OnPaymentMethodCollectedForPaymentIntent",
        "Pin",
        "Processing",
        "RecoverableError",
        "RemoveCard",
        "Timeout",
        "TippingSelection",
        "UnrecoverableError",
        "Lcom/stripe/core/transaction/TransactionStateSummary$AccountSelection;",
        "Lcom/stripe/core/transaction/TransactionStateSummary$ApplicationSelection;",
        "Lcom/stripe/core/transaction/TransactionStateSummary$Basket;",
        "Lcom/stripe/core/transaction/TransactionStateSummary$Canceling;",
        "Lcom/stripe/core/transaction/TransactionStateSummary$Cancelled;",
        "Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;",
        "Lcom/stripe/core/transaction/TransactionStateSummary$Collect;",
        "Lcom/stripe/core/transaction/TransactionStateSummary$DynamicCurrencyConversionSelection;",
        "Lcom/stripe/core/transaction/TransactionStateSummary$Empty;",
        "Lcom/stripe/core/transaction/TransactionStateSummary$ManualEntryConfirmDetails;",
        "Lcom/stripe/core/transaction/TransactionStateSummary$ManualEntryCvv;",
        "Lcom/stripe/core/transaction/TransactionStateSummary$ManualEntryExpiryDate;",
        "Lcom/stripe/core/transaction/TransactionStateSummary$ManualEntryPan;",
        "Lcom/stripe/core/transaction/TransactionStateSummary$ManualEntryZipCode;",
        "Lcom/stripe/core/transaction/TransactionStateSummary$NonCardPaymentMethodActionRequired;",
        "Lcom/stripe/core/transaction/TransactionStateSummary$NonCardPaymentMethodLoading;",
        "Lcom/stripe/core/transaction/TransactionStateSummary$NonCardPaymentMethodsSelection;",
        "Lcom/stripe/core/transaction/TransactionStateSummary$OnMerchantUiStarted;",
        "Lcom/stripe/core/transaction/TransactionStateSummary$OnPaymentMethodCollectedForPaymentIntent;",
        "Lcom/stripe/core/transaction/TransactionStateSummary$Pin;",
        "Lcom/stripe/core/transaction/TransactionStateSummary$Processing;",
        "Lcom/stripe/core/transaction/TransactionStateSummary$RecoverableError;",
        "Lcom/stripe/core/transaction/TransactionStateSummary$RemoveCard;",
        "Lcom/stripe/core/transaction/TransactionStateSummary$Timeout;",
        "Lcom/stripe/core/transaction/TransactionStateSummary$TippingSelection;",
        "Lcom/stripe/core/transaction/TransactionStateSummary$UnrecoverableError;",
        "transaction_release"
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
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/core/transaction/TransactionStateSummary;-><init>()V

    return-void
.end method
