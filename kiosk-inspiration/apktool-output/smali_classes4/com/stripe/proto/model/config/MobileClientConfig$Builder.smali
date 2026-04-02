.class public final Lcom/stripe/proto/model/config/MobileClientConfig$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "MobileClientConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/config/MobileClientConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/config/MobileClientConfig;",
        "Lcom/stripe/proto/model/config/MobileClientConfig$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0008\u0010\u0018\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u0010\u0010\u0014\u001a\u00020\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u0010\u0010\u0016\u001a\u00020\u00002\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/proto/model/config/MobileClientConfig$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/config/MobileClientConfig;",
        "()V",
        "bbpos_config",
        "Lcom/stripe/proto/model/config/BBPOSConfig;",
        "bluetooth_auto_reconnect_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;",
        "client_checkout_options",
        "Lcom/stripe/proto/model/config/ClientCheckoutOptions;",
        "client_config_version",
        "",
        "client_visual_config",
        "Lcom/stripe/proto/model/config/ClientVisualConfig;",
        "forms_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;",
        "logging_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;",
        "offline_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;",
        "tipping_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;",
        "usb_auto_reconnect_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;",
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
.field public bbpos_config:Lcom/stripe/proto/model/config/BBPOSConfig;

.field public bluetooth_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;

.field public client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

.field public client_config_version:Ljava/lang/String;

.field public client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

.field public forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

.field public logging_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;

.field public offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

.field public tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

.field public usb_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 210
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 218
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;->client_config_version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final bbpos_config(Lcom/stripe/proto/model/config/BBPOSConfig;)Lcom/stripe/proto/model/config/MobileClientConfig$Builder;
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;->bbpos_config:Lcom/stripe/proto/model/config/BBPOSConfig;

    return-object p0
.end method

.method public final bluetooth_auto_reconnect_config(Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;)Lcom/stripe/proto/model/config/MobileClientConfig$Builder;
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;->bluetooth_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 210
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;->build()Lcom/stripe/proto/model/config/MobileClientConfig;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/config/MobileClientConfig;
    .locals 12

    .line 291
    new-instance v0, Lcom/stripe/proto/model/config/MobileClientConfig;

    .line 292
    iget-object v1, p0, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    .line 293
    iget-object v2, p0, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    .line 294
    iget-object v3, p0, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;->client_config_version:Ljava/lang/String;

    .line 295
    iget-object v4, p0, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;->bbpos_config:Lcom/stripe/proto/model/config/BBPOSConfig;

    .line 296
    iget-object v5, p0, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    .line 297
    iget-object v6, p0, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;->offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    .line 298
    iget-object v7, p0, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;->bluetooth_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;

    .line 299
    iget-object v8, p0, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;->usb_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    .line 300
    iget-object v9, p0, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    .line 301
    iget-object v10, p0, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;->logging_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;

    .line 302
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v11

    .line 291
    invoke-direct/range {v0 .. v11}, Lcom/stripe/proto/model/config/MobileClientConfig;-><init>(Lcom/stripe/proto/model/config/ClientVisualConfig;Lcom/stripe/proto/model/config/ClientCheckoutOptions;Ljava/lang/String;Lcom/stripe/proto/model/config/BBPOSConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;Lokio/ByteString;)V

    return-object v0
.end method

.method public final client_checkout_options(Lcom/stripe/proto/model/config/ClientCheckoutOptions;)Lcom/stripe/proto/model/config/MobileClientConfig$Builder;
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    return-object p0
.end method

.method public final client_config_version(Ljava/lang/String;)Lcom/stripe/proto/model/config/MobileClientConfig$Builder;
    .locals 1

    const-string v0, "client_config_version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    iput-object p1, p0, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;->client_config_version:Ljava/lang/String;

    return-object p0
.end method

.method public final client_visual_config(Lcom/stripe/proto/model/config/ClientVisualConfig;)Lcom/stripe/proto/model/config/MobileClientConfig$Builder;
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    return-object p0
.end method

.method public final forms_config(Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;)Lcom/stripe/proto/model/config/MobileClientConfig$Builder;
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    return-object p0
.end method

.method public final logging_config(Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;)Lcom/stripe/proto/model/config/MobileClientConfig$Builder;
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;->logging_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;

    return-object p0
.end method

.method public final offline_config(Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;)Lcom/stripe/proto/model/config/MobileClientConfig$Builder;
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;->offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    return-object p0
.end method

.method public final tipping_config(Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;)Lcom/stripe/proto/model/config/MobileClientConfig$Builder;
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    return-object p0
.end method

.method public final usb_auto_reconnect_config(Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;)Lcom/stripe/proto/model/config/MobileClientConfig$Builder;
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/stripe/proto/model/config/MobileClientConfig$Builder;->usb_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    return-object p0
.end method
