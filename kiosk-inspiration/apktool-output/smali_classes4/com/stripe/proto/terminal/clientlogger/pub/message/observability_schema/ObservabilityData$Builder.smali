.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ObservabilityData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0012\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;",
        "()V",
        "event_data",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;",
        "legacy_trace_data",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData;",
        "log_data",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData;",
        "metadata",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;",
        "metric_data",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;",
        "search_indices",
        "Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;",
        "trace_data",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TraceData;",
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
.field public event_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;

.field public legacy_trace_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData;

.field public log_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData;

.field public metadata:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;

.field public metric_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;

.field public search_indices:Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;

.field public trace_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TraceData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;
    .locals 9

    .line 242
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;

    .line 243
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->metadata:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;

    .line 244
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->search_indices:Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;

    .line 245
    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->log_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData;

    .line 246
    iget-object v4, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->metric_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;

    .line 247
    iget-object v5, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->trace_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TraceData;

    .line 248
    iget-object v6, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->legacy_trace_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData;

    .line 249
    iget-object v7, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->event_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;

    .line 250
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v8

    .line 242
    invoke-direct/range {v0 .. v8}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TraceData;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;Lokio/ByteString;)V

    return-object v0
.end method

.method public final event_data(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->event_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;

    const/4 p1, 0x0

    .line 235
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->log_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData;

    .line 236
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->metric_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;

    .line 237
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->trace_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TraceData;

    .line 238
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->legacy_trace_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData;

    return-object p0
.end method

.method public final legacy_trace_data(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->legacy_trace_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData;

    const/4 p1, 0x0

    .line 226
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->log_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData;

    .line 227
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->metric_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;

    .line 228
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->trace_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TraceData;

    .line 229
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->event_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;

    return-object p0
.end method

.method public final log_data(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->log_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData;

    const/4 p1, 0x0

    .line 199
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->metric_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;

    .line 200
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->trace_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TraceData;

    .line 201
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->legacy_trace_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData;

    .line 202
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->event_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;

    return-object p0
.end method

.method public final metadata(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->metadata:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;

    return-object p0
.end method

.method public final metric_data(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->metric_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;

    const/4 p1, 0x0

    .line 208
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->log_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData;

    .line 209
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->trace_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TraceData;

    .line 210
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->legacy_trace_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData;

    .line 211
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->event_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;

    return-object p0
.end method

.method public final search_indices(Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->search_indices:Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;

    return-object p0
.end method

.method public final trace_data(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TraceData;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->trace_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TraceData;

    const/4 p1, 0x0

    .line 217
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->log_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData;

    .line 218
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->metric_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;

    .line 219
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->legacy_trace_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData;

    .line 220
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;->event_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;

    return-object p0
.end method
