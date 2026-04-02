.class public final Lkotlinx/datetime/format/DateTimeComponents;
.super Ljava/lang/Object;
.source "DateTimeComponents.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/datetime/format/DateTimeComponents$Companion;,
        Lkotlinx/datetime/format/DateTimeComponents$Formats;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDateTimeComponents.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DateTimeComponents.kt\nkotlinx/datetime/format/DateTimeComponents\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,608:1\n1#2:609\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0012\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 q2\u00020\u0001:\u0002qrB\u0011\u0008\u0000\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\\\u001a\u00020]2\u0006\u0010^\u001a\u00020_J\u000e\u0010`\u001a\u00020]2\u0006\u0010a\u001a\u00020bJ\u0016\u0010c\u001a\u00020]2\u0006\u0010d\u001a\u00020e2\u0006\u0010f\u001a\u00020gJ\u0016\u0010c\u001a\u00020]2\u0006\u0010a\u001a\u00020b2\u0006\u0010f\u001a\u00020gJ\u000e\u0010h\u001a\u00020]2\u0006\u0010f\u001a\u00020gJ\u000e\u0010i\u001a\u00020]2\u0006\u0010j\u001a\u00020kJ\u0006\u0010l\u001a\u00020eJ\u0006\u0010m\u001a\u00020_J\u0006\u0010n\u001a\u00020bJ\u0006\u0010o\u001a\u00020kJ\u0006\u0010p\u001a\u00020gR/\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00068F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r*\u0004\u0008\u0008\u0010\tR\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR/\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00108F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R4\u0010\u001b\u001a\n\u0018\u00010\u0019j\u0004\u0018\u0001`\u001a2\u000e\u0010\u0018\u001a\n\u0018\u00010\u0019j\u0004\u0018\u0001`\u001a8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR/\u0010 \u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00108F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008#\u0010\u0017\u001a\u0004\u0008!\u0010\u0013\"\u0004\u0008\"\u0010\u0015R/\u0010$\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00108F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\'\u0010\u0017\u001a\u0004\u0008%\u0010\u0013\"\u0004\u0008&\u0010\u0015R/\u0010(\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00108F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008+\u0010\u0017\u001a\u0004\u0008)\u0010\u0013\"\u0004\u0008*\u0010\u0015R4\u0010.\u001a\n\u0018\u00010,j\u0004\u0018\u0001`-2\u000e\u0010\u0018\u001a\n\u0018\u00010,j\u0004\u0018\u0001`-8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R/\u00103\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00108F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u00086\u0010\u0017\u001a\u0004\u00084\u0010\u0013\"\u0004\u00085\u0010\u0015R(\u00107\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00108F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00088\u0010\u0013\"\u0004\u00089\u0010\u0015R/\u0010:\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00108F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008=\u0010\u0017\u001a\u0004\u0008;\u0010\u0013\"\u0004\u0008<\u0010\u0015R/\u0010?\u001a\u0004\u0018\u00010>2\u0008\u0010\u0005\u001a\u0004\u0018\u00010>8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010D*\u0004\u0008@\u0010\tR/\u0010E\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00108F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008H\u0010\u0017\u001a\u0004\u0008F\u0010\u0013\"\u0004\u0008G\u0010\u0015R/\u0010I\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00108F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008L\u0010\u0017\u001a\u0004\u0008J\u0010\u0013\"\u0004\u0008K\u0010\u0015R/\u0010M\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00108F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008P\u0010\u0017\u001a\u0004\u0008N\u0010\u0013\"\u0004\u0008O\u0010\u0015R/\u0010R\u001a\u0004\u0018\u00010Q2\u0008\u0010\u0005\u001a\u0004\u0018\u00010Q8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\u001a\u0004\u0008T\u0010U\"\u0004\u0008V\u0010W*\u0004\u0008S\u0010\tR/\u0010X\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00108F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\u001a\u0004\u0008Z\u0010\u0013\"\u0004\u0008[\u0010\u0015*\u0004\u0008Y\u0010\t\u00a8\u0006s"
    }
    d2 = {
        "Lkotlinx/datetime/format/DateTimeComponents;",
        "",
        "contents",
        "Lkotlinx/datetime/format/DateTimeComponentsContents;",
        "(Lkotlinx/datetime/format/DateTimeComponentsContents;)V",
        "<set-?>",
        "Lkotlinx/datetime/format/AmPmMarker;",
        "amPm",
        "getAmPm$delegate",
        "(Lkotlinx/datetime/format/DateTimeComponents;)Ljava/lang/Object;",
        "getAmPm",
        "()Lkotlinx/datetime/format/AmPmMarker;",
        "setAmPm",
        "(Lkotlinx/datetime/format/AmPmMarker;)V",
        "getContents$kotlinx_datetime",
        "()Lkotlinx/datetime/format/DateTimeComponentsContents;",
        "",
        "dayOfMonth",
        "getDayOfMonth",
        "()Ljava/lang/Integer;",
        "setDayOfMonth",
        "(Ljava/lang/Integer;)V",
        "dayOfMonth$delegate",
        "Lkotlinx/datetime/format/TwoDigitNumber;",
        "value",
        "Ljava/time/DayOfWeek;",
        "Lkotlinx/datetime/DayOfWeek;",
        "dayOfWeek",
        "getDayOfWeek",
        "()Ljava/time/DayOfWeek;",
        "setDayOfWeek",
        "(Ljava/time/DayOfWeek;)V",
        "hour",
        "getHour",
        "setHour",
        "hour$delegate",
        "hourOfAmPm",
        "getHourOfAmPm",
        "setHourOfAmPm",
        "hourOfAmPm$delegate",
        "minute",
        "getMinute",
        "setMinute",
        "minute$delegate",
        "Ljava/time/Month;",
        "Lkotlinx/datetime/Month;",
        "month",
        "getMonth",
        "()Ljava/time/Month;",
        "setMonth",
        "(Ljava/time/Month;)V",
        "monthNumber",
        "getMonthNumber",
        "setMonthNumber",
        "monthNumber$delegate",
        "nanosecond",
        "getNanosecond",
        "setNanosecond",
        "offsetHours",
        "getOffsetHours",
        "setOffsetHours",
        "offsetHours$delegate",
        "",
        "offsetIsNegative",
        "getOffsetIsNegative$delegate",
        "getOffsetIsNegative",
        "()Ljava/lang/Boolean;",
        "setOffsetIsNegative",
        "(Ljava/lang/Boolean;)V",
        "offsetMinutesOfHour",
        "getOffsetMinutesOfHour",
        "setOffsetMinutesOfHour",
        "offsetMinutesOfHour$delegate",
        "offsetSecondsOfMinute",
        "getOffsetSecondsOfMinute",
        "setOffsetSecondsOfMinute",
        "offsetSecondsOfMinute$delegate",
        "second",
        "getSecond",
        "setSecond",
        "second$delegate",
        "",
        "timeZoneId",
        "getTimeZoneId$delegate",
        "getTimeZoneId",
        "()Ljava/lang/String;",
        "setTimeZoneId",
        "(Ljava/lang/String;)V",
        "year",
        "getYear$delegate",
        "getYear",
        "setYear",
        "setDate",
        "",
        "localDate",
        "Lkotlinx/datetime/LocalDate;",
        "setDateTime",
        "localDateTime",
        "Lkotlinx/datetime/LocalDateTime;",
        "setDateTimeOffset",
        "instant",
        "Lkotlinx/datetime/Instant;",
        "utcOffset",
        "Lkotlinx/datetime/UtcOffset;",
        "setOffset",
        "setTime",
        "localTime",
        "Lkotlinx/datetime/LocalTime;",
        "toInstantUsingOffset",
        "toLocalDate",
        "toLocalDateTime",
        "toLocalTime",
        "toUtcOffset",
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


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lkotlinx/datetime/format/DateTimeComponents$Companion;


# instance fields
.field private final contents:Lkotlinx/datetime/format/DateTimeComponentsContents;

.field private final dayOfMonth$delegate:Lkotlinx/datetime/format/TwoDigitNumber;

.field private final hour$delegate:Lkotlinx/datetime/format/TwoDigitNumber;

.field private final hourOfAmPm$delegate:Lkotlinx/datetime/format/TwoDigitNumber;

.field private final minute$delegate:Lkotlinx/datetime/format/TwoDigitNumber;

.field private final monthNumber$delegate:Lkotlinx/datetime/format/TwoDigitNumber;

.field private final offsetHours$delegate:Lkotlinx/datetime/format/TwoDigitNumber;

.field private final offsetMinutesOfHour$delegate:Lkotlinx/datetime/format/TwoDigitNumber;

.field private final offsetSecondsOfMinute$delegate:Lkotlinx/datetime/format/TwoDigitNumber;

.field private final second$delegate:Lkotlinx/datetime/format/TwoDigitNumber;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x9

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 273
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "monthNumber"

    const-string v3, "getMonthNumber()Ljava/lang/Integer;"

    const-class v4, Lkotlinx/datetime/format/DateTimeComponents;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    .line 297
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "dayOfMonth"

    const-string v3, "getDayOfMonth()Ljava/lang/Integer;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 316
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "hour"

    const-string v3, "getHour()Ljava/lang/Integer;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 324
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "hourOfAmPm"

    const-string v3, "getHourOfAmPm()Ljava/lang/Integer;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 338
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "minute"

    const-string v3, "getMinute()Ljava/lang/Integer;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 345
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "second"

    const-string v3, "getSecond()Ljava/lang/Integer;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 372
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "offsetHours"

    const-string v3, "getOffsetHours()Ljava/lang/Integer;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 379
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "offsetMinutesOfHour"

    const-string v3, "getOffsetMinutesOfHour()Ljava/lang/Integer;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 386
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "offsetSecondsOfMinute"

    const-string v3, "getOffsetSecondsOfMinute()Ljava/lang/Integer;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lkotlinx/datetime/format/DateTimeComponents;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lkotlinx/datetime/format/DateTimeComponents$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/datetime/format/DateTimeComponents$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/datetime/format/DateTimeComponents;->Companion:Lkotlinx/datetime/format/DateTimeComponents$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lkotlinx/datetime/format/DateTimeComponents;-><init>(Lkotlinx/datetime/format/DateTimeComponentsContents;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/datetime/format/DateTimeComponentsContents;)V
    .locals 3

    const-string v0, "contents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/datetime/format/DateTimeComponents;->contents:Lkotlinx/datetime/format/DateTimeComponentsContents;

    .line 266
    invoke-virtual {p1}, Lkotlinx/datetime/format/DateTimeComponentsContents;->getDate()Lkotlinx/datetime/format/IncompleteLocalDate;

    .line 273
    new-instance v0, Lkotlinx/datetime/format/TwoDigitNumber;

    new-instance v1, Lkotlinx/datetime/format/DateTimeComponents$monthNumber$2;

    invoke-virtual {p1}, Lkotlinx/datetime/format/DateTimeComponentsContents;->getDate()Lkotlinx/datetime/format/IncompleteLocalDate;

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlinx/datetime/format/DateTimeComponents$monthNumber$2;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/reflect/KMutableProperty0;

    invoke-direct {v0, v1}, Lkotlinx/datetime/format/TwoDigitNumber;-><init>(Lkotlin/reflect/KMutableProperty0;)V

    iput-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->monthNumber$delegate:Lkotlinx/datetime/format/TwoDigitNumber;

    .line 297
    new-instance v0, Lkotlinx/datetime/format/TwoDigitNumber;

    new-instance v1, Lkotlinx/datetime/format/DateTimeComponents$dayOfMonth$2;

    invoke-virtual {p1}, Lkotlinx/datetime/format/DateTimeComponentsContents;->getDate()Lkotlinx/datetime/format/IncompleteLocalDate;

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlinx/datetime/format/DateTimeComponents$dayOfMonth$2;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/reflect/KMutableProperty0;

    invoke-direct {v0, v1}, Lkotlinx/datetime/format/TwoDigitNumber;-><init>(Lkotlin/reflect/KMutableProperty0;)V

    iput-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->dayOfMonth$delegate:Lkotlinx/datetime/format/TwoDigitNumber;

    .line 316
    new-instance v0, Lkotlinx/datetime/format/TwoDigitNumber;

    new-instance v1, Lkotlinx/datetime/format/DateTimeComponents$hour$2;

    invoke-virtual {p1}, Lkotlinx/datetime/format/DateTimeComponentsContents;->getTime()Lkotlinx/datetime/format/IncompleteLocalTime;

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlinx/datetime/format/DateTimeComponents$hour$2;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/reflect/KMutableProperty0;

    invoke-direct {v0, v1}, Lkotlinx/datetime/format/TwoDigitNumber;-><init>(Lkotlin/reflect/KMutableProperty0;)V

    iput-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->hour$delegate:Lkotlinx/datetime/format/TwoDigitNumber;

    .line 324
    new-instance v0, Lkotlinx/datetime/format/TwoDigitNumber;

    new-instance v1, Lkotlinx/datetime/format/DateTimeComponents$hourOfAmPm$2;

    invoke-virtual {p1}, Lkotlinx/datetime/format/DateTimeComponentsContents;->getTime()Lkotlinx/datetime/format/IncompleteLocalTime;

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlinx/datetime/format/DateTimeComponents$hourOfAmPm$2;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/reflect/KMutableProperty0;

    invoke-direct {v0, v1}, Lkotlinx/datetime/format/TwoDigitNumber;-><init>(Lkotlin/reflect/KMutableProperty0;)V

    iput-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->hourOfAmPm$delegate:Lkotlinx/datetime/format/TwoDigitNumber;

    .line 331
    invoke-virtual {p1}, Lkotlinx/datetime/format/DateTimeComponentsContents;->getTime()Lkotlinx/datetime/format/IncompleteLocalTime;

    .line 338
    new-instance v0, Lkotlinx/datetime/format/TwoDigitNumber;

    new-instance v1, Lkotlinx/datetime/format/DateTimeComponents$minute$2;

    invoke-virtual {p1}, Lkotlinx/datetime/format/DateTimeComponentsContents;->getTime()Lkotlinx/datetime/format/IncompleteLocalTime;

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlinx/datetime/format/DateTimeComponents$minute$2;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/reflect/KMutableProperty0;

    invoke-direct {v0, v1}, Lkotlinx/datetime/format/TwoDigitNumber;-><init>(Lkotlin/reflect/KMutableProperty0;)V

    iput-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->minute$delegate:Lkotlinx/datetime/format/TwoDigitNumber;

    .line 345
    new-instance v0, Lkotlinx/datetime/format/TwoDigitNumber;

    new-instance v1, Lkotlinx/datetime/format/DateTimeComponents$second$2;

    invoke-virtual {p1}, Lkotlinx/datetime/format/DateTimeComponentsContents;->getTime()Lkotlinx/datetime/format/IncompleteLocalTime;

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlinx/datetime/format/DateTimeComponents$second$2;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/reflect/KMutableProperty0;

    invoke-direct {v0, v1}, Lkotlinx/datetime/format/TwoDigitNumber;-><init>(Lkotlin/reflect/KMutableProperty0;)V

    iput-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->second$delegate:Lkotlinx/datetime/format/TwoDigitNumber;

    .line 365
    invoke-virtual {p1}, Lkotlinx/datetime/format/DateTimeComponentsContents;->getOffset()Lkotlinx/datetime/format/IncompleteUtcOffset;

    .line 372
    new-instance v0, Lkotlinx/datetime/format/TwoDigitNumber;

    new-instance v1, Lkotlinx/datetime/format/DateTimeComponents$offsetHours$2;

    invoke-virtual {p1}, Lkotlinx/datetime/format/DateTimeComponentsContents;->getOffset()Lkotlinx/datetime/format/IncompleteUtcOffset;

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlinx/datetime/format/DateTimeComponents$offsetHours$2;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/reflect/KMutableProperty0;

    invoke-direct {v0, v1}, Lkotlinx/datetime/format/TwoDigitNumber;-><init>(Lkotlin/reflect/KMutableProperty0;)V

    iput-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->offsetHours$delegate:Lkotlinx/datetime/format/TwoDigitNumber;

    .line 379
    new-instance v0, Lkotlinx/datetime/format/TwoDigitNumber;

    new-instance v1, Lkotlinx/datetime/format/DateTimeComponents$offsetMinutesOfHour$2;

    invoke-virtual {p1}, Lkotlinx/datetime/format/DateTimeComponentsContents;->getOffset()Lkotlinx/datetime/format/IncompleteUtcOffset;

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlinx/datetime/format/DateTimeComponents$offsetMinutesOfHour$2;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/reflect/KMutableProperty0;

    invoke-direct {v0, v1}, Lkotlinx/datetime/format/TwoDigitNumber;-><init>(Lkotlin/reflect/KMutableProperty0;)V

    iput-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->offsetMinutesOfHour$delegate:Lkotlinx/datetime/format/TwoDigitNumber;

    .line 386
    new-instance v0, Lkotlinx/datetime/format/TwoDigitNumber;

    new-instance v1, Lkotlinx/datetime/format/DateTimeComponents$offsetSecondsOfMinute$2;

    invoke-virtual {p1}, Lkotlinx/datetime/format/DateTimeComponentsContents;->getOffset()Lkotlinx/datetime/format/IncompleteUtcOffset;

    move-result-object p1

    invoke-direct {v1, p1}, Lkotlinx/datetime/format/DateTimeComponents$offsetSecondsOfMinute$2;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/reflect/KMutableProperty0;

    invoke-direct {v0, v1}, Lkotlinx/datetime/format/TwoDigitNumber;-><init>(Lkotlin/reflect/KMutableProperty0;)V

    iput-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->offsetSecondsOfMinute$delegate:Lkotlinx/datetime/format/TwoDigitNumber;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/datetime/format/DateTimeComponentsContents;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 40
    new-instance v0, Lkotlinx/datetime/format/DateTimeComponentsContents;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lkotlinx/datetime/format/DateTimeComponentsContents;-><init>(Lkotlinx/datetime/format/IncompleteLocalDate;Lkotlinx/datetime/format/IncompleteLocalTime;Lkotlinx/datetime/format/IncompleteUtcOffset;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p1, v0

    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/datetime/format/DateTimeComponents;-><init>(Lkotlinx/datetime/format/DateTimeComponentsContents;)V

    return-void
.end method

.method private static getAmPm$delegate(Lkotlinx/datetime/format/DateTimeComponents;)Ljava/lang/Object;
    .locals 6

    .line 331
    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference0Impl;

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponents;->contents:Lkotlinx/datetime/format/DateTimeComponentsContents;

    invoke-virtual {p0}, Lkotlinx/datetime/format/DateTimeComponentsContents;->getTime()Lkotlinx/datetime/format/IncompleteLocalTime;

    move-result-object v1

    const-class v2, Lkotlinx/datetime/format/IncompleteLocalTime;

    const-string v4, "getAmPm()Lkotlinx/datetime/format/AmPmMarker;"

    const/4 v5, 0x0

    const-string v3, "amPm"

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v0, Lkotlin/jvm/internal/MutablePropertyReference0;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty0(Lkotlin/jvm/internal/MutablePropertyReference0;)Lkotlin/reflect/KMutableProperty0;

    move-result-object p0

    return-object p0
.end method

.method private static getOffsetIsNegative$delegate(Lkotlinx/datetime/format/DateTimeComponents;)Ljava/lang/Object;
    .locals 6

    .line 365
    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference0Impl;

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponents;->contents:Lkotlinx/datetime/format/DateTimeComponentsContents;

    invoke-virtual {p0}, Lkotlinx/datetime/format/DateTimeComponentsContents;->getOffset()Lkotlinx/datetime/format/IncompleteUtcOffset;

    move-result-object v1

    const-class v2, Lkotlinx/datetime/format/IncompleteUtcOffset;

    const-string v4, "isNegative()Ljava/lang/Boolean;"

    const/4 v5, 0x0

    const-string v3, "isNegative"

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v0, Lkotlin/jvm/internal/MutablePropertyReference0;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty0(Lkotlin/jvm/internal/MutablePropertyReference0;)Lkotlin/reflect/KMutableProperty0;

    move-result-object p0

    return-object p0
.end method

.method private static getTimeZoneId$delegate(Lkotlinx/datetime/format/DateTimeComponents;)Ljava/lang/Object;
    .locals 6

    .line 392
    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference0Impl;

    iget-object v1, p0, Lkotlinx/datetime/format/DateTimeComponents;->contents:Lkotlinx/datetime/format/DateTimeComponentsContents;

    const-class v2, Lkotlinx/datetime/format/DateTimeComponentsContents;

    const-string v4, "getTimeZoneId()Ljava/lang/String;"

    const/4 v5, 0x0

    const-string v3, "timeZoneId"

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v0, Lkotlin/jvm/internal/MutablePropertyReference0;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty0(Lkotlin/jvm/internal/MutablePropertyReference0;)Lkotlin/reflect/KMutableProperty0;

    move-result-object p0

    return-object p0
.end method

.method private static getYear$delegate(Lkotlinx/datetime/format/DateTimeComponents;)Ljava/lang/Object;
    .locals 6

    .line 266
    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference0Impl;

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponents;->contents:Lkotlinx/datetime/format/DateTimeComponentsContents;

    invoke-virtual {p0}, Lkotlinx/datetime/format/DateTimeComponentsContents;->getDate()Lkotlinx/datetime/format/IncompleteLocalDate;

    move-result-object v1

    const-class v2, Lkotlinx/datetime/format/IncompleteLocalDate;

    const-string v4, "getYear()Ljava/lang/Integer;"

    const/4 v5, 0x0

    const-string v3, "year"

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v0, Lkotlin/jvm/internal/MutablePropertyReference0;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty0(Lkotlin/jvm/internal/MutablePropertyReference0;)Lkotlin/reflect/KMutableProperty0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAmPm()Lkotlinx/datetime/format/AmPmMarker;
    .locals 1

    .line 331
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->contents:Lkotlinx/datetime/format/DateTimeComponentsContents;

    invoke-virtual {v0}, Lkotlinx/datetime/format/DateTimeComponentsContents;->getTime()Lkotlinx/datetime/format/IncompleteLocalTime;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/datetime/format/IncompleteLocalTime;->getAmPm()Lkotlinx/datetime/format/AmPmMarker;

    move-result-object v0

    return-object v0
.end method

.method public final getContents$kotlinx_datetime()Lkotlinx/datetime/format/DateTimeComponentsContents;
    .locals 1

    .line 40
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->contents:Lkotlinx/datetime/format/DateTimeComponentsContents;

    return-object v0
.end method

.method public final getDayOfMonth()Ljava/lang/Integer;
    .locals 3

    .line 297
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->dayOfMonth$delegate:Lkotlinx/datetime/format/TwoDigitNumber;

    sget-object v1, Lkotlinx/datetime/format/DateTimeComponents;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlinx/datetime/format/TwoDigitNumber;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getDayOfWeek()Ljava/time/DayOfWeek;
    .locals 1

    .line 304
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->contents:Lkotlinx/datetime/format/DateTimeComponentsContents;

    invoke-virtual {v0}, Lkotlinx/datetime/format/DateTimeComponentsContents;->getDate()Lkotlinx/datetime/format/IncompleteLocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/datetime/format/IncompleteLocalDate;->getIsoDayOfWeek()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Lkotlinx/datetime/DayOfWeekKt;->DayOfWeek(I)Ljava/time/DayOfWeek;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getHour()Ljava/lang/Integer;
    .locals 3

    .line 316
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->hour$delegate:Lkotlinx/datetime/format/TwoDigitNumber;

    sget-object v1, Lkotlinx/datetime/format/DateTimeComponents;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlinx/datetime/format/TwoDigitNumber;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getHourOfAmPm()Ljava/lang/Integer;
    .locals 3

    .line 324
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->hourOfAmPm$delegate:Lkotlinx/datetime/format/TwoDigitNumber;

    sget-object v1, Lkotlinx/datetime/format/DateTimeComponents;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlinx/datetime/format/TwoDigitNumber;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getMinute()Ljava/lang/Integer;
    .locals 3

    .line 338
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->minute$delegate:Lkotlinx/datetime/format/TwoDigitNumber;

    sget-object v1, Lkotlinx/datetime/format/DateTimeComponents;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlinx/datetime/format/TwoDigitNumber;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getMonth()Ljava/time/Month;
    .locals 1

    .line 287
    invoke-virtual {p0}, Lkotlinx/datetime/format/DateTimeComponents;->getMonthNumber()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Lkotlinx/datetime/MonthKt;->Month(I)Ljava/time/Month;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMonthNumber()Ljava/lang/Integer;
    .locals 3

    .line 273
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->monthNumber$delegate:Lkotlinx/datetime/format/TwoDigitNumber;

    sget-object v1, Lkotlinx/datetime/format/DateTimeComponents;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlinx/datetime/format/TwoDigitNumber;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getNanosecond()Ljava/lang/Integer;
    .locals 1

    .line 353
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->contents:Lkotlinx/datetime/format/DateTimeComponentsContents;

    invoke-virtual {v0}, Lkotlinx/datetime/format/DateTimeComponentsContents;->getTime()Lkotlinx/datetime/format/IncompleteLocalTime;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/datetime/format/IncompleteLocalTime;->getNanosecond()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getOffsetHours()Ljava/lang/Integer;
    .locals 3

    .line 372
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->offsetHours$delegate:Lkotlinx/datetime/format/TwoDigitNumber;

    sget-object v1, Lkotlinx/datetime/format/DateTimeComponents;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlinx/datetime/format/TwoDigitNumber;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getOffsetIsNegative()Ljava/lang/Boolean;
    .locals 1

    .line 365
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->contents:Lkotlinx/datetime/format/DateTimeComponentsContents;

    invoke-virtual {v0}, Lkotlinx/datetime/format/DateTimeComponentsContents;->getOffset()Lkotlinx/datetime/format/IncompleteUtcOffset;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/datetime/format/IncompleteUtcOffset;->isNegative()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final getOffsetMinutesOfHour()Ljava/lang/Integer;
    .locals 3

    .line 379
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->offsetMinutesOfHour$delegate:Lkotlinx/datetime/format/TwoDigitNumber;

    sget-object v1, Lkotlinx/datetime/format/DateTimeComponents;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlinx/datetime/format/TwoDigitNumber;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getOffsetSecondsOfMinute()Ljava/lang/Integer;
    .locals 3

    .line 386
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->offsetSecondsOfMinute$delegate:Lkotlinx/datetime/format/TwoDigitNumber;

    sget-object v1, Lkotlinx/datetime/format/DateTimeComponents;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlinx/datetime/format/TwoDigitNumber;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getSecond()Ljava/lang/Integer;
    .locals 3

    .line 345
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->second$delegate:Lkotlinx/datetime/format/TwoDigitNumber;

    sget-object v1, Lkotlinx/datetime/format/DateTimeComponents;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlinx/datetime/format/TwoDigitNumber;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getTimeZoneId()Ljava/lang/String;
    .locals 1

    .line 392
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->contents:Lkotlinx/datetime/format/DateTimeComponentsContents;

    invoke-virtual {v0}, Lkotlinx/datetime/format/DateTimeComponentsContents;->getTimeZoneId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getYear()Ljava/lang/Integer;
    .locals 1

    .line 266
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->contents:Lkotlinx/datetime/format/DateTimeComponentsContents;

    invoke-virtual {v0}, Lkotlinx/datetime/format/DateTimeComponentsContents;->getDate()Lkotlinx/datetime/format/IncompleteLocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/datetime/format/IncompleteLocalDate;->getYear()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final setAmPm(Lkotlinx/datetime/format/AmPmMarker;)V
    .locals 1

    .line 331
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->contents:Lkotlinx/datetime/format/DateTimeComponentsContents;

    invoke-virtual {v0}, Lkotlinx/datetime/format/DateTimeComponentsContents;->getTime()Lkotlinx/datetime/format/IncompleteLocalTime;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlinx/datetime/format/IncompleteLocalTime;->setAmPm(Lkotlinx/datetime/format/AmPmMarker;)V

    return-void
.end method

.method public final setDate(Lkotlinx/datetime/LocalDate;)V
    .locals 1

    const-string v0, "localDate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->contents:Lkotlinx/datetime/format/DateTimeComponentsContents;

    invoke-virtual {v0}, Lkotlinx/datetime/format/DateTimeComponentsContents;->getDate()Lkotlinx/datetime/format/IncompleteLocalDate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlinx/datetime/format/IncompleteLocalDate;->populateFrom(Lkotlinx/datetime/LocalDate;)V

    return-void
.end method

.method public final setDateTime(Lkotlinx/datetime/LocalDateTime;)V
    .locals 2

    const-string v0, "localDateTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->contents:Lkotlinx/datetime/format/DateTimeComponentsContents;

    invoke-virtual {v0}, Lkotlinx/datetime/format/DateTimeComponentsContents;->getDate()Lkotlinx/datetime/format/IncompleteLocalDate;

    move-result-object v0

    invoke-virtual {p1}, Lkotlinx/datetime/LocalDateTime;->getDate()Lkotlinx/datetime/LocalDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlinx/datetime/format/IncompleteLocalDate;->populateFrom(Lkotlinx/datetime/LocalDate;)V

    .line 208
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->contents:Lkotlinx/datetime/format/DateTimeComponentsContents;

    invoke-virtual {v0}, Lkotlinx/datetime/format/DateTimeComponentsContents;->getTime()Lkotlinx/datetime/format/IncompleteLocalTime;

    move-result-object v0

    invoke-virtual {p1}, Lkotlinx/datetime/LocalDateTime;->getTime()Lkotlinx/datetime/LocalTime;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlinx/datetime/format/IncompleteLocalTime;->populateFrom(Lkotlinx/datetime/LocalTime;)V

    return-void
.end method

.method public final setDateTimeOffset(Lkotlinx/datetime/Instant;Lkotlinx/datetime/UtcOffset;)V
    .locals 6

    const-string v0, "instant"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "utcOffset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    sget-object v0, Lkotlinx/datetime/Instant;->Companion:Lkotlinx/datetime/Instant$Companion;

    .line 240
    invoke-virtual {p1}, Lkotlinx/datetime/Instant;->getEpochSeconds()J

    move-result-wide v1

    const-wide v3, 0x497968bd80L

    rem-long/2addr v1, v3

    invoke-virtual {p1}, Lkotlinx/datetime/Instant;->getNanosecondsOfSecond()I

    move-result v5

    .line 239
    invoke-virtual {v0, v1, v2, v5}, Lkotlinx/datetime/Instant$Companion;->fromEpochSeconds(JI)Lkotlinx/datetime/Instant;

    move-result-object v0

    .line 242
    invoke-static {v0, p2}, Lkotlinx/datetime/TimeZoneKt;->toLocalDateTime(Lkotlinx/datetime/Instant;Lkotlinx/datetime/UtcOffset;)Lkotlinx/datetime/LocalDateTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/datetime/format/DateTimeComponents;->setDateTime(Lkotlinx/datetime/LocalDateTime;)V

    .line 243
    invoke-virtual {p0, p2}, Lkotlinx/datetime/format/DateTimeComponents;->setOffset(Lkotlinx/datetime/UtcOffset;)V

    .line 244
    invoke-virtual {p0}, Lkotlinx/datetime/format/DateTimeComponents;->getYear()Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Lkotlinx/datetime/Instant;->getEpochSeconds()J

    move-result-wide v0

    div-long/2addr v0, v3

    const/16 p1, 0x2710

    int-to-long v2, p1

    mul-long/2addr v0, v2

    long-to-int p1, v0

    add-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/datetime/format/DateTimeComponents;->setYear(Ljava/lang/Integer;)V

    return-void
.end method

.method public final setDateTimeOffset(Lkotlinx/datetime/LocalDateTime;Lkotlinx/datetime/UtcOffset;)V
    .locals 1

    const-string v0, "localDateTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "utcOffset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0, p1}, Lkotlinx/datetime/format/DateTimeComponents;->setDateTime(Lkotlinx/datetime/LocalDateTime;)V

    .line 259
    invoke-virtual {p0, p2}, Lkotlinx/datetime/format/DateTimeComponents;->setOffset(Lkotlinx/datetime/UtcOffset;)V

    return-void
.end method

.method public final setDayOfMonth(Ljava/lang/Integer;)V
    .locals 3

    .line 297
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->dayOfMonth$delegate:Lkotlinx/datetime/format/TwoDigitNumber;

    sget-object v1, Lkotlinx/datetime/format/DateTimeComponents;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lkotlinx/datetime/format/TwoDigitNumber;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Integer;)V

    return-void
