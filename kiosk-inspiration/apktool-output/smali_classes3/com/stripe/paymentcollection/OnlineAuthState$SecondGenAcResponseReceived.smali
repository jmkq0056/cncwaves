.class public abstract Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived;
.super Lcom/stripe/paymentcollection/OnlineAuthState;
.source "OnlineAuthState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/paymentcollection/OnlineAuthState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SecondGenAcResponseReceived"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;,
        Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Success;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0002\u0007\u0008B\u000f\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\u0002\t\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived;",
        "Lcom/stripe/paymentcollection/OnlineAuthState;",
        "chargeAttempt",
        "Lcom/stripe/transaction/ChargeAttempt;",
        "(Lcom/stripe/transaction/ChargeAttempt;)V",
        "getChargeAttempt",
        "()Lcom/stripe/transaction/ChargeAttempt;",
        "Failed",
        "Success",
        "Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;",
        "Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Success;",
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


# direct methods
.method private constructor <init>(Lcom/stripe/transaction/ChargeAttempt;)V
    .locals 2

    .line 47
    sget-object v0, Lcom/stripe/paymentcollection/OnlineAuthType;->SECOND_GEN_AC:Lcom/stripe/paymentcollection/OnlineAuthType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/stripe/paymentcollection/OnlineAuthState;-><init>(Lcom/stripe/paymentcollection/OnlineAuthType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 46
    iput-object p1, p0, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived;->chargeAttempt:Lcom/stripe/transaction/ChargeAttempt;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/transaction/ChargeAttempt;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived;-><init>(Lcom/stripe/transaction/ChargeAttempt;)V

    return-void
.end method


# virtual methods
.method public getChargeAttempt()Lcom/stripe/transaction/ChargeAttempt;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived;->chargeAttempt:Lcom/stripe/transaction/ChargeAttempt;

    return-object v0
.end method
