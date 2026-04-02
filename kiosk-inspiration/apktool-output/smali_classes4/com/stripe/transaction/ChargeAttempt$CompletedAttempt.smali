.class public abstract Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt;
.super Lcom/stripe/transaction/ChargeAttempt;
.source "ChargeAttempt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/transaction/ChargeAttempt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CompletedAttempt"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$AlreadyRefunded;,
        Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;,
        Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedRefund;,
        Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$InvalidCollectedData;,
        Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulCharge;,
        Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulCollectedData;,
        Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulNonCardCharge;,
        Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulRefund;,
        Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulReusableCard;,
        Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulSetupIntent;,
        Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownChargeResult;,
        Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownRefundResult;,
        Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownReusableCardResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\r\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000fB\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\u000e\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt;",
        "Lcom/stripe/transaction/ChargeAttempt;",
        "()V",
        "AlreadyRefunded",
        "DeclinedCharge",
        "DeclinedRefund",
        "InvalidCollectedData",
        "SuccessfulCharge",
        "SuccessfulCollectedData",
        "SuccessfulNonCardCharge",
        "SuccessfulRefund",
        "SuccessfulReusableCard",
        "SuccessfulSetupIntent",
        "UnknownChargeResult",
        "UnknownRefundResult",
        "UnknownReusableCardResult",
        "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$AlreadyRefunded;",
        "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;",
        "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedRefund;",
        "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$InvalidCollectedData;",
        "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulCharge;",
        "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulCollectedData;",
        "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulNonCardCharge;",
        "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulRefund;",
        "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulReusableCard;",
        "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulSetupIntent;",
        "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownChargeResult;",
        "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownRefundResult;",
        "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownReusableCardResult;",
        "Lcom/stripe/transaction/ChargeAttempt$IncompleteAttempt;",
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

    .line 14
    invoke-direct {p0, v0}, Lcom/stripe/transaction/ChargeAttempt;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt;-><init>()V

    return-void
.end method
