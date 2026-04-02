.class public final Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;
.super Ljava/lang/Object;
.source "CollectionCompletedModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u000cJ\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\tH\u00c6\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J=\u0010\u001c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bH\u00c6\u0001J\u0013\u0010\u001d\u001a\u00020\t2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001J\t\u0010!\u001a\u00020\"H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006#"
    }
    d2 = {
        "Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;",
        "",
        "transactionType",
        "Lcom/stripe/hardware/paymentcollection/TransactionType;",
        "result",
        "Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "skipUiReset",
        "",
        "timeoutResultDetails",
        "Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;",
        "(Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;)V",
        "getAmount",
        "()Lcom/stripe/currency/Amount;",
        "getResult",
        "()Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;",
        "getSkipUiReset",
        "()Z",
        "getTimeoutResultDetails",
        "()Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;",
        "getTransactionType",
        "()Lcom/stripe/hardware/paymentcollection/TransactionType;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
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
.field private final amount:Lcom/stripe/currency/Amount;

.field private final result:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

.field private final skipUiReset:Z

.field private final timeoutResultDetails:Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;

.field private final transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;


# direct methods
.method public constructor <init>(Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;)V
    .locals 1

    const-string v0, "transactionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    .line 15
    iput-object p2, p0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->result:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    .line 16
    iput-object p3, p0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->amount:Lcom/stripe/currency/Amount;

    .line 17
    iput-boolean p4, p0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->skipUiReset:Z

    .line 18
    iput-object p5, p0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->timeoutResultDetails:Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;-><init>(Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;ILjava/lang/Object;)Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->result:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->amount:Lcom/stripe/currency/Amount;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget-boolean p4, p0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->skipUiReset:Z

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-object p5, p0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->timeoutResultDetails:Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;

    :cond_4
    move p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->copy(Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;)Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/hardware/paymentcollection/TransactionType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    return-object v0
.end method

.method public final component2()Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->result:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    return-object v0
.end method

.method public final component3()Lcom/stripe/currency/Amount;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->amount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->skipUiReset:Z

    return v0
.end method

.method public final component5()Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->timeoutResultDetails:Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;

    return-object v0
.end method

.method public final copy(Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;)Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;
    .locals 7

    const-string v0, "transactionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;-><init>(Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    iget-object v3, p1, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->result:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    iget-object v3, p1, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->result:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->amount:Lcom/stripe/currency/Amount;

    iget-object v3, p1, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->amount:Lcom/stripe/currency/Amount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->skipUiReset:Z

    iget-boolean v3, p1, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->skipUiReset:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->timeoutResultDetails:Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;

    iget-object p1, p1, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->timeoutResultDetails:Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAmount()Lcom/stripe/currency/Amount;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->amount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final getResult()Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->result:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    return-object v0
.end method

.method public final getSkipUiReset()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->skipUiReset:Z

    return v0
.end method

.method public final getTimeoutResultDetails()Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->timeoutResultDetails:Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;

    return-object v0
.end method

.method public final getTransactionType()Lcom/stripe/hardware/paymentcollection/TransactionType;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    invoke-virtual {v0}, Lcom/stripe/hardware/paymentcollection/TransactionType;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->result:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    invoke-virtual {v1}, Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->amount:Lcom/stripe/currency/Amount;

    invoke-virtual {v1}, Lcom/stripe/currency/Amount;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->skipUiReset:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->timeoutResultDetails:Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CollectionCompletedModel(transactionType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->result:Lcom/stripe/hardware/paymentcollection/PaymentCollectionResultType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->amount:Lcom/stripe/currency/Amount;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skipUiReset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->skipUiReset:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeoutResultDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/CollectionCompletedModel;->timeoutResultDetails:Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
