.class public final Lcom/stripe/hardware/paymentcollection/PinEntryModel;
.super Ljava/lang/Object;
.source "PinEntryModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0019\u0008\u0086\u0008\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0002\u0010\u000eJ\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u000bH\u00c6\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\rH\u00c6\u0003JK\u0010!\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00c6\u0001J\u0013\u0010\"\u001a\u00020\u000b2\u0008\u0010#\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010$\u001a\u00020\u0005H\u00d6\u0001J\t\u0010%\u001a\u00020\u0007H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006&"
    }
    d2 = {
        "Lcom/stripe/hardware/paymentcollection/PinEntryModel;",
        "",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "numberOfAsterisks",
        "",
        "language",
        "",
        "pinEntryRetryReason",
        "Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;",
        "enableCustomerCancellation",
        "",
        "pinEntryAccessibilityData",
        "Lcom/stripe/hardware/paymentcollection/PinEntryAccessibilityData;",
        "(Lcom/stripe/currency/Amount;ILjava/lang/String;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;ZLcom/stripe/hardware/paymentcollection/PinEntryAccessibilityData;)V",
        "getAmount",
        "()Lcom/stripe/currency/Amount;",
        "getEnableCustomerCancellation",
        "()Z",
        "getLanguage",
        "()Ljava/lang/String;",
        "getNumberOfAsterisks",
        "()I",
        "getPinEntryAccessibilityData",
        "()Lcom/stripe/hardware/paymentcollection/PinEntryAccessibilityData;",
        "getPinEntryRetryReason",
        "()Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "other",
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

.field private final enableCustomerCancellation:Z

.field private final language:Ljava/lang/String;

.field private final numberOfAsterisks:I

.field private final pinEntryAccessibilityData:Lcom/stripe/hardware/paymentcollection/PinEntryAccessibilityData;

.field private final pinEntryRetryReason:Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;


# direct methods
.method public constructor <init>(Lcom/stripe/currency/Amount;ILjava/lang/String;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;ZLcom/stripe/hardware/paymentcollection/PinEntryAccessibilityData;)V
    .locals 1

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->amount:Lcom/stripe/currency/Amount;

    .line 18
    iput p2, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->numberOfAsterisks:I

    .line 22
    iput-object p3, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->language:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->pinEntryRetryReason:Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;

    .line 31
    iput-boolean p5, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->enableCustomerCancellation:Z

    .line 36
    iput-object p6, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->pinEntryAccessibilityData:Lcom/stripe/hardware/paymentcollection/PinEntryAccessibilityData;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/hardware/paymentcollection/PinEntryModel;Lcom/stripe/currency/Amount;ILjava/lang/String;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;ZLcom/stripe/hardware/paymentcollection/PinEntryAccessibilityData;ILjava/lang/Object;)Lcom/stripe/hardware/paymentcollection/PinEntryModel;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->amount:Lcom/stripe/currency/Amount;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->numberOfAsterisks:I

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget-object p3, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->language:Ljava/lang/String;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget-object p4, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->pinEntryRetryReason:Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    iget-boolean p5, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->enableCustomerCancellation:Z

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    iget-object p6, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->pinEntryAccessibilityData:Lcom/stripe/hardware/paymentcollection/PinEntryAccessibilityData;

    :cond_5
    move p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->copy(Lcom/stripe/currency/Amount;ILjava/lang/String;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;ZLcom/stripe/hardware/paymentcollection/PinEntryAccessibilityData;)Lcom/stripe/hardware/paymentcollection/PinEntryModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/currency/Amount;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->amount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->numberOfAsterisks:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->language:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->pinEntryRetryReason:Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;

    return-object v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->enableCustomerCancellation:Z

    return v0
.end method

.method public final component6()Lcom/stripe/hardware/paymentcollection/PinEntryAccessibilityData;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->pinEntryAccessibilityData:Lcom/stripe/hardware/paymentcollection/PinEntryAccessibilityData;

    return-object v0
.end method

.method public final copy(Lcom/stripe/currency/Amount;ILjava/lang/String;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;ZLcom/stripe/hardware/paymentcollection/PinEntryAccessibilityData;)Lcom/stripe/hardware/paymentcollection/PinEntryModel;
    .locals 8

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/hardware/paymentcollection/PinEntryModel;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/stripe/hardware/paymentcollection/PinEntryModel;-><init>(Lcom/stripe/currency/Amount;ILjava/lang/String;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;ZLcom/stripe/hardware/paymentcollection/PinEntryAccessibilityData;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/hardware/paymentcollection/PinEntryModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/hardware/paymentcollection/PinEntryModel;

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->amount:Lcom/stripe/currency/Amount;

    iget-object v3, p1, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->amount:Lcom/stripe/currency/Amount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->numberOfAsterisks:I

    iget v3, p1, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->numberOfAsterisks:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->language:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->language:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->pinEntryRetryReason:Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;

    iget-object v3, p1, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->pinEntryRetryReason:Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->enableCustomerCancellation:Z

    iget-boolean v3, p1, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->enableCustomerCancellation:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->pinEntryAccessibilityData:Lcom/stripe/hardware/paymentcollection/PinEntryAccessibilityData;

    iget-object p1, p1, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->pinEntryAccessibilityData:Lcom/stripe/hardware/paymentcollection/PinEntryAccessibilityData;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getAmount()Lcom/stripe/currency/Amount;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->amount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final getEnableCustomerCancellation()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->enableCustomerCancellation:Z

    return v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->language:Ljava/lang/String;

    return-object v0
.end method

.method public final getNumberOfAsterisks()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->numberOfAsterisks:I

    return v0
.end method

.method public final getPinEntryAccessibilityData()Lcom/stripe/hardware/paymentcollection/PinEntryAccessibilityData;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->pinEntryAccessibilityData:Lcom/stripe/hardware/paymentcollection/PinEntryAccessibilityData;

    return-object v0
.end method

.method public final getPinEntryRetryReason()Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->pinEntryRetryReason:Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->amount:Lcom/stripe/currency/Amount;

    invoke-virtual {v0}, Lcom/stripe/currency/Amount;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->numberOfAsterisks:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->language:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->pinEntryRetryReason:Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->enableCustomerCancellation:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->pinEntryAccessibilityData:Lcom/stripe/hardware/paymentcollection/PinEntryAccessibilityData;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/stripe/hardware/paymentcollection/PinEntryAccessibilityData;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PinEntryModel(amount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->amount:Lcom/stripe/currency/Amount;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numberOfAsterisks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->numberOfAsterisks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pinEntryRetryReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->pinEntryRetryReason:Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enableCustomerCancellation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->enableCustomerCancellation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pinEntryAccessibilityData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/PinEntryModel;->pinEntryAccessibilityData:Lcom/stripe/hardware/paymentcollection/PinEntryAccessibilityData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
