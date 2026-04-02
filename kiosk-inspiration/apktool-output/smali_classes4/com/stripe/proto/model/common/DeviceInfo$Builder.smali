.class public final Lcom/stripe/proto/model/common/DeviceInfo$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DeviceInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        "Lcom/stripe/proto/model/common/DeviceInfo$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0007J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0007J\u0008\u0010\u0019\u001a\u00020\u0002H\u0016J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0007J\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0007J\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0007J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0007J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0007J\u0010\u0010\u0016\u001a\u00020\u00002\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/DeviceInfo$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        "()V",
        "app_model",
        "Lcom/stripe/proto/model/common/ApplicationModel;",
        "bbpos_base_config",
        "",
        "bbpos_firmware",
        "bbpos_key_profile",
        "bbpos_rom",
        "connectivity_source",
        "Lcom/stripe/proto/model/common/InternetConnectionSource;",
        "device_class",
        "Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;",
        "device_ip",
        "device_uuid",
        "hardware_model",
        "Lcom/stripe/proto/model/common/HardwareModel;",
        "host_hw_version",
        "host_os_version",
        "hostname",
        "location",
        "Lcom/stripe/proto/model/common/Location;",
        "stripe_config_hash",
        "build",
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
.field public app_model:Lcom/stripe/proto/model/common/ApplicationModel;

.field public bbpos_base_config:Ljava/lang/String;

.field public bbpos_firmware:Ljava/lang/String;

.field public bbpos_key_profile:Ljava/lang/String;

.field public bbpos_rom:Ljava/lang/String;

.field public connectivity_source:Lcom/stripe/proto/model/common/InternetConnectionSource;

.field public device_class:Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;

.field public device_ip:Ljava/lang/String;

.field public device_uuid:Ljava/lang/String;

.field public hardware_model:Lcom/stripe/proto/model/common/HardwareModel;

.field public host_hw_version:Ljava/lang/String;

.field public host_os_version:Ljava/lang/String;

.field public hostname:Ljava/lang/String;

.field public location:Lcom/stripe/proto/model/common/Location;

.field public stripe_config_hash:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 305
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 307
    sget-object v0, Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;->INVALID:Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;

    iput-object v0, p0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->device_class:Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;

    .line 310
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->device_uuid:Ljava/lang/String;

    .line 319
    iput-object v0, p0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->device_ip:Ljava/lang/String;

    .line 322
    iput-object v0, p0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->host_hw_version:Ljava/lang/String;

    .line 325
    iput-object v0, p0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->host_os_version:Ljava/lang/String;

    .line 328
    iput-object v0, p0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->hostname:Ljava/lang/String;

    .line 331
    sget-object v1, Lcom/stripe/proto/model/common/InternetConnectionSource;->UNKNOWN:Lcom/stripe/proto/model/common/InternetConnectionSource;

    iput-object v1, p0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->connectivity_source:Lcom/stripe/proto/model/common/InternetConnectionSource;

    .line 334
    iput-object v0, p0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->bbpos_firmware:Ljava/lang/String;

    .line 337
    iput-object v0, p0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->bbpos_base_config:Ljava/lang/String;

    .line 340
    iput-object v0, p0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->bbpos_key_profile:Ljava/lang/String;

    .line 343
    iput-object v0, p0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->bbpos_rom:Ljava/lang/String;

    .line 346
    iput-object v0, p0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->stripe_config_hash:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final app_model(Lcom/stripe/proto/model/common/ApplicationModel;)Lcom/stripe/proto/model/common/DeviceInfo$Builder;
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->app_model:Lcom/stripe/proto/model/common/ApplicationModel;

    return-object p0
.end method

.method public final bbpos_base_config(Ljava/lang/String;)Lcom/stripe/proto/model/common/DeviceInfo$Builder;
    .locals 1

    const-string v0, "bbpos_base_config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->bbpos_base_config:Ljava/lang/String;

    return-object p0
.end method

.method public final bbpos_firmware(Ljava/lang/String;)Lcom/stripe/proto/model/common/DeviceInfo$Builder;
    .locals 1

    const-string v0, "bbpos_firmware"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->bbpos_firmware:Ljava/lang/String;

    return-object p0
.end method

.method public final bbpos_key_profile(Ljava/lang/String;)Lcom/stripe/proto/model/common/DeviceInfo$Builder;
    .locals 1

    const-string v0, "bbpos_key_profile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->bbpos_key_profile:Ljava/lang/String;

    return-object p0
.end method

