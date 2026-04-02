.class public final Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;
.super Ljava/lang/Object;
.source "TapToPayUxConfiguration.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColorScheme"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0001\u001dB%\u0008\u0000\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\'\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003H\u00c6\u0001J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0010H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\u0019\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0010H\u00d6\u0001R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;",
        "Landroid/os/Parcelable;",
        "primary",
        "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;",
        "success",
        "error",
        "(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;)V",
        "getError",
        "()Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;",
        "getPrimary",
        "getSuccess",
        "component1",
        "component2",
        "component3",
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
            "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final error:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

.field private final primary:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

.field private final success:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme$Creator;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;-><init>(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;)V
    .locals 1

    const-string v0, "primary"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "success"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;->primary:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    .line 176
    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;->success:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    .line 177
    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;->error:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 175
    sget-object p1, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color$Default;->INSTANCE:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color$Default;

    check-cast p1, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 176
    sget-object p2, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color$Default;->INSTANCE:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color$Default;

    check-cast p2, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 177
    sget-object p3, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color$Default;->INSTANCE:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color$Default;

    check-cast p3, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    .line 174
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;-><init>(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;->primary:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;->success:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;->error:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;->copy(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;)Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;->primary:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    return-object v0
.end method

.method public final component2()Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;->success:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    return-object v0
.end method

.method public final component3()Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;->error:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    return-object v0
.end method

.method public final copy(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;)Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;
    .locals 1

    const-string v0, "primary"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "success"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;-><init>(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;)V

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
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;->primary:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;->primary:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;->success:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;->success:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;->error:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    iget-object p1, p1, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;->error:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getError()Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;->error:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    return-object v0
.end method

.method public final getPrimary()Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;->primary:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    return-object v0
.end method

.method public final getSuccess()Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;->success:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;->primary:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;->success:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;->error:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ColorScheme(primary="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;->primary:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;->success:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;->error:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

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

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;->primary:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;->success:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;->error:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
