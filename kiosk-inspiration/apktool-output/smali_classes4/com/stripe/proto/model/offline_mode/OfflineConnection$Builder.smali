.class public final Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "OfflineConnection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/offline_mode/OfflineConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
        "Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u0008\u0010\u001a\u001a\u00020\u0002H\u0016J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000bJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0005J\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0005J\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u000bJ\u0010\u0010\u0014\u001a\u00020\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u0010\u0010\u0016\u001a\u00020\u00002\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017J\u0010\u0010\u0018\u001a\u00020\u00002\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0015J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u000bR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
        "()V",
        "account_id",
        "",
        "base_url",
        "config_version",
        "connection_type",
        "Lcom/stripe/proto/api/rest/ConnectionType;",
        "created_at",
        "",
        "device_type",
        "firmware_version",
        "id",
        "ip_address",
        "key_id",
        "location",
        "Lcom/stripe/proto/model/merchant/ApiLocationPb;",
        "location_id",
        "pos_device_info",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        "pos_version_info",
        "Lcom/stripe/proto/model/common/VersionInfoPb;",
        "reader_device_info",
        "reader_id",
        "build",
        "internal_release"
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
.field public account_id:Ljava/lang/String;

.field public base_url:Ljava/lang/String;

.field public config_version:Ljava/lang/String;

.field public connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

.field public created_at:J

.field public device_type:Ljava/lang/String;

.field public firmware_version:Ljava/lang/String;

.field public id:J

.field public ip_address:Ljava/lang/String;

.field public key_id:Ljava/lang/String;

.field public location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

.field public location_id:J

.field public pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

.field public pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

.field public reader_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

.field public reader_id:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 293
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 295
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->firmware_version:Ljava/lang/String;

    .line 298
    iput-object v0, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->config_version:Ljava/lang/String;

    .line 301
    iput-object v0, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->key_id:Ljava/lang/String;

    .line 304
    iput-object v0, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->account_id:Ljava/lang/String;

    .line 316
    iput-object v0, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->device_type:Ljava/lang/String;

    .line 337
    iput-object v0, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->ip_address:Ljava/lang/String;

    .line 340
    iput-object v0, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->base_url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final account_id(Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;
    .locals 1

    const-string v0, "account_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->account_id:Ljava/lang/String;

    return-object p0
.end method

.method public final base_url(Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;
    .locals 1

    const-string v0, "base_url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->base_url:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->build()Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/offline_mode/OfflineConnection;
    .locals 25

    move-object/from16 v0, p0

    .line 425
    new-instance v1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    .line 426
    iget-object v2, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->firmware_version:Ljava/lang/String;

    .line 427
    iget-object v3, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->config_version:Ljava/lang/String;

    .line 428
    iget-object v4, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->key_id:Ljava/lang/String;

    .line 429
    iget-object v5, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->account_id:Ljava/lang/String;

    .line 430
    iget-wide v6, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->id:J

    .line 431
    iget-wide v8, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->reader_id:J

    .line 432
    iget-wide v10, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->created_at:J

    .line 433
    iget-object v12, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->device_type:Ljava/lang/String;

    .line 434
    iget-object v13, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 435
    iget-object v14, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 436
    iget-object v15, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->reader_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    move-object/from16 v16, v1

    .line 437
    iget-object v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    move-object/from16 v17, v1

    .line 438
    iget-object v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    move-object/from16 v19, v1

    move-object/from16 v18, v2

    .line 439
    iget-wide v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->location_id:J

    move-wide/from16 v20, v1

    .line 440
    iget-object v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->ip_address:Ljava/lang/String;

    .line 441
    iget-object v2, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->base_url:Ljava/lang/String;

    .line 442
    invoke-virtual {v0}, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v22

    move-wide/from16 v23, v20

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v2, v18

    move-object/from16 v17, v19

    move-wide/from16 v18, v23

    .line 425
    invoke-direct/range {v1 .. v22}, Lcom/stripe/proto/model/offline_mode/OfflineConnection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/rest/ConnectionType;Lcom/stripe/proto/model/merchant/ApiLocationPb;JLjava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final config_version(Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;
    .locals 1

    const-string v0, "config_version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->config_version:Ljava/lang/String;

    return-object p0
.end method

.method public final connection_type(Lcom/stripe/proto/api/rest/ConnectionType;)Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    return-object p0
.end method

.method public final created_at(J)Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;
    .locals 0

    .line 373
    iput-wide p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->created_at:J

    return-object p0
.end method

.method public final device_type(Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;
    .locals 1

    const-string v0, "device_type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->device_type:Ljava/lang/String;

    return-object p0
.end method

.method public final firmware_version(Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;
    .locals 1

    const-string v0, "firmware_version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->firmware_version:Ljava/lang/String;

    return-object p0
.end method

.method public final id(J)Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;
    .locals 0

    .line 363
    iput-wide p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->id:J

    return-object p0
.end method

.method public final ip_address(Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;
    .locals 1

    const-string v0, "ip_address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->ip_address:Ljava/lang/String;

    return-object p0
.end method

.method public final key_id(Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;
    .locals 1

    const-string v0, "key_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->key_id:Ljava/lang/String;

    return-object p0
.end method

.method public final location(Lcom/stripe/proto/model/merchant/ApiLocationPb;)Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    return-object p0
.end method

.method public final location_id(J)Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;
    .locals 0

    .line 406
    iput-wide p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->location_id:J

    return-object p0
.end method

.method public final pos_device_info(Lcom/stripe/proto/model/common/DeviceInfo;)Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    return-object p0
.end method

.method public final pos_version_info(Lcom/stripe/proto/model/common/VersionInfoPb;)Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    return-object p0
.end method

.method public final reader_device_info(Lcom/stripe/proto/model/common/DeviceInfo;)Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->reader_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    return-object p0
.end method

.method public final reader_id(J)Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;
    .locals 0

    .line 368
    iput-wide p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;->reader_id:J

    return-object p0
.end method
