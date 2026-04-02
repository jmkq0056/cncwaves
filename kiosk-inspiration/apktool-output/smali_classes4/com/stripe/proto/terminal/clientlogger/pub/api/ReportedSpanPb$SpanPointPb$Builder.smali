.class public final Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ReportedSpanPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb;",
        "()V",
        "log_point",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$LogPoint;",
        "meter_point",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$MeterPoint;",
        "time_offset_ms",
        "",
        "build",
        "terminal_release"
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
.field public log_point:Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$LogPoint;

.field public meter_point:Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$MeterPoint;

.field public time_offset_ms:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1197
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1197
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb;
    .locals 5

    .line 1225
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb;

    .line 1226
    iget v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$Builder;->time_offset_ms:I

    .line 1227
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$Builder;->log_point:Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$LogPoint;

    .line 1228
    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$Builder;->meter_point:Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$MeterPoint;

    .line 1229
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 1225
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb;-><init>(ILcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$LogPoint;Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$MeterPoint;Lokio/ByteString;)V

    return-object v0
.end method

.method public final log_point(Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$LogPoint;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$Builder;
    .locals 0

    .line 1216
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$Builder;->log_point:Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$LogPoint;

    return-object p0
.end method

.method public final meter_point(Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$MeterPoint;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$Builder;
    .locals 0

    .line 1221
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$Builder;->meter_point:Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$MeterPoint;

    return-object p0
.end method

.method public final time_offset_ms(I)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$Builder;
    .locals 0

    .line 1211
    iput p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$Builder;->time_offset_ms:I

    return-object p0
.end method
