.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DataUsageEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;",
        "()V",
        "bucketed_usage_event",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent;",
        "categorized_usage_event",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/CategorizedUsageEvent;",
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
.field public bucketed_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent;

.field public categorized_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/CategorizedUsageEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final bucketed_usage_event(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent$Builder;
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent$Builder;->bucketed_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent;

    const/4 p1, 0x0

    .line 104
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent$Builder;->categorized_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/CategorizedUsageEvent;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;
    .locals 4

    .line 114
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;

    .line 115
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent$Builder;->bucketed_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent;

    .line 116
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent$Builder;->categorized_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/CategorizedUsageEvent;

    .line 117
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 114
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/CategorizedUsageEvent;Lokio/ByteString;)V

    return-object v0
.end method

.method public final categorized_usage_event(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/CategorizedUsageEvent;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent$Builder;
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent$Builder;->categorized_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/CategorizedUsageEvent;

    const/4 p1, 0x0

    .line 110
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent$Builder;->bucketed_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent;

    return-object p0
.end method