.end method

.method public final setDayOfWeek(Ljava/time/DayOfWeek;)V
    .locals 1

    .line 306
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->contents:Lkotlinx/datetime/format/DateTimeComponentsContents;

    invoke-virtual {v0}, Lkotlinx/datetime/format/DateTimeComponentsContents;->getDate()Lkotlinx/datetime/format/IncompleteLocalDate;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlinx/datetime/DayOfWeekKt;->getIsoDayNumber(Ljava/time/DayOfWeek;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lkotlinx/datetime/format/IncompleteLocalDate;->setIsoDayOfWeek(Ljava/lang/Integer;)V

    return-void
.end method

.method public final setHour(Ljava/lang/Integer;)V
    .locals 3

    .line 316
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->hour$delegate:Lkotlinx/datetime/format/TwoDigitNumber;

    sget-object v1, Lkotlinx/datetime/format/DateTimeComponents;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lkotlinx/datetime/format/TwoDigitNumber;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Integer;)V

    return-void
.end method

.method public final setHourOfAmPm(Ljava/lang/Integer;)V
    .locals 3

    .line 324
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->hourOfAmPm$delegate:Lkotlinx/datetime/format/TwoDigitNumber;

    sget-object v1, Lkotlinx/datetime/format/DateTimeComponents;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lkotlinx/datetime/format/TwoDigitNumber;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Integer;)V

    return-void
