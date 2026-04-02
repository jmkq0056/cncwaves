.class public final Lcom/stripe/proto/api/warden/CheckVersionRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CheckVersionRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/warden/CheckVersionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/warden/CheckVersionRequest;",
        "Lcom/stripe/proto/api/warden/CheckVersionRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/proto/api/warden/CheckVersionRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/warden/CheckVersionRequest;",
        "()V",
        "device_info",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        "lane_status",
        "Lcom/stripe/proto/model/common/LaneStatus;",
        "store_id",
        "",
        "version_info",
        "Lcom/stripe/proto/model/common/VersionInfoPb;",
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
.field public device_info:Lcom/stripe/proto/model/common/DeviceInfo;

.field public lane_status:Lcom/stripe/proto/model/common/LaneStatus;

.field public store_id:Ljava/lang/String;

.field public version_info:Lcom/stripe/proto/model/common/VersionInfoPb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 129
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 131
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/warden/CheckVersionRequest$Builder;->store_id:Ljava/lang/String;

    .line 140
    sget-object v0, Lcom/stripe/proto/model/common/LaneStatus;->OPEN:Lcom/stripe/proto/model/common/LaneStatus;

    iput-object v0, p0, Lcom/stripe/proto/api/warden/CheckVersionRequest$Builder;->lane_status:Lcom/stripe/proto/model/common/LaneStatus;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/stripe/proto/api/warden/CheckVersionRequest$Builder;->build()Lcom/stripe/proto/api/warden/CheckVersionRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/warden/CheckVersionRequest;
    .locals 6

    .line 171
    new-instance v0, Lcom/stripe/proto/api/warden/CheckVersionRequest;

    .line 172
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckVersionRequest$Builder;->store_id:Ljava/lang/String;

    .line 173
    iget-object v2, p0, Lcom/stripe/proto/api/warden/CheckVersionRequest$Builder;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 174
    iget-object v3, p0, Lcom/stripe/proto/api/warden/CheckVersionRequest$Builder;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 175
    iget-object v4, p0, Lcom/stripe/proto/api/warden/CheckVersionRequest$Builder;->lane_status:Lcom/stripe/proto/model/common/LaneStatus;

    .line 176
    invoke-virtual {p0}, Lcom/stripe/proto/api/warden/CheckVersionRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 171
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/api/warden/CheckVersionRequest;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/LaneStatus;Lokio/ByteString;)V

    return-object v0
.end method

.method public final device_info(Lcom/stripe/proto/model/common/DeviceInfo;)Lcom/stripe/proto/api/warden/CheckVersionRequest$Builder;
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/stripe/proto/api/warden/CheckVersionRequest$Builder;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    return-object p0
.end method

.method public final lane_status(Lcom/stripe/proto/model/common/LaneStatus;)Lcom/stripe/proto/api/warden/CheckVersionRequest$Builder;
    .locals 1

    const-string v0, "lane_status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iput-object p1, p0, Lcom/stripe/proto/api/warden/CheckVersionRequest$Builder;->lane_status:Lcom/stripe/proto/model/common/LaneStatus;

    return-object p0
.end method

.method public final store_id(Ljava/lang/String;)Lcom/stripe/proto/api/warden/CheckVersionRequest$Builder;
    .locals 1

    const-string v0, "store_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iput-object p1, p0, Lcom/stripe/proto/api/warden/CheckVersionRequest$Builder;->store_id:Ljava/lang/String;

    return-object p0
.end method

.method public final version_info(Lcom/stripe/proto/model/common/VersionInfoPb;)Lcom/stripe/proto/api/warden/CheckVersionRequest$Builder;
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/stripe/proto/api/warden/CheckVersionRequest$Builder;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    return-object p0
.end method
