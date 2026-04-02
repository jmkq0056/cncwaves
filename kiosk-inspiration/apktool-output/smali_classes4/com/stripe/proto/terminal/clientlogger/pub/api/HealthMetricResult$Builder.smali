.class public final Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "HealthMetricResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u001a\u0010\u0008\u001a\u00020\u00002\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;",
        "()V",
        "health_metric",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;",
        "result",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result;",
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
.field public health_metric:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

.field public result:Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result;

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

    .line 112
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 117
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Builder;->tags:Ljava/util/Map;

    .line 120
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result;->OK:Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result;

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Builder;->result:Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;
    .locals 5

    .line 137
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;

    .line 138
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Builder;->health_metric:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    .line 139
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Builder;->tags:Ljava/util/Map;

    .line 140
    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Builder;->result:Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result;

    .line 141
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 137
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;Ljava/util/Map;Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result;Lokio/ByteString;)V

    return-object v0
.end method

.method public final health_metric(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;)Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Builder;
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Builder;->health_metric:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    return-object p0
.end method

.method public final result(Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result;)Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Builder;
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Builder;->result:Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Result;

    return-object p0
.end method

.method public final tags(Ljava/util/Map;)Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Builder;"
        }
    .end annotation

    const-string v0, "tags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult$Builder;->tags:Ljava/util/Map;

    return-object p0
.end method