.end method

.method public final setMinute(Ljava/lang/Integer;)V
    .locals 3

    .line 338
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->minute$delegate:Lkotlinx/datetime/format/TwoDigitNumber;

    sget-object v1, Lkotlinx/datetime/format/DateTimeComponents;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lkotlinx/datetime/format/TwoDigitNumber;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Integer;)V

    return-void
.end method

.method public final setMonth(Ljava/time/Month;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 289
    invoke-static {p1}, Lkotlinx/datetime/MonthKt;->getNumber(Ljava/time/Month;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lkotlinx/datetime/format/DateTimeComponents;->setMonthNumber(Ljava/lang/Integer;)V

    return-void
.end method

.method public final setMonthNumber(Ljava/lang/Integer;)V
    .locals 3

    .line 273
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->monthNumber$delegate:Lkotlinx/datetime/format/TwoDigitNumber;

    sget-object v1, Lkotlinx/datetime/format/DateTimeComponents;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lkotlinx/datetime/format/TwoDigitNumber;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Integer;)V

    return-void
.end method

.method public final setNanosecond(Ljava/lang/Integer;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 355
    new-instance v0, Lkotlin/ranges/IntRange;

    const/4 v1, 0x0

    const v2, 0x3b9ac9ff

    invoke-direct {v0, v1, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Nanosecond must be in the range [0, 999_999_999]."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 358
    :cond_1
    :goto_0
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->contents:Lkotlinx/datetime/format/DateTimeComponentsContents;

    invoke-virtual {v0}, Lkotlinx/datetime/format/DateTimeComponentsContents;->getTime()Lkotlinx/datetime/format/IncompleteLocalTime;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlinx/datetime/format/IncompleteLocalTime;->setNanosecond(Ljava/lang/Integer;)V

    return-void
.end method

.method public final setOffset(Lkotlinx/datetime/UtcOffset;)V
    .locals 1

    const-string v0, "utcOffset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->contents:Lkotlinx/datetime/format/DateTimeComponentsContents;

    invoke-virtual {v0}, Lkotlinx/datetime/format/DateTimeComponentsContents;->getOffset()Lkotlinx/datetime/format/IncompleteUtcOffset;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlinx/datetime/format/IncompleteUtcOffset;->populateFrom(Lkotlinx/datetime/UtcOffset;)V

    return-void
.end method

.method public final setOffsetHours(Ljava/lang/Integer;)V
    .locals 3

    .line 372
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->offsetHours$delegate:Lkotlinx/datetime/format/TwoDigitNumber;

    sget-object v1, Lkotlinx/datetime/format/DateTimeComponents;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lkotlinx/datetime/format/TwoDigitNumber;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Integer;)V

    return-void
.end method

.method public final setOffsetIsNegative(Ljava/lang/Boolean;)V
    .locals 1

    .line 365
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->contents:Lkotlinx/datetime/format/DateTimeComponentsContents;

    invoke-virtual {v0}, Lkotlinx/datetime/format/DateTimeComponentsContents;->getOffset()Lkotlinx/datetime/format/IncompleteUtcOffset;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlinx/datetime/format/IncompleteUtcOffset;->setNegative(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final setOffsetMinutesOfHour(Ljava/lang/Integer;)V
    .locals 3

    .line 379
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->offsetMinutesOfHour$delegate:Lkotlinx/datetime/format/TwoDigitNumber;

    sget-object v1, Lkotlinx/datetime/format/DateTimeComponents;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lkotlinx/datetime/format/TwoDigitNumber;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Integer;)V

    return-void
.end method

.method public final setOffsetSecondsOfMinute(Ljava/lang/Integer;)V
    .locals 3

    .line 386
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->offsetSecondsOfMinute$delegate:Lkotlinx/datetime/format/TwoDigitNumber;

    sget-object v1, Lkotlinx/datetime/format/DateTimeComponents;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lkotlinx/datetime/format/TwoDigitNumber;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Integer;)V

    return-void
.end method

.method public final setSecond(Ljava/lang/Integer;)V
    .locals 3

    .line 345
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->second$delegate:Lkotlinx/datetime/format/TwoDigitNumber;

    sget-object v1, Lkotlinx/datetime/format/DateTimeComponents;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lkotlinx/datetime/format/TwoDigitNumber;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Integer;)V

    return-void
