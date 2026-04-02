.class public final Lcom/stripe/jvmcore/posversion/POSVersion;
.super Ljava/lang/Object;
.source "POSVersion.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/posversion/POSVersion$Companion;,
        Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001b\u001cB)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0011\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0000H\u0086\u0002J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J3\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/stripe/jvmcore/posversion/POSVersion;",
        "",
        "major",
        "",
        "minor",
        "patch",
        "subPatch",
        "Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;",
        "(IIILcom/stripe/jvmcore/posversion/POSVersion$SubPatch;)V",
        "getMajor",
        "()I",
        "getMinor",
        "getPatch",
        "getSubPatch",
        "()Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;",
        "compareTo",
        "other",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "hashCode",
        "toString",
        "",
        "Companion",
        "SubPatch",
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


# static fields
.field public static final Companion:Lcom/stripe/jvmcore/posversion/POSVersion$Companion;

.field private static final versionRegex:Lkotlin/text/Regex;


# instance fields
.field private final major:I

.field private final minor:I

.field private final patch:I

.field private final subPatch:Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/jvmcore/posversion/POSVersion$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/jvmcore/posversion/POSVersion$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/jvmcore/posversion/POSVersion;->Companion:Lcom/stripe/jvmcore/posversion/POSVersion$Companion;

    .line 30
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "(\\d+)\\.(\\d+)\\.(\\d+)(-([a-z]*)(\\d+))?"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/stripe/jvmcore/posversion/POSVersion;->versionRegex:Lkotlin/text/Regex;

    return-void
.end method

.method public constructor <init>(IIILcom/stripe/jvmcore/posversion/POSVersion$SubPatch;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/stripe/jvmcore/posversion/POSVersion;->major:I

    .line 5
    iput p2, p0, Lcom/stripe/jvmcore/posversion/POSVersion;->minor:I

    .line 6
    iput p3, p0, Lcom/stripe/jvmcore/posversion/POSVersion;->patch:I

    .line 7
    iput-object p4, p0, Lcom/stripe/jvmcore/posversion/POSVersion;->subPatch:Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;

    return-void
.end method

.method public synthetic constructor <init>(IIILcom/stripe/jvmcore/posversion/POSVersion$SubPatch;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/jvmcore/posversion/POSVersion;-><init>(IIILcom/stripe/jvmcore/posversion/POSVersion$SubPatch;)V

    return-void
.end method

.method public static final synthetic access$getVersionRegex$cp()Lkotlin/text/Regex;
    .locals 1

    .line 3
    sget-object v0, Lcom/stripe/jvmcore/posversion/POSVersion;->versionRegex:Lkotlin/text/Regex;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/stripe/jvmcore/posversion/POSVersion;IIILcom/stripe/jvmcore/posversion/POSVersion$SubPatch;ILjava/lang/Object;)Lcom/stripe/jvmcore/posversion/POSVersion;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/stripe/jvmcore/posversion/POSVersion;->major:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/stripe/jvmcore/posversion/POSVersion;->minor:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/stripe/jvmcore/posversion/POSVersion;->patch:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/stripe/jvmcore/posversion/POSVersion;->subPatch:Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/jvmcore/posversion/POSVersion;->copy(IIILcom/stripe/jvmcore/posversion/POSVersion$SubPatch;)Lcom/stripe/jvmcore/posversion/POSVersion;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final compareTo(Lcom/stripe/jvmcore/posversion/POSVersion;)I
    .locals 2

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget v0, p1, Lcom/stripe/jvmcore/posversion/POSVersion;->major:I

    iget v1, p0, Lcom/stripe/jvmcore/posversion/POSVersion;->major:I

    if-eq v0, v1, :cond_0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p1

    return p1

    .line 54
    :cond_0
    iget v0, p1, Lcom/stripe/jvmcore/posversion/POSVersion;->minor:I

    iget v1, p0, Lcom/stripe/jvmcore/posversion/POSVersion;->minor:I

    if-eq v0, v1, :cond_1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p1

    return p1

    .line 55
    :cond_1
    iget v0, p1, Lcom/stripe/jvmcore/posversion/POSVersion;->patch:I

    iget v1, p0, Lcom/stripe/jvmcore/posversion/POSVersion;->patch:I

    if-eq v0, v1, :cond_2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p1

    return p1

    .line 60
    :cond_2
    iget-object p1, p1, Lcom/stripe/jvmcore/posversion/POSVersion;->subPatch:Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/stripe/jvmcore/posversion/POSVersion;->subPatch:Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;->compareTo(Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;)I

    move-result p1

    return p1

    :cond_3
    if-eqz p1, :cond_4

    .line 61
    iget-object v0, p0, Lcom/stripe/jvmcore/posversion/POSVersion;->subPatch:Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;

    if-nez v0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-nez p1, :cond_5

    .line 62
    iget-object p1, p0, Lcom/stripe/jvmcore/posversion/POSVersion;->subPatch:Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;

    if-eqz p1, :cond_5

    const/4 p1, -0x1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/stripe/jvmcore/posversion/POSVersion;->major:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/stripe/jvmcore/posversion/POSVersion;->minor:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/stripe/jvmcore/posversion/POSVersion;->patch:I

    return v0
.end method

.method public final component4()Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/posversion/POSVersion;->subPatch:Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;

    return-object v0
.end method

.method public final copy(IIILcom/stripe/jvmcore/posversion/POSVersion$SubPatch;)Lcom/stripe/jvmcore/posversion/POSVersion;
    .locals 1

    new-instance v0, Lcom/stripe/jvmcore/posversion/POSVersion;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/jvmcore/posversion/POSVersion;-><init>(IIILcom/stripe/jvmcore/posversion/POSVersion$SubPatch;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/jvmcore/posversion/POSVersion;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/jvmcore/posversion/POSVersion;

    iget v1, p0, Lcom/stripe/jvmcore/posversion/POSVersion;->major:I

    iget v3, p1, Lcom/stripe/jvmcore/posversion/POSVersion;->major:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/stripe/jvmcore/posversion/POSVersion;->minor:I

    iget v3, p1, Lcom/stripe/jvmcore/posversion/POSVersion;->minor:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/stripe/jvmcore/posversion/POSVersion;->patch:I

    iget v3, p1, Lcom/stripe/jvmcore/posversion/POSVersion;->patch:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/jvmcore/posversion/POSVersion;->subPatch:Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;

    iget-object p1, p1, Lcom/stripe/jvmcore/posversion/POSVersion;->subPatch:Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getMajor()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/stripe/jvmcore/posversion/POSVersion;->major:I

    return v0
.end method

.method public final getMinor()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/stripe/jvmcore/posversion/POSVersion;->minor:I

    return v0
.end method

.method public final getPatch()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/stripe/jvmcore/posversion/POSVersion;->patch:I

    return v0
.end method

.method public final getSubPatch()Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/stripe/jvmcore/posversion/POSVersion;->subPatch:Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/stripe/jvmcore/posversion/POSVersion;->major:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/stripe/jvmcore/posversion/POSVersion;->minor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/stripe/jvmcore/posversion/POSVersion;->patch:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/jvmcore/posversion/POSVersion;->subPatch:Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "POSVersion(major="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/stripe/jvmcore/posversion/POSVersion;->major:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stripe/jvmcore/posversion/POSVersion;->minor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", patch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stripe/jvmcore/posversion/POSVersion;->patch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subPatch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/jvmcore/posversion/POSVersion;->subPatch:Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
