.class public final Lcom/stripe/paymentcollection/TippingState$SelectionNeeded;
.super Lcom/stripe/paymentcollection/TippingState$IntermediateState;
.source "TippingState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/paymentcollection/TippingState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectionNeeded"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/TippingState$SelectionNeeded;",
        "Lcom/stripe/paymentcollection/TippingState$IntermediateState;",
        "()V",
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


# static fields
.field public static final INSTANCE:Lcom/stripe/paymentcollection/TippingState$SelectionNeeded;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/paymentcollection/TippingState$SelectionNeeded;

    invoke-direct {v0}, Lcom/stripe/paymentcollection/TippingState$SelectionNeeded;-><init>()V

    sput-object v0, Lcom/stripe/paymentcollection/TippingState$SelectionNeeded;->INSTANCE:Lcom/stripe/paymentcollection/TippingState$SelectionNeeded;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lcom/stripe/paymentcollection/TippingState$IntermediateState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
