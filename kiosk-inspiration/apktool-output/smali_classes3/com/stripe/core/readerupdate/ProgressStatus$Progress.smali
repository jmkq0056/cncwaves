.class public final Lcom/stripe/core/readerupdate/ProgressStatus$Progress;
.super Lcom/stripe/core/readerupdate/ProgressStatus;
.source "ProgressStatus.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/readerupdate/ProgressStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Progress"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/core/readerupdate/ProgressStatus$Progress;",
        "Lcom/stripe/core/readerupdate/ProgressStatus;",
        "value",
        "",
        "(F)V",
        "getValue",
        "()F",
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
        "readerupdate_release"
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
.field private final value:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0}, Lcom/stripe/core/readerupdate/ProgressStatus;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/stripe/core/readerupdate/ProgressStatus$Progress;->value:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/core/readerupdate/ProgressStatus$Progress;FILjava/lang/Object;)Lcom/stripe/core/readerupdate/ProgressStatus$Progress;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/stripe/core/readerupdate/ProgressStatus$Progress;->value:F

    :cond_0
    invoke-virtual {p0, p1}, Lcom/stripe/core/readerupdate/ProgressStatus$Progress;->copy(F)Lcom/stripe/core/readerupdate/ProgressStatus$Progress;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Lcom/stripe/core/readerupdate/ProgressStatus$Progress;->value:F

    return v0
.end method

.method public final copy(F)Lcom/stripe/core/readerupdate/ProgressStatus$Progress;
    .locals 1

    new-instance v0, Lcom/stripe/core/readerupdate/ProgressStatus$Progress;

    invoke-direct {v0, p1}, Lcom/stripe/core/readerupdate/ProgressStatus$Progress;-><init>(F)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/core/readerupdate/ProgressStatus$Progress;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/core/readerupdate/ProgressStatus$Progress;

    iget v1, p0, Lcom/stripe/core/readerupdate/ProgressStatus$Progress;->value:F

    iget p1, p1, Lcom/stripe/core/readerupdate/ProgressStatus$Progress;->value:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getValue()F
    .locals 1

    .line 11
    iget v0, p0, Lcom/stripe/core/readerupdate/ProgressStatus$Progress;->value:F

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/stripe/core/readerupdate/ProgressStatus$Progress;->value:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Progress(value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/stripe/core/readerupdate/ProgressStatus$Progress;->value:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
