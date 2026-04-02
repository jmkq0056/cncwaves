.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "MetricData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u001a\u0010\n\u001a\u00020\u00002\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c0\u000bR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c0\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;",
        "()V",
        "event_result",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult;",
        "health_metric",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;",
        "result",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricResult;",
        "tags",
        "",
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
.field public event_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult;

.field public health_metric:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

.field public result:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricResult;

.field public tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 127
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 135
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Builder;->tags:Ljava/util/Map;

    .line 138
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricResult;->METRIC_RESULT_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricResult;

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Builder;->result:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricResult;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 127
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;
    .locals 6

    .line 162
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;

    .line 163
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Builder;->event_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult;

    .line 164
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Builder;->health_metric:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    .line 165
    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Builder;->tags:Ljava/util/Map;

    .line 166
    iget-object v4, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Builder;->result:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricResult;

    .line 167
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 162
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;Ljava/util/Map;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricResult;Lokio/ByteString;)V

    return-object v0
.end method

.method public final event_result(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Builder;
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Builder;->event_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult;

    const/4 p1, 0x0

    .line 152
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Builder;->health_metric:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    return-object p0
.end method

.method public final health_metric(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Builder;
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Builder;->health_metric:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    const/4 p1, 0x0

    .line 158
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Builder;->event_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult;

    return-object p0
.end method

.method public final result(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricResult;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Builder;
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Builder;->result:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricResult;

    return-object p0
.end method

.method public final tags(Ljava/util/Map;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Builder;"
        }
    .end annotation

    const-string v0, "tags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData$Builder;->tags:Ljava/util/Map;

    return-object p0
.end method
