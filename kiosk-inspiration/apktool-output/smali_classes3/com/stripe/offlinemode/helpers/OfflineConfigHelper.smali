.class public interface abstract Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;
.super Ljava/lang/Object;
.source "OfflineConfigHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u000f\u0010\u0004\u001a\u0004\u0018\u00010\u0003H&\u00a2\u0006\u0002\u0010\u0005J\u000f\u0010\u0006\u001a\u0004\u0018\u00010\u0003H&\u00a2\u0006\u0002\u0010\u0005J\u000f\u0010\u0007\u001a\u0004\u0018\u00010\u0003H&\u00a2\u0006\u0002\u0010\u0005J\u0017\u0010\u0008\u001a\u0004\u0018\u00010\u00032\u0006\u0010\t\u001a\u00020\nH&\u00a2\u0006\u0002\u0010\u000bJ&\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\nH&J\u0008\u0010\u0011\u001a\u00020\rH&J\u0018\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\nH&J\u0008\u0010\u0016\u001a\u00020\rH&J\u001a\u0010\u0017\u001a\u00020\r2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0019\u001a\u00020\nH&J\u0008\u0010\u001a\u001a\u00020\rH&J\u0008\u0010\u001b\u001a\u00020\rH&J\u0008\u0010\u001c\u001a\u00020\rH&J\u0008\u0010\u001d\u001a\u00020\rH&J8\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0018\u001a\u00020\n2\u0008\u0010 \u001a\u0004\u0018\u00010!2\u0008\u0010\"\u001a\u0004\u0018\u00010#2\u0008\u0010$\u001a\u0004\u0018\u00010%2\u0008\u0010&\u001a\u0004\u0018\u00010\'H&JP\u0010(\u001a\u00020\u001f2\u0006\u0010)\u001a\u00020*2>\u0010+\u001a:\u0012\u0015\u0012\u0013\u0018\u00010%\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(/\u0012\u0015\u0012\u0013\u0018\u00010\'\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(0\u0012\u0004\u0012\u00020\u001f0,j\u0002`1H&J8\u00102\u001a\u00020\r2\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\n2\u0006\u00106\u001a\u00020\n2\u0006\u00107\u001a\u00020\n2\u0006\u00108\u001a\u00020\n2\u0006\u00109\u001a\u00020\u0003H&J\u0010\u0010:\u001a\u00020\r2\u0006\u0010;\u001a\u00020\nH&J\u0008\u0010<\u001a\u00020\rH&J\u0008\u0010=\u001a\u00020\rH&J\u0012\u0010>\u001a\u0004\u0018\u00010\n2\u0006\u0010?\u001a\u00020\nH&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006@\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
        "",
        "getForwardingJitterMs",
        "",
        "getHttpHealthCheckTimeoutMs",
        "()Ljava/lang/Long;",
        "getHttpHighTimeoutMs",
        "getHttpLowTimeoutMs",
        "getMaxTransactionLimit",
        "currencyCode",
        "",
        "(Ljava/lang/String;)Ljava/lang/Long;",
        "isCardDenylistedForOffline",
        "",
        "firstSix",
        "lastFour",
        "cardholderName",
        "isDeferredAuthorizationCountry",
        "isKnownForwardingError",
        "type",
        "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;",
        "errorCode",
        "isMobileWalletOnSetupIntentsEnabled",
        "isOfflineEnabledForLocationAndReader",
        "locationId",
        "serialNumber",
        "isOfflineListenerSet",
        "isOfflineModeEnabled",
        "isSetupIntentsEnabled",
        "offlineListenerHasSetupIntentCallbacks",
        "onOfflineConfigUpdate",
        "",
        "offlineConfig",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;",
        "tippingConfig",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;",
        "bluetoothAutoReconnectConfigPb",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;",
        "usbAutoReconnectConfigPb",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;",
        "setActiveConfigs",
        "offlineLocation",
        "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
        "setReconnectParams",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "bluetoothConfig",
        "usbConfig",
        "Lcom/stripe/offlinemode/helpers/SetReconnectParams;",
        "shouldAllowOfflineConnection",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "firmware",
        "config",
        "keyProfileVersion",
        "keyProfileId",
        "currentTimeMs",
        "shouldAllowOfflineTransaction",
        "tvrStringHex",
        "shouldAllowPairingUnseenReader",
        "supportsSca",
        "switchInterfaceAuthorizationResponseCodeForAid",
        "aid",
        "offlinemode_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getForwardingJitterMs()J
.end method

.method public abstract getHttpHealthCheckTimeoutMs()Ljava/lang/Long;
.end method

.method public abstract getHttpHighTimeoutMs()Ljava/lang/Long;
.end method

.method public abstract getHttpLowTimeoutMs()Ljava/lang/Long;
.end method

.method public abstract getMaxTransactionLimit(Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract isCardDenylistedForOffline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isDeferredAuthorizationCountry()Z
.end method

.method public abstract isKnownForwardingError(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;)Z
.end method

.method public abstract isMobileWalletOnSetupIntentsEnabled()Z
.end method

.method public abstract isOfflineEnabledForLocationAndReader(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isOfflineListenerSet()Z
.end method

.method public abstract isOfflineModeEnabled()Z
.end method

.method public abstract isSetupIntentsEnabled()Z
.end method

.method public abstract offlineListenerHasSetupIntentCallbacks()Z
.end method

.method public abstract onOfflineConfigUpdate(Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;)V
.end method

.method public abstract setActiveConfigs(Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lkotlin/jvm/functions/Function2;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;",
            "-",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract shouldAllowOfflineConnection(Lcom/stripe/stripeterminal/external/models/Reader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
.end method

.method public abstract shouldAllowOfflineTransaction(Ljava/lang/String;)Z
.end method

.method public abstract shouldAllowPairingUnseenReader()Z
.end method

.method public abstract supportsSca()Z
.end method

.method public abstract switchInterfaceAuthorizationResponseCodeForAid(Ljava/lang/String;)Ljava/lang/String;
.end method
