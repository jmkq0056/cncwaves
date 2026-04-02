.class public abstract Lcom/stripe/paymentcollection/OnlineAuthState;
.super Ljava/lang/Object;
.source "OnlineAuthState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/paymentcollection/OnlineAuthState$Cancelled;,
        Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived;,
        Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationStarted;,
        Lcom/stripe/paymentcollection/OnlineAuthState$ReadyToStartConfirmation;,
        Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived;,
        Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcStarted;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0006\u0007\u0008\t\n\u000b\u000cB\u000f\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\u0006\r\u000e\u000f\u0010\u0011\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/OnlineAuthState;",
        "",
        "onlineAuthType",
        "Lcom/stripe/paymentcollection/OnlineAuthType;",
        "(Lcom/stripe/paymentcollection/OnlineAuthType;)V",
        "getOnlineAuthType",
        "()Lcom/stripe/paymentcollection/OnlineAuthType;",
        "Cancelled",
        "ConfirmationResponseReceived",
        "ConfirmationStarted",
        "ReadyToStartConfirmation",
        "SecondGenAcResponseReceived",
        "SecondGenAcStarted",
        "Lcom/stripe/paymentcollection/OnlineAuthState$Cancelled;",
        "Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived;",
        "Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationStarted;",
        "Lcom/stripe/paymentcollection/OnlineAuthState$ReadyToStartConfirmation;",
        "Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived;",
        "Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcStarted;",
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


# instance fields
.field private final onlineAuthType:Lcom/stripe/paymentcollection/OnlineAuthType;


# direct methods
.method private constructor <init>(Lcom/stripe/paymentcollection/OnlineAuthType;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/paymentcollection/OnlineAuthState;->onlineAuthType:Lcom/stripe/paymentcollection/OnlineAuthType;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/paymentcollection/OnlineAuthType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/OnlineAuthState;-><init>(Lcom/stripe/paymentcollection/OnlineAuthType;)V

    return-void
.end method


# virtual methods
.method public getOnlineAuthType()Lcom/stripe/paymentcollection/OnlineAuthType;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/stripe/paymentcollection/OnlineAuthState;->onlineAuthType:Lcom/stripe/paymentcollection/OnlineAuthType;

    return-object v0
.end method
