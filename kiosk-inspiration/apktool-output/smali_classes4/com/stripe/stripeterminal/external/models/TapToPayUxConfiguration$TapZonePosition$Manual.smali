.class public final Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;
.super Ljava/lang/Object;
.source "TapToPayUxConfiguration.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Manual"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapToPayUxConfiguration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapToPayUxConfiguration.kt\ncom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,257:1\n1#2:258\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\n\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\t\u0010\u000c\u001a\u00020\rH\u00d6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\rH\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\u0019\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\rH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;",
        "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;",
        "xBias",
        "",
        "yBias",
        "(FF)V",
        "getXBias",
        "()F",
        "getYBias",
        "component1",
        "component2",
        "copy",
        "describeContents",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
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


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final xBias:F

.field private final yBias:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual$Creator;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 6

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput p1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;->xBias:F

    iput p2, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;->yBias:F

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpg-double p1, v2, v0

    if-gtz p1, :cond_1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, v0, v4

    if-gtz p1, :cond_1

    float-to-double p1, p2

    cmpg-double v0, v2, p1

    if-gtz v0, :cond_0

    cmpg-double p1, p1, v4

    if-gtz p1, :cond_0

    return-void

    .line 162
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "yBias must be between 0 and 1"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 161
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "xBias must be between 0 and 1"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;FFILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;->xBias:F

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;->yBias:F

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;->copy(FF)Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;->xBias:F

    return v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;->yBias:F

    return v0
.end method

.method public final copy(FF)Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;

    invoke-direct {v0, p1, p2}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;-><init>(FF)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;

    iget v1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;->xBias:F

    iget v3, p1, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;->xBias:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;->yBias:F

    iget p1, p1, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;->yBias:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getXBias()F
    .locals 1

    .line 159
    iget v0, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;->xBias:F

    return v0
.end method

.method public final getYBias()F
    .locals 1

    .line 159
    iget v0, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;->yBias:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;->xBias:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;->yBias:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Manual(xBias="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;->xBias:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", yBias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;->yBias:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;->xBias:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;->yBias:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
