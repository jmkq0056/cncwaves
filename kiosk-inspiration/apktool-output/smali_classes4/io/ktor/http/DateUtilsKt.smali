.class public final Lio/ktor/http/DateUtilsKt;
.super Ljava/lang/Object;
.source "DateUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0002\u001a\n\u0010\u0005\u001a\u00020\u0004*\u00020\u0002\u001a\u0014\u0010\u0006\u001a\u00020\u0002*\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u001a\n\u0010\t\u001a\u00020\u0002*\u00020\u0004\"\u0014\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "HTTP_DATE_FORMATS",
        "",
        "",
        "fromCookieToGmtDate",
        "Lio/ktor/util/date/GMTDate;",
        "fromHttpToGmtDate",
        "padZero",
        "",
        "length",
        "toHttpDate",
        "ktor-http"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final HTTP_DATE_FORMATS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xb

    .line 11
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "***, dd MMM YYYY hh:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 12
    const-string v3, "****, dd-MMM-YYYY hh:mm:ss zzz"

    aput-object v3, v0, v1

    const/4 v1, 0x2

    .line 13
    const-string v3, "*** MMM d hh:mm:ss YYYY"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    .line 14
    const-string v3, "***, dd-MMM-YYYY hh:mm:ss zzz"

    aput-object v3, v0, v1

    const/4 v1, 0x4

    .line 15
    const-string v3, "***, dd-MMM-YYYY hh-mm-ss zzz"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    .line 16
    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 17
    const-string v2, "*** dd-MMM-YYYY hh:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 18
    const-string v2, "*** dd MMM YYYY hh:mm:ss zzz"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 19
    const-string v2, "*** dd-MMM-YYYY hh-mm-ss zzz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 20
    const-string v2, "***,dd-MMM-YYYY hh:mm:ss zzz"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 21
    const-string v2, "*** MMM d YYYY hh:mm:ss zzz"

    aput-object v2, v0, v1

    .line 10
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/ktor/http/DateUtilsKt;->HTTP_DATE_FORMATS:Ljava/util/List;

    return-void
.end method

.method public static final fromCookieToGmtDate(Ljava/lang/String;)Lio/ktor/util/date/GMTDate;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 48
    :try_start_0
    new-instance v0, Lio/ktor/http/CookieDateParser;

    invoke-direct {v0}, Lio/ktor/http/CookieDateParser;-><init>()V

    .line 49
    invoke-virtual {v0, p0}, Lio/ktor/http/CookieDateParser;->parse(Ljava/lang/String;)Lio/ktor/util/date/GMTDate;

    move-result-object p0
    :try_end_0
    .catch Lio/ktor/http/InvalidCookieDateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 53
    :catch_0
    invoke-static {p0}, Lio/ktor/http/DateUtilsKt;->fromHttpToGmtDate(Ljava/lang/String;)Lio/ktor/util/date/GMTDate;

    move-result-object p0

    return-object p0
.end method

.method public static final fromHttpToGmtDate(Ljava/lang/String;)Lio/ktor/util/date/GMTDate;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    sget-object v1, Lio/ktor/http/DateUtilsKt;->HTTP_DATE_FORMATS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 32
    :try_start_0
    new-instance v3, Lio/ktor/util/date/GMTDateParser;

    invoke-direct {v3, v2}, Lio/ktor/util/date/GMTDateParser;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v3, p0}, Lio/ktor/util/date/GMTDateParser;->parse(Ljava/lang/String;)Lio/ktor/util/date/GMTDate;

    move-result-object p0
    :try_end_0
    .catch Lio/ktor/util/date/InvalidDateStringException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 34
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to parse date: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final padZero(II)Ljava/lang/String;
    .locals 1

    .line 68
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x30

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toHttpDate(Lio/ktor/util/date/GMTDate;)Ljava/lang/String;
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/ktor/util/date/GMTDate;->getDayOfWeek()Lio/ktor/util/date/WeekDay;

    move-result-object v2

    invoke-virtual {v2}, Lio/ktor/util/date/WeekDay;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/ktor/util/date/GMTDate;->getDayOfMonth()I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lio/ktor/http/DateUtilsKt;->padZero(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/ktor/util/date/GMTDate;->getMonth()Lio/ktor/util/date/Month;

    move-result-object v4

    invoke-virtual {v4}, Lio/ktor/util/date/Month;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p0}, Lio/ktor/util/date/GMTDate;->getYear()I

    move-result v1

    const/4 v4, 0x4

    invoke-static {v1, v4}, Lio/ktor/http/DateUtilsKt;->padZero(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/ktor/util/date/GMTDate;->getHours()I

    move-result v4

    invoke-static {v4, v3}, Lio/ktor/http/DateUtilsKt;->padZero(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x3a

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/ktor/util/date/GMTDate;->getMinutes()I

    move-result v5

    invoke-static {v5, v3}, Lio/ktor/http/DateUtilsKt;->padZero(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/ktor/util/date/GMTDate;->getSeconds()I

    move-result p0

    invoke-static {p0, v3}, Lio/ktor/http/DateUtilsKt;->padZero(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string p0, "GMT"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