.method public final bbpos_rom(Ljava/lang/String;)Lcom/stripe/proto/model/common/DeviceInfo$Builder;
    .locals 1

    const-string v0, "bbpos_rom"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->bbpos_rom:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 305
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->build()Lcom/stripe/proto/model/common/DeviceInfo;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/common/DeviceInfo;
    .locals 19

    move-object/from16 v0, p0

    .line 456
    new-instance v1, Lcom/stripe/proto/model/common/DeviceInfo;

    .line 457
    iget-object v2, v0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->device_class:Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;

    .line 458
    iget-object v3, v0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->device_uuid:Ljava/lang/String;

    .line 459
    iget-object v4, v0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->hardware_model:Lcom/stripe/proto/model/common/HardwareModel;

    .line 460
    iget-object v5, v0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->app_model:Lcom/stripe/proto/model/common/ApplicationModel;

    .line 461
    iget-object v6, v0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->device_ip:Ljava/lang/String;

    .line 462
    iget-object v7, v0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->host_hw_version:Ljava/lang/String;

    .line 463
    iget-object v8, v0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->host_os_version:Ljava/lang/String;

    .line 464
    iget-object v9, v0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->hostname:Ljava/lang/String;

    .line 465
    iget-object v10, v0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->connectivity_source:Lcom/stripe/proto/model/common/InternetConnectionSource;

    .line 466
    iget-object v11, v0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->bbpos_firmware:Ljava/lang/String;

    .line 467
    iget-object v12, v0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->bbpos_base_config:Ljava/lang/String;

    .line 468
    iget-object v13, v0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->bbpos_key_profile:Ljava/lang/String;

    .line 469
    iget-object v14, v0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->bbpos_rom:Ljava/lang/String;

    .line 470
    iget-object v15, v0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->stripe_config_hash:Ljava/lang/String;

    move-object/from16 v16, v1

    .line 471
    iget-object v1, v0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->location:Lcom/stripe/proto/model/common/Location;

    .line 472
    invoke-virtual {v0}, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v17

    move-object/from16 v18, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v18

    .line 456
    invoke-direct/range {v1 .. v17}, Lcom/stripe/proto/model/common/DeviceInfo;-><init>(Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;Ljava/lang/String;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/ApplicationModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InternetConnectionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/Location;Lokio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final connectivity_source(Lcom/stripe/proto/model/common/InternetConnectionSource;)Lcom/stripe/proto/model/common/DeviceInfo$Builder;
    .locals 1

    const-string v0, "connectivity_source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->connectivity_source:Lcom/stripe/proto/model/common/InternetConnectionSource;

    return-object p0
.end method

.method public final device_class(Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;)Lcom/stripe/proto/model/common/DeviceInfo$Builder;
    .locals 1

    const-string v0, "device_class"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->device_class:Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;

    return-object p0
.end method

.method public final device_ip(Ljava/lang/String;)Lcom/stripe/proto/model/common/DeviceInfo$Builder;
    .locals 1

    const-string v0, "device_ip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->device_ip:Ljava/lang/String;

    return-object p0
.end method

.method public final device_uuid(Ljava/lang/String;)Lcom/stripe/proto/model/common/DeviceInfo$Builder;
    .locals 1

    const-string v0, "device_uuid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->device_uuid:Ljava/lang/String;

    return-object p0
.end method

.method public final hardware_model(Lcom/stripe/proto/model/common/HardwareModel;)Lcom/stripe/proto/model/common/DeviceInfo$Builder;
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->hardware_model:Lcom/stripe/proto/model/common/HardwareModel;

    return-object p0
.end method

.method public final host_hw_version(Ljava/lang/String;)Lcom/stripe/proto/model/common/DeviceInfo$Builder;
    .locals 1

    const-string v0, "host_hw_version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->host_hw_version:Ljava/lang/String;

    return-object p0
.end method

.method public final host_os_version(Ljava/lang/String;)Lcom/stripe/proto/model/common/DeviceInfo$Builder;
    .locals 1

    const-string v0, "host_os_version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->host_os_version:Ljava/lang/String;

    return-object p0
.end method

.method public final hostname(Ljava/lang/String;)Lcom/stripe/proto/model/common/DeviceInfo$Builder;
    .locals 1

    const-string v0, "hostname"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->hostname:Ljava/lang/String;

    return-object p0
.end method

.method public final location(Lcom/stripe/proto/model/common/Location;)Lcom/stripe/proto/model/common/DeviceInfo$Builder;
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->location:Lcom/stripe/proto/model/common/Location;

    return-object p0
.end method

.method public final stripe_config_hash(Ljava/lang/String;)Lcom/stripe/proto/model/common/DeviceInfo$Builder;
    .locals 1

    const-string v0, "stripe_config_hash"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceInfo$Builder;->stripe_config_hash:Ljava/lang/String;

    return-object p0
.end method
