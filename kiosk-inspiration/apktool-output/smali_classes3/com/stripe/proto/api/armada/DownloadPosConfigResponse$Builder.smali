.class public final Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DownloadPosConfigResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;",
        "Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u0013\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0012\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0012R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;",
        "()V",
        "bin_table_asset",
        "Lcom/stripe/proto/model/common/SignedAssetPb;",
        "checksum",
        "",
        "config",
        "Lcom/stripe/proto/model/config/PosConfig;",
        "date_time",
        "Lcom/stripe/proto/model/common/DateTimePb;",
        "localization_bundle_asset",
        "reader_feature_flags",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
        "reader_metadata",
        "Lcom/stripe/proto/api/armada/ReaderMetadata;",
        "time_zone",
        "Lcom/stripe/proto/model/common/TimeZone;",
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
.field public bin_table_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

.field public checksum:Ljava/lang/String;

.field public config:Lcom/stripe/proto/model/config/PosConfig;

.field public date_time:Lcom/stripe/proto/model/common/DateTimePb;

.field public localization_bundle_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

.field public reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

.field public reader_metadata:Lcom/stripe/proto/api/armada/ReaderMetadata;

.field public time_zone:Lcom/stripe/proto/model/common/TimeZone;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 194
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 202
    sget-object v0, Lcom/stripe/proto/model/common/TimeZone;->TIME_ZONE_INVALID:Lcom/stripe/proto/model/common/TimeZone;

    iput-object v0, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;->time_zone:Lcom/stripe/proto/model/common/TimeZone;

    .line 217
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;->checksum:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final bin_table_asset(Lcom/stripe/proto/model/common/SignedAssetPb;)Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;->bin_table_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 194
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;->build()Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;
    .locals 10

    .line 276
    new-instance v0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;

    .line 277
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;->config:Lcom/stripe/proto/model/config/PosConfig;

    .line 278
    iget-object v2, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;->date_time:Lcom/stripe/proto/model/common/DateTimePb;

    .line 279
    iget-object v3, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;->time_zone:Lcom/stripe/proto/model/common/TimeZone;

    .line 280
    iget-object v4, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;->bin_table_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    .line 281
    iget-object v5, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;->localization_bundle_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    .line 282
    iget-object v6, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;->reader_metadata:Lcom/stripe/proto/api/armada/ReaderMetadata;

    .line 283
    iget-object v7, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    .line 284
    iget-object v8, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;->checksum:Ljava/lang/String;

    .line 285
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v9

    .line 276
    invoke-direct/range {v0 .. v9}, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse;-><init>(Lcom/stripe/proto/model/config/PosConfig;Lcom/stripe/proto/model/common/DateTimePb;Lcom/stripe/proto/model/common/TimeZone;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/api/armada/ReaderMetadata;Lcom/stripe/proto/model/config/ReaderFeatureFlags;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final checksum(Ljava/lang/String;)Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;
    .locals 1

    const-string v0, "checksum"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;->checksum:Ljava/lang/String;

    return-object p0
.end method

.method public final config(Lcom/stripe/proto/model/config/PosConfig;)Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;->config:Lcom/stripe/proto/model/config/PosConfig;

    return-object p0
.end method

.method public final date_time(Lcom/stripe/proto/model/common/DateTimePb;)Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "date_time is deprecated"
    .end annotation

    .line 233
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;->date_time:Lcom/stripe/proto/model/common/DateTimePb;

    return-object p0
.end method

.method public final localization_bundle_asset(Lcom/stripe/proto/model/common/SignedAssetPb;)Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;->localization_bundle_asset:Lcom/stripe/proto/model/common/SignedAssetPb;

    return-object p0
.end method

.method public final reader_feature_flags(Lcom/stripe/proto/model/config/ReaderFeatureFlags;)Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    return-object p0
.end method

.method public final reader_metadata(Lcom/stripe/proto/api/armada/ReaderMetadata;)Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;->reader_metadata:Lcom/stripe/proto/api/armada/ReaderMetadata;

    return-object p0
.end method

.method public final time_zone(Lcom/stripe/proto/model/common/TimeZone;)Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;
    .locals 1

    const-string v0, "time_zone"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadPosConfigResponse$Builder;->time_zone:Lcom/stripe/proto/model/common/TimeZone;

    return-object p0
.end method
