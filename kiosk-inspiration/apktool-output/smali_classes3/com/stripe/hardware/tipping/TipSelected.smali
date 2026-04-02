.class public final Lcom/stripe/hardware/tipping/TipSelected;
.super Ljava/lang/Object;
.source "TipSelectionResult.kt"

# interfaces
.implements Lcom/stripe/hardware/tipping/TipSelectionResult;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/hardware/tipping/TipSelected;",
        "Lcom/stripe/hardware/tipping/TipSelectionResult;",
        "tipsAmount",
        "",
        "bbposSdkTipSelectionType",
        "Lcom/stripe/hardware/tipping/BbposSdkTipSelectionType;",
        "(JLcom/stripe/hardware/tipping/BbposSdkTipSelectionType;)V",
        "getBbposSdkTipSelectionType",
        "()Lcom/stripe/hardware/tipping/BbposSdkTipSelectionType;",
        "getTipsAmount",
        "()J",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
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
.field private final bbposSdkTipSelectionType:Lcom/stripe/hardware/tipping/BbposSdkTipSelectionType;

.field private final tipsAmount:J


# direct methods
.method public constructor <init>(JLcom/stripe/hardware/tipping/BbposSdkTipSelectionType;)V
    .locals 1

    const-string v0, "bbposSdkTipSelectionType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide p1, p0, Lcom/stripe/hardware/tipping/TipSelected;->tipsAmount:J

    .line 13
    iput-object p3, p0, Lcom/stripe/hardware/tipping/TipSelected;->bbposSdkTipSelectionType:Lcom/stripe/hardware/tipping/BbposSdkTipSelectionType;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/hardware/tipping/TipSelected;JLcom/stripe/hardware/tipping/BbposSdkTipSelectionType;ILjava/lang/Object;)Lcom/stripe/hardware/tipping/TipSelected;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-wide p1, p0, Lcom/stripe/hardware/tipping/TipSelected;->tipsAmount:J

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-object p3, p0, Lcom/stripe/hardware/tipping/TipSelected;->bbposSdkTipSelectionType:Lcom/stripe/hardware/tipping/BbposSdkTipSelectionType;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/hardware/tipping/TipSelected;->copy(JLcom/stripe/hardware/tipping/BbposSdkTipSelectionType;)Lcom/stripe/hardware/tipping/TipSelected;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/stripe/hardware/tipping/TipSelected;->tipsAmount:J

    return-wide v0
.end method

.method public final component2()Lcom/stripe/hardware/tipping/BbposSdkTipSelectionType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/tipping/TipSelected;->bbposSdkTipSelectionType:Lcom/stripe/hardware/tipping/BbposSdkTipSelectionType;

    return-object v0
.end method

.method public final copy(JLcom/stripe/hardware/tipping/BbposSdkTipSelectionType;)Lcom/stripe/hardware/tipping/TipSelected;
    .locals 1

    const-string v0, "bbposSdkTipSelectionType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/hardware/tipping/TipSelected;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/hardware/tipping/TipSelected;-><init>(JLcom/stripe/hardware/tipping/BbposSdkTipSelectionType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/hardware/tipping/TipSelected;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/hardware/tipping/TipSelected;

    iget-wide v3, p0, Lcom/stripe/hardware/tipping/TipSelected;->tipsAmount:J

    iget-wide v5, p1, Lcom/stripe/hardware/tipping/TipSelected;->tipsAmount:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/hardware/tipping/TipSelected;->bbposSdkTipSelectionType:Lcom/stripe/hardware/tipping/BbposSdkTipSelectionType;

    iget-object p1, p1, Lcom/stripe/hardware/tipping/TipSelected;->bbposSdkTipSelectionType:Lcom/stripe/hardware/tipping/BbposSdkTipSelectionType;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getBbposSdkTipSelectionType()Lcom/stripe/hardware/tipping/BbposSdkTipSelectionType;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/stripe/hardware/tipping/TipSelected;->bbposSdkTipSelectionType:Lcom/stripe/hardware/tipping/BbposSdkTipSelectionType;

    return-object v0
.end method

.method public final getTipsAmount()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/stripe/hardware/tipping/TipSelected;->tipsAmount:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/stripe/hardware/tipping/TipSelected;->tipsAmount:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/tipping/TipSelected;->bbposSdkTipSelectionType:Lcom/stripe/hardware/tipping/BbposSdkTipSelectionType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TipSelected(tipsAmount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/stripe/hardware/tipping/TipSelected;->tipsAmount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bbposSdkTipSelectionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/hardware/tipping/TipSelected;->bbposSdkTipSelectionType:Lcom/stripe/hardware/tipping/BbposSdkTipSelectionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
