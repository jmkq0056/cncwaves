.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/EntireDeviceUsageEvent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "EntireDeviceUsageEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/EntireDeviceUsageEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/EntireDeviceUsageEvent;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/EntireDeviceUsageEvent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/EntireDeviceUsageEvent$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/EntireDeviceUsageEvent;",
        "()V",
        "bucket_metadata",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketMetadata;",
        "usage",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageAmount;",
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
.field public bucket_metadata:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketMetadata;

.field public usage:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageAmount;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final bucket_metadata(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketMetadata;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/EntireDeviceUsageEvent$Builder;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/EntireDeviceUsageEvent$Builder;->bucket_metadata:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketMetadata;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 87
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/EntireDeviceUsageEvent$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/EntireDeviceUsageEvent;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/EntireDeviceUsageEvent;
    .locals 4

    .line 104
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/EntireDeviceUsageEvent;

    .line 105
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/EntireDeviceUsageEvent$Builder;->usage:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageAmount;

    .line 106
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/EntireDeviceUsageEvent$Builder;->bucket_metadata:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketMetadata;

    .line 107
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/EntireDeviceUsageEvent$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 104
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/EntireDeviceUsageEvent;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageAmount;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketMetadata;Lokio/ByteString;)V

    return-object v0
.end method

.method public final usage(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageAmount;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/EntireDeviceUsageEvent$Builder;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/EntireDeviceUsageEvent$Builder;->usage:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageAmount;

    return-object p0
.end method
