.class public final Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;
.super Ljava/lang/Object;
.source "TippingSelectionModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0006H\u00c6\u0003J\'\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00062\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;",
        "",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "eligibleAmount",
        "enableCustomerCancellation",
        "",
        "(Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Z)V",
        "getAmount",
        "()Lcom/stripe/currency/Amount;",
        "getEligibleAmount",
        "getEnableCustomerCancellation",
        "()Z",
        "component1",
        "component2",
        "component3",
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

.field private final eligibleAmount:Lcom/stripe/currency/Amount;

.field private final enableCustomerCancellation:Z


# direct methods
.method public constructor <init>(Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Z)V
    .locals 1

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eligibleAmount"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;->amount:Lcom/stripe/currency/Amount;

    .line 15
    iput-object p2, p0, Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;->eligibleAmount:Lcom/stripe/currency/Amount;

    .line 20
    iput-boolean p3, p0, Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;->enableCustomerCancellation:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;ZILjava/lang/Object;)Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;->amount:Lcom/stripe/currency/Amount;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;->eligibleAmount:Lcom/stripe/currency/Amount;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;->enableCustomerCancellation:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;->copy(Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Z)Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/currency/Amount;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;->amount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final component2()Lcom/stripe/currency/Amount;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;->eligibleAmount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;->enableCustomerCancellation:Z

    return v0
.end method

.method public final copy(Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Z)Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;
    .locals 1

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eligibleAmount"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;-><init>(Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;->amount:Lcom/stripe/currency/Amount;

    iget-object v3, p1, Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;->amount:Lcom/stripe/currency/Amount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;->eligibleAmount:Lcom/stripe/currency/Amount;

    iget-object v3, p1, Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;->eligibleAmount:Lcom/stripe/currency/Amount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;->enableCustomerCancellation:Z

    iget-boolean p1, p1, Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;->enableCustomerCancellation:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAmount()Lcom/stripe/currency/Amount;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;->amount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final getEligibleAmount()Lcom/stripe/currency/Amount;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;->eligibleAmount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final getEnableCustomerCancellation()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;->enableCustomerCancellation:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;->amount:Lcom/stripe/currency/Amount;

    invoke-virtual {v0}, Lcom/stripe/currency/Amount;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;->eligibleAmount:Lcom/stripe/currency/Amount;

    invoke-virtual {v1}, Lcom/stripe/currency/Amount;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;->enableCustomerCancellation:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TippingSelectionModel(amount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;->amount:Lcom/stripe/currency/Amount;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eligibleAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;->eligibleAmount:Lcom/stripe/currency/Amount;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enableCustomerCancellation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;->enableCustomerCancellation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
