.class public final Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;
.super Lcom/stripe/hardware/paymentcollection/ManualEntryModel;
.source "ManualEntryModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\tH\u00c6\u0003J3\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u00072\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001J\t\u0010\u001f\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006 "
    }
    d2 = {
        "Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;",
        "Lcom/stripe/hardware/paymentcollection/ManualEntryModel;",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "enteredExpiryDate",
        "",
        "showError",
        "",
        "transactionType",
        "Lcom/stripe/hardware/paymentcollection/TransactionType;",
        "(Lcom/stripe/currency/Amount;Ljava/lang/String;ZLcom/stripe/hardware/paymentcollection/TransactionType;)V",
        "getAmount",
        "()Lcom/stripe/currency/Amount;",
        "getEnteredExpiryDate$annotations",
        "()V",
        "getEnteredExpiryDate",
        "()Ljava/lang/String;",
        "getShowError",
        "()Z",
        "getTransactionType",
        "()Lcom/stripe/hardware/paymentcollection/TransactionType;",
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

.field private final enteredExpiryDate:Ljava/lang/String;

.field private final showError:Z

.field private final transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;


# direct methods
.method public constructor <init>(Lcom/stripe/currency/Amount;Ljava/lang/String;ZLcom/stripe/hardware/paymentcollection/TransactionType;)V
    .locals 1

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, v0}, Lcom/stripe/hardware/paymentcollection/ManualEntryModel;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    iput-object p1, p0, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;->amount:Lcom/stripe/currency/Amount;

    .line 44
    iput-object p2, p0, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;->enteredExpiryDate:Ljava/lang/String;

    .line 46
    iput-boolean p3, p0, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;->showError:Z

    .line 47
    iput-object p4, p0, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;Lcom/stripe/currency/Amount;Ljava/lang/String;ZLcom/stripe/hardware/paymentcollection/TransactionType;ILjava/lang/Object;)Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;->amount:Lcom/stripe/currency/Amount;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;->enteredExpiryDate:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;->showError:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;->copy(Lcom/stripe/currency/Amount;Ljava/lang/String;ZLcom/stripe/hardware/paymentcollection/TransactionType;)Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getEnteredExpiryDate$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final component1()Lcom/stripe/currency/Amount;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;->amount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;->enteredExpiryDate:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;->showError:Z

    return v0
.end method

.method public final component4()Lcom/stripe/hardware/paymentcollection/TransactionType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    return-object v0
.end method

.method public final copy(Lcom/stripe/currency/Amount;Ljava/lang/String;ZLcom/stripe/hardware/paymentcollection/TransactionType;)Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;
    .locals 1

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;-><init>(Lcom/stripe/currency/Amount;Ljava/lang/String;ZLcom/stripe/hardware/paymentcollection/TransactionType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;->amount:Lcom/stripe/currency/Amount;

    iget-object v3, p1, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;->amount:Lcom/stripe/currency/Amount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;->enteredExpiryDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;->enteredExpiryDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;->showError:Z

    iget-boolean v3, p1, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;->showError:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    iget-object p1, p1, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAmount()Lcom/stripe/currency/Amount;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;->amount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final getEnteredExpiryDate()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;->enteredExpiryDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getShowError()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;->showError:Z

    return v0
.end method

.method public final getTransactionType()Lcom/stripe/hardware/paymentcollection/TransactionType;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;->amount:Lcom/stripe/currency/Amount;

    invoke-virtual {v0}, Lcom/stripe/currency/Amount;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;->enteredExpiryDate:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;->showError:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    invoke-virtual {v1}, Lcom/stripe/hardware/paymentcollection/TransactionType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExpiryDateModel(amount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;->amount:Lcom/stripe/currency/Amount;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enteredExpiryDate=\u2588\u2588, showError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;->showError:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transactionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
