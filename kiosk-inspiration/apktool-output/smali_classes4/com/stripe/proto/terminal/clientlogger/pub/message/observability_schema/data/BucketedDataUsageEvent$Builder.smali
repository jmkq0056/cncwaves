.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "BucketedDataUsageEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0008\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0008J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\nR\u0018\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent;",
        "()V",
        "application_usage_event",
        "",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/ApplicationUsageEvent;",
        "data_connection_type",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataConnectionType;",
        "entire_device_usage",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/EntireDeviceUsageEvent;",
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
.field public application_usage_event:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/ApplicationUsageEvent;",
            ">;"
        }
    .end annotation
.end field

.field public data_connection_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataConnectionType;

.field public entire_device_usage:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/EntireDeviceUsageEvent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 115
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent$Builder;->application_usage_event:Ljava/util/List;

    .line 119
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataConnectionType;->DATA_CONNECTION_TYPE_WIFI_OR_ETHERNET:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataConnectionType;

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent$Builder;->data_connection_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataConnectionType;

    return-void
.end method


# virtual methods
.method public final application_usage_event(Ljava/util/List;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/ApplicationUsageEvent;",
            ">;)",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent$Builder;"
        }
    .end annotation

    const-string v0, "application_usage_event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 128
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent$Builder;->application_usage_event:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent;
    .locals 5

    .line 137
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent;

    .line 138
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent$Builder;->entire_device_usage:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/EntireDeviceUsageEvent;

    .line 139
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent$Builder;->application_usage_event:Ljava/util/List;

    .line 140
    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent$Builder;->data_connection_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataConnectionType;

    .line 141
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 137
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/EntireDeviceUsageEvent;Ljava/util/List;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataConnectionType;Lokio/ByteString;)V

    return-object v0
.end method

.method public final data_connection_type(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataConnectionType;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent$Builder;
    .locals 1

    const-string v0, "data_connection_type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent$Builder;->data_connection_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataConnectionType;

    return-object p0
.end method

.method public final entire_device_usage(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/EntireDeviceUsageEvent;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent$Builder;
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketedDataUsageEvent$Builder;->entire_device_usage:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/EntireDeviceUsageEvent;

    return-object p0
.end method