.end method

.method public final setTime(Lkotlinx/datetime/LocalTime;)V
    .locals 1

    const-string v0, "localTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->contents:Lkotlinx/datetime/format/DateTimeComponentsContents;

    invoke-virtual {v0}, Lkotlinx/datetime/format/DateTimeComponentsContents;->getTime()Lkotlinx/datetime/format/IncompleteLocalTime;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlinx/datetime/format/IncompleteLocalTime;->populateFrom(Lkotlinx/datetime/LocalTime;)V

    return-void
.end method

.method public final setTimeZoneId(Ljava/lang/String;)V
    .locals 1

    .line 392
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->contents:Lkotlinx/datetime/format/DateTimeComponentsContents;

    invoke-virtual {v0, p1}, Lkotlinx/datetime/format/DateTimeComponentsContents;->setTimeZoneId(Ljava/lang/String;)V

    return-void
.end method

.method public final setYear(Ljava/lang/Integer;)V
    .locals 1

    .line 266
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->contents:Lkotlinx/datetime/format/DateTimeComponentsContents;

    invoke-virtual {v0}, Lkotlinx/datetime/format/DateTimeComponentsContents;->getDate()Lkotlinx/datetime/format/IncompleteLocalDate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlinx/datetime/format/IncompleteLocalDate;->setYear(Ljava/lang/Integer;)V

    return-void
