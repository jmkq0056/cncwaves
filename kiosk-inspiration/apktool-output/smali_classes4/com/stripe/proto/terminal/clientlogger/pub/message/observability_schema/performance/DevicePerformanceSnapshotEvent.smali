.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;
.super Lcom/squareup/wire/Message;
.source "DevicePerformanceSnapshotEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;,
        Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u001c2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001b\u001cBU\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0011JV\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010J\u0013\u0010\u0013\u001a\u00020\u00072\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0002H\u0016J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;",
        "available_memory_percentage",
        "",
        "low_memory_threshold_percentage",
        "is_low_memory",
        "",
        "running_apps",
        "",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/ApplicationMetadata;",
        "accessibility_snapshot",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;",
        "data_partition_snapshot",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DiskPartitionUsageSnapshot;",
        "unknownFields",
        "Lokio/ByteString;",
        "(DDZLjava/util/List;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DiskPartitionUsageSnapshot;Lokio/ByteString;)V",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "",
        "Builder",
        "Companion",
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


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final accessibility_snapshot:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.performance.AccessibilitySnapshot#ADAPTER"
        jsonName = "accessibilitySnapshot"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final available_memory_percentage:D
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#DOUBLE"
        jsonName = "availableMemoryPercentage"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final data_partition_snapshot:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DiskPartitionUsageSnapshot;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.performance.DiskPartitionUsageSnapshot#ADAPTER"
        jsonName = "dataPartitionSnapshot"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final is_low_memory:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "isLowMemory"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final low_memory_threshold_percentage:D
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#DOUBLE"
        jsonName = "lowMemoryThresholdPercentage"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final running_apps:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.performance.ApplicationMetadata#ADAPTER"
        jsonName = "runningApps"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/ApplicationMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->Companion:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Companion;

    .line 260
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 259
    const-class v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 263
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 259
    new-instance v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    const/16 v10, 0x7f

    const/4 v11, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;-><init>(DDZLjava/util/List;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DiskPartitionUsageSnapshot;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(DDZLjava/util/List;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DiskPartitionUsageSnapshot;Lokio/ByteString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDZ",
            "Ljava/util/List<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/ApplicationMetadata;",
            ">;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DiskPartitionUsageSnapshot;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    const-string v0, "running_apps"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "unknownFields"

    invoke-static {p9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v1, p9}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 39
    iput-wide p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->available_memory_percentage:D

    .line 53
    iput-wide p3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->low_memory_threshold_percentage:D

    .line 65
    iput-boolean p5, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->is_low_memory:Z

    .line 78
    iput-object p7, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->accessibility_snapshot:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;

    .line 90
    iput-object p8, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->data_partition_snapshot:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DiskPartitionUsageSnapshot;

    .line 112
    invoke-static {v0, p6}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->running_apps:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(DDZLjava/util/List;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DiskPartitionUsageSnapshot;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p11, p10, 0x1

    const-wide/16 v0, 0x0

    if-eqz p11, :cond_0

    move-wide p1, v0

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    move-wide p3, v0

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    const/4 p5, 0x0

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    .line 74
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p6

    :cond_3
    and-int/lit8 p11, p10, 0x10

    const/4 v0, 0x0

    if-eqz p11, :cond_4

    move-object p7, v0

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    move-object p8, v0

    :cond_5
    and-int/lit8 p10, p10, 0x40

    if-eqz p10, :cond_6

    .line 99
    sget-object p9, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_6
    move-object p10, p9

    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move p6, p5

    move-wide p4, p3

    move-wide p2, p1

    move-object p1, p0

    .line 35
    invoke-direct/range {p1 .. p10}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;-><init>(DDZLjava/util/List;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DiskPartitionUsageSnapshot;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;DDZLjava/util/List;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DiskPartitionUsageSnapshot;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;
    .locals 10

    and-int/lit8 v0, p10, 0x1

    if-eqz v0, :cond_0

    .line 166
    iget-wide p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->available_memory_percentage:D

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p10, 0x2

    if-eqz p1, :cond_1

    .line 167
    iget-wide p3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->low_memory_threshold_percentage:D

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p10, 0x4

    if-eqz p1, :cond_2

    .line 168
    iget-boolean p5, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->is_low_memory:Z

    :cond_2
    move v5, p5

    and-int/lit8 p1, p10, 0x8

    if-eqz p1, :cond_3

    .line 169
    iget-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->running_apps:Ljava/util/List;

    move-object v6, p1

    goto :goto_0

    :cond_3
    move-object/from16 v6, p6

    :goto_0
    and-int/lit8 p1, p10, 0x10

    if-eqz p1, :cond_4

    .line 170
    iget-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->accessibility_snapshot:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;

    move-object v7, p1

    goto :goto_1

    :cond_4
    move-object/from16 v7, p7

    :goto_1
    and-int/lit8 p1, p10, 0x20

    if-eqz p1, :cond_5

    .line 171
    iget-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->data_partition_snapshot:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DiskPartitionUsageSnapshot;

    move-object v8, p1

    goto :goto_2

    :cond_5
    move-object/from16 v8, p8

    :goto_2
    and-int/lit8 p1, p10, 0x40

    if-eqz p1, :cond_6

    .line 172
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->unknownFields()Lokio/ByteString;

    move-result-object p1

    move-object v9, p1

    goto :goto_3

    :cond_6
    move-object/from16 v9, p9

    :goto_3
    move-object v0, p0

    .line 165
    invoke-virtual/range {v0 .. v9}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->copy(DDZLjava/util/List;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DiskPartitionUsageSnapshot;Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(DDZLjava/util/List;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DiskPartitionUsageSnapshot;Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDZ",
            "Ljava/util/List<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/ApplicationMetadata;",
            ">;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DiskPartitionUsageSnapshot;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;"
        }
    .end annotation

    const-string v0, "running_apps"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;-><init>(DDZLjava/util/List;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DiskPartitionUsageSnapshot;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 128
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    invoke-virtual {p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 130
    :cond_2
    iget-wide v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->available_memory_percentage:D

    iget-wide v5, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->available_memory_percentage:D

    cmpg-double v1, v3, v5

    if-nez v1, :cond_7

    .line 131
    iget-wide v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->low_memory_threshold_percentage:D

    iget-wide v5, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->low_memory_threshold_percentage:D

    cmpg-double v1, v3, v5

    if-nez v1, :cond_7

    .line 132
    iget-boolean v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->is_low_memory:Z

    iget-boolean v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->is_low_memory:Z

    if-eq v1, v3, :cond_3

    return v2

    .line 133
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->running_apps:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->running_apps:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 134
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->accessibility_snapshot:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->accessibility_snapshot:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 135
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->data_partition_snapshot:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DiskPartitionUsageSnapshot;

    iget-object p1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->data_partition_snapshot:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DiskPartitionUsageSnapshot;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0

    :cond_7
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 140
    iget v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->hashCode:I

    if-nez v0, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 143
    iget-wide v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->available_memory_percentage:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 144
    iget-wide v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->low_memory_threshold_percentage:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 145
    iget-boolean v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->is_low_memory:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 146
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->running_apps:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 147
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->accessibility_snapshot:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 148
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->data_partition_snapshot:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DiskPartitionUsageSnapshot;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DiskPartitionUsageSnapshot;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    .line 149
    iput v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->hashCode:I

    :cond_2
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->newBuilder()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;
    .locals 3

    .line 115
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;-><init>()V

    .line 116
    iget-wide v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->available_memory_percentage:D

    iput-wide v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;->available_memory_percentage:D

    .line 117
    iget-wide v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->low_memory_threshold_percentage:D

    iput-wide v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;->low_memory_threshold_percentage:D

    .line 118
    iget-boolean v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->is_low_memory:Z

    iput-boolean v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;->is_low_memory:Z

    .line 119
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->running_apps:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;->running_apps:Ljava/util/List;

    .line 120
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->accessibility_snapshot:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;->accessibility_snapshot:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;

    .line 121
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->data_partition_snapshot:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DiskPartitionUsageSnapshot;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;->data_partition_snapshot:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DiskPartitionUsageSnapshot;

    .line 122
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 156
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "available_memory_percentage="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->available_memory_percentage:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "low_memory_threshold_percentage="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->low_memory_threshold_percentage:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "is_low_memory="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->is_low_memory:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->running_apps:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "running_apps="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->running_apps:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->accessibility_snapshot:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "accessibility_snapshot="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->accessibility_snapshot:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_1
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->data_partition_snapshot:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DiskPartitionUsageSnapshot;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "data_partition_snapshot="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;->data_partition_snapshot:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DiskPartitionUsageSnapshot;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_2
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "DevicePerformanceSnapshotEvent{"

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
