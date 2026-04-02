.class public final Lcom/stripe/proto/model/common/DateTimePb;
.super Lcom/squareup/wire/Message;
.source "DateTimePb.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/common/DateTimePb$Builder;,
        Lcom/stripe/proto/model/common/DateTimePb$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/common/DateTimePb;",
        "Lcom/stripe/proto/model/common/DateTimePb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u001c2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001b\u001cBi\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0011Jj\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00042\u0008\u0008\u0002\u0010\t\u001a\u00020\u00042\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\u0008\u0010\u0017\u001a\u00020\u0004H\u0016J\u0008\u0010\u0018\u001a\u00020\u0002H\u0016J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u00020\r8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/DateTimePb;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/common/DateTimePb$Builder;",
        "year",
        "",
        "month_of_year",
        "day_of_month",
        "hour_of_day",
        "minute_of_hour",
        "second_of_minute",
        "millis_of_second",
        "",
        "time_zone",
        "Lcom/stripe/proto/model/common/TimeZone;",
        "nanos_of_second",
        "unknownFields",
        "Lokio/ByteString;",
        "(IIIIIIJLcom/stripe/proto/model/common/TimeZone;ILokio/ByteString;)V",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "newBuilder",
        "toString",
        "",
        "Builder",
        "Companion",
        "common_release"
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
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/model/common/DateTimePb;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/common/DateTimePb$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final day_of_month:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        jsonName = "dayOfMonth"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final hour_of_day:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        jsonName = "hourOfDay"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final millis_of_second:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "millisOfSecond"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final minute_of_hour:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        jsonName = "minuteOfHour"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final month_of_year:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        jsonName = "monthOfYear"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final nanos_of_second:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        jsonName = "nanosOfSecond"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final second_of_minute:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        jsonName = "secondOfMinute"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final time_zone:Lcom/stripe/proto/model/common/TimeZone;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.TimeZone#ADAPTER"
        jsonName = "timeZone"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final year:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/common/DateTimePb$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/common/DateTimePb$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/common/DateTimePb;->Companion:Lcom/stripe/proto/model/common/DateTimePb$Companion;

    .line 275
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 274
    const-class v1, Lcom/stripe/proto/model/common/DateTimePb;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 278
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 274
    new-instance v3, Lcom/stripe/proto/model/common/DateTimePb$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/common/DateTimePb$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/common/DateTimePb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    const/16 v12, 0x3ff

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/stripe/proto/model/common/DateTimePb;-><init>(IIIIIIJLcom/stripe/proto/model/common/TimeZone;ILokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIIIIIJLcom/stripe/proto/model/common/TimeZone;ILokio/ByteString;)V
    .locals 1

    const-string v0, "time_zone"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    sget-object v0, Lcom/stripe/proto/model/common/DateTimePb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p11}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 27
    iput p1, p0, Lcom/stripe/proto/model/common/DateTimePb;->year:I

    .line 35
    iput p2, p0, Lcom/stripe/proto/model/common/DateTimePb;->month_of_year:I

    .line 44
    iput p3, p0, Lcom/stripe/proto/model/common/DateTimePb;->day_of_month:I

    .line 53
    iput p4, p0, Lcom/stripe/proto/model/common/DateTimePb;->hour_of_day:I

    .line 62
    iput p5, p0, Lcom/stripe/proto/model/common/DateTimePb;->minute_of_hour:I

    .line 71
    iput p6, p0, Lcom/stripe/proto/model/common/DateTimePb;->second_of_minute:I

    .line 80
    iput-wide p7, p0, Lcom/stripe/proto/model/common/DateTimePb;->millis_of_second:J

    .line 89
    iput-object p9, p0, Lcom/stripe/proto/model/common/DateTimePb;->time_zone:Lcom/stripe/proto/model/common/TimeZone;

    .line 98
    iput p10, p0, Lcom/stripe/proto/model/common/DateTimePb;->nanos_of_second:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIIIJLcom/stripe/proto/model/common/TimeZone;ILokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p13, p12, 0x1

    const/4 v0, 0x0

    if-eqz p13, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    move p6, v0

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    const-wide/16 p7, 0x0

    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    .line 97
    sget-object p9, Lcom/stripe/proto/model/common/TimeZone;->TIME_ZONE_INVALID:Lcom/stripe/proto/model/common/TimeZone;

    :cond_7
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_8

    move p10, v0

    :cond_8
    and-int/lit16 p12, p12, 0x200

    if-eqz p12, :cond_9

    .line 107
    sget-object p11, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_9
    move-object p12, p11

    move p11, p10

    move-object p10, p9

    move-wide p8, p7

    move p7, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .line 26
    invoke-direct/range {p1 .. p12}, Lcom/stripe/proto/model/common/DateTimePb;-><init>(IIIIIIJLcom/stripe/proto/model/common/TimeZone;ILokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/common/DateTimePb;IIIIIIJLcom/stripe/proto/model/common/TimeZone;ILokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/common/DateTimePb;
    .locals 0

    and-int/lit8 p13, p12, 0x1

    if-eqz p13, :cond_0

    .line 173
    iget p1, p0, Lcom/stripe/proto/model/common/DateTimePb;->year:I

    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    .line 174
    iget p2, p0, Lcom/stripe/proto/model/common/DateTimePb;->month_of_year:I

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    .line 175
    iget p3, p0, Lcom/stripe/proto/model/common/DateTimePb;->day_of_month:I

    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    .line 176
    iget p4, p0, Lcom/stripe/proto/model/common/DateTimePb;->hour_of_day:I

    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    .line 177
    iget p5, p0, Lcom/stripe/proto/model/common/DateTimePb;->minute_of_hour:I

    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    .line 178
    iget p6, p0, Lcom/stripe/proto/model/common/DateTimePb;->second_of_minute:I

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    .line 179
    iget-wide p7, p0, Lcom/stripe/proto/model/common/DateTimePb;->millis_of_second:J

    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    .line 180
    iget-object p9, p0, Lcom/stripe/proto/model/common/DateTimePb;->time_zone:Lcom/stripe/proto/model/common/TimeZone;

    :cond_7
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_8

    .line 181
    iget p10, p0, Lcom/stripe/proto/model/common/DateTimePb;->nanos_of_second:I

    :cond_8
    and-int/lit16 p12, p12, 0x200

    if-eqz p12, :cond_9

    .line 182
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/DateTimePb;->unknownFields()Lokio/ByteString;

    move-result-object p11

    :cond_9
    move p12, p10

    move-object p13, p11

    move-object p11, p9

    move-wide p9, p7

    move p7, p5

    move p8, p6

    move p5, p3

    move p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    .line 172
    invoke-virtual/range {p2 .. p13}, Lcom/stripe/proto/model/common/DateTimePb;->copy(IIIIIIJLcom/stripe/proto/model/common/TimeZone;ILokio/ByteString;)Lcom/stripe/proto/model/common/DateTimePb;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(IIIIIIJLcom/stripe/proto/model/common/TimeZone;ILokio/ByteString;)Lcom/stripe/proto/model/common/DateTimePb;
    .locals 13

    const-string v0, "time_zone"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    new-instance v1, Lcom/stripe/proto/model/common/DateTimePb;

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v11, p10

    invoke-direct/range {v1 .. v12}, Lcom/stripe/proto/model/common/DateTimePb;-><init>(IIIIIIJLcom/stripe/proto/model/common/TimeZone;ILokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 126
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/common/DateTimePb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/DateTimePb;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/common/DateTimePb;

    invoke-virtual {p1}, Lcom/stripe/proto/model/common/DateTimePb;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 128
    :cond_2
    iget v1, p0, Lcom/stripe/proto/model/common/DateTimePb;->year:I

    iget v3, p1, Lcom/stripe/proto/model/common/DateTimePb;->year:I

    if-eq v1, v3, :cond_3

    return v2

    .line 129
    :cond_3
    iget v1, p0, Lcom/stripe/proto/model/common/DateTimePb;->month_of_year:I

    iget v3, p1, Lcom/stripe/proto/model/common/DateTimePb;->month_of_year:I

    if-eq v1, v3, :cond_4

    return v2

    .line 130
    :cond_4
    iget v1, p0, Lcom/stripe/proto/model/common/DateTimePb;->day_of_month:I

    iget v3, p1, Lcom/stripe/proto/model/common/DateTimePb;->day_of_month:I

    if-eq v1, v3, :cond_5

    return v2

    .line 131
    :cond_5
    iget v1, p0, Lcom/stripe/proto/model/common/DateTimePb;->hour_of_day:I

    iget v3, p1, Lcom/stripe/proto/model/common/DateTimePb;->hour_of_day:I

    if-eq v1, v3, :cond_6

    return v2

    .line 132
    :cond_6
    iget v1, p0, Lcom/stripe/proto/model/common/DateTimePb;->minute_of_hour:I

    iget v3, p1, Lcom/stripe/proto/model/common/DateTimePb;->minute_of_hour:I

    if-eq v1, v3, :cond_7

    return v2

    .line 133
    :cond_7
    iget v1, p0, Lcom/stripe/proto/model/common/DateTimePb;->second_of_minute:I

    iget v3, p1, Lcom/stripe/proto/model/common/DateTimePb;->second_of_minute:I

    if-eq v1, v3, :cond_8

    return v2

    .line 134
    :cond_8
    iget-wide v3, p0, Lcom/stripe/proto/model/common/DateTimePb;->millis_of_second:J

    iget-wide v5, p1, Lcom/stripe/proto/model/common/DateTimePb;->millis_of_second:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    .line 135
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/model/common/DateTimePb;->time_zone:Lcom/stripe/proto/model/common/TimeZone;

    iget-object v3, p1, Lcom/stripe/proto/model/common/DateTimePb;->time_zone:Lcom/stripe/proto/model/common/TimeZone;

    if-eq v1, v3, :cond_a

    return v2

    .line 136
    :cond_a
    iget v1, p0, Lcom/stripe/proto/model/common/DateTimePb;->nanos_of_second:I

    iget p1, p1, Lcom/stripe/proto/model/common/DateTimePb;->nanos_of_second:I

    if-eq v1, p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 141
    iget v0, p0, Lcom/stripe/proto/model/common/DateTimePb;->hashCode:I

    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/DateTimePb;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 144
    iget v1, p0, Lcom/stripe/proto/model/common/DateTimePb;->year:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 145
    iget v1, p0, Lcom/stripe/proto/model/common/DateTimePb;->month_of_year:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 146
    iget v1, p0, Lcom/stripe/proto/model/common/DateTimePb;->day_of_month:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 147
    iget v1, p0, Lcom/stripe/proto/model/common/DateTimePb;->hour_of_day:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 148
    iget v1, p0, Lcom/stripe/proto/model/common/DateTimePb;->minute_of_hour:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 149
    iget v1, p0, Lcom/stripe/proto/model/common/DateTimePb;->second_of_minute:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 150
    iget-wide v1, p0, Lcom/stripe/proto/model/common/DateTimePb;->millis_of_second:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 151
    iget-object v1, p0, Lcom/stripe/proto/model/common/DateTimePb;->time_zone:Lcom/stripe/proto/model/common/TimeZone;

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/TimeZone;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 152
    iget v1, p0, Lcom/stripe/proto/model/common/DateTimePb;->nanos_of_second:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 153
    iput v0, p0, Lcom/stripe/proto/model/common/DateTimePb;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/DateTimePb;->newBuilder()Lcom/stripe/proto/model/common/DateTimePb$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/common/DateTimePb$Builder;
    .locals 3

    .line 110
    new-instance v0, Lcom/stripe/proto/model/common/DateTimePb$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/common/DateTimePb$Builder;-><init>()V

    .line 111
    iget v1, p0, Lcom/stripe/proto/model/common/DateTimePb;->year:I

    iput v1, v0, Lcom/stripe/proto/model/common/DateTimePb$Builder;->year:I

    .line 112
    iget v1, p0, Lcom/stripe/proto/model/common/DateTimePb;->month_of_year:I

    iput v1, v0, Lcom/stripe/proto/model/common/DateTimePb$Builder;->month_of_year:I

    .line 113
    iget v1, p0, Lcom/stripe/proto/model/common/DateTimePb;->day_of_month:I

    iput v1, v0, Lcom/stripe/proto/model/common/DateTimePb$Builder;->day_of_month:I

    .line 114
    iget v1, p0, Lcom/stripe/proto/model/common/DateTimePb;->hour_of_day:I

    iput v1, v0, Lcom/stripe/proto/model/common/DateTimePb$Builder;->hour_of_day:I

    .line 115
    iget v1, p0, Lcom/stripe/proto/model/common/DateTimePb;->minute_of_hour:I

    iput v1, v0, Lcom/stripe/proto/model/common/DateTimePb$Builder;->minute_of_hour:I

    .line 116
    iget v1, p0, Lcom/stripe/proto/model/common/DateTimePb;->second_of_minute:I

    iput v1, v0, Lcom/stripe/proto/model/common/DateTimePb$Builder;->second_of_minute:I

    .line 117
    iget-wide v1, p0, Lcom/stripe/proto/model/common/DateTimePb;->millis_of_second:J

    iput-wide v1, v0, Lcom/stripe/proto/model/common/DateTimePb$Builder;->millis_of_second:J

    .line 118
    iget-object v1, p0, Lcom/stripe/proto/model/common/DateTimePb;->time_zone:Lcom/stripe/proto/model/common/TimeZone;

    iput-object v1, v0, Lcom/stripe/proto/model/common/DateTimePb$Builder;->time_zone:Lcom/stripe/proto/model/common/TimeZone;

    .line 119
    iget v1, p0, Lcom/stripe/proto/model/common/DateTimePb;->nanos_of_second:I

    iput v1, v0, Lcom/stripe/proto/model/common/DateTimePb$Builder;->nanos_of_second:I

    .line 120
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/DateTimePb;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/common/DateTimePb$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 160
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "year="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/proto/model/common/DateTimePb;->year:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "month_of_year="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/proto/model/common/DateTimePb;->month_of_year:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "day_of_month="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/proto/model/common/DateTimePb;->day_of_month:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hour_of_day="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/proto/model/common/DateTimePb;->hour_of_day:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "minute_of_hour="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/proto/model/common/DateTimePb;->minute_of_hour:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "second_of_minute="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/proto/model/common/DateTimePb;->second_of_minute:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "millis_of_second="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/model/common/DateTimePb;->millis_of_second:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "time_zone="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/DateTimePb;->time_zone:Lcom/stripe/proto/model/common/TimeZone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nanos_of_second="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/proto/model/common/DateTimePb;->nanos_of_second:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 169
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "DateTimePb{"

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    const-string v0, "}"

    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    const/16 v10, 0x38

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
