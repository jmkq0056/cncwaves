.class public final Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;
.super Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived;
.source "OnlineAuthState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Failed"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;",
        "Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived;",
        "reason",
        "Lcom/stripe/paymentcollection/OnlineAuthFailureReason;",
        "chargeAttempt",
        "Lcom/stripe/transaction/ChargeAttempt;",
        "(Lcom/stripe/paymentcollection/OnlineAuthFailureReason;Lcom/stripe/transaction/ChargeAttempt;)V",
        "getChargeAttempt",
        "()Lcom/stripe/transaction/ChargeAttempt;",
        "getReason",
        "()Lcom/stripe/paymentcollection/OnlineAuthFailureReason;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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

.field private final reason:Lcom/stripe/paymentcollection/OnlineAuthFailureReason;


# direct methods
.method public constructor <init>(Lcom/stripe/paymentcollection/OnlineAuthFailureReason;Lcom/stripe/transaction/ChargeAttempt;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chargeAttempt"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p2, v0}, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived;-><init>(Lcom/stripe/transaction/ChargeAttempt;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 53
    iput-object p1, p0, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;->reason:Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    .line 54
    iput-object p2, p0, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;->chargeAttempt:Lcom/stripe/transaction/ChargeAttempt;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;Lcom/stripe/paymentcollection/OnlineAuthFailureReason;Lcom/stripe/transaction/ChargeAttempt;ILjava/lang/Object;)Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;->reason:Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;->chargeAttempt:Lcom/stripe/transaction/ChargeAttempt;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;->copy(Lcom/stripe/paymentcollection/OnlineAuthFailureReason;Lcom/stripe/transaction/ChargeAttempt;)Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/paymentcollection/OnlineAuthFailureReason;
    .locals 1

    iget-object v0, p0, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;->reason:Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    return-object v0
.end method

.method public final component2()Lcom/stripe/transaction/ChargeAttempt;
    .locals 1

    iget-object v0, p0, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;->chargeAttempt:Lcom/stripe/transaction/ChargeAttempt;

    return-object v0
.end method

.method public final copy(Lcom/stripe/paymentcollection/OnlineAuthFailureReason;Lcom/stripe/transaction/ChargeAttempt;)Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chargeAttempt"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;

    invoke-direct {v0, p1, p2}, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;-><init>(Lcom/stripe/paymentcollection/OnlineAuthFailureReason;Lcom/stripe/transaction/ChargeAttempt;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;

    iget-object v1, p0, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;->reason:Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    iget-object v3, p1, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;->reason:Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;->chargeAttempt:Lcom/stripe/transaction/ChargeAttempt;

    iget-object p1, p1, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;->chargeAttempt:Lcom/stripe/transaction/ChargeAttempt;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getChargeAttempt()Lcom/stripe/transaction/ChargeAttempt;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;->chargeAttempt:Lcom/stripe/transaction/ChargeAttempt;

    return-object v0
.end method

.method public final getReason()Lcom/stripe/paymentcollection/OnlineAuthFailureReason;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;->reason:Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;->reason:Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/OnlineAuthFailureReason;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;->chargeAttempt:Lcom/stripe/transaction/ChargeAttempt;

    invoke-virtual {v1}, Lcom/stripe/transaction/ChargeAttempt;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed(reason="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;->reason:Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", chargeAttempt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;->chargeAttempt:Lcom/stripe/transaction/ChargeAttempt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
