.class public final Lkotlinx/datetime/FixedOffsetTimeZone;
.super Lkotlinx/datetime/TimeZone;
.source "TimeZoneJvm.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/datetime/FixedOffsetTimeZone$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0017\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000b8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lkotlinx/datetime/FixedOffsetTimeZone;",
        "Lkotlinx/datetime/TimeZone;",
        "offset",
        "Lkotlinx/datetime/UtcOffset;",
        "(Lkotlinx/datetime/UtcOffset;)V",
        "zoneId",
        "Ljava/time/ZoneId;",
        "(Lkotlinx/datetime/UtcOffset;Ljava/time/ZoneId;)V",
        "getOffset",
        "()Lkotlinx/datetime/UtcOffset;",
        "totalSeconds",
        "",
        "getTotalSeconds$annotations",
        "()V",
        "getTotalSeconds",
        "()I",
        "Companion",
        "kotlinx-datetime"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
    with = Lkotlinx/datetime/serializers/FixedOffsetTimeZoneSerializer;
.end annotation


# static fields
.field public static final Companion:Lkotlinx/datetime/FixedOffsetTimeZone$Companion;


# instance fields
.field private final offset:Lkotlinx/datetime/UtcOffset;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/datetime/FixedOffsetTimeZone$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/datetime/FixedOffsetTimeZone$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/datetime/FixedOffsetTimeZone;->Companion:Lkotlinx/datetime/FixedOffsetTimeZone$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlinx/datetime/UtcOffset;)V
    .locals 1

    const-string v0, "offset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lkotlinx/datetime/UtcOffset;->getZoneOffset$kotlinx_datetime()Ljava/time/ZoneOffset;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneId;

    invoke-direct {p0, p1, v0}, Lkotlinx/datetime/FixedOffsetTimeZone;-><init>(Lkotlinx/datetime/UtcOffset;Ljava/time/ZoneId;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/datetime/UtcOffset;Ljava/time/ZoneId;)V
    .locals 1

    const-string v0, "offset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "zoneId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0, p2}, Lkotlinx/datetime/TimeZone;-><init>(Ljava/time/ZoneId;)V

    iput-object p1, p0, Lkotlinx/datetime/FixedOffsetTimeZone;->offset:Lkotlinx/datetime/UtcOffset;

    return-void
.end method

.method public static synthetic getTotalSeconds$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use offset.totalSeconds"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "offset.totalSeconds"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method


# virtual methods
.method public final getOffset()Lkotlinx/datetime/UtcOffset;
    .locals 1

    .line 68
    iget-object v0, p0, Lkotlinx/datetime/FixedOffsetTimeZone;->offset:Lkotlinx/datetime/UtcOffset;

    return-object v0
.end method

.method public final getTotalSeconds()I
    .locals 1

    .line 73
    iget-object v0, p0, Lkotlinx/datetime/FixedOffsetTimeZone;->offset:Lkotlinx/datetime/UtcOffset;

    invoke-virtual {v0}, Lkotlinx/datetime/UtcOffset;->getTotalSeconds()I

    move-result v0

    return v0
.end method
