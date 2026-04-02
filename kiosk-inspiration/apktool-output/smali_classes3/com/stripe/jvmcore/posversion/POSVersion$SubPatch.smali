.class public final Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;
.super Ljava/lang/Object;
.source "POSVersion.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/posversion/POSVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubPatch"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0011\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0000H\u0086\u0002J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0005H\u00c6\u0003J\u001f\u0010\u000f\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0003H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;",
        "",
        "prefix",
        "",
        "suffix",
        "",
        "(Ljava/lang/String;I)V",
        "getPrefix",
        "()Ljava/lang/String;",
        "getSuffix",
        "()I",
        "compareTo",
        "other",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "hashCode",
        "toString",
        "posversion"
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
.field private final prefix:Ljava/lang/String;

.field private final suffix:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;->prefix:Ljava/lang/String;

    .line 11
    iput p2, p0, Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;->suffix:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;Ljava/lang/String;IILjava/lang/Object;)Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;->prefix:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;->suffix:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;->copy(Ljava/lang/String;I)Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final compareTo(Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;)I
    .locals 2

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;->prefix:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v1, p1, Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 22
    :cond_0
    iget-object v1, p1, Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;->prefix:Ljava/lang/String;

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;->prefix:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;->prefix:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 24
    :cond_2
    iget v0, p0, Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;->suffix:I

    iget p1, p1, Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;->suffix:I

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p1

    return p1
.end method

.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;->suffix:I

    return v0
.end method

.method public final copy(Ljava/lang/String;I)Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;
    .locals 1

    new-instance v0, Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;

    invoke-direct {v0, p1, p2}, Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;

    iget-object v1, p0, Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;->prefix:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;->prefix:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;->suffix:I

    iget p1, p1, Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;->suffix:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public final getSuffix()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;->suffix:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;->prefix:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;->suffix:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SubPatch(prefix="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", suffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;->suffix:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
