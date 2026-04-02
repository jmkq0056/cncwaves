.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DevicePerformanceSnapshotEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0008\u0010\u0010\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0007J\u0014\u0010\r\u001a\u00020\u00002\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;",
        "()V",
        "accessibility_snapshot",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;",
        "available_memory_percentage",
        "",
        "data_partition_snapshot",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DiskPartitionUsageSnapshot;",
        "is_low_memory",
        "",
        "low_memory_threshold_percentage",
        "running_apps",
        "",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/ApplicationMetadata;",
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
.field public accessibility_snapshot:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;

.field public available_memory_percentage:D

.field public data_partition_snapshot:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DiskPartitionUsageSnapshot;

.field public is_low_memory:Z

.field public low_memory_threshold_percentage:D

.field public running_apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/ApplicationMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 175
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 186
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;->running_apps:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accessibility_snapshot(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;->accessibility_snapshot:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;

    return-object p0
.end method

.method public final available_memory_percentage(D)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;
    .locals 0

    .line 198
    iput-wide p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;->available_memory_percentage:D

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 175
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;
    .locals 10

    .line 245
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    .line 246
    iget-wide v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;->available_memory_percentage:D

    .line 247
    iget-wide v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;->low_memory_threshold_percentage:D

    .line 248
    iget-boolean v5, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;->is_low_memory:Z

    .line 249
    iget-object v6, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;->running_apps:Ljava/util/List;

    .line 250
    iget-object v7, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;->accessibility_snapshot:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;

    .line 251
    iget-object v8, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;->data_partition_snapshot:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DiskPartitionUsageSnapshot;

    .line 252
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v9

    .line 245
    invoke-direct/range {v0 .. v9}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;-><init>(DDZLjava/util/List;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DiskPartitionUsageSnapshot;Lokio/ByteString;)V

    return-object v0
.end method

.method public final data_partition_snapshot(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DiskPartitionUsageSnapshot;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;->data_partition_snapshot:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DiskPartitionUsageSnapshot;

    return-object p0
.end method

.method public final is_low_memory(Z)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;
    .locals 0

    .line 216
    iput-boolean p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;->is_low_memory:Z

    return-object p0
.end method

.method public final low_memory_threshold_percentage(D)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;
    .locals 0

    .line 208
    iput-wide p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;->low_memory_threshold_percentage:D

    return-object p0
.end method

.method public final running_apps(Ljava/util/List;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/ApplicationMetadata;",
            ">;)",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;"
        }
    .end annotation

    const-string v0, "running_apps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 225
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;->running_apps:Ljava/util/List;

    return-object p0
.end method
