.class public final Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;
.super Ljava/lang/Object;
.source "PaymentMethodCollectionType.kt"

# interfaces
.implements Lcom/stripe/transaction/PaymentMethodCollectionType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/transaction/PaymentMethodCollectionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Passthrough"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001\u0019B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00052\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u0014\u0010\u0007\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;",
        "Lcom/stripe/transaction/PaymentMethodCollectionType;",
        "passthroughType",
        "Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;",
        "enableCustomerCancellation",
        "",
        "(Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;Z)V",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "getAmount",
        "()Lcom/stripe/currency/Amount;",
        "getEnableCustomerCancellation",
        "()Z",
        "getPassthroughType",
        "()Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "PassthroughType",
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

.field private final passthroughType:Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;


# direct methods
.method public constructor <init>(Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;Z)V
    .locals 2

    const-string v0, "passthroughType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;->passthroughType:Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;

    .line 116
    iput-boolean p2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;->enableCustomerCancellation:Z

    .line 121
    new-instance p1, Lcom/stripe/currency/Amount;

    const-wide/16 v0, 0x0

    sget-object p2, Lcom/stripe/currency/CurrencyCode;->USD:Lcom/stripe/currency/CurrencyCode;

    invoke-direct {p1, v0, v1, p2}, Lcom/stripe/currency/Amount;-><init>(JLcom/stripe/currency/CurrencyCode;)V

    iput-object p1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;->amount:Lcom/stripe/currency/Amount;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;ZILjava/lang/Object;)Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;->passthroughType:Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;->enableCustomerCancellation:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;->copy(Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;Z)Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;->passthroughType:Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;->enableCustomerCancellation:Z

    return v0
.end method

.method public final copy(Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;Z)Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;
    .locals 1

    const-string v0, "passthroughType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;

    invoke-direct {v0, p1, p2}, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;-><init>(Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;

    iget-object v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;->passthroughType:Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;

    iget-object v3, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;->passthroughType:Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;->enableCustomerCancellation:Z

    iget-boolean p1, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;->enableCustomerCancellation:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getAmount()Lcom/stripe/currency/Amount;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;->amount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public getEnableCustomerCancellation()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;->enableCustomerCancellation:Z

    return v0
.end method

.method public final getPassthroughType()Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;->passthroughType:Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;->passthroughType:Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;

    invoke-virtual {v0}, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;->enableCustomerCancellation:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Passthrough(passthroughType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;->passthroughType:Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enableCustomerCancellation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;->enableCustomerCancellation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
