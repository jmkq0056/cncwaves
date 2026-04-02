.class public final Lkotlinx/datetime/LocalDateTime;
.super Ljava/lang/Object;
.source "LocalDateTime.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/datetime/LocalDateTime$Companion;,
        Lkotlinx/datetime/LocalDateTime$Formats;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lkotlinx/datetime/LocalDateTime;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 62\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u000267BC\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\nBG\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0010\u000b\u001a\u00060\u000cj\u0002`\r\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u000eB\u0017\u0008\u0016\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0002\u0010\u0013B\u000f\u0008\u0000\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u00a2\u0006\u0002\u0010\u0016J\u0011\u0010.\u001a\u00020\u00032\u0006\u0010/\u001a\u00020\u0000H\u0096\u0002J\u0013\u00100\u001a\u0002012\u0008\u0010/\u001a\u0004\u0018\u000102H\u0096\u0002J\u0008\u00103\u001a\u00020\u0003H\u0016J\u0008\u00104\u001a\u000205H\u0016R\u0011\u0010\u000f\u001a\u00020\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0005\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u0015\u0010\u001b\u001a\u00060\u001cj\u0002`\u001d8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001fR\u0011\u0010 \u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u001aR\u0011\u0010\u0006\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010\u001aR\u0011\u0010\u0007\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010\u001aR\u0015\u0010\u000b\u001a\u00060\u000cj\u0002`\r8F\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010%R\u0011\u0010\u0004\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\u001aR\u0011\u0010\t\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010\u001aR\u0011\u0010\u0008\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010\u001aR\u0011\u0010\u0011\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010*R\u0014\u0010\u0014\u001a\u00020\u0015X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R\u0011\u0010\u0002\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010\u001a\u00a8\u00068"
    }
    d2 = {
        "Lkotlinx/datetime/LocalDateTime;",
        "",
        "year",
        "",
        "monthNumber",
        "dayOfMonth",
        "hour",
        "minute",
        "second",
        "nanosecond",
        "(IIIIIII)V",
        "month",
        "Ljava/time/Month;",
        "Lkotlinx/datetime/Month;",
        "(ILjava/time/Month;IIIII)V",
        "date",
        "Lkotlinx/datetime/LocalDate;",
        "time",
        "Lkotlinx/datetime/LocalTime;",
        "(Lkotlinx/datetime/LocalDate;Lkotlinx/datetime/LocalTime;)V",
        "value",
        "Ljava/time/LocalDateTime;",
        "(Ljava/time/LocalDateTime;)V",
        "getDate",
        "()Lkotlinx/datetime/LocalDate;",
        "getDayOfMonth",
        "()I",
        "dayOfWeek",
        "Ljava/time/DayOfWeek;",
        "Lkotlinx/datetime/DayOfWeek;",
        "getDayOfWeek",
        "()Ljava/time/DayOfWeek;",
        "dayOfYear",
        "getDayOfYear",
        "getHour",
        "getMinute",
        "getMonth",
        "()Ljava/time/Month;",
        "getMonthNumber",
        "getNanosecond",
        "getSecond",
        "getTime",
        "()Lkotlinx/datetime/LocalTime;",
        "getValue$kotlinx_datetime",
        "()Ljava/time/LocalDateTime;",
        "getYear",
        "compareTo",
        "other",
        "equals",
        "",
        "",
        "hashCode",
        "toString",
        "",
        "Companion",
        "Formats",
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
    with = Lkotlinx/datetime/serializers/LocalDateTimeIso8601Serializer;
.end annotation


# static fields
.field public static final Companion:Lkotlinx/datetime/LocalDateTime$Companion;

.field private static final MAX:Lkotlinx/datetime/LocalDateTime;

.field private static final MIN:Lkotlinx/datetime/LocalDateTime;


# instance fields
.field private final value:Ljava/time/LocalDateTime;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlinx/datetime/LocalDateTime$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/datetime/LocalDateTime$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/datetime/LocalDateTime;->Companion:Lkotlinx/datetime/LocalDateTime$Companion;

    .line 74
    new-instance v0, Lkotlinx/datetime/LocalDateTime;

    sget-object v1, Ljava/time/LocalDateTime;->MIN:Ljava/time/LocalDateTime;

    const-string v2, "MIN"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lkotlinx/datetime/LocalDateTime;-><init>(Ljava/time/LocalDateTime;)V

    sput-object v0, Lkotlinx/datetime/LocalDateTime;->MIN:Lkotlinx/datetime/LocalDateTime;

    .line 75
    new-instance v0, Lkotlinx/datetime/LocalDateTime;

    sget-object v1, Ljava/time/LocalDateTime;->MAX:Ljava/time/LocalDateTime;

    const-string v2, "MAX"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lkotlinx/datetime/LocalDateTime;-><init>(Ljava/time/LocalDateTime;)V

    sput-object v0, Lkotlinx/datetime/LocalDateTime;->MAX:Lkotlinx/datetime/LocalDateTime;

    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 1

    .line 23
    :try_start_0
    invoke-static/range {p1 .. p7}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object p1
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lkotlinx/datetime/LocalDateTime;-><init>(Ljava/time/LocalDateTime;)V

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 25
    new-instance p2, Ljava/lang/IllegalArgumentException;

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public synthetic constructor <init>(IIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x20

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move p6, v0

    :cond_0
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_1

    move p8, v0

    goto :goto_0

    :cond_1
    move p8, p7

    :goto_0
    move p7, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .line 21
    invoke-direct/range {p1 .. p8}, Lkotlinx/datetime/LocalDateTime;-><init>(IIIIIII)V

    return-void
.end method

.method public constructor <init>(ILjava/time/Month;IIIII)V
    .locals 9

    const-string v0, "month"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {p2}, Lkotlinx/datetime/MonthKt;->getNumber(Ljava/time/Month;)I

    move-result v3

    move-object v1, p0

    move v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lkotlinx/datetime/LocalDateTime;-><init>(IIIIIII)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/time/Month;IIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x20

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move p6, v0

    :cond_0
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_1

    move p8, v0

    goto :goto_0

    :cond_1
    move p8, p7

    :goto_0
    move p7, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move-object p3, p2

    move p2, p1

    move-object p1, p0

    .line 28
    invoke-direct/range {p1 .. p8}, Lkotlinx/datetime/LocalDateTime;-><init>(ILjava/time/Month;IIIII)V

    return-void
.end method

.method public constructor <init>(Ljava/time/LocalDateTime;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lkotlinx/datetime/LocalDateTime;->value:Ljava/time/LocalDateTime;

    return-void
.end method

.method public constructor <init>(Lkotlinx/datetime/LocalDate;Lkotlinx/datetime/LocalTime;)V
    .locals 1

    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "time"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lkotlinx/datetime/LocalDate;->getValue$kotlinx_datetime()Ljava/time/LocalDate;

    move-result-object p1

    invoke-virtual {p2}, Lkotlinx/datetime/LocalTime;->getValue$kotlinx_datetime()Ljava/time/LocalTime;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p1

    const-string p2, "of(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkotlinx/datetime/LocalDateTime;-><init>(Ljava/time/LocalDateTime;)V

    return-void
.end method

.method public static final synthetic access$getMAX$cp()Lkotlinx/datetime/LocalDateTime;
    .locals 1

    .line 18
    sget-object v0, Lkotlinx/datetime/LocalDateTime;->MAX:Lkotlinx/datetime/LocalDateTime;

    return-object v0
.end method

.method public static final synthetic access$getMIN$cp()Lkotlinx/datetime/LocalDateTime;
    .locals 1

    .line 18
    sget-object v0, Lkotlinx/datetime/LocalDateTime;->MIN:Lkotlinx/datetime/LocalDateTime;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 18
    check-cast p1, Lkotlinx/datetime/LocalDateTime;

    invoke-virtual {p0, p1}, Lkotlinx/datetime/LocalDateTime;->compareTo(Lkotlinx/datetime/LocalDateTime;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lkotlinx/datetime/LocalDateTime;)I
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lkotlinx/datetime/LocalDateTime;->value:Ljava/time/LocalDateTime;

    iget-object p1, p1, Lkotlinx/datetime/LocalDateTime;->value:Ljava/time/LocalDateTime;

    check-cast p1, Ljava/time/chrono/ChronoLocalDateTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->compareTo(Ljava/time/chrono/ChronoLocalDateTime;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    .line 51
    instance-of v0, p1, Lkotlinx/datetime/LocalDateTime;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlinx/datetime/LocalDateTime;->value:Ljava/time/LocalDateTime;

    check-cast p1, Lkotlinx/datetime/LocalDateTime;

    iget-object p1, p1, Lkotlinx/datetime/LocalDateTime;->value:Ljava/time/LocalDateTime;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getDate()Lkotlinx/datetime/LocalDate;
    .locals 3

    .line 46
    new-instance v0, Lkotlinx/datetime/LocalDate;

    iget-object v1, p0, Lkotlinx/datetime/LocalDateTime;->value:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v1

    const-string v2, "toLocalDate(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lkotlinx/datetime/LocalDate;-><init>(Ljava/time/LocalDate;)V

    return-object v0
.end method

.method public final getDayOfMonth()I
    .locals 1

    .line 37
    iget-object v0, p0, Lkotlinx/datetime/LocalDateTime;->value:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public final getDayOfWeek()Ljava/time/DayOfWeek;
    .locals 2

    .line 38
    iget-object v0, p0, Lkotlinx/datetime/LocalDateTime;->value:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v0

    const-string v1, "getDayOfWeek(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getDayOfYear()I
    .locals 1

    .line 39
    iget-object v0, p0, Lkotlinx/datetime/LocalDateTime;->value:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getDayOfYear()I

    move-result v0

    return v0
.end method

.method public final getHour()I
    .locals 1

    .line 41
    iget-object v0, p0, Lkotlinx/datetime/LocalDateTime;->value:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getHour()I

    move-result v0

    return v0
.end method

.method public final getMinute()I
    .locals 1

    .line 42
    iget-object v0, p0, Lkotlinx/datetime/LocalDateTime;->value:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v0

    return v0
.end method

.method public final getMonth()Ljava/time/Month;
    .locals 2

    .line 36
    iget-object v0, p0, Lkotlinx/datetime/LocalDateTime;->value:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v0

    const-string v1, "getMonth(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getMonthNumber()I
    .locals 1

    .line 35
    iget-object v0, p0, Lkotlinx/datetime/LocalDateTime;->value:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v0

    return v0
.end method

.method public final getNanosecond()I
    .locals 1

    .line 44
    iget-object v0, p0, Lkotlinx/datetime/LocalDateTime;->value:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getNano()I

    move-result v0

    return v0
.end method

.method public final getSecond()I
    .locals 1

    .line 43
    iget-object v0, p0, Lkotlinx/datetime/LocalDateTime;->value:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v0

    return v0
.end method

.method public final getTime()Lkotlinx/datetime/LocalTime;
    .locals 3

    .line 48
    new-instance v0, Lkotlinx/datetime/LocalTime;

    iget-object v1, p0, Lkotlinx/datetime/LocalDateTime;->value:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    const-string v2, "toLocalTime(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lkotlinx/datetime/LocalTime;-><init>(Ljava/time/LocalTime;)V

    return-object v0
.end method

.method public final getValue$kotlinx_datetime()Ljava/time/LocalDateTime;
    .locals 1

    .line 19
    iget-object v0, p0, Lkotlinx/datetime/LocalDateTime;->value:Ljava/time/LocalDateTime;

    return-object v0
.end method

.method public final getYear()I
    .locals 1

    .line 34
    iget-object v0, p0, Lkotlinx/datetime/LocalDateTime;->value:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 53
    iget-object v0, p0, Lkotlinx/datetime/LocalDateTime;->value:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 55
    iget-object v0, p0, Lkotlinx/datetime/LocalDateTime;->value:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
