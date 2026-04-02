.class public final Lcom/stripe/core/transaction/TransactionStateSummary$Timeout;
.super Lcom/stripe/core/transaction/TransactionStateSummary;
.source "TransactionStateSummary.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/transaction/TransactionStateSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Timeout"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0015\u0010\u0008\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/core/transaction/TransactionStateSummary$Timeout;",
        "Lcom/stripe/core/transaction/TransactionStateSummary;",
        "details",
        "Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;",
        "(Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;)V",
        "getDetails",
        "()Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;",
        "component1",
        "copy",
        "equals",
        "",
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
.field private final details:Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;


# direct methods
.method public constructor <init>(Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;)V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, v0}, Lcom/stripe/core/transaction/TransactionStateSummary;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/stripe/core/transaction/TransactionStateSummary$Timeout;->details:Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/core/transaction/TransactionStateSummary$Timeout;Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;ILjava/lang/Object;)Lcom/stripe/core/transaction/TransactionStateSummary$Timeout;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/stripe/core/transaction/TransactionStateSummary$Timeout;->details:Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/stripe/core/transaction/TransactionStateSummary$Timeout;->copy(Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;)Lcom/stripe/core/transaction/TransactionStateSummary$Timeout;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionStateSummary$Timeout;->details:Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;

    return-object v0
.end method

.method public final copy(Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;)Lcom/stripe/core/transaction/TransactionStateSummary$Timeout;
    .locals 1

    new-instance v0, Lcom/stripe/core/transaction/TransactionStateSummary$Timeout;

    invoke-direct {v0, p1}, Lcom/stripe/core/transaction/TransactionStateSummary$Timeout;-><init>(Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/core/transaction/TransactionStateSummary$Timeout;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/core/transaction/TransactionStateSummary$Timeout;

    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionStateSummary$Timeout;->details:Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;

    iget-object p1, p1, Lcom/stripe/core/transaction/TransactionStateSummary$Timeout;->details:Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getDetails()Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionStateSummary$Timeout;->details:Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionStateSummary$Timeout;->details:Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Timeout(details="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionStateSummary$Timeout;->details:Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
