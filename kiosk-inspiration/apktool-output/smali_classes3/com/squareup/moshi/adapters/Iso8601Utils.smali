.class final Lcom/squareup/moshi/adapters/Iso8601Utils;
.super Ljava/lang/Object;
.source "Iso8601Utils.java"


# static fields
.field static final GMT_ID:Ljava/lang/String; = "GMT"

.field static final TIMEZONE_Z:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/squareup/moshi/adapters/Iso8601Utils;->TIMEZONE_Z:Ljava/util/TimeZone;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOffset(Ljava/lang/String;IC)Z
    .locals 1

    .line 211
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .locals 4

    .line 47
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Lcom/squareup/moshi/adapters/Iso8601Utils;->TIMEZONE_Z:Ljava/util/TimeZone;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 48
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 51
    const-string p0, "yyyy-MM-ddThh:mm:ss.sssZ"

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 p0, 0x1

    .line 53
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const-string v3, "yyyy"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/squareup/moshi/adapters/Iso8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    const/16 v2, 0x2d

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    .line 55
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, p0

    const-string p0, "MM"

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {v1, v3, p0}, Lcom/squareup/moshi/adapters/Iso8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p0, 0x5

    .line 57
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const-string v2, "dd"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, p0, v2}, Lcom/squareup/moshi/adapters/Iso8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    const/16 p0, 0x54

    .line 58
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0xb

    .line 59
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const-string v2, "hh"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, p0, v2}, Lcom/squareup/moshi/adapters/Iso8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    const/16 p0, 0x3a

    .line 60
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    .line 61
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const-string v3, "mm"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/squareup/moshi/adapters/Iso8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 62
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0xd

    .line 63
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const-string v2, "ss"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, p0, v2}, Lcom/squareup/moshi/adapters/Iso8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    const/16 p0, 0x2e

    .line 64
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0xe

    .line 65
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const-string v0, "sss"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v1, p0, v0}, Lcom/squareup/moshi/adapters/Iso8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    const/16 p0, 0x5a

    .line 66
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static indexOfNonDigit(Ljava/lang/String;I)I
    .locals 2

    .line 269
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 270
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x39

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1

    .line 273
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method private static padInt(Ljava/lang/StringBuilder;II)V
    .locals 1

    .line 258
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 259
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p2, v0

    :goto_0
    if-lez p2, :cond_0

    const/16 v0, 0x30

    .line 260
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "Mismatching time zone indicator: "

    const-string v2, "GMT"

    const-string v3, "Invalid time zone indicator \'"

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 82
    :try_start_0
    invoke-static {v1, v5, v4}, Lcom/squareup/moshi/adapters/Iso8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v6

    const/16 v7, 0x2d

    .line 83
    invoke-static {v1, v4, v7}, Lcom/squareup/moshi/adapters/Iso8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v4, 0x5

    :cond_0
    add-int/lit8 v8, v4, 0x2

    .line 88
    invoke-static {v1, v4, v8}, Lcom/squareup/moshi/adapters/Iso8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v10

    .line 89
    invoke-static {v1, v8, v7}, Lcom/squareup/moshi/adapters/Iso8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v11

    if-eqz v11, :cond_1

    add-int/lit8 v8, v4, 0x3

    :cond_1
    add-int/lit8 v4, v8, 0x2

    .line 94
    invoke-static {v1, v8, v4}, Lcom/squareup/moshi/adapters/Iso8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v11

    const/16 v12, 0x54

    .line 103
    invoke-static {v1, v4, v12}, Lcom/squareup/moshi/adapters/Iso8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v12

    const/4 v13, 0x1

    if-nez v12, :cond_2

    .line 105
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    if-gt v14, v4, :cond_2

    .line 106
    new-instance v0, Ljava/util/GregorianCalendar;

    sub-int/2addr v10, v13

    invoke-direct {v0, v6, v10, v11}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 108
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v14, 0x2b

    const/16 v15, 0x5a

    if-eqz v12, :cond_8

    add-int/lit8 v4, v8, 0x3

    add-int/lit8 v12, v8, 0x5

    .line 114
    invoke-static {v1, v4, v12}, Lcom/squareup/moshi/adapters/Iso8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v4

    const/16 v9, 0x3a

    .line 115
    invoke-static {v1, v12, v9}, Lcom/squareup/moshi/adapters/Iso8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v16

    if-eqz v16, :cond_3

    add-int/lit8 v12, v8, 0x6

    :cond_3
    add-int/lit8 v8, v12, 0x2

    .line 119
    invoke-static {v1, v12, v8}, Lcom/squareup/moshi/adapters/Iso8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v16

    .line 120
    invoke-static {v1, v8, v9}, Lcom/squareup/moshi/adapters/Iso8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v9

    if-eqz v9, :cond_4

    add-int/lit8 v12, v12, 0x3

    move v8, v12

    .line 124
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v8, :cond_7

    .line 125
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v15, :cond_7

    if-eq v9, v14, :cond_7

    if-eq v9, v7, :cond_7

    add-int/lit8 v9, v8, 0x2

    .line 127
    invoke-static {v1, v8, v9}, Lcom/squareup/moshi/adapters/Iso8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v12

    const/16 v13, 0x3b

    if-le v12, v13, :cond_5

    const/16 v13, 0x3f

    if-ge v12, v13, :cond_5

    const/16 v12, 0x3b

    :cond_5
    const/16 v13, 0x2e

    .line 130
    invoke-static {v1, v9, v13}, Lcom/squareup/moshi/adapters/Iso8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v13

    if-eqz v13, :cond_6

    add-int/lit8 v9, v8, 0x3

    add-int/lit8 v13, v8, 0x4

    .line 132
    invoke-static {v1, v13}, Lcom/squareup/moshi/adapters/Iso8601Utils;->indexOfNonDigit(Ljava/lang/String;I)I

    move-result v13

    add-int/lit8 v8, v8, 0x6

    .line 133
    invoke-static {v13, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 134
    invoke-static {v1, v9, v8}, Lcom/squareup/moshi/adapters/Iso8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v5

    sub-int/2addr v8, v9

    rsub-int/lit8 v8, v8, 0x3

    int-to-double v8, v8

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    .line 135
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    int-to-double v14, v5

    mul-double/2addr v8, v14

    double-to-int v5, v8

    move v8, v5

    move/from16 v9, v16

    move v5, v4

    move v4, v13

    goto :goto_1

    :cond_6
    move v5, v4

    move v4, v9

    move/from16 v9, v16

    const/4 v8, 0x0

    goto :goto_1

    :cond_7
    move v5, v4

    move v4, v8

    move/from16 v9, v16

    const/4 v8, 0x0

    goto :goto_0

    :cond_8
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    const/4 v12, 0x0

    .line 143
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    if-le v13, v4, :cond_10

    .line 148
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x5a

    if-ne v13, v14, :cond_9

    .line 151
    sget-object v0, Lcom/squareup/moshi/adapters/Iso8601Utils;->TIMEZONE_Z:Ljava/util/TimeZone;

    goto/16 :goto_5

    :cond_9
    const/16 v14, 0x2b

    if-eq v13, v14, :cond_b

    if-ne v13, v7, :cond_a

    goto :goto_2

    .line 180
    :cond_a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_b
    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 155
    const-string v4, "+0000"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "+00:00"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_4

    .line 160
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 162
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    .line 163
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 169
    const-string v7, ":"

    const-string v13, ""

    invoke-virtual {v4, v7, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 170
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_3

    .line 171
    :cond_d
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " given, resolves to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 175
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_e
    :goto_3
    move-object v0, v3

    goto :goto_5

    .line 156
    :cond_f
    :goto_4
    sget-object v0, Lcom/squareup/moshi/adapters/Iso8601Utils;->TIMEZONE_Z:Ljava/util/TimeZone;

    .line 184
    :goto_5
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    const/4 v0, 0x0

    .line 185
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setLenient(Z)V

    const/4 v0, 0x1

    .line 186
    invoke-virtual {v2, v0, v6}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr v10, v0

    const/4 v0, 0x2

    .line 187
    invoke-virtual {v2, v0, v10}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x5

    .line 188
    invoke-virtual {v2, v0, v11}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xb

    .line 189
    invoke-virtual {v2, v0, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 190
    invoke-virtual {v2, v0, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 191
    invoke-virtual {v2, v0, v12}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 192
    invoke-virtual {v2, v0, v8}, Ljava/util/Calendar;->set(II)V

    .line 194
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 144
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "No time zone indicator"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    .line 198
    :goto_6
    new-instance v2, Lcom/squareup/moshi/JsonDataException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Not an RFC 3339 date: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static parseInt(Ljava/lang/String;II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    if-ltz p1, :cond_4

    .line 225
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_4

    if-gt p1, p2, :cond_4

    .line 232
    const-string v0, "Invalid number: "

    const/16 v1, 0xa

    if-ge p1, p2, :cond_1

    add-int/lit8 v2, p1, 0x1

    .line 233
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    if-ltz v3, :cond_0

    neg-int v3, v3

    goto :goto_0

    .line 235
    :cond_0
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v3, 0x0

    move v2, p1

    :goto_0
    if-ge v2, p2, :cond_3

    add-int/lit8 v4, v2, 0x1

    .line 240
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-ltz v2, :cond_2

    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v3, v2

    move v2, v4

    goto :goto_0

    .line 242
    :cond_2
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    neg-int p0, v3

    return p0

    .line 226
    :cond_4
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
