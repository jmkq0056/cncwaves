.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketMetadata$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "BucketMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketMetadata;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketMetadata$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u0008\u0010\u0007\u001a\u00020\u0002H\u0016R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketMetadata$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketMetadata;",
        "()V",
        "bucket_end_time_millis",
        "",
        "bucket_start_time_millis",
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
.field public bucket_end_time_millis:J

.field public bucket_start_time_millis:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final bucket_end_time_millis(J)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketMetadata$Builder;
    .locals 0

    .line 101
    iput-wide p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketMetadata$Builder;->bucket_end_time_millis:J

    return-object p0
.end method

.method public final bucket_start_time_millis(J)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketMetadata$Builder;
    .locals 0

    .line 96
    iput-wide p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketMetadata$Builder;->bucket_start_time_millis:J

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketMetadata$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketMetadata;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketMetadata;
    .locals 6

    .line 105
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketMetadata;

    .line 106
    iget-wide v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketMetadata$Builder;->bucket_start_time_millis:J

    .line 107
    iget-wide v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketMetadata$Builder;->bucket_end_time_millis:J

    .line 108
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketMetadata$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 105
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/BucketMetadata;-><init>(JJLokio/ByteString;)V

    return-object v0
.end method
