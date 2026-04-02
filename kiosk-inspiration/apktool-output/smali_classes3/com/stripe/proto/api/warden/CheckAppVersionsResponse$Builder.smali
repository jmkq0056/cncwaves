.class public final Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CheckAppVersionsResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;",
        "Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000e\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J\u0014\u0010\t\u001a\u00020\u00002\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0005J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nJ\u0012\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0006H\u0007J\u0012\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0007R\u0018\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;",
        "()V",
        "client_upgrade_spec",
        "",
        "Lcom/stripe/proto/model/common/ClientVersionSpecPb;",
        "default_app_on_device",
        "Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;",
        "deploy_group_snapshot_ids",
        "",
        "device_assets_snapshot_id",
        "firmware_upgrade_spec",
        "os_upgrade_spec",
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
.field public client_upgrade_spec:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/common/ClientVersionSpecPb;",
            ">;"
        }
    .end annotation
.end field

.field public default_app_on_device:Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;

.field public deploy_group_snapshot_ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public device_assets_snapshot_id:Ljava/lang/String;

.field public firmware_upgrade_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

.field public os_upgrade_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 169
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 171
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;->client_upgrade_spec:Ljava/util/List;

    .line 183
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;->device_assets_snapshot_id:Ljava/lang/String;

    .line 186
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;->deploy_group_snapshot_ids:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;->build()Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;
    .locals 8

    .line 232
    new-instance v0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;

    .line 233
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;->client_upgrade_spec:Ljava/util/List;

    .line 234
    iget-object v2, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;->default_app_on_device:Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;

    .line 235
    iget-object v3, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;->os_upgrade_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    .line 236
    iget-object v4, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;->firmware_upgrade_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    .line 237
    iget-object v5, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;->device_assets_snapshot_id:Ljava/lang/String;

    .line 238
    iget-object v6, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;->deploy_group_snapshot_ids:Ljava/util/List;

    .line 239
    invoke-virtual {p0}, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v7

    .line 232
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;-><init>(Ljava/util/List;Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/util/List;Lokio/ByteString;)V

    return-object v0
.end method

.method public final client_upgrade_spec(Ljava/util/List;)Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/common/ClientVersionSpecPb;",
            ">;)",
            "Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;"
        }
    .end annotation

    const-string v0, "client_upgrade_spec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 193
    iput-object p1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;->client_upgrade_spec:Ljava/util/List;

    return-object p0
.end method

.method public final default_app_on_device(Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;)Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;->default_app_on_device:Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$DefaultApp;

    return-object p0
.end method

.method public final deploy_group_snapshot_ids(Ljava/util/List;)Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;"
        }
    .end annotation

    const-string v0, "deploy_group_snapshot_ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 228
    iput-object p1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;->deploy_group_snapshot_ids:Ljava/util/List;

    return-object p0
.end method

.method public final device_assets_snapshot_id(Ljava/lang/String;)Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;
    .locals 1

    const-string v0, "device_assets_snapshot_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    iput-object p1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;->device_assets_snapshot_id:Ljava/lang/String;

    return-object p0
.end method

.method public final firmware_upgrade_spec(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "firmware_upgrade_spec is deprecated"
    .end annotation

    .line 214
    iput-object p1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;->firmware_upgrade_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    return-object p0
.end method

.method public final os_upgrade_spec(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "os_upgrade_spec is deprecated"
    .end annotation

    .line 208
    iput-object p1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsResponse$Builder;->os_upgrade_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    return-object p0
.end method
