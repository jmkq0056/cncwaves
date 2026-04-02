.class public final Lkotlinx/datetime/format/IncompleteLocalDate;
.super Ljava/lang/Object;
.source "LocalDateFormat.kt"

# interfaces
.implements Lkotlinx/datetime/format/DateFieldContainer;
.implements Lkotlinx/datetime/internal/format/parser/Copyable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/datetime/format/DateFieldContainer;",
        "Lkotlinx/datetime/internal/format/parser/Copyable<",
        "Lkotlinx/datetime/format/IncompleteLocalDate;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B5\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0014\u001a\u00020\u0000H\u0016J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\u0008\u0010\u0019\u001a\u00020\u0004H\u0016J\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dJ\u0006\u0010\u001e\u001a\u00020\u001dJ\u0008\u0010\u001f\u001a\u00020 H\u0016R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0096\u000e\u00a2\u0006\u0010\n\u0002\u0010\r\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0096\u000e\u00a2\u0006\u0010\n\u0002\u0010\r\u001a\u0004\u0008\u000e\u0010\n\"\u0004\u0008\u000f\u0010\u000cR\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0096\u000e\u00a2\u0006\u0010\n\u0002\u0010\r\u001a\u0004\u0008\u0010\u0010\n\"\u0004\u0008\u0011\u0010\u000cR\u001e\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0096\u000e\u00a2\u0006\u0010\n\u0002\u0010\r\u001a\u0004\u0008\u0012\u0010\n\"\u0004\u0008\u0013\u0010\u000c\u00a8\u0006!"
    }
    d2 = {
        "Lkotlinx/datetime/format/IncompleteLocalDate;",
        "Lkotlinx/datetime/format/DateFieldContainer;",
        "Lkotlinx/datetime/internal/format/parser/Copyable;",
        "year",
        "",
        "monthNumber",
        "dayOfMonth",
        "isoDayOfWeek",
        "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V",
        "getDayOfMonth",
        "()Ljava/lang/Integer;",
        "setDayOfMonth",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getIsoDayOfWeek",
        "setIsoDayOfWeek",
        "getMonthNumber",
        "setMonthNumber",
        "getYear",
        "setYear",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "populateFrom",
        "",
        "date",
        "Lkotlinx/datetime/LocalDate;",
        "toLocalDate",
        "toString",
        "",
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


# instance fields
.field private dayOfMonth:Ljava/lang/Integer;

.field private isoDayOfWeek:Ljava/lang/Integer;

.field private monthNumber:Ljava/lang/Integer;

.field private year:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lkotlinx/datetime/format/IncompleteLocalDate;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lkotlinx/datetime/format/IncompleteLocalDate;->year:Ljava/lang/Integer;

    .line 218
    iput-object p2, p0, Lkotlinx/datetime/format/IncompleteLocalDate;->monthNumber:Ljava/lang/Integer;

    .line 219
    iput-object p3, p0, Lkotlinx/datetime/format/IncompleteLocalDate;->dayOfMonth:Ljava/lang/Integer;

    .line 220
    iput-object p4, p0, Lkotlinx/datetime/format/IncompleteLocalDate;->isoDayOfWeek:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move-object p4, v0

    .line 216
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlinx/datetime/format/IncompleteLocalDate;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .line 216
    invoke-virtual {p0}, Lkotlinx/datetime/format/IncompleteLocalDate;->copy()Lkotlinx/datetime/format/IncompleteLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lkotlinx/datetime/format/IncompleteLocalDate;
    .locals 5

    .line 246
    new-instance v0, Lkotlinx/datetime/format/IncompleteLocalDate;

    invoke-virtual {p0}, Lkotlinx/datetime/format/IncompleteLocalDate;->getYear()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lkotlinx/datetime/format/IncompleteLocalDate;->getMonthNumber()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lkotlinx/datetime/format/IncompleteLocalDate;->getDayOfMonth()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lkotlinx/datetime/format/IncompleteLocalDate;->getIsoDayOfWeek()Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlinx/datetime/format/IncompleteLocalDate;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 249
    instance-of v0, p1, Lkotlinx/datetime/format/IncompleteLocalDate;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/datetime/format/IncompleteLocalDate;->getYear()Ljava/lang/Integer;

    move-result-object v0

    check-cast p1, Lkotlinx/datetime/format/IncompleteLocalDate;

    invoke-virtual {p1}, Lkotlinx/datetime/format/IncompleteLocalDate;->getYear()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/datetime/format/IncompleteLocalDate;->getMonthNumber()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lkotlinx/datetime/format/IncompleteLocalDate;->getMonthNumber()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lkotlinx/datetime/format/IncompleteLocalDate;->getDayOfMonth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lkotlinx/datetime/format/IncompleteLocalDate;->getDayOfMonth()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/datetime/format/IncompleteLocalDate;->getIsoDayOfWeek()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lkotlinx/datetime/format/IncompleteLocalDate;->getIsoDayOfWeek()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getDayOfMonth()Ljava/lang/Integer;
    .locals 1

    .line 219
    iget-object v0, p0, Lkotlinx/datetime/format/IncompleteLocalDate;->dayOfMonth:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIsoDayOfWeek()Ljava/lang/Integer;
    .locals 1

    .line 220
    iget-object v0, p0, Lkotlinx/datetime/format/IncompleteLocalDate;->isoDayOfWeek:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMonthNumber()Ljava/lang/Integer;
    .locals 1

    .line 218
    iget-object v0, p0, Lkotlinx/datetime/format/IncompleteLocalDate;->monthNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public getYear()Ljava/lang/Integer;
    .locals 1

    .line 217
    iget-object v0, p0, Lkotlinx/datetime/format/IncompleteLocalDate;->year:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 253
    invoke-virtual {p0}, Lkotlinx/datetime/format/IncompleteLocalDate;->getYear()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lkotlinx/datetime/format/IncompleteLocalDate;->getMonthNumber()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lkotlinx/datetime/format/IncompleteLocalDate;->getDayOfMonth()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lkotlinx/datetime/format/IncompleteLocalDate;->getIsoDayOfWeek()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public final populateFrom(Lkotlinx/datetime/LocalDate;)V
    .locals 1

    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p1}, Lkotlinx/datetime/LocalDate;->getYear()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/datetime/format/IncompleteLocalDate;->setYear(Ljava/lang/Integer;)V

    .line 241
    invoke-virtual {p1}, Lkotlinx/datetime/LocalDate;->getMonthNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/datetime/format/IncompleteLocalDate;->setMonthNumber(Ljava/lang/Integer;)V

    .line 242
    invoke-virtual {p1}, Lkotlinx/datetime/LocalDate;->getDayOfMonth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/datetime/format/IncompleteLocalDate;->setDayOfMonth(Ljava/lang/Integer;)V

    .line 243
    invoke-virtual {p1}, Lkotlinx/datetime/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/datetime/DayOfWeekKt;->getIsoDayNumber(Ljava/time/DayOfWeek;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/datetime/format/IncompleteLocalDate;->setIsoDayOfWeek(Ljava/lang/Integer;)V

    return-void
.end method

.method public setDayOfMonth(Ljava/lang/Integer;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lkotlinx/datetime/format/IncompleteLocalDate;->dayOfMonth:Ljava/lang/Integer;

    return-void
.end method

.method public setIsoDayOfWeek(Ljava/lang/Integer;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lkotlinx/datetime/format/IncompleteLocalDate;->isoDayOfWeek:Ljava/lang/Integer;

    return-void
.end method

.method public setMonthNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lkotlinx/datetime/format/IncompleteLocalDate;->monthNumber:Ljava/lang/Integer;

    return-void
.end method

.method public setYear(Ljava/lang/Integer;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lkotlinx/datetime/format/IncompleteLocalDate;->year:Ljava/lang/Integer;

    return-void
.end method

.method public final toLocalDate()Lkotlinx/datetime/LocalDate;
    .locals 5

    .line 223
    new-instance v0, Lkotlinx/datetime/LocalDate;

    .line 224
    invoke-virtual {p0}, Lkotlinx/datetime/format/IncompleteLocalDate;->getYear()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "year"

    invoke-static {v1, v2}, Lkotlinx/datetime/format/LocalDateFormatKt;->requireParsedField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 225
    invoke-virtual {p0}, Lkotlinx/datetime/format/IncompleteLocalDate;->getMonthNumber()Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "monthNumber"

    invoke-static {v2, v3}, Lkotlinx/datetime/format/LocalDateFormatKt;->requireParsedField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 226
    invoke-virtual {p0}, Lkotlinx/datetime/format/IncompleteLocalDate;->getDayOfMonth()Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "dayOfMonth"

    invoke-static {v3, v4}, Lkotlinx/datetime/format/LocalDateFormatKt;->requireParsedField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 223
    invoke-direct {v0, v1, v2, v3}, Lkotlinx/datetime/LocalDate;-><init>(III)V

    .line 228
    invoke-virtual {p0}, Lkotlinx/datetime/format/IncompleteLocalDate;->getIsoDayOfWeek()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 229
    invoke-virtual {v0}, Lkotlinx/datetime/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/datetime/DayOfWeekKt;->getIsoDayNumber(Ljava/time/DayOfWeek;)I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    new-instance v2, Lkotlinx/datetime/DateTimeFormatException;

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can not create a LocalDate from the given input: the day of week is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-static {v1}, Lkotlinx/datetime/DayOfWeekKt;->DayOfWeek(I)Ljava/time/DayOfWeek;

    move-result-object v1

    .line 231
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 232
    const-string v3, " but the date is "

    .line 231
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 232
    const-string v3, ", which is a "

    .line 231
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 232
    invoke-virtual {v0}, Lkotlinx/datetime/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v0

    .line 231
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-direct {v2, v0}, Lkotlinx/datetime/DateTimeFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/datetime/format/IncompleteLocalDate;->getYear()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "??"

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/datetime/format/IncompleteLocalDate;->getMonthNumber()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v2

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/datetime/format/IncompleteLocalDate;->getDayOfMonth()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (day of week is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/datetime/format/IncompleteLocalDate;->getIsoDayOfWeek()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
