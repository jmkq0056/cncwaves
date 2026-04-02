.class public final Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ActivateTerminalRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;",
        "Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0014\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0012\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007J\u0010\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0007H\u0007J\u0010\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0007H\u0007J\u0010\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0007H\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;",
        "()V",
        "fail_if_in_use",
        "",
        "pos_activation_token",
        "",
        "pos_device_id",
        "pos_hardware_info",
        "Lcom/stripe/proto/model/sdk/PosHardwareInfo;",
        "pos_secondary_version_info",
        "Lcom/stripe/proto/model/common/VersionInfoPb;",
        "pos_software_info",
        "Lcom/stripe/proto/model/sdk/PosSoftwareInfo;",
        "store_address",
        "Lcom/stripe/proto/api/sdk/Address;",
        "store_name",
        "terminal_id",
        "terminal_ip",
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
.field public fail_if_in_use:Z

.field public pos_activation_token:Ljava/lang/String;

.field public pos_device_id:Ljava/lang/String;

.field public pos_hardware_info:Lcom/stripe/proto/model/sdk/PosHardwareInfo;

.field public pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

.field public pos_software_info:Lcom/stripe/proto/model/sdk/PosSoftwareInfo;

.field public store_address:Lcom/stripe/proto/api/sdk/Address;

.field public store_name:Ljava/lang/String;

.field public terminal_id:Ljava/lang/String;

.field public terminal_ip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 243
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 245
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->pos_activation_token:Ljava/lang/String;

    .line 248
    iput-object v0, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->pos_device_id:Ljava/lang/String;

    .line 263
    iput-object v0, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->terminal_id:Ljava/lang/String;

    .line 266
    iput-object v0, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->terminal_ip:Ljava/lang/String;

    .line 269
    iput-object v0, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->store_name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 243
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->build()Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;
    .locals 12

    .line 358
    new-instance v0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;

    .line 359
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->pos_activation_token:Ljava/lang/String;

    .line 360
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->pos_device_id:Ljava/lang/String;

    .line 361
    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->pos_hardware_info:Lcom/stripe/proto/model/sdk/PosHardwareInfo;

    .line 362
    iget-object v4, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->pos_software_info:Lcom/stripe/proto/model/sdk/PosSoftwareInfo;

    .line 363
    iget-boolean v5, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->fail_if_in_use:Z

    .line 364
    iget-object v6, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 365
    iget-object v7, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->terminal_id:Ljava/lang/String;

    .line 366
    iget-object v8, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->terminal_ip:Ljava/lang/String;

    .line 367
    iget-object v9, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->store_name:Ljava/lang/String;

    .line 368
    iget-object v10, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->store_address:Lcom/stripe/proto/api/sdk/Address;

    .line 369
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v11

    .line 358
    invoke-direct/range {v0 .. v11}, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PosHardwareInfo;Lcom/stripe/proto/model/sdk/PosSoftwareInfo;ZLcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/sdk/Address;Lokio/ByteString;)V

    return-object v0
.end method

.method public final fail_if_in_use(Z)Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;
    .locals 0

    .line 310
    iput-boolean p1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->fail_if_in_use:Z

    return-object p0
.end method

.method public final pos_activation_token(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;
    .locals 1

    const-string v0, "pos_activation_token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->pos_activation_token:Ljava/lang/String;

    return-object p0
.end method

.method public final pos_device_id(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;
    .locals 1

    const-string v0, "pos_device_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->pos_device_id:Ljava/lang/String;

    return-object p0
.end method

.method public final pos_hardware_info(Lcom/stripe/proto/model/sdk/PosHardwareInfo;)Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->pos_hardware_info:Lcom/stripe/proto/model/sdk/PosHardwareInfo;

    return-object p0
.end method

.method public final pos_secondary_version_info(Lcom/stripe/proto/model/common/VersionInfoPb;)Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    return-object p0
.end method

.method public final pos_software_info(Lcom/stripe/proto/model/sdk/PosSoftwareInfo;)Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->pos_software_info:Lcom/stripe/proto/model/sdk/PosSoftwareInfo;

    return-object p0
.end method

.method public final store_address(Lcom/stripe/proto/api/sdk/Address;)Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "store_address is deprecated"
    .end annotation

    .line 354
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->store_address:Lcom/stripe/proto/api/sdk/Address;

    return-object p0
.end method

.method public final store_name(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "store_name is deprecated"
    .end annotation

    const-string v0, "store_name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->store_name:Ljava/lang/String;

    return-object p0
.end method

.method public final terminal_id(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "terminal_id is deprecated"
    .end annotation

    const-string v0, "terminal_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->terminal_id:Ljava/lang/String;

    return-object p0
.end method

.method public final terminal_ip(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "terminal_ip is deprecated"
    .end annotation

    const-string v0, "terminal_ip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Builder;->terminal_ip:Ljava/lang/String;

    return-object p0
.end method
