.class public abstract Lcom/stripe/paymentcollection/TippingState;
.super Ljava/lang/Object;
.source "TippingState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/paymentcollection/TippingState$Completed;,
        Lcom/stripe/paymentcollection/TippingState$EndState;,
        Lcom/stripe/paymentcollection/TippingState$Ineligible;,
        Lcom/stripe/paymentcollection/TippingState$IntermediateState;,
        Lcom/stripe/paymentcollection/TippingState$SelectionNeeded;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0005\u0003\u0004\u0005\u0006\u0007B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/TippingState;",
        "",
        "()V",
        "Completed",
        "EndState",
        "Ineligible",
        "IntermediateState",
        "SelectionNeeded",
        "Lcom/stripe/paymentcollection/TippingState$EndState;",
        "Lcom/stripe/paymentcollection/TippingState$IntermediateState;",
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
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/paymentcollection/TippingState;-><init>()V

    return-void
.end method
