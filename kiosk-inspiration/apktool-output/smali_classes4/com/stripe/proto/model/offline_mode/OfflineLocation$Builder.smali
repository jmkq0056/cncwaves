.class public final Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "OfflineLocation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/offline_mode/OfflineLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
        "Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0008\u0010\u0014\u001a\u00020\u0002H\u0016J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\tJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\tJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
        "()V",
        "account_id",
        "",
        "bluetooth_auto_reconnect_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;",
        "created_at",
        "",
        "full_location",
        "Lcom/stripe/proto/model/merchant/ApiLocationPb;",
        "id",
        "last_activated_at",
        "offline_enabled",
        "",
        "tipping_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;",
        "usb_auto_reconnect_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;",
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

.field public bluetooth_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;

.field public created_at:J

.field public full_location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

.field public id:J

.field public last_activated_at:J

.field public offline_enabled:Z

.field public tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

.field public usb_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 190
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 195
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;->account_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final account_id(Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;
    .locals 1

    const-string v0, "account_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;->account_id:Ljava/lang/String;

    return-object p0
.end method

.method public final bluetooth_auto_reconnect_config(Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;)Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;->bluetooth_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 190
    invoke-virtual {p0}, Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;->build()Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/offline_mode/OfflineLocation;
    .locals 14

    .line 263
    new-instance v0, Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    .line 264
    iget-wide v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;->id:J

    .line 265
    iget-object v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;->account_id:Ljava/lang/String;

    .line 266
    iget-wide v4, p0, Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;->created_at:J

    .line 267
    iget-wide v6, p0, Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;->last_activated_at:J

    .line 268
    iget-object v8, p0, Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    .line 269
    iget-object v9, p0, Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;->bluetooth_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;

    .line 270
    iget-object v10, p0, Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;->usb_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    .line 271
    iget-object v11, p0, Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;->full_location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    .line 272
    iget-boolean v12, p0, Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;->offline_enabled:Z

    .line 273
    invoke-virtual {p0}, Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v13

    .line 263
    invoke-direct/range {v0 .. v13}, Lcom/stripe/proto/model/offline_mode/OfflineLocation;-><init>(JLjava/lang/String;JJLcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;Lcom/stripe/proto/model/merchant/ApiLocationPb;ZLokio/ByteString;)V

    return-object v0
.end method

.method public final created_at(J)Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;
    .locals 0

    .line 229
    iput-wide p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;->created_at:J

    return-object p0
.end method

.method public final full_location(Lcom/stripe/proto/model/merchant/ApiLocationPb;)Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;->full_location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    return-object p0
.end method

.method public final id(J)Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;
    .locals 0

    .line 219
    iput-wide p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;->id:J

    return-object p0
.end method

.method public final last_activated_at(J)Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;
    .locals 0

    .line 234
    iput-wide p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;->last_activated_at:J

    return-object p0
.end method

.method public final offline_enabled(Z)Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;
    .locals 0

    .line 259
    iput-boolean p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;->offline_enabled:Z

    return-object p0
.end method

.method public final tipping_config(Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;)Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    return-object p0
.end method

.method public final usb_auto_reconnect_config(Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;)Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;->usb_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    return-object p0
.end method
