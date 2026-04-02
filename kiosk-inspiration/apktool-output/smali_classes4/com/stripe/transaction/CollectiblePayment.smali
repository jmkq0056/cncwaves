.class public final Lcom/stripe/transaction/CollectiblePayment;
.super Ljava/lang/Object;
.source "CollectiblePayment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\'\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J+\u0010\u0012\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00072\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/transaction/CollectiblePayment;",
        "",
        "payment",
        "Lcom/stripe/transaction/payment/Payment;",
        "interfaceType",
        "Lcom/stripe/hardware/emv/InterfaceType;",
        "transactionSupportsSca",
        "",
        "(Lcom/stripe/transaction/payment/Payment;Lcom/stripe/hardware/emv/InterfaceType;Z)V",
        "getInterfaceType",
        "()Lcom/stripe/hardware/emv/InterfaceType;",
        "getPayment",
        "()Lcom/stripe/transaction/payment/Payment;",
        "getTransactionSupportsSca",
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
.field private final interfaceType:Lcom/stripe/hardware/emv/InterfaceType;

.field private final payment:Lcom/stripe/transaction/payment/Payment;

.field private final transactionSupportsSca:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/stripe/transaction/CollectiblePayment;-><init>(Lcom/stripe/transaction/payment/Payment;Lcom/stripe/hardware/emv/InterfaceType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/transaction/payment/Payment;Lcom/stripe/hardware/emv/InterfaceType;Z)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/stripe/transaction/CollectiblePayment;->payment:Lcom/stripe/transaction/payment/Payment;

    .line 14
    iput-object p2, p0, Lcom/stripe/transaction/CollectiblePayment;->interfaceType:Lcom/stripe/hardware/emv/InterfaceType;

    .line 15
    iput-boolean p3, p0, Lcom/stripe/transaction/CollectiblePayment;->transactionSupportsSca:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/transaction/payment/Payment;Lcom/stripe/hardware/emv/InterfaceType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    .line 12
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/transaction/CollectiblePayment;-><init>(Lcom/stripe/transaction/payment/Payment;Lcom/stripe/hardware/emv/InterfaceType;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/transaction/CollectiblePayment;Lcom/stripe/transaction/payment/Payment;Lcom/stripe/hardware/emv/InterfaceType;ZILjava/lang/Object;)Lcom/stripe/transaction/CollectiblePayment;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/stripe/transaction/CollectiblePayment;->payment:Lcom/stripe/transaction/payment/Payment;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/stripe/transaction/CollectiblePayment;->interfaceType:Lcom/stripe/hardware/emv/InterfaceType;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/stripe/transaction/CollectiblePayment;->transactionSupportsSca:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/transaction/CollectiblePayment;->copy(Lcom/stripe/transaction/payment/Payment;Lcom/stripe/hardware/emv/InterfaceType;Z)Lcom/stripe/transaction/CollectiblePayment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/transaction/payment/Payment;
    .locals 1

    iget-object v0, p0, Lcom/stripe/transaction/CollectiblePayment;->payment:Lcom/stripe/transaction/payment/Payment;

    return-object v0
.end method

.method public final component2()Lcom/stripe/hardware/emv/InterfaceType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/transaction/CollectiblePayment;->interfaceType:Lcom/stripe/hardware/emv/InterfaceType;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/transaction/CollectiblePayment;->transactionSupportsSca:Z

    return v0
.end method

.method public final copy(Lcom/stripe/transaction/payment/Payment;Lcom/stripe/hardware/emv/InterfaceType;Z)Lcom/stripe/transaction/CollectiblePayment;
    .locals 1

    new-instance v0, Lcom/stripe/transaction/CollectiblePayment;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/transaction/CollectiblePayment;-><init>(Lcom/stripe/transaction/payment/Payment;Lcom/stripe/hardware/emv/InterfaceType;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/transaction/CollectiblePayment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/transaction/CollectiblePayment;

    iget-object v1, p0, Lcom/stripe/transaction/CollectiblePayment;->payment:Lcom/stripe/transaction/payment/Payment;

    iget-object v3, p1, Lcom/stripe/transaction/CollectiblePayment;->payment:Lcom/stripe/transaction/payment/Payment;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/transaction/CollectiblePayment;->interfaceType:Lcom/stripe/hardware/emv/InterfaceType;

    iget-object v3, p1, Lcom/stripe/transaction/CollectiblePayment;->interfaceType:Lcom/stripe/hardware/emv/InterfaceType;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/stripe/transaction/CollectiblePayment;->transactionSupportsSca:Z

    iget-boolean p1, p1, Lcom/stripe/transaction/CollectiblePayment;->transactionSupportsSca:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getInterfaceType()Lcom/stripe/hardware/emv/InterfaceType;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/stripe/transaction/CollectiblePayment;->interfaceType:Lcom/stripe/hardware/emv/InterfaceType;

    return-object v0
.end method

.method public final getPayment()Lcom/stripe/transaction/payment/Payment;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/stripe/transaction/CollectiblePayment;->payment:Lcom/stripe/transaction/payment/Payment;

    return-object v0
.end method

.method public final getTransactionSupportsSca()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/stripe/transaction/CollectiblePayment;->transactionSupportsSca:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/transaction/CollectiblePayment;->payment:Lcom/stripe/transaction/payment/Payment;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/stripe/transaction/payment/Payment;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/transaction/CollectiblePayment;->interfaceType:Lcom/stripe/hardware/emv/InterfaceType;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/stripe/hardware/emv/InterfaceType;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/transaction/CollectiblePayment;->transactionSupportsSca:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CollectiblePayment(payment="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/transaction/CollectiblePayment;->payment:Lcom/stripe/transaction/payment/Payment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", interfaceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/transaction/CollectiblePayment;->interfaceType:Lcom/stripe/hardware/emv/InterfaceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transactionSupportsSca="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/transaction/CollectiblePayment;->transactionSupportsSca:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
