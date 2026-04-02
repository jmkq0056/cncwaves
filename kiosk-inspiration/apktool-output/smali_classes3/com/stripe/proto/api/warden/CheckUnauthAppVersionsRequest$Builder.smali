.class public final Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CheckUnauthAppVersionsRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest;",
        "Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0010\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u001c\u0010\u0006\u001a\u00020\u00002\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u000cJ\u0014\u0010\r\u001a\u00020\u00002\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest;",
        "()V",
        "device_info",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        "environment_variables",
        "",
        "",
        "is_debug",
        "",
        "lane_status",
        "Lcom/stripe/proto/model/common/LaneStatus;",
        "version_info",
        "",
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

.field public environment_variables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public is_debug:Z

.field public lane_status:Lcom/stripe/proto/model/common/LaneStatus;

.field public version_info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/common/VersionInfoPb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 158
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 163
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest$Builder;->version_info:Ljava/util/List;

    .line 166
    sget-object v0, Lcom/stripe/proto/model/common/LaneStatus;->OPEN:Lcom/stripe/proto/model/common/LaneStatus;

    iput-object v0, p0, Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest$Builder;->lane_status:Lcom/stripe/proto/model/common/LaneStatus;

    .line 172
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest$Builder;->environment_variables:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 158
    invoke-virtual {p0}, Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest$Builder;->build()Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest;
    .locals 7

    .line 213
    new-instance v0, Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest;

    .line 214
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest$Builder;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 215
    iget-object v2, p0, Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest$Builder;->version_info:Ljava/util/List;

    .line 216
    iget-object v3, p0, Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest$Builder;->lane_status:Lcom/stripe/proto/model/common/LaneStatus;

    .line 217
    iget-boolean v4, p0, Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest$Builder;->is_debug:Z

    .line 218
    iget-object v5, p0, Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest$Builder;->environment_variables:Ljava/util/Map;

    .line 219
    invoke-virtual {p0}, Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    .line 213
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest;-><init>(Lcom/stripe/proto/model/common/DeviceInfo;Ljava/util/List;Lcom/stripe/proto/model/common/LaneStatus;ZLjava/util/Map;Lokio/ByteString;)V

    return-object v0
.end method

.method public final device_info(Lcom/stripe/proto/model/common/DeviceInfo;)Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest$Builder;
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest$Builder;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    return-object p0
.end method

.method public final environment_variables(Ljava/util/Map;)Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest$Builder;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "environment_variables is deprecated"
    .end annotation

    const-string v0, "environment_variables"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    iput-object p1, p0, Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest$Builder;->environment_variables:Ljava/util/Map;

    return-object p0
.end method

.method public final is_debug(Z)Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest$Builder;
    .locals 0

    .line 200
    iput-boolean p1, p0, Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest$Builder;->is_debug:Z

    return-object p0
.end method

.method public final lane_status(Lcom/stripe/proto/model/common/LaneStatus;)Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest$Builder;
    .locals 1

    const-string v0, "lane_status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    iput-object p1, p0, Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest$Builder;->lane_status:Lcom/stripe/proto/model/common/LaneStatus;

    return-object p0
.end method

.method public final version_info(Ljava/util/List;)Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/common/VersionInfoPb;",
            ">;)",
            "Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest$Builder;"
        }
    .end annotation

    const-string v0, "version_info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 184
    iput-object p1, p0, Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest$Builder;->version_info:Ljava/util/List;

    return-object p0
.end method
