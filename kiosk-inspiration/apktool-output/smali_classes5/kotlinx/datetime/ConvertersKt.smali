.class public final Lkotlinx/datetime/ConvertersKt;
.super Ljava/lang/Object;
.source "Converters.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0005\u001a\n\u0010\u0006\u001a\u00020\u0007*\u00020\u0008\u001a\n\u0010\t\u001a\u00020\n*\u00020\u000b\u001a\n\u0010\u000c\u001a\u00020\r*\u00020\u000e\u001a\n\u0010\u000f\u001a\u00020\u0010*\u00020\u0011\u001a\n\u0010\u0012\u001a\u00020\u0013*\u00020\u0014\u001a\n\u0010\u0012\u001a\u00020\u0013*\u00020\u0015\u001a\n\u0010\u0016\u001a\u00020\u000e*\u00020\r\u001a\n\u0010\u0017\u001a\u00020\u0014*\u00020\u0013\u001a\n\u0010\u0018\u001a\u00020\u0002*\u00020\u0001\u001a\n\u0010\u0019\u001a\u00020\u0005*\u00020\u0004\u001a\n\u0010\u001a\u001a\u00020\u0008*\u00020\u0007\u001a\n\u0010\u001b\u001a\u00020\u000b*\u00020\n\u001a\n\u0010\u001c\u001a\u00020\u0011*\u00020\u0010\u001a\n\u0010\u001d\u001a\u00020\u0015*\u00020\u0013\u001a\u000c\u0010\u001e\u001a\u00020\u0014*\u00020\u0013H\u0007\u00a8\u0006\u001f"
    }
    d2 = {
        "toJavaInstant",
        "Ljava/time/Instant;",
        "Lkotlinx/datetime/Instant;",
        "toJavaLocalDate",
        "Ljava/time/LocalDate;",
        "Lkotlinx/datetime/LocalDate;",
        "toJavaLocalDateTime",
        "Ljava/time/LocalDateTime;",
        "Lkotlinx/datetime/LocalDateTime;",
        "toJavaLocalTime",
        "Ljava/time/LocalTime;",
        "Lkotlinx/datetime/LocalTime;",
        "toJavaPeriod",
        "Ljava/time/Period;",
        "Lkotlinx/datetime/DatePeriod;",
        "toJavaZoneId",
        "Ljava/time/ZoneId;",
        "Lkotlinx/datetime/TimeZone;",
        "toJavaZoneOffset",
        "Ljava/time/ZoneOffset;",
        "Lkotlinx/datetime/FixedOffsetTimeZone;",
        "Lkotlinx/datetime/UtcOffset;",
        "toKotlinDatePeriod",
        "toKotlinFixedOffsetTimeZone",
        "toKotlinInstant",
        "toKotlinLocalDate",
        "toKotlinLocalDateTime",
        "toKotlinLocalTime",
        "toKotlinTimeZone",
        "toKotlinUtcOffset",
        "toKotlinZoneOffset",
        "kotlinx-datetime"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toJavaInstant(Lkotlinx/datetime/Instant;)Ljava/time/Instant;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lkotlinx/datetime/Instant;->getValue$kotlinx_datetime()Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static final toJavaLocalDate(Lkotlinx/datetime/LocalDate;)Ljava/time/LocalDate;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lkotlinx/datetime/LocalDate;->getValue$kotlinx_datetime()Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static final toJavaLocalDateTime(Lkotlinx/datetime/LocalDateTime;)Ljava/time/LocalDateTime;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lkotlinx/datetime/LocalDateTime;->getValue$kotlinx_datetime()Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static final toJavaLocalTime(Lkotlinx/datetime/LocalTime;)Ljava/time/LocalTime;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lkotlinx/datetime/LocalTime;->getValue$kotlinx_datetime()Ljava/time/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method public static final toJavaPeriod(Lkotlinx/datetime/DatePeriod;)Ljava/time/Period;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lkotlinx/datetime/DatePeriod;->getYears()I

    move-result v0

    invoke-virtual {p0}, Lkotlinx/datetime/DatePeriod;->getMonths()I

    move-result v1

    invoke-virtual {p0}, Lkotlinx/datetime/DatePeriod;->getDays()I

    move-result p0

    invoke-static {v0, v1, p0}, Ljava/time/Period;->of(III)Ljava/time/Period;

    move-result-object p0

    const-string v0, "of(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toJavaZoneId(Lkotlinx/datetime/TimeZone;)Ljava/time/ZoneId;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lkotlinx/datetime/TimeZone;->getZoneId$kotlinx_datetime()Ljava/time/ZoneId;

    move-result-object p0

    return-object p0
.end method

.method public static final toJavaZoneOffset(Lkotlinx/datetime/FixedOffsetTimeZone;)Ljava/time/ZoneOffset;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lkotlinx/datetime/FixedOffsetTimeZone;->getOffset()Lkotlinx/datetime/UtcOffset;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/datetime/UtcOffset;->getZoneOffset$kotlinx_datetime()Ljava/time/ZoneOffset;

    move-result-object p0

    return-object p0
.end method

.method public static final toJavaZoneOffset(Lkotlinx/datetime/UtcOffset;)Ljava/time/ZoneOffset;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lkotlinx/datetime/UtcOffset;->getZoneOffset$kotlinx_datetime()Ljava/time/ZoneOffset;

    move-result-object p0

    return-object p0
.end method

.method public static final toKotlinDatePeriod(Ljava/time/Period;)Lkotlinx/datetime/DatePeriod;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lkotlinx/datetime/DatePeriod;

    invoke-virtual {p0}, Ljava/time/Period;->getYears()I

    move-result v1

    invoke-virtual {p0}, Ljava/time/Period;->getMonths()I

    move-result v2

    invoke-virtual {p0}, Ljava/time/Period;->getDays()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lkotlinx/datetime/DatePeriod;-><init>(III)V

    return-object v0
.end method

.method public static final toKotlinFixedOffsetTimeZone(Ljava/time/ZoneOffset;)Lkotlinx/datetime/FixedOffsetTimeZone;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    new-instance v0, Lkotlinx/datetime/FixedOffsetTimeZone;

    new-instance v1, Lkotlinx/datetime/UtcOffset;

    invoke-direct {v1, p0}, Lkotlinx/datetime/UtcOffset;-><init>(Ljava/time/ZoneOffset;)V

    invoke-direct {v0, v1}, Lkotlinx/datetime/FixedOffsetTimeZone;-><init>(Lkotlinx/datetime/UtcOffset;)V

    return-object v0
.end method

.method public static final toKotlinInstant(Ljava/time/Instant;)Lkotlinx/datetime/Instant;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lkotlinx/datetime/Instant;

    invoke-direct {v0, p0}, Lkotlinx/datetime/Instant;-><init>(Ljava/time/Instant;)V

    return-object v0
.end method

.method public static final toKotlinLocalDate(Ljava/time/LocalDate;)Lkotlinx/datetime/LocalDate;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lkotlinx/datetime/LocalDate;

    invoke-direct {v0, p0}, Lkotlinx/datetime/LocalDate;-><init>(Ljava/time/LocalDate;)V

    return-object v0
.end method

.method public static final toKotlinLocalDateTime(Ljava/time/LocalDateTime;)Lkotlinx/datetime/LocalDateTime;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lkotlinx/datetime/LocalDateTime;

    invoke-direct {v0, p0}, Lkotlinx/datetime/LocalDateTime;-><init>(Ljava/time/LocalDateTime;)V

    return-object v0
.end method

.method public static final toKotlinLocalTime(Ljava/time/LocalTime;)Lkotlinx/datetime/LocalTime;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lkotlinx/datetime/LocalTime;

    invoke-direct {v0, p0}, Lkotlinx/datetime/LocalTime;-><init>(Ljava/time/LocalTime;)V

    return-object v0
.end method

.method public static final toKotlinTimeZone(Ljava/time/ZoneId;)Lkotlinx/datetime/TimeZone;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lkotlinx/datetime/TimeZone;->Companion:Lkotlinx/datetime/TimeZone$Companion;

    invoke-virtual {v0, p0}, Lkotlinx/datetime/TimeZone$Companion;->ofZone$kotlinx_datetime(Ljava/time/ZoneId;)Lkotlinx/datetime/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public static final toKotlinUtcOffset(Ljava/time/ZoneOffset;)Lkotlinx/datetime/UtcOffset;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance v0, Lkotlinx/datetime/UtcOffset;

    invoke-direct {v0, p0}, Lkotlinx/datetime/UtcOffset;-><init>(Ljava/time/ZoneOffset;)V

    return-object v0
.end method

.method public static final toKotlinZoneOffset(Ljava/time/ZoneOffset;)Lkotlinx/datetime/FixedOffsetTimeZone;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Use toKotlinFixedOffsetTimeZone() instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this.toKotlinFixedOffsetTimeZone()"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-static {p0}, Lkotlinx/datetime/ConvertersKt;->toKotlinFixedOffsetTimeZone(Ljava/time/ZoneOffset;)Lkotlinx/datetime/FixedOffsetTimeZone;

    move-result-object p0

    return-object p0
.end method
