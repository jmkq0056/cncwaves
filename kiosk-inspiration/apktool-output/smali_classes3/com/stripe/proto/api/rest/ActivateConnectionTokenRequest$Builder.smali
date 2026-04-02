.class public final Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ActivateConnectionTokenRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;",
        "Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0019\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007J\u0014\u0010\t\u001a\u00020\u00002\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00070\nJ\u0015\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\u001aJ\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u0010\u0010\u0013\u001a\u00020\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012J\u0010\u0010\u0014\u001a\u00020\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0010J\u0010\u0010\u0015\u001a\u00020\u00002\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0012J\u0010\u0010\u0016\u001a\u00020\u00002\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0017\u001a\u00020\u00002\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00070\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\rR\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;",
        "()V",
        "connection_type",
        "Lcom/stripe/proto/api/rest/ConnectionType;",
        "device_serial_number",
        "",
        "device_type",
        "expand",
        "",
        "generate_offline_stripe_session_token",
        "",
        "Ljava/lang/Boolean;",
        "pos_device_id",
        "pos_device_info",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        "pos_secondary_version_info",
        "Lcom/stripe/proto/model/common/VersionInfoPb;",
        "pos_version_info",
        "reader_",
        "reader_version_info",
        "register_to_location",
        "reported_reader_config",
        "Lcom/stripe/proto/api/rest/ReportedReaderConfig;",
        "build",
        "(Ljava/lang/Boolean;)Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;",
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
.field public connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

.field public device_serial_number:Ljava/lang/String;

.field public device_type:Ljava/lang/String;

.field public expand:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public generate_offline_stripe_session_token:Ljava/lang/Boolean;

.field public pos_device_id:Ljava/lang/String;

.field public pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

.field public pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

.field public pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

.field public reader_:Lcom/stripe/proto/model/common/DeviceInfo;

.field public reader_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

.field public register_to_location:Ljava/lang/String;

.field public reported_reader_config:Lcom/stripe/proto/api/rest/ReportedReaderConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 280
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 315
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->expand:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 280
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->build()Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;
    .locals 15

    .line 416
    new-instance v0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;

    .line 417
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->pos_device_id:Ljava/lang/String;

    .line 418
    iget-object v2, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->device_type:Ljava/lang/String;

    .line 419
    iget-object v3, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->device_serial_number:Ljava/lang/String;

    .line 420
    iget-object v4, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 421
    iget-object v5, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->reader_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 422
    iget-object v6, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 423
    iget-object v7, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 424
    iget-object v8, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->reported_reader_config:Lcom/stripe/proto/api/rest/ReportedReaderConfig;

    .line 425
    iget-object v9, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->register_to_location:Ljava/lang/String;

    .line 426
    iget-object v10, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    .line 427
    iget-object v11, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 428
    iget-object v12, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->expand:Ljava/util/List;

    .line 429
    iget-object v13, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->generate_offline_stripe_session_token:Ljava/lang/Boolean;

    .line 430
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v14

    .line 416
    invoke-direct/range {v0 .. v14}, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/api/rest/ReportedReaderConfig;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConnectionType;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/util/List;Ljava/lang/Boolean;Lokio/ByteString;)V

    return-object v0
.end method

.method public final connection_type(Lcom/stripe/proto/api/rest/ConnectionType;)Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    return-object p0
.end method

.method public final device_serial_number(Ljava/lang/String;)Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->device_serial_number:Ljava/lang/String;

    return-object p0
.end method

.method public final device_type(Ljava/lang/String;)Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->device_type:Ljava/lang/String;

    return-object p0
.end method

.method public final expand(Ljava/util/List;)Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;"
        }
    .end annotation

    const-string v0, "expand"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 402
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->expand:Ljava/util/List;

    return-object p0
.end method

.method public final generate_offline_stripe_session_token(Ljava/lang/Boolean;)Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->generate_offline_stripe_session_token:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final pos_device_id(Ljava/lang/String;)Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->pos_device_id:Ljava/lang/String;

    return-object p0
.end method

.method public final pos_device_info(Lcom/stripe/proto/model/common/DeviceInfo;)Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    return-object p0
.end method

.method public final pos_secondary_version_info(Lcom/stripe/proto/model/common/VersionInfoPb;)Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    return-object p0
.end method

.method public final pos_version_info(Lcom/stripe/proto/model/common/VersionInfoPb;)Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    return-object p0
.end method

.method public final reader_(Lcom/stripe/proto/model/common/DeviceInfo;)Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    return-object p0
.end method

.method public final reader_version_info(Lcom/stripe/proto/model/common/VersionInfoPb;)Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->reader_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    return-object p0
.end method

.method public final register_to_location(Ljava/lang/String;)Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->register_to_location:Ljava/lang/String;

    return-object p0
.end method

.method public final reported_reader_config(Lcom/stripe/proto/api/rest/ReportedReaderConfig;)Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;->reported_reader_config:Lcom/stripe/proto/api/rest/ReportedReaderConfig;

    return-object p0
.end method
