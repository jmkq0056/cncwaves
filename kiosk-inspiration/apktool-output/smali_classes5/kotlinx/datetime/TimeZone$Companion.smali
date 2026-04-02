.class public final Lkotlinx/datetime/TimeZone$Companion;
.super Ljava/lang/Object;
.source "TimeZoneJvm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/datetime/TimeZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\tJ\u0015\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0011H\u0000\u00a2\u0006\u0002\u0008\u0012J\u000f\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0014H\u00c6\u0001R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0015"
    }
    d2 = {
        "Lkotlinx/datetime/TimeZone$Companion;",
        "",
        "()V",
        "UTC",
        "Lkotlinx/datetime/FixedOffsetTimeZone;",
        "getUTC",
        "()Lkotlinx/datetime/FixedOffsetTimeZone;",
        "availableZoneIds",
        "",
        "",
        "getAvailableZoneIds",
        "()Ljava/util/Set;",
        "currentSystemDefault",
        "Lkotlinx/datetime/TimeZone;",
        "of",
        "zoneId",
        "ofZone",
        "Ljava/time/ZoneId;",
        "ofZone$kotlinx_datetime",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/datetime/TimeZone$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final currentSystemDefault()Lkotlinx/datetime/TimeZone;
    .locals 2

    .line 34
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    const-string v1, "systemDefault(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lkotlinx/datetime/TimeZone$Companion;->ofZone$kotlinx_datetime(Ljava/time/ZoneId;)Lkotlinx/datetime/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public final getAvailableZoneIds()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    invoke-static {}, Ljava/time/ZoneId;->getAvailableZoneIds()Ljava/util/Set;

    move-result-object v0

    const-string v1, "getAvailableZoneIds(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getUTC()Lkotlinx/datetime/FixedOffsetTimeZone;
    .locals 1

    .line 35
    invoke-static {}, Lkotlinx/datetime/TimeZone;->access$getUTC$cp()Lkotlinx/datetime/FixedOffsetTimeZone;

    move-result-object v0

    return-object v0
.end method

.method public final of(Ljava/lang/String;)Lkotlinx/datetime/TimeZone;
    .locals 1

    const-string v0, "zoneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    :try_start_0
    invoke-static {p1}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object p1

    const-string v0, "of(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/datetime/TimeZone$Companion;->ofZone$kotlinx_datetime(Ljava/time/ZoneId;)Lkotlinx/datetime/TimeZone;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 40
    instance-of v0, p1, Ljava/time/DateTimeException;

    if-eqz v0, :cond_0

    new-instance v0, Lkotlinx/datetime/IllegalTimeZoneException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Lkotlinx/datetime/IllegalTimeZoneException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 41
    :cond_0
    throw p1
.end method

.method public final ofZone$kotlinx_datetime(Ljava/time/ZoneId;)Lkotlinx/datetime/TimeZone;
    .locals 4

    const-string v0, "zoneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    instance-of v0, p1, Ljava/time/ZoneOffset;

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Lkotlinx/datetime/FixedOffsetTimeZone;

    new-instance v1, Lkotlinx/datetime/UtcOffset;

    check-cast p1, Ljava/time/ZoneOffset;

    invoke-direct {v1, p1}, Lkotlinx/datetime/UtcOffset;-><init>(Ljava/time/ZoneOffset;)V

    invoke-direct {v0, v1}, Lkotlinx/datetime/FixedOffsetTimeZone;-><init>(Lkotlinx/datetime/UtcOffset;)V

    check-cast v0, Lkotlinx/datetime/TimeZone;

    return-object v0

    .line 47
    :cond_0
    invoke-static {p1}, Lkotlinx/datetime/TimeZoneKt__TimeZoneJvmKt;->access$isFixedOffset(Ljava/time/ZoneId;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    new-instance v0, Lkotlinx/datetime/FixedOffsetTimeZone;

    new-instance v1, Lkotlinx/datetime/UtcOffset;

    invoke-virtual {p1}, Ljava/time/ZoneId;->normalized()Ljava/time/ZoneId;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type java.time.ZoneOffset"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/time/ZoneOffset;

    invoke-direct {v1, v2}, Lkotlinx/datetime/UtcOffset;-><init>(Ljava/time/ZoneOffset;)V

    invoke-direct {v0, v1, p1}, Lkotlinx/datetime/FixedOffsetTimeZone;-><init>(Lkotlinx/datetime/UtcOffset;Ljava/time/ZoneId;)V

    check-cast v0, Lkotlinx/datetime/TimeZone;

    return-object v0

    .line 50
    :cond_1
    new-instance v0, Lkotlinx/datetime/TimeZone;

    invoke-direct {v0, p1}, Lkotlinx/datetime/TimeZone;-><init>(Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lkotlinx/datetime/TimeZone;",
            ">;"
        }
    .end annotation

    .line 33
    sget-object v0, Lkotlinx/datetime/serializers/TimeZoneSerializer;->INSTANCE:Lkotlinx/datetime/serializers/TimeZoneSerializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method
