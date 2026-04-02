.class public final Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ApiLocationPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/merchant/ApiLocationPb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/merchant/ApiLocationPb;",
        "Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\u0008\u000f\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u001a\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u001a\u0010\u000c\u001a\u00020\u00002\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\rJ\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\tJ\u0015\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u001bJ\u0015\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u001bJ\u0015\u0010\u0013\u001a\u00020\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u001bJ\u0010\u0010\u0014\u001a\u00020\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\tJ\u001a\u0010\u0015\u001a\u00020\u00002\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\rJ\u0010\u0010\u0016\u001a\u00020\u00002\u0008\u0010\u0016\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u0017\u001a\u00020\u00002\u0008\u0010\u0017\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u0018\u001a\u00020\u00002\u0008\u0010\u0018\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u0019\u001a\u00020\u00002\u0008\u0010\u0019\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0011R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0011R\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0011R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/merchant/ApiLocationPb;",
        "()V",
        "address",
        "Lcom/stripe/proto/model/merchant/WrappedAddressPb;",
        "created_at",
        "Lcom/stripe/proto/model/common/InstantPb;",
        "creation_request",
        "",
        "deleted",
        "",
        "device_deploy_groups",
        "",
        "display_name",
        "id",
        "is_default",
        "Ljava/lang/Boolean;",
        "is_livemode",
        "livemode",
        "merchant",
        "metadata",
        "pinpad_config_id",
        "release_config_id",
        "timezone",
        "zone_id",
        "build",
        "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;",
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
.field public address:Lcom/stripe/proto/model/merchant/WrappedAddressPb;

.field public created_at:Lcom/stripe/proto/model/common/InstantPb;

.field public creation_request:Ljava/lang/String;

.field public deleted:Z

.field public device_deploy_groups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public display_name:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public is_default:Ljava/lang/Boolean;

.field public is_livemode:Ljava/lang/Boolean;

.field public livemode:Ljava/lang/Boolean;

.field public merchant:Ljava/lang/String;

.field public metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public pinpad_config_id:Ljava/lang/String;

.field public release_config_id:Ljava/lang/String;

.field public timezone:Ljava/lang/String;

.field public zone_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 306
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 341
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->metadata:Ljava/util/Map;

    .line 344
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->device_deploy_groups:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final address(Lcom/stripe/proto/model/merchant/WrappedAddressPb;)Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->address:Lcom/stripe/proto/model/merchant/WrappedAddressPb;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 306
    invoke-virtual {p0}, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->build()Lcom/stripe/proto/model/merchant/ApiLocationPb;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/merchant/ApiLocationPb;
    .locals 20

    move-object/from16 v0, p0

    .line 459
    new-instance v1, Lcom/stripe/proto/model/merchant/ApiLocationPb;

    .line 460
    iget-object v2, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->id:Ljava/lang/String;

    .line 461
    iget-object v3, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->display_name:Ljava/lang/String;

    .line 462
    iget-object v4, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->address:Lcom/stripe/proto/model/merchant/WrappedAddressPb;

    .line 463
    iget-object v5, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->timezone:Ljava/lang/String;

    .line 464
    iget-object v6, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->release_config_id:Ljava/lang/String;

    .line 465
    iget-object v7, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->pinpad_config_id:Ljava/lang/String;

    .line 466
    iget-object v8, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->is_default:Ljava/lang/Boolean;

    .line 467
    iget-object v9, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->is_livemode:Ljava/lang/Boolean;

    .line 468
    iget-object v10, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->livemode:Ljava/lang/Boolean;

    .line 469
    iget-boolean v11, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->deleted:Z

    .line 470
    iget-object v12, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->merchant:Ljava/lang/String;

    .line 471
    iget-object v13, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->metadata:Ljava/util/Map;

    .line 472
    iget-object v14, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->device_deploy_groups:Ljava/util/Map;

    .line 473
    iget-object v15, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->zone_id:Ljava/lang/String;

    move-object/from16 v16, v1

    .line 474
    iget-object v1, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->created_at:Lcom/stripe/proto/model/common/InstantPb;

    move-object/from16 v17, v1

    .line 475
    iget-object v1, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->creation_request:Ljava/lang/String;

    .line 476
    invoke-virtual {v0}, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v18

    move-object/from16 v19, v17

    move-object/from16 v17, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v19

    .line 459
    invoke-direct/range {v1 .. v18}, Lcom/stripe/proto/model/merchant/ApiLocationPb;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/merchant/WrappedAddressPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/stripe/proto/model/common/InstantPb;Ljava/lang/String;Lokio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final created_at(Lcom/stripe/proto/model/common/InstantPb;)Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->created_at:Lcom/stripe/proto/model/common/InstantPb;

    return-object p0
.end method

.method public final creation_request(Ljava/lang/String;)Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->creation_request:Ljava/lang/String;

    return-object p0
.end method

.method public final deleted(Z)Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;
    .locals 0

    .line 416
    iput-boolean p1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->deleted:Z

    return-object p0
.end method

.method public final device_deploy_groups(Ljava/util/Map;)Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;"
        }
    .end annotation

    const-string v0, "device_deploy_groups"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    iput-object p1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->device_deploy_groups:Ljava/util/Map;

    return-object p0
.end method

.method public final display_name(Ljava/lang/String;)Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->display_name:Ljava/lang/String;

    return-object p0
.end method

.method public final id(Ljava/lang/String;)Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final is_default(Ljava/lang/Boolean;)Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->is_default:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final is_livemode(Ljava/lang/Boolean;)Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->is_livemode:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final livemode(Ljava/lang/Boolean;)Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->livemode:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final merchant(Ljava/lang/String;)Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->merchant:Ljava/lang/String;

    return-object p0
.end method

.method public final metadata(Ljava/util/Map;)Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;"
        }
    .end annotation

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    iput-object p1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->metadata:Ljava/util/Map;

    return-object p0
.end method

.method public final pinpad_config_id(Ljava/lang/String;)Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->pinpad_config_id:Ljava/lang/String;

    return-object p0
.end method

.method public final release_config_id(Ljava/lang/String;)Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->release_config_id:Ljava/lang/String;

    return-object p0
.end method

.method public final timezone(Ljava/lang/String;)Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->timezone:Ljava/lang/String;

    return-object p0
.end method

.method public final zone_id(Ljava/lang/String;)Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/stripe/proto/model/merchant/ApiLocationPb$Builder;->zone_id:Ljava/lang/String;

    return-object p0
.end method
