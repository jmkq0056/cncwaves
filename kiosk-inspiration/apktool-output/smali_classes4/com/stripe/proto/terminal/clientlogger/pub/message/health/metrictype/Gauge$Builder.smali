.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Gauge.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0007\u001a\u00020\u0002H\u0016J\u0015\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0008R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;",
        "()V",
        "measurement",
        "",
        "Ljava/lang/Long;",
        "build",
        "(Ljava/lang/Long;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge$Builder;",
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
.field public measurement:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;
    .locals 3

    .line 100
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    .line 101
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge$Builder;->measurement:Ljava/lang/Long;

    .line 102
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v2

    .line 100
    invoke-direct {v0, v1, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;-><init>(Ljava/lang/Long;Lokio/ByteString;)V

    return-object v0
.end method

.method public final measurement(Ljava/lang/Long;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge$Builder;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge$Builder;->measurement:Ljava/lang/Long;

    return-object p0
.end method
