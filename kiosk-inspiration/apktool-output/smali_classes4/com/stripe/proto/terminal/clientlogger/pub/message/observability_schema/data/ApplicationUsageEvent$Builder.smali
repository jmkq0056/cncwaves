.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/ApplicationUsageEvent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ApplicationUsageEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/ApplicationUsageEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/ApplicationUsageEvent;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/ApplicationUsageEvent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/ApplicationUsageEvent$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/ApplicationUsageEvent;",
        "()V",
        "application",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/ApplicationMetadata;",
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
.field public application:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/ApplicationMetadata;

.field public bucket_metadata:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketMetadata;

.field public usage:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageAmount;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final application(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/ApplicationMetadata;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/ApplicationUsageEvent$Builder;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/ApplicationUsageEvent$Builder;->application:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/ApplicationMetadata;

    return-object p0
.end method

.method public final bucket_metadata(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketMetadata;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/ApplicationUsageEvent$Builder;
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/ApplicationUsageEvent$Builder;->bucket_metadata:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketMetadata;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/ApplicationUsageEvent$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/ApplicationUsageEvent;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/ApplicationUsageEvent;
    .locals 5

    .line 126
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/ApplicationUsageEvent;

    .line 127
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/ApplicationUsageEvent$Builder;->usage:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageAmount;

    .line 128
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/ApplicationUsageEvent$Builder;->application:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/ApplicationMetadata;

    .line 129
    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/ApplicationUsageEvent$Builder;->bucket_metadata:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketMetadata;

    .line 130
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/ApplicationUsageEvent$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 126
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/ApplicationUsageEvent;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageAmount;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/ApplicationMetadata;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketMetadata;Lokio/ByteString;)V

    return-object v0
.end method

.method public final usage(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageAmount;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/ApplicationUsageEvent$Builder;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/ApplicationUsageEvent$Builder;->usage:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageAmount;

    return-object p0
.end method
