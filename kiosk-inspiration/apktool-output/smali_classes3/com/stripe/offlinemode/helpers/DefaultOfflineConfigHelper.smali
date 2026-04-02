.class public final Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;
.super Ljava/lang/Object;
.source "DefaultOfflineConfigHelper.kt"

# interfaces
.implements Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;
.implements Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultOfflineConfigHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultOfflineConfigHelper.kt\ncom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,293:1\n1#2:294\n1747#3,3:295\n1747#3,3:298\n1855#3,2:301\n*S KotlinDebug\n*F\n+ 1 DefaultOfflineConfigHelper.kt\ncom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper\n*L\n190#1:295,3\n197#1:298,3\n258#1:301,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u00002\u00020\u00012\u00020\u0002BA\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0016\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000cj\u0002`\u000f\u00a2\u0006\u0002\u0010\u0010J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u000f\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0002\u0010\u0014J\u000f\u0010\u0015\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0002\u0010\u0014J\u000f\u0010\u0016\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0002\u0010\u0014J\u0017\u0010\u0017\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0018\u001a\u00020\u0019H\u0016\u00a2\u0006\u0002\u0010\u001aJ&\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0019H\u0016J\u0008\u0010 \u001a\u00020\u001cH\u0016J\u0018\u0010!\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0019H\u0016J\u0008\u0010%\u001a\u00020\u001cH\u0016J\u001a\u0010&\u001a\u00020\u001c2\u0008\u0010\'\u001a\u0004\u0018\u00010\u00192\u0006\u0010(\u001a\u00020\u0019H\u0016J\u0008\u0010)\u001a\u00020\u001cH\u0016J\u0008\u0010*\u001a\u00020\u001cH\u0016J\u0008\u0010+\u001a\u00020\u001cH\u0016J\u0008\u0010,\u001a\u00020\u001cH\u0016J8\u0010-\u001a\u00020.2\u0006\u0010\'\u001a\u00020\u00192\u0008\u0010/\u001a\u0004\u0018\u0001002\u0008\u00101\u001a\u0004\u0018\u0001022\u0008\u00103\u001a\u0004\u0018\u0001042\u0008\u00105\u001a\u0004\u0018\u000106H\u0016J8\u00107\u001a\u00020.2\u0006\u0010(\u001a\u00020\u00192\u0008\u0010/\u001a\u0004\u0018\u0001002\u0008\u00101\u001a\u0004\u0018\u0001022\u0008\u00108\u001a\u0004\u0018\u0001042\u0008\u00109\u001a\u0004\u0018\u000106H\u0016JP\u0010:\u001a\u00020.2\u0006\u0010;\u001a\u00020<2>\u0010=\u001a:\u0012\u0015\u0012\u0013\u0018\u000104\u00a2\u0006\u000c\u0008?\u0012\u0008\u0008@\u0012\u0004\u0008\u0008(A\u0012\u0015\u0012\u0013\u0018\u000106\u00a2\u0006\u000c\u0008?\u0012\u0008\u0008@\u0012\u0004\u0008\u0008(B\u0012\u0004\u0012\u00020.0>j\u0002`CH\u0016J8\u0010D\u001a\u00020\u001c2\u0006\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020\u00192\u0006\u0010H\u001a\u00020\u00192\u0006\u0010I\u001a\u00020\u00192\u0006\u0010J\u001a\u00020\u00192\u0006\u0010K\u001a\u00020\u0012H\u0016J\u0010\u0010L\u001a\u00020\u001c2\u0006\u0010M\u001a\u00020\u0019H\u0016J\u0008\u0010N\u001a\u00020\u001cH\u0016J\u0008\u0010O\u001a\u00020\u001cH\u0016J\u0012\u0010P\u001a\u0004\u0018\u00010\u00192\u0006\u0010Q\u001a\u00020\u0019H\u0016J\u0008\u0010R\u001a\u00020\u0019H\u0002J\u0012\u0010S\u001a\u00020.2\u0008\u0010/\u001a\u0004\u0018\u000100H\u0002R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000cj\u0002`\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006T"
    }
    d2 = {
        "Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;",
        "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
        "Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;",
        "settingsRepository",
        "Lcom/stripe/core/transaction/SettingsRepository;",
        "offlineRepository",
        "Lcom/stripe/offlinemode/storage/OfflineRepository;",
        "proxyOfflineListener",
        "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;",
        "activeLocationConfigRepository",
        "Lcom/stripe/device/ActiveLocationConfigRepository;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;Lcom/stripe/device/ActiveLocationConfigRepository;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
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
        "onOfflineConfigUpdateForMobileReader",
        "bluetoothAutoReconnectConfig",
        "usbAutoReconnectConfig",
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
        "tvrMask",
        "updateAccountOfflineConfig",
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


# instance fields
.field private final activeLocationConfigRepository:Lcom/stripe/device/ActiveLocationConfigRepository;

.field private final logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

.field private final proxyOfflineListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;

.field private final settingsRepository:Lcom/stripe/core/transaction/SettingsRepository;


# direct methods
.method public constructor <init>(Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;Lcom/stripe/device/ActiveLocationConfigRepository;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .param p2    # Lcom/stripe/offlinemode/storage/OfflineRepository;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Offline;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/transaction/SettingsRepository;",
            "Lcom/stripe/offlinemode/storage/OfflineRepository;",
            "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;",
            "Lcom/stripe/device/ActiveLocationConfigRepository;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "settingsRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxyOfflineListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activeLocationConfigRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->settingsRepository:Lcom/stripe/core/transaction/SettingsRepository;

    .line 26
    iput-object p2, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    .line 27
    iput-object p3, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->proxyOfflineListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;

    .line 28
    iput-object p4, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->activeLocationConfigRepository:Lcom/stripe/device/ActiveLocationConfigRepository;

    .line 29
    iput-object p5, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method

.method private final tvrMask()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getAccountOfflineConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;->tvr_mask:Ljava/lang/String;

    return-object v0
.end method

.method private final updateAccountOfflineConfig(Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;->account_offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v1

    goto :goto_1

    .line 249
    :cond_1
    :goto_0
    new-instance v2, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    const v30, 0x7ffffff

    const/16 v31, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-direct/range {v2 .. v31}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;-><init>(ILjava/util/Map;IIIILjava/util/List;ZZLjava/util/Map;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;IZLjava/util/List;Ljava/util/List;ZZLjava/util/Map;ZLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, v2

    .line 250
    :goto_1
    iget-object v1, v0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getAccountOfflineConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    move-result-object v1

    iget-object v1, v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;->region_to_region_offline_config:Ljava/util/Map;

    .line 256
    iget-object v2, v3, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;->region_to_region_offline_config:Ljava/util/Map;

    invoke-static {v2}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 257
    iget-object v4, v0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v4}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getAccountOfflineConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    move-result-object v4

    iget-object v4, v4, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;->region_to_region_offline_config:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 301
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 258
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$RegionOfflineConfigPb;

    .line 259
    iget-object v7, v3, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;->region_to_region_offline_config:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 260
    iget-object v7, v3, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;->region_to_region_offline_config:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$RegionOfflineConfigPb;

    if-eqz v7, :cond_3

    .line 267
    iget-object v5, v5, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$RegionOfflineConfigPb;->device_type_to_offline_allowed_versions_with_expirations:Ljava/util/Map;

    .line 268
    invoke-static {v5}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    .line 271
    iget-object v5, v7, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$RegionOfflineConfigPb;->device_type_to_offline_allowed_versions_with_expirations:Ljava/util/Map;

    .line 270
    invoke-interface {v10, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 266
    new-instance v8, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$RegionOfflineConfigPb;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x5

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$RegionOfflineConfigPb;-><init>(Ljava/util/Map;Ljava/util/Map;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 261
    :cond_3
    new-instance v9, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 262
    sget-object v10, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RegionOfflineConfig unexpectedly null for region "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v14, 0xc

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 261
    invoke-direct/range {v9 .. v15}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v9

    .line 278
    :cond_4
    iget-object v4, v0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v5, 0x3

    .line 280
    new-array v5, v5, [Lkotlin/Pair;

    const-string v6, "existingOfflineConfigRegionMap"

    invoke-static {v6, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v6, 0x0

    aput-object v1, v5, v6

    .line 281
    const-string v1, "updatedOfflineConfigRegionMap"

    iget-object v6, v3, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;->region_to_region_offline_config:Ljava/util/Map;

    invoke-static {v1, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v6, 0x1

    aput-object v1, v5, v6

    .line 282
    const-string v1, "mergedRegionConfigMap"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v6, 0x2

    aput-object v1, v5, v6

    .line 278
    const-string v1, "Updating account offline config."

    invoke-interface {v4, v1, v5}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 285
    iget-object v1, v0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    const v31, 0x7ffbfff

    const/16 v32, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v18, v2

    invoke-static/range {v3 .. v32}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;->copy$default(Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;ILjava/util/Map;IIIILjava/util/List;ZZLjava/util/Map;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;IZLjava/util/List;Ljava/util/List;ZZLjava/util/Map;ZLokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/stripe/offlinemode/storage/OfflineRepository;->setAccountOfflineConfig(Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;)V

    return-void
.end method


# virtual methods
.method public getForwardingJitterMs()J
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getAccountOfflineConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    move-result-object v0

    iget v0, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;->forwarding_jitter_ms:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getHttpHealthCheckTimeoutMs()Ljava/lang/Long;
    .locals 5

    .line 126
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;

    .line 127
    iget-object v0, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getAccountOfflineConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    move-result-object v0

    iget v0, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;->http_health_check_timeout_ms:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 126
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 128
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v2, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v3, 0x0

    new-array v3, v3, [Lkotlin/Pair;

    const-string v4, "Failed to fetch health-check HTTP timeout from offline repository."

    invoke-interface {v2, v4, v1, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    .line 130
    :cond_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public getHttpHighTimeoutMs()Ljava/lang/Long;
    .locals 5

    .line 118
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;

    .line 119
    iget-object v0, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getAccountOfflineConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    move-result-object v0

    iget v0, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;->http_high_timeout_ms:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 118
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 120
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v2, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v3, 0x0

    new-array v3, v3, [Lkotlin/Pair;

    const-string v4, "Failed to fetch high HTTP timeout from offline repository."

    invoke-interface {v2, v4, v1, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    .line 122
    :cond_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public getHttpLowTimeoutMs()Ljava/lang/Long;
    .locals 5

    .line 110
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;

    .line 111
    iget-object v0, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getAccountOfflineConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    move-result-object v0

    iget v0, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;->http_low_timeout_ms:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 110
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 112
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v2, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v3, 0x0

    new-array v3, v3, [Lkotlin/Pair;

    const-string v4, "Failed to fetch low HTTP timeout from offline repository."

    invoke-interface {v2, v4, v1, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    .line 114
    :cond_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public getMaxTransactionLimit(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    const-string v0, "currencyCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getAccountOfflineConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;->max_transaction_amount_by_currency:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "toLowerCase(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method public isCardDenylistedForOffline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getAccountOfflineConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    move-result-object v1

    iget-object v1, v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;->denylisted_cardholder_names:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 295
    instance-of v2, v1, Ljava/util/Collection;

    const/4 v3, 0x1

    const-string v4, ""

    const-string v5, "toLowerCase(...)"

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 296
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez p3, :cond_3

    move-object v6, v4

    goto :goto_0

    :cond_3
    move-object v6, p3

    .line 191
    :goto_0
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/CharSequence;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v6, v2, v0, v7, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    .line 197
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getAccountOfflineConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    move-result-object v1

    iget-object v1, v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;->denylisted_masked_pans:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 298
    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_5

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    return v0

    .line 299
    :cond_5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry;

    .line 198
    iget-object v6, v2, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry;->first_six:Ljava/lang/String;

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 199
    iget-object v6, v2, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry;->last_four:Ljava/lang/String;

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez p3, :cond_7

    move-object v6, v4

    goto :goto_2

    :cond_7
    move-object v6, p3

    .line 200
    :goto_2
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v2, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry;->cardholder_name:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return v3

    :cond_8
    return v0

    .line 185
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string p2, "Masked PAN is unavailable, cannot perform denylist check."

    new-array p3, v0, [Lkotlin/Pair;

    invoke-interface {p1, p2, p3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    return v0
.end method

.method public isDeferredAuthorizationCountry()Z
    .locals 5

    .line 168
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;

    iget-object v0, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getAccountOfflineConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    move-result-object v0

    iget-boolean v0, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;->is_deferred_authorization_country:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 169
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v3, "Failed to retrieve isDeferredAuthCountry from offline repository. Returning false."

    new-array v4, v2, [Lkotlin/Pair;

    invoke-interface {v1, v3, v4}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 172
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isKnownForwardingError(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getAccountOfflineConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    move-result-object v0

    .line 144
    sget-object v1, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 148
    iget-object p1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;->expected_setup_intent_confirm_error_codes:Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 147
    :cond_1
    iget-object p1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;->expected_setup_intent_create_error_codes:Ljava/util/List;

    goto :goto_0

    .line 146
    :cond_2
    iget-object p1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;->expected_confirm_error_codes:Ljava/util/List;

    goto :goto_0

    .line 145
    :cond_3
    iget-object p1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;->expected_create_error_codes:Ljava/util/List;

    .line 151
    :goto_0
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isMobileWalletOnSetupIntentsEnabled()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getAccountOfflineConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    move-result-object v0

    iget-boolean v0, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;->mobile_wallet_on_setup_intents_enabled:Z

    return v0
.end method

.method public isOfflineEnabledForLocationAndReader(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const-string v0, "serialNumber"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->proxyOfflineListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;->isListenerSetFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 104
    iget-object v2, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    .line 105
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Lcom/stripe/offlinemode/storage/OfflineRepository;->isOfflineEnabledForLocationAndReader$default(Lcom/stripe/offlinemode/storage/OfflineRepository;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 106
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p2

    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isOfflineListenerSet()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->proxyOfflineListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;->isListenerSetFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isOfflineModeEnabled()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->proxyOfflineListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;->isListenerSetFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->isOfflineModeEnabledOnActiveReader()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSetupIntentsEnabled()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->proxyOfflineListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;->getListenerHasSetupIntentCallbackFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getCurrentConnectionSupportsOfflineSetupIntents()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->isOfflineModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getAccountOfflineConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    move-result-object v0

    iget-boolean v0, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;->setup_intents_enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public offlineListenerHasSetupIntentCallbacks()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->proxyOfflineListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;->getListenerHasSetupIntentCallbackFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onOfflineConfigUpdate(Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;)V
    .locals 7

    const-string v0, "locationId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p2}, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->updateAccountOfflineConfig(Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;)V

    .line 40
    iget-object v1, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->activeLocationConfigRepository:Lcom/stripe/device/ActiveLocationConfigRepository;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/stripe/device/ActiveLocationConfigRepository;->setActiveLocationConfigs(Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;)V

    return-void
.end method

.method public onOfflineConfigUpdateForMobileReader(Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;)V
    .locals 8

    const-string v0, "serialNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 60
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;

    .line 61
    iget-object v0, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0, p1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getLatestOfflineLocationForReader(Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->full_location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 60
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    :goto_1
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v1, v0

    goto :goto_2

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to fetch location ID for reader "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v0, p1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 62
    :goto_2
    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 66
    invoke-virtual/range {v2 .. v7}, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->onOfflineConfigUpdate(Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;)V

    :cond_2
    return-void
.end method

.method public setActiveConfigs(Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lkotlin/jvm/functions/Function2;)V
    .locals 4
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

    const-string v0, "offlineLocation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setReconnectParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->settingsRepository:Lcom/stripe/core/transaction/SettingsRepository;

    iget-object v1, p1, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    if-nez v1, :cond_0

    new-instance v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v3}, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;-><init>(Ljava/util/Map;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/stripe/core/transaction/SettingsRepository;->setTippingConfig(Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;)V

    .line 238
    iget-object v0, p1, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->bluetooth_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;

    .line 239
    iget-object p1, p1, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->usb_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    .line 237
    invoke-interface {p2, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public shouldAllowOfflineConnection(Lcom/stripe/stripeterminal/external/models/Reader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 13

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firmware"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "config"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "keyProfileVersion"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "keyProfileId"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iget-object v8, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v8}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getAccountOfflineConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    move-result-object v8

    .line 213
    iget-object v9, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v10, 0x6

    .line 214
    new-array v10, v10, [Lkotlin/Pair;

    const-string v11, "currentOfflineRegionConfig"

    iget-object v12, v8, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;->region_to_region_offline_config:Ljava/util/Map;

    invoke-static {v11, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const/4 v11, 0x1

    .line 215
    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v0, 0x2

    .line 216
    invoke-static {v5, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v10, v0

    const/4 v0, 0x3

    .line 217
    invoke-static {v6, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v10, v0

    const/4 v0, 0x4

    .line 218
    invoke-static {v7, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v10, v0

    .line 219
    const-string v0, "currentTimeMs"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v5, 0x5

    aput-object v0, v10, v5

    .line 213
    const-string v0, "Evaluating reader KFC for offline activation."

    invoke-interface {v9, v0, v10}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    move-object v0, p1

    move-object v1, p2

    move-wide/from16 v6, p6

    move-object v5, v8

    .line 222
    invoke-static/range {v0 .. v7}, Lcom/stripe/stripeterminal/internal/common/extensions/ReaderExtensionsKt;->isRunningAllowedVersionFromOfflineKFC(Lcom/stripe/stripeterminal/external/models/Reader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;J)Z

    move-result p1

    return p1
.end method

.method public shouldAllowOfflineTransaction(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "tvrStringHex"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x10

    .line 176
    invoke-static {v0}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    invoke-direct {p0}, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->tvrMask()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    and-long v0, v1, v3

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public shouldAllowPairingUnseenReader()Z
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getAccountOfflineConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    move-result-object v0

    iget-boolean v0, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;->offline_pair_unseen_reader_circuit_breaker:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public supportsSca()Z
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getAccountOfflineConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    move-result-object v0

    iget-boolean v0, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;->supports_sca:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getAccountOfflineConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    move-result-object v0

    iget-boolean v0, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;->disable_forced_sca_flow:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public switchInterfaceAuthorizationResponseCodeForAid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "aid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getAccountOfflineConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;->aid_to_offline_pin_response_auth_code:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
