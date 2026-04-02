.class public final Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationStarted;
.super Lcom/stripe/paymentcollection/OnlineAuthState;
.source "OnlineAuthState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/paymentcollection/OnlineAuthState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfirmationStarted"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationStarted;",
        "Lcom/stripe/paymentcollection/OnlineAuthState;",
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
.field public static final INSTANCE:Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationStarted;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationStarted;

    invoke-direct {v0}, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationStarted;-><init>()V

    sput-object v0, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationStarted;->INSTANCE:Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationStarted;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 8
    sget-object v0, Lcom/stripe/paymentcollection/OnlineAuthType;->CONFIRMATION:Lcom/stripe/paymentcollection/OnlineAuthType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/stripe/paymentcollection/OnlineAuthState;-><init>(Lcom/stripe/paymentcollection/OnlineAuthType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