.end method

.method public final toInstantUsingOffset()Lkotlinx/datetime/Instant;
    .locals 10

    .line 474
    const-string v0, "The parsed date is outside the range representable by Instant"

    invoke-virtual {p0}, Lkotlinx/datetime/format/DateTimeComponents;->toUtcOffset()Lkotlinx/datetime/UtcOffset;

    move-result-object v1

    .line 475
    invoke-virtual {p0}, Lkotlinx/datetime/format/DateTimeComponents;->toLocalTime()Lkotlinx/datetime/LocalTime;

    move-result-object v2

    .line 476
    iget-object v3, p0, Lkotlinx/datetime/format/DateTimeComponents;->contents:Lkotlinx/datetime/format/DateTimeComponentsContents;

    invoke-virtual {v3}, Lkotlinx/datetime/format/DateTimeComponentsContents;->getDate()Lkotlinx/datetime/format/IncompleteLocalDate;

    move-result-object v3

    invoke-virtual {v3}, Lkotlinx/datetime/format/IncompleteLocalDate;->copy()Lkotlinx/datetime/format/IncompleteLocalDate;

    move-result-object v3

    .line 483
    invoke-virtual {v3}, Lkotlinx/datetime/format/IncompleteLocalDate;->getYear()Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "year"

    invoke-static {v4, v5}, Lkotlinx/datetime/format/LocalDateFormatKt;->requireParsedField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    rem-int/lit16 v4, v4, 0x2710

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkotlinx/datetime/format/IncompleteLocalDate;->setYear(Ljava/lang/Integer;)V

    .line 485
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/datetime/format/DateTimeComponents;->getYear()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    div-int/lit16 v4, v4, 0x2710

    int-to-long v4, v4

    const-wide v6, 0x497968bd80L

    invoke-static {v4, v5, v6, v7}, Lkotlinx/datetime/internal/MathJvmKt;->safeMultiply(JJ)J

    move-result-wide v4

    .line 486
    invoke-virtual {v3}, Lkotlinx/datetime/format/IncompleteLocalDate;->toLocalDate()Lkotlinx/datetime/LocalDate;

    move-result-object v3

    invoke-virtual {v3}, Lkotlinx/datetime/LocalDate;->toEpochDays()I

    move-result v3

    int-to-long v6, v3

    const v3, 0x15180

    int-to-long v8, v3

    mul-long/2addr v6, v8

    .line 487
    invoke-virtual {v2}, Lkotlinx/datetime/LocalTime;->toSecondOfDay()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v6, v2

    invoke-virtual {v1}, Lkotlinx/datetime/UtcOffset;->getTotalSeconds()I

    move-result v1

    int-to-long v1, v1

    sub-long/2addr v6, v1

    invoke-static {v4, v5, v6, v7}, Lkotlinx/datetime/internal/MathJvmKt;->safeAdd(JJ)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    sget-object v3, Lkotlinx/datetime/Instant;->Companion:Lkotlinx/datetime/Instant$Companion;

    invoke-virtual {v3}, Lkotlinx/datetime/Instant$Companion;->getMIN$kotlinx_datetime()Lkotlinx/datetime/Instant;

    move-result-object v3

    invoke-virtual {v3}, Lkotlinx/datetime/Instant;->getEpochSeconds()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1

    sget-object v3, Lkotlinx/datetime/Instant;->Companion:Lkotlinx/datetime/Instant$Companion;

    invoke-virtual {v3}, Lkotlinx/datetime/Instant$Companion;->getMAX$kotlinx_datetime()Lkotlinx/datetime/Instant;

    move-result-object v3

    invoke-virtual {v3}, Lkotlinx/datetime/Instant;->getEpochSeconds()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    .line 493
    sget-object v0, Lkotlinx/datetime/Instant;->Companion:Lkotlinx/datetime/Instant$Companion;

    invoke-virtual {p0}, Lkotlinx/datetime/format/DateTimeComponents;->getNanosecond()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lkotlinx/datetime/Instant$Companion;->fromEpochSeconds(JI)Lkotlinx/datetime/Instant;

    move-result-object v0

    return-object v0

    .line 492
    :cond_1
    new-instance v1, Lkotlinx/datetime/DateTimeFormatException;

    invoke-direct {v1, v0}, Lkotlinx/datetime/DateTimeFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v1

    .line 489
    new-instance v2, Lkotlinx/datetime/DateTimeFormatException;

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {v2, v0, v1}, Lkotlinx/datetime/DateTimeFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final toLocalDate()Lkotlinx/datetime/LocalDate;
    .locals 1

    .line 421
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->contents:Lkotlinx/datetime/format/DateTimeComponentsContents;

    invoke-virtual {v0}, Lkotlinx/datetime/format/DateTimeComponentsContents;->getDate()Lkotlinx/datetime/format/IncompleteLocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/datetime/format/IncompleteLocalDate;->toLocalDate()Lkotlinx/datetime/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public final toLocalDateTime()Lkotlinx/datetime/LocalDateTime;
    .locals 2

    .line 459
    invoke-virtual {p0}, Lkotlinx/datetime/format/DateTimeComponents;->toLocalDate()Lkotlinx/datetime/LocalDate;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/datetime/format/DateTimeComponents;->toLocalTime()Lkotlinx/datetime/LocalTime;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlinx/datetime/LocalDateKt;->atTime(Lkotlinx/datetime/LocalDate;Lkotlinx/datetime/LocalTime;)Lkotlinx/datetime/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public final toLocalTime()Lkotlinx/datetime/LocalTime;
    .locals 1

    .line 436
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->contents:Lkotlinx/datetime/format/DateTimeComponentsContents;

    invoke-virtual {v0}, Lkotlinx/datetime/format/DateTimeComponentsContents;->getTime()Lkotlinx/datetime/format/IncompleteLocalTime;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/datetime/format/IncompleteLocalTime;->toLocalTime()Lkotlinx/datetime/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public final toUtcOffset()Lkotlinx/datetime/UtcOffset;
    .locals 1

    .line 406
    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponents;->contents:Lkotlinx/datetime/format/DateTimeComponentsContents;

    invoke-virtual {v0}, Lkotlinx/datetime/format/DateTimeComponentsContents;->getOffset()Lkotlinx/datetime/format/IncompleteUtcOffset;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/datetime/format/IncompleteUtcOffset;->toUtcOffset()Lkotlinx/datetime/UtcOffset;

    move-result-object v0

    return-object v0
.end method
