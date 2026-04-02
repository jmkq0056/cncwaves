.class public abstract Lcom/stripe/paymentcollection/UserInteractionEvent;
.super Lcom/stripe/paymentcollection/PaymentCollectionEvent;
.source "PaymentCollectionEvents.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\u0015\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/UserInteractionEvent;",
        "Lcom/stripe/paymentcollection/PaymentCollectionEvent;",
        "()V",
        "Lcom/stripe/paymentcollection/CardStateUpdateEvent;",
        "Lcom/stripe/paymentcollection/CollectPaymentMethodApiErrorEvent;",
        "Lcom/stripe/paymentcollection/CollectionCancelledEvent;",
        "Lcom/stripe/paymentcollection/CollectionCompleteEvent;",
        "Lcom/stripe/paymentcollection/DisplayCartEvent;",
        "Lcom/stripe/paymentcollection/DisplayRecoverableErrorEvent;",
        "Lcom/stripe/paymentcollection/ManualEntryEvent;",
        "Lcom/stripe/paymentcollection/PresentAccountTypeSelectionEvent;",
        "Lcom/stripe/paymentcollection/PresentApplicationSelectionEvent;",
        "Lcom/stripe/paymentcollection/PresentDynamicCurrencyConversionSelectionEvent;",
        "Lcom/stripe/paymentcollection/PresentInterstitialEvent;",
        "Lcom/stripe/paymentcollection/PresentNonCardPaymentMethodActionRequiredEvent;",
        "Lcom/stripe/paymentcollection/PresentNonCardPaymentMethodLoadingEvent;",
        "Lcom/stripe/paymentcollection/PresentNonCardPaymentMethodsSelectionEvent;",
        "Lcom/stripe/paymentcollection/PresentPaymentMethodEvent;",
        "Lcom/stripe/paymentcollection/PresentPinEntryEvent;",
        "Lcom/stripe/paymentcollection/PresentProcessingEvent;",
        "Lcom/stripe/paymentcollection/PresentRemoveCardEvent;",
        "Lcom/stripe/paymentcollection/SelectNonCardPaymentMethodEvent;",
        "Lcom/stripe/paymentcollection/TimeoutEvent;",
        "Lcom/stripe/paymentcollection/TippingSelectionEvent;",
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
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, v0}, Lcom/stripe/paymentcollection/PaymentCollectionEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/paymentcollection/UserInteractionEvent;-><init>()V

    return-void
.end method
