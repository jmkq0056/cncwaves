.class public final Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;
.super Lcom/stripe/core/transaction/TransactionStateSummary;
.source "TransactionStateSummary.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/transaction/TransactionStateSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChargeSummary"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J3\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00052\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000b\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;",
        "Lcom/stripe/core/transaction/TransactionStateSummary;",
        "model",
        "Lcom/stripe/transaction/ChargeAttempt;",
        "updateDisplay",
        "",
        "paymentMethodType",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
        "alreadyCompleted",
        "(Lcom/stripe/transaction/ChargeAttempt;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;Z)V",
        "getAlreadyCompleted",
        "()Z",
        "getModel",
        "()Lcom/stripe/transaction/ChargeAttempt;",
        "getPaymentMethodType",
        "()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
        "getUpdateDisplay",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "transaction_release"
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
.field private final alreadyCompleted:Z

.field private final model:Lcom/stripe/transaction/ChargeAttempt;

.field private final paymentMethodType:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

.field private final updateDisplay:Z


# direct methods
.method public constructor <init>(Lcom/stripe/transaction/ChargeAttempt;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;Z)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, v0}, Lcom/stripe/core/transaction/TransactionStateSummary;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 95
    iput-object p1, p0, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;->model:Lcom/stripe/transaction/ChargeAttempt;

    .line 98
    iput-boolean p2, p0, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;->updateDisplay:Z

    .line 99
    iput-object p3, p0, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;->paymentMethodType:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    .line 101
    iput-boolean p4, p0, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;->alreadyCompleted:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/transaction/ChargeAttempt;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 94
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;-><init>(Lcom/stripe/transaction/ChargeAttempt;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;Lcom/stripe/transaction/ChargeAttempt;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZILjava/lang/Object;)Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;->model:Lcom/stripe/transaction/ChargeAttempt;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-boolean p2, p0, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;->updateDisplay:Z

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;->paymentMethodType:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;->alreadyCompleted:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;->copy(Lcom/stripe/transaction/ChargeAttempt;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;Z)Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/transaction/ChargeAttempt;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;->model:Lcom/stripe/transaction/ChargeAttempt;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;->updateDisplay:Z

    return v0
.end method

.method public final component3()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;->paymentMethodType:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;->alreadyCompleted:Z

    return v0
.end method

.method public final copy(Lcom/stripe/transaction/ChargeAttempt;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;Z)Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;-><init>(Lcom/stripe/transaction/ChargeAttempt;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;

    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;->model:Lcom/stripe/transaction/ChargeAttempt;

    iget-object v3, p1, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;->model:Lcom/stripe/transaction/ChargeAttempt;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;->updateDisplay:Z

    iget-boolean v3, p1, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;->updateDisplay:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;->paymentMethodType:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    iget-object v3, p1, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;->paymentMethodType:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;->alreadyCompleted:Z

    iget-boolean p1, p1, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;->alreadyCompleted:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAlreadyCompleted()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;->alreadyCompleted:Z

    return v0
.end method

.method public final getModel()Lcom/stripe/transaction/ChargeAttempt;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;->model:Lcom/stripe/transaction/ChargeAttempt;

    return-object v0
.end method

.method public final getPaymentMethodType()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;->paymentMethodType:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    return-object v0
.end method

.method public final getUpdateDisplay()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;->updateDisplay:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;->model:Lcom/stripe/transaction/ChargeAttempt;

    invoke-virtual {v0}, Lcom/stripe/transaction/ChargeAttempt;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;->updateDisplay:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;->paymentMethodType:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;->alreadyCompleted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChargeSummary(model="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;->model:Lcom/stripe/transaction/ChargeAttempt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updateDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;->updateDisplay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paymentMethodType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;->paymentMethodType:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alreadyCompleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;->alreadyCompleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
