.class public final Lcom/stripe/hardware/tipping/FixedAmountTips;
.super Lcom/stripe/hardware/tipping/TipConfigValidationResult;
.source "TipConfigValidationResult.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0005H\u00c6\u0003J\u000f\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\tH\u00c6\u0003J7\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\t2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0011\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/stripe/hardware/tipping/FixedAmountTips;",
        "Lcom/stripe/hardware/tipping/TipConfigValidationResult;",
        "currency",
        "Lcom/stripe/currency/CurrencyCode;",
        "amount",
        "",
        "amountTips",
        "",
        "isSmartTip",
        "",
        "(Lcom/stripe/currency/CurrencyCode;JLjava/util/List;Z)V",
        "getAmount",
        "()J",
        "getAmountTips",
        "()Ljava/util/List;",
        "getCurrency",
        "()Lcom/stripe/currency/CurrencyCode;",
        "()Z",
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
.field private final amount:J

.field private final amountTips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final currency:Lcom/stripe/currency/CurrencyCode;

.field private final isSmartTip:Z


# direct methods
.method public constructor <init>(Lcom/stripe/currency/CurrencyCode;JLjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/currency/CurrencyCode;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "currency"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amountTips"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0}, Lcom/stripe/hardware/tipping/TipConfigValidationResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    iput-object p1, p0, Lcom/stripe/hardware/tipping/FixedAmountTips;->currency:Lcom/stripe/currency/CurrencyCode;

    .line 29
    iput-wide p2, p0, Lcom/stripe/hardware/tipping/FixedAmountTips;->amount:J

    .line 30
    iput-object p4, p0, Lcom/stripe/hardware/tipping/FixedAmountTips;->amountTips:Ljava/util/List;

    .line 31
    iput-boolean p5, p0, Lcom/stripe/hardware/tipping/FixedAmountTips;->isSmartTip:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/hardware/tipping/FixedAmountTips;Lcom/stripe/currency/CurrencyCode;JLjava/util/List;ZILjava/lang/Object;)Lcom/stripe/hardware/tipping/FixedAmountTips;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/stripe/hardware/tipping/FixedAmountTips;->currency:Lcom/stripe/currency/CurrencyCode;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-wide p2, p0, Lcom/stripe/hardware/tipping/FixedAmountTips;->amount:J

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p4, p0, Lcom/stripe/hardware/tipping/FixedAmountTips;->amountTips:Ljava/util/List;

    :cond_2
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_3

    iget-boolean p5, p0, Lcom/stripe/hardware/tipping/FixedAmountTips;->isSmartTip:Z

    :cond_3
    move-object p6, p4

    move p7, p5

    move-wide p4, p2

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/stripe/hardware/tipping/FixedAmountTips;->copy(Lcom/stripe/currency/CurrencyCode;JLjava/util/List;Z)Lcom/stripe/hardware/tipping/FixedAmountTips;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/currency/CurrencyCode;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/tipping/FixedAmountTips;->currency:Lcom/stripe/currency/CurrencyCode;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/stripe/hardware/tipping/FixedAmountTips;->amount:J

    return-wide v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/hardware/tipping/FixedAmountTips;->amountTips:Ljava/util/List;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/hardware/tipping/FixedAmountTips;->isSmartTip:Z

    return v0
.end method

.method public final copy(Lcom/stripe/currency/CurrencyCode;JLjava/util/List;Z)Lcom/stripe/hardware/tipping/FixedAmountTips;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/currency/CurrencyCode;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Lcom/stripe/hardware/tipping/FixedAmountTips;"
        }
    .end annotation

    const-string v0, "currency"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amountTips"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/hardware/tipping/FixedAmountTips;

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/stripe/hardware/tipping/FixedAmountTips;-><init>(Lcom/stripe/currency/CurrencyCode;JLjava/util/List;Z)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/hardware/tipping/FixedAmountTips;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/hardware/tipping/FixedAmountTips;

    iget-object v1, p0, Lcom/stripe/hardware/tipping/FixedAmountTips;->currency:Lcom/stripe/currency/CurrencyCode;

    iget-object v3, p1, Lcom/stripe/hardware/tipping/FixedAmountTips;->currency:Lcom/stripe/currency/CurrencyCode;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/stripe/hardware/tipping/FixedAmountTips;->amount:J

    iget-wide v5, p1, Lcom/stripe/hardware/tipping/FixedAmountTips;->amount:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/hardware/tipping/FixedAmountTips;->amountTips:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/hardware/tipping/FixedAmountTips;->amountTips:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/stripe/hardware/tipping/FixedAmountTips;->isSmartTip:Z

    iget-boolean p1, p1, Lcom/stripe/hardware/tipping/FixedAmountTips;->isSmartTip:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAmount()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/stripe/hardware/tipping/FixedAmountTips;->amount:J

    return-wide v0
.end method

.method public final getAmountTips()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/stripe/hardware/tipping/FixedAmountTips;->amountTips:Ljava/util/List;

    return-object v0
.end method

.method public final getCurrency()Lcom/stripe/currency/CurrencyCode;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/stripe/hardware/tipping/FixedAmountTips;->currency:Lcom/stripe/currency/CurrencyCode;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/hardware/tipping/FixedAmountTips;->currency:Lcom/stripe/currency/CurrencyCode;

    invoke-virtual {v0}, Lcom/stripe/currency/CurrencyCode;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/stripe/hardware/tipping/FixedAmountTips;->amount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/tipping/FixedAmountTips;->amountTips:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/hardware/tipping/FixedAmountTips;->isSmartTip:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isSmartTip()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/stripe/hardware/tipping/FixedAmountTips;->isSmartTip:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FixedAmountTips(currency="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/hardware/tipping/FixedAmountTips;->currency:Lcom/stripe/currency/CurrencyCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/stripe/hardware/tipping/FixedAmountTips;->amount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", amountTips="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/hardware/tipping/FixedAmountTips;->amountTips:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSmartTip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/hardware/tipping/FixedAmountTips;->isSmartTip:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
