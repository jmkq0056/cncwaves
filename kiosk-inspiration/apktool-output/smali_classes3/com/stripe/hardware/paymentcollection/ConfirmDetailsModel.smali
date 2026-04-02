.class public final Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;
.super Lcom/stripe/hardware/paymentcollection/ManualEntryModel;
.source "ManualEntryModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u000bH\u00c6\u0003JE\u0010 \u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\u00052\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\u00c6\u0001J\u0013\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u00d6\u0003J\t\u0010%\u001a\u00020\u0007H\u00d6\u0001J\t\u0010&\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0008\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0015\u0010\u0012\u001a\u0004\u0008\u0016\u0010\u0014R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0014\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;",
        "Lcom/stripe/hardware/paymentcollection/ManualEntryModel;",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "maskedPan",
        "",
        "cvvAsteriskCount",
        "",
        "enteredExpiryDate",
        "zipCode",
        "transactionType",
        "Lcom/stripe/hardware/paymentcollection/TransactionType;",
        "(Lcom/stripe/currency/Amount;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/stripe/hardware/paymentcollection/TransactionType;)V",
        "getAmount",
        "()Lcom/stripe/currency/Amount;",
        "getCvvAsteriskCount",
        "()I",
        "getEnteredExpiryDate$annotations",
        "()V",
        "getEnteredExpiryDate",
        "()Ljava/lang/String;",
        "getMaskedPan$annotations",
        "getMaskedPan",
        "getTransactionType",
        "()Lcom/stripe/hardware/paymentcollection/TransactionType;",
        "getZipCode",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
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
.field private final amount:Lcom/stripe/currency/Amount;

.field private final cvvAsteriskCount:I

.field private final enteredExpiryDate:Ljava/lang/String;

.field private final maskedPan:Ljava/lang/String;

.field private final transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

.field private final zipCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/stripe/currency/Amount;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/stripe/hardware/paymentcollection/TransactionType;)V
    .locals 1

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maskedPan"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enteredExpiryDate"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "zipCode"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionType"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, v0}, Lcom/stripe/hardware/paymentcollection/ManualEntryModel;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    iput-object p1, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->amount:Lcom/stripe/currency/Amount;

    .line 21
    iput-object p2, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->maskedPan:Ljava/lang/String;

    .line 23
    iput p3, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->cvvAsteriskCount:I

    .line 24
    iput-object p4, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->enteredExpiryDate:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->zipCode:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;Lcom/stripe/currency/Amount;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/stripe/hardware/paymentcollection/TransactionType;ILjava/lang/Object;)Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->amount:Lcom/stripe/currency/Amount;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->maskedPan:Ljava/lang/String;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget p3, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->cvvAsteriskCount:I

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget-object p4, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->enteredExpiryDate:Ljava/lang/String;

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    iget-object p5, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->zipCode:Ljava/lang/String;

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    iget-object p6, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    :cond_5
    move-object p7, p5

    move-object p8, p6

    move p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->copy(Lcom/stripe/currency/Amount;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/stripe/hardware/paymentcollection/TransactionType;)Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getEnteredExpiryDate$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getMaskedPan$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final component1()Lcom/stripe/currency/Amount;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->amount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->maskedPan:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->cvvAsteriskCount:I

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->enteredExpiryDate:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->zipCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Lcom/stripe/hardware/paymentcollection/TransactionType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    return-object v0
.end method

.method public final copy(Lcom/stripe/currency/Amount;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/stripe/hardware/paymentcollection/TransactionType;)Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;
    .locals 8

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maskedPan"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enteredExpiryDate"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "zipCode"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionType"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;-><init>(Lcom/stripe/currency/Amount;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/stripe/hardware/paymentcollection/TransactionType;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->amount:Lcom/stripe/currency/Amount;

    iget-object v3, p1, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->amount:Lcom/stripe/currency/Amount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->maskedPan:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->maskedPan:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->cvvAsteriskCount:I

    iget v3, p1, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->cvvAsteriskCount:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->enteredExpiryDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->enteredExpiryDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->zipCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->zipCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    iget-object p1, p1, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getAmount()Lcom/stripe/currency/Amount;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->amount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final getCvvAsteriskCount()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->cvvAsteriskCount:I

    return v0
.end method

.method public final getEnteredExpiryDate()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->enteredExpiryDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaskedPan()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->maskedPan:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransactionType()Lcom/stripe/hardware/paymentcollection/TransactionType;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    return-object v0
.end method

.method public final getZipCode()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->zipCode:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->amount:Lcom/stripe/currency/Amount;

    invoke-virtual {v0}, Lcom/stripe/currency/Amount;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->maskedPan:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->cvvAsteriskCount:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->enteredExpiryDate:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->zipCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    invoke-virtual {v1}, Lcom/stripe/hardware/paymentcollection/TransactionType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConfirmDetailsModel(amount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->amount:Lcom/stripe/currency/Amount;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maskedPan=\u2588\u2588, cvvAsteriskCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->cvvAsteriskCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enteredExpiryDate=\u2588\u2588, zipCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->zipCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transactionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
