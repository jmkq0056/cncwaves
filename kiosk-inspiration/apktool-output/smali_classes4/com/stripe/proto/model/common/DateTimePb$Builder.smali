.class public final Lcom/stripe/proto/model/common/DateTimePb$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DateTimePb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/DateTimePb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/common/DateTimePb;",
        "Lcom/stripe/proto/model/common/DateTimePb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0010\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/DateTimePb$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/common/DateTimePb;",
        "()V",
        "day_of_month",
        "",
        "hour_of_day",
        "millis_of_second",
        "",
        "minute_of_hour",
        "month_of_year",
        "nanos_of_second",
        "second_of_minute",
        "time_zone",
        "Lcom/stripe/proto/model/common/TimeZone;",
        "year",
        "build",
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


# instance fields
.field public day_of_month:I

.field public hour_of_day:I

.field public millis_of_second:J

.field public minute_of_hour:I

.field public month_of_year:I

.field public nanos_of_second:I

.field public second_of_minute:I

.field public time_zone:Lcom/stripe/proto/model/common/TimeZone;

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 185
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 208
    sget-object v0, Lcom/stripe/proto/model/common/TimeZone;->TIME_ZONE_INVALID:Lcom/stripe/proto/model/common/TimeZone;

    iput-object v0, p0, Lcom/stripe/proto/model/common/DateTimePb$Builder;->time_zone:Lcom/stripe/proto/model/common/TimeZone;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 185
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/DateTimePb$Builder;->build()Lcom/stripe/proto/model/common/DateTimePb;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/common/DateTimePb;
    .locals 12

    .line 258
    new-instance v0, Lcom/stripe/proto/model/common/DateTimePb;

    .line 259
    iget v1, p0, Lcom/stripe/proto/model/common/DateTimePb$Builder;->year:I

    .line 260
    iget v2, p0, Lcom/stripe/proto/model/common/DateTimePb$Builder;->month_of_year:I

    .line 261
    iget v3, p0, Lcom/stripe/proto/model/common/DateTimePb$Builder;->day_of_month:I

    .line 262
    iget v4, p0, Lcom/stripe/proto/model/common/DateTimePb$Builder;->hour_of_day:I

    .line 263
    iget v5, p0, Lcom/stripe/proto/model/common/DateTimePb$Builder;->minute_of_hour:I

    .line 264
    iget v6, p0, Lcom/stripe/proto/model/common/DateTimePb$Builder;->second_of_minute:I

    .line 265
    iget-wide v7, p0, Lcom/stripe/proto/model/common/DateTimePb$Builder;->millis_of_second:J

    .line 266
    iget-object v9, p0, Lcom/stripe/proto/model/common/DateTimePb$Builder;->time_zone:Lcom/stripe/proto/model/common/TimeZone;

    .line 267
    iget v10, p0, Lcom/stripe/proto/model/common/DateTimePb$Builder;->nanos_of_second:I

    .line 268
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/DateTimePb$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v11

    .line 258
    invoke-direct/range {v0 .. v11}, Lcom/stripe/proto/model/common/DateTimePb;-><init>(IIIIIIJLcom/stripe/proto/model/common/TimeZone;ILokio/ByteString;)V

    return-object v0
.end method

.method public final day_of_month(I)Lcom/stripe/proto/model/common/DateTimePb$Builder;
    .locals 0

    .line 224
    iput p1, p0, Lcom/stripe/proto/model/common/DateTimePb$Builder;->day_of_month:I

    return-object p0
.end method

.method public final hour_of_day(I)Lcom/stripe/proto/model/common/DateTimePb$Builder;
    .locals 0

    .line 229
    iput p1, p0, Lcom/stripe/proto/model/common/DateTimePb$Builder;->hour_of_day:I

    return-object p0
.end method

.method public final millis_of_second(J)Lcom/stripe/proto/model/common/DateTimePb$Builder;
    .locals 0

    .line 244
    iput-wide p1, p0, Lcom/stripe/proto/model/common/DateTimePb$Builder;->millis_of_second:J

    return-object p0
.end method

.method public final minute_of_hour(I)Lcom/stripe/proto/model/common/DateTimePb$Builder;
    .locals 0

    .line 234
    iput p1, p0, Lcom/stripe/proto/model/common/DateTimePb$Builder;->minute_of_hour:I

    return-object p0
.end method

.method public final month_of_year(I)Lcom/stripe/proto/model/common/DateTimePb$Builder;
    .locals 0

    .line 219
    iput p1, p0, Lcom/stripe/proto/model/common/DateTimePb$Builder;->month_of_year:I

    return-object p0
.end method

.method public final nanos_of_second(I)Lcom/stripe/proto/model/common/DateTimePb$Builder;
    .locals 0

    .line 254
    iput p1, p0, Lcom/stripe/proto/model/common/DateTimePb$Builder;->nanos_of_second:I

    return-object p0
.end method

.method public final second_of_minute(I)Lcom/stripe/proto/model/common/DateTimePb$Builder;
    .locals 0

    .line 239
    iput p1, p0, Lcom/stripe/proto/model/common/DateTimePb$Builder;->second_of_minute:I

    return-object p0
.end method

.method public final time_zone(Lcom/stripe/proto/model/common/TimeZone;)Lcom/stripe/proto/model/common/DateTimePb$Builder;
    .locals 1

    const-string v0, "time_zone"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iput-object p1, p0, Lcom/stripe/proto/model/common/DateTimePb$Builder;->time_zone:Lcom/stripe/proto/model/common/TimeZone;

    return-object p0
.end method

.method public final year(I)Lcom/stripe/proto/model/common/DateTimePb$Builder;
    .locals 0

    .line 214
    iput p1, p0, Lcom/stripe/proto/model/common/DateTimePb$Builder;->year:I

    return-object p0
.end method
