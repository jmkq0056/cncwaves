.class public final Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ApiLocationPbFilterOption.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption;",
        "Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0015\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\u000eJ\u0016\u0010\u000b\u001a\u00020\u00002\u000e\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u000cR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\nR\u001a\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption;",
        "()V",
        "device_deploy_group_id",
        "",
        "location_name",
        "pinpad_config_id",
        "query_no_zone_locations",
        "",
        "Ljava/lang/Boolean;",
        "zone_ids",
        "",
        "build",
        "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption$Builder;",
        "common_release"
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
.field public device_deploy_group_id:Ljava/lang/String;

.field public location_name:Ljava/lang/String;

.field public pinpad_config_id:Ljava/lang/String;

.field public query_no_zone_locations:Ljava/lang/Boolean;

.field public zone_ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 135
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 146
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption$Builder;->zone_ids:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 135
    invoke-virtual {p0}, Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption$Builder;->build()Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption;
    .locals 7

    .line 177
    new-instance v0, Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption;

    .line 178
    iget-object v1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption$Builder;->pinpad_config_id:Ljava/lang/String;

    .line 179
    iget-object v2, p0, Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption$Builder;->device_deploy_group_id:Ljava/lang/String;

    .line 180
    iget-object v3, p0, Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption$Builder;->location_name:Ljava/lang/String;

    .line 181
    iget-object v4, p0, Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption$Builder;->zone_ids:Ljava/util/List;

    .line 182
    iget-object v5, p0, Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption$Builder;->query_no_zone_locations:Ljava/lang/Boolean;

    .line 183
    invoke-virtual {p0}, Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    .line 177
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lokio/ByteString;)V

    return-object v0
.end method

.method public final device_deploy_group_id(Ljava/lang/String;)Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption$Builder;
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption$Builder;->device_deploy_group_id:Ljava/lang/String;

    return-object p0
.end method

.method public final location_name(Ljava/lang/String;)Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption$Builder;
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption$Builder;->location_name:Ljava/lang/String;

    return-object p0
.end method

.method public final pinpad_config_id(Ljava/lang/String;)Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption$Builder;
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption$Builder;->pinpad_config_id:Ljava/lang/String;

    return-object p0
.end method

.method public final query_no_zone_locations(Ljava/lang/Boolean;)Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption$Builder;
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption$Builder;->query_no_zone_locations:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final zone_ids(Ljava/util/List;)Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption$Builder;"
        }
    .end annotation

    const-string v0, "zone_ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 168
    iput-object p1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPbFilterOption$Builder;->zone_ids:Ljava/util/List;

    return-object p0
.end method
