.class public final Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;
.super Ljava/lang/Object;
.source "TapToPayUxConfiguration.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Manual"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0001\u001cB\u0017\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u000fH\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\u0019\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u000fH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;",
        "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone;",
        "indicator",
        "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;",
        "position",
        "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;",
        "(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;)V",
        "getIndicator",
        "()Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;",
        "getPosition",
        "()Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;",
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
        "Builder",
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
            "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final indicator:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;

.field private final position:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual$Creator;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;)V
    .locals 1

    const-string v0, "indicator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;->indicator:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;

    .line 80
    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;->position:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;->indicator:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;->position:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;->copy(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;)Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;->indicator:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;

    return-object v0
.end method

.method public final component2()Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;->position:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;

    return-object v0
.end method

.method public final copy(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;)Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;
    .locals 1

    const-string v0, "indicator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;

    invoke-direct {v0, p1, p2}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;-><init>(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;)V

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
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;->indicator:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;->indicator:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;->position:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;

    iget-object p1, p1, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;->position:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getIndicator()Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;->indicator:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;

    return-object v0
.end method

.method public final getPosition()Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;->position:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;->indicator:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;->position:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Manual(indicator="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;->indicator:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;->position:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;->indicator:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;->position:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
