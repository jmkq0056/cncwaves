.class public final Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "RedeemForOfflineConnectionTokenRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;",
        "Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0013\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0007J\u0015\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0002\u0010\u0014R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0012\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;",
        "()V",
        "connection_type",
        "Lcom/stripe/proto/api/rest/ConnectionType;",
        "device_serial_number",
        "",
        "device_type",
        "location",
        "pos_device_info",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        "pos_version_info",
        "Lcom/stripe/proto/model/common/VersionInfoPb;",
        "reader_",
        "reader_id",
        "reader_last_activated_online",
        "",
        "Ljava/lang/Long;",
        "build",
        "(Ljava/lang/Long;)Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;",
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

.field public location:Ljava/lang/String;

.field public pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

.field public pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

.field public reader_:Lcom/stripe/proto/model/common/DeviceInfo;

.field public reader_id:Ljava/lang/String;

.field public reader_last_activated_online:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 214
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 214
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;->build()Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;
    .locals 11

    .line 313
    new-instance v0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;

    .line 314
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;->device_type:Ljava/lang/String;

    .line 315
    iget-object v2, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;->device_serial_number:Ljava/lang/String;

    .line 316
    iget-object v3, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;->location:Ljava/lang/String;

    .line 317
    iget-object v4, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;->reader_last_activated_online:Ljava/lang/Long;

    .line 318
    iget-object v5, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;->reader_id:Ljava/lang/String;

    .line 319
    iget-object v6, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 320
    iget-object v7, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 321
    iget-object v8, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 322
    iget-object v9, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    .line 323
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v10

    .line 313
    invoke-direct/range {v0 .. v10}, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/rest/ConnectionType;Lokio/ByteString;)V

    return-object v0
.end method

.method public final connection_type(Lcom/stripe/proto/api/rest/ConnectionType;)Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    return-object p0
.end method

.method public final device_serial_number(Ljava/lang/String;)Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;->device_serial_number:Ljava/lang/String;

    return-object p0
.end method

.method public final device_type(Ljava/lang/String;)Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;->device_type:Ljava/lang/String;

    return-object p0
.end method

.method public final location(Ljava/lang/String;)Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;->location:Ljava/lang/String;

    return-object p0
.end method

.method public final pos_device_info(Lcom/stripe/proto/model/common/DeviceInfo;)Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    return-object p0
.end method

.method public final pos_version_info(Lcom/stripe/proto/model/common/VersionInfoPb;)Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    return-object p0
.end method

.method public final reader_(Lcom/stripe/proto/model/common/DeviceInfo;)Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    return-object p0
.end method

.method public final reader_id(Ljava/lang/String;)Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;->reader_id:Ljava/lang/String;

    return-object p0
.end method

.method public final reader_last_activated_online(Ljava/lang/Long;)Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;->reader_last_activated_online:Ljava/lang/Long;

    return-object p0
.end method
