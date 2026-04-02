.class public final Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DownloadMobilePosConfigResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;",
        "Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;",
        "()V",
        "config",
        "Lcom/stripe/proto/model/config/MobileClientConfig;",
        "device_trace_level",
        "Lcom/stripe/proto/model/config/DeviceTraceLevel;",
        "reader_feature_flags",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
        "reader_metadata",
        "Lcom/stripe/proto/api/armada/ReaderMetadata;",
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
.field public config:Lcom/stripe/proto/model/config/MobileClientConfig;

.field public device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

.field public reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

.field public reader_metadata:Lcom/stripe/proto/api/armada/ReaderMetadata;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 118
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Builder;->build()Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;
    .locals 6

    .line 151
    new-instance v0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;

    .line 152
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Builder;->config:Lcom/stripe/proto/model/config/MobileClientConfig;

    .line 153
    iget-object v2, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Builder;->reader_metadata:Lcom/stripe/proto/api/armada/ReaderMetadata;

    .line 154
    iget-object v3, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Builder;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    .line 155
    iget-object v4, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Builder;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    .line 156
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 151
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse;-><init>(Lcom/stripe/proto/model/config/MobileClientConfig;Lcom/stripe/proto/api/armada/ReaderMetadata;Lcom/stripe/proto/model/config/DeviceTraceLevel;Lcom/stripe/proto/model/config/ReaderFeatureFlags;Lokio/ByteString;)V

    return-object v0
.end method

.method public final config(Lcom/stripe/proto/model/config/MobileClientConfig;)Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Builder;
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Builder;->config:Lcom/stripe/proto/model/config/MobileClientConfig;

    return-object p0
.end method

.method public final device_trace_level(Lcom/stripe/proto/model/config/DeviceTraceLevel;)Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Builder;
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Builder;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    return-object p0
.end method

.method public final reader_feature_flags(Lcom/stripe/proto/model/config/ReaderFeatureFlags;)Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Builder;
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Builder;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    return-object p0
.end method

.method public final reader_metadata(Lcom/stripe/proto/api/armada/ReaderMetadata;)Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Builder;
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigResponse$Builder;->reader_metadata:Lcom/stripe/proto/api/armada/ReaderMetadata;

    return-object p0
.end method
