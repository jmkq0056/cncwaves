.class public final Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;
.super Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt;
.source "ChargeAttempt.kt"

# interfaces
.implements Lcom/stripe/transaction/NonCardPaymentMethodCompletedAttempt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeclinedCharge"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\t\u0010\u000e\u001a\u00020\u0004H\u00c6\u0003J\u0013\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0004H\u00d6\u0001R\u001a\u0010\u0006\u001a\u00020\u0007X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;",
        "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt;",
        "Lcom/stripe/transaction/NonCardPaymentMethodCompletedAttempt;",
        "declineCode",
        "",
        "(Ljava/lang/String;)V",
        "completionMethod",
        "Lcom/stripe/transaction/NonCardPaymentMethodCompletionMethod;",
        "getCompletionMethod",
        "()Lcom/stripe/transaction/NonCardPaymentMethodCompletionMethod;",
        "setCompletionMethod",
        "(Lcom/stripe/transaction/NonCardPaymentMethodCompletionMethod;)V",
        "getDeclineCode",
        "()Ljava/lang/String;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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
.field private completionMethod:Lcom/stripe/transaction/NonCardPaymentMethodCompletionMethod;

.field private final declineCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "declineCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, v0}, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;->declineCode:Ljava/lang/String;

    .line 47
    sget-object p1, Lcom/stripe/transaction/NonCardPaymentMethodCompletionMethod;->NOT_APPLICABLE:Lcom/stripe/transaction/NonCardPaymentMethodCompletionMethod;

    iput-object p1, p0, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;->completionMethod:Lcom/stripe/transaction/NonCardPaymentMethodCompletionMethod;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;->declineCode:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;->copy(Ljava/lang/String;)Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;->declineCode:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;)Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;
    .locals 1

    const-string v0, "declineCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;

    invoke-direct {v0, p1}, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;

    iget-object v1, p0, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;->declineCode:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;->declineCode:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getCompletionMethod()Lcom/stripe/transaction/NonCardPaymentMethodCompletionMethod;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;->completionMethod:Lcom/stripe/transaction/NonCardPaymentMethodCompletionMethod;

    return-object v0
.end method

.method public final getDeclineCode()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;->declineCode:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;->declineCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setCompletionMethod(Lcom/stripe/transaction/NonCardPaymentMethodCompletionMethod;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;->completionMethod:Lcom/stripe/transaction/NonCardPaymentMethodCompletionMethod;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeclinedCharge(declineCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;->declineCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
