.class public abstract Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived;
.super Lcom/stripe/paymentcollection/OnlineAuthState;
.source "OnlineAuthState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/paymentcollection/OnlineAuthState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ConfirmationResponseReceived"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$Failed;,
        Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$NeedSecondGenAc;,
        Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$Success;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0003\u000b\u000c\rB\u0019\u0008\u0004\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u0082\u0001\u0003\u000e\u000f\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived;",
        "Lcom/stripe/paymentcollection/OnlineAuthState;",
        "onlineAuthResponse",
        "",
        "chargeAttempt",
        "Lcom/stripe/transaction/ChargeAttempt;",
        "(Ljava/lang/String;Lcom/stripe/transaction/ChargeAttempt;)V",
        "getChargeAttempt",
        "()Lcom/stripe/transaction/ChargeAttempt;",
        "getOnlineAuthResponse",
        "()Ljava/lang/String;",
        "Failed",
        "NeedSecondGenAc",
        "Success",
        "Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$Failed;",
        "Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$NeedSecondGenAc;",
        "Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$Success;",
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
.field private final chargeAttempt:Lcom/stripe/transaction/ChargeAttempt;

.field private final onlineAuthResponse:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/stripe/transaction/ChargeAttempt;)V
    .locals 2

    .line 17
    sget-object v0, Lcom/stripe/paymentcollection/OnlineAuthType;->CONFIRMATION:Lcom/stripe/paymentcollection/OnlineAuthType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/stripe/paymentcollection/OnlineAuthState;-><init>(Lcom/stripe/paymentcollection/OnlineAuthType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    iput-object p1, p0, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived;->onlineAuthResponse:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived;->chargeAttempt:Lcom/stripe/transaction/ChargeAttempt;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived;-><init>(Ljava/lang/String;Lcom/stripe/transaction/ChargeAttempt;)V

    return-void
.end method


# virtual methods
.method public getChargeAttempt()Lcom/stripe/transaction/ChargeAttempt;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived;->chargeAttempt:Lcom/stripe/transaction/ChargeAttempt;

    return-object v0
.end method

.method public getOnlineAuthResponse()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived;->onlineAuthResponse:Ljava/lang/String;

    return-object v0
.end method
