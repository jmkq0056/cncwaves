.class public abstract Lcom/stripe/paymentcollection/AutomationEvent;
.super Lcom/stripe/paymentcollection/PaymentCollectionEvent;
.source "PaymentCollectionEvents.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\u0005\u0003\u0004\u0005\u0006\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/AutomationEvent;",
        "Lcom/stripe/paymentcollection/PaymentCollectionEvent;",
        "()V",
        "Lcom/stripe/paymentcollection/AcknowledgeInterfaceResetEvent;",
        "Lcom/stripe/paymentcollection/AutoSelectApplicationEvent;",
        "Lcom/stripe/paymentcollection/AutoSelectLanguageEvent;",
        "Lcom/stripe/paymentcollection/ClearMagStripeStateEvent;",
        "Lcom/stripe/paymentcollection/ManualEntryCollectionResultEvent;",
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

    .line 382
    invoke-direct {p0, v0}, Lcom/stripe/paymentcollection/PaymentCollectionEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/paymentcollection/AutomationEvent;-><init>()V

    return-void
.end method
