.class public final Lcom/stripe/core/transaction/TransactionStateSummary$Processing;
.super Lcom/stripe/core/transaction/TransactionStateSummary;
.source "TransactionStateSummary.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/transaction/TransactionStateSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Processing"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J+\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0005H\u00d6\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/stripe/core/transaction/TransactionStateSummary$Processing;",
        "Lcom/stripe/core/transaction/TransactionStateSummary;",
        "transactionType",
        "Lcom/stripe/hardware/paymentcollection/TransactionType;",
        "language",
        "",
        "amountCharged",
        "Lcom/stripe/currency/Amount;",
        "(Lcom/stripe/hardware/paymentcollection/TransactionType;Ljava/lang/String;Lcom/stripe/currency/Amount;)V",
        "getAmountCharged",
        "()Lcom/stripe/currency/Amount;",
        "getLanguage",
        "()Ljava/lang/String;",
        "getTransactionType",
        "()Lcom/stripe/hardware/paymentcollection/TransactionType;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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
.field private final amountCharged:Lcom/stripe/currency/Amount;

.field private final language:Ljava/lang/String;

.field private final transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;


# direct methods
.method public constructor <init>(Lcom/stripe/hardware/paymentcollection/TransactionType;Ljava/lang/String;Lcom/stripe/currency/Amount;)V
    .locals 1

    const-string v0, "transactionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, v0}, Lcom/stripe/core/transaction/TransactionStateSummary;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 54
    iput-object p1, p0, Lcom/stripe/core/transaction/TransactionStateSummary$Processing;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    .line 55
    iput-object p2, p0, Lcom/stripe/core/transaction/TransactionStateSummary$Processing;->language:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/stripe/core/transaction/TransactionStateSummary$Processing;->amountCharged:Lcom/stripe/currency/Amount;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/core/transaction/TransactionStateSummary$Processing;Lcom/stripe/hardware/paymentcollection/TransactionType;Ljava/lang/String;Lcom/stripe/currency/Amount;ILjava/lang/Object;)Lcom/stripe/core/transaction/TransactionStateSummary$Processing;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/stripe/core/transaction/TransactionStateSummary$Processing;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/stripe/core/transaction/TransactionStateSummary$Processing;->language:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/stripe/core/transaction/TransactionStateSummary$Processing;->amountCharged:Lcom/stripe/currency/Amount;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/core/transaction/TransactionStateSummary$Processing;->copy(Lcom/stripe/hardware/paymentcollection/TransactionType;Ljava/lang/String;Lcom/stripe/currency/Amount;)Lcom/stripe/core/transaction/TransactionStateSummary$Processing;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/hardware/paymentcollection/TransactionType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionStateSummary$Processing;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionStateSummary$Processing;->language:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/stripe/currency/Amount;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionStateSummary$Processing;->amountCharged:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final copy(Lcom/stripe/hardware/paymentcollection/TransactionType;Ljava/lang/String;Lcom/stripe/currency/Amount;)Lcom/stripe/core/transaction/TransactionStateSummary$Processing;
    .locals 1

    const-string v0, "transactionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/core/transaction/TransactionStateSummary$Processing;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/core/transaction/TransactionStateSummary$Processing;-><init>(Lcom/stripe/hardware/paymentcollection/TransactionType;Ljava/lang/String;Lcom/stripe/currency/Amount;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/core/transaction/TransactionStateSummary$Processing;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/core/transaction/TransactionStateSummary$Processing;

    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionStateSummary$Processing;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    iget-object v3, p1, Lcom/stripe/core/transaction/TransactionStateSummary$Processing;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionStateSummary$Processing;->language:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/core/transaction/TransactionStateSummary$Processing;->language:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionStateSummary$Processing;->amountCharged:Lcom/stripe/currency/Amount;

    iget-object p1, p1, Lcom/stripe/core/transaction/TransactionStateSummary$Processing;->amountCharged:Lcom/stripe/currency/Amount;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAmountCharged()Lcom/stripe/currency/Amount;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionStateSummary$Processing;->amountCharged:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionStateSummary$Processing;->language:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransactionType()Lcom/stripe/hardware/paymentcollection/TransactionType;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionStateSummary$Processing;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionStateSummary$Processing;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    invoke-virtual {v0}, Lcom/stripe/hardware/paymentcollection/TransactionType;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionStateSummary$Processing;->language:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionStateSummary$Processing;->amountCharged:Lcom/stripe/currency/Amount;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/stripe/currency/Amount;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Processing(transactionType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionStateSummary$Processing;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionStateSummary$Processing;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", amountCharged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionStateSummary$Processing;->amountCharged:Lcom/stripe/currency/Amount;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
