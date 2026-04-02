.class public Lcom/stripe/jvmcore/storage/SharedPrefs;
.super Ljava/lang/Object;
.source "SharedPrefs.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/storage/SharedPrefs$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u00082\u0008\u0016\u0018\u0000 j2\u00020\u0001:\u0001jB\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000c\u001a\u0004\u0018\u00010\t2\u0006\u0010\r\u001a\u00020\tJ.\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000f2\u0006\u0010\u0012\u001a\u00020\u00132\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fJ\u0014\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00160\u000fH\u0016J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u000e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001cJ\u0008\u0010\u001e\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u001f\u001a\u0004\u0018\u00010\t2\u0006\u0010 \u001a\u00020\tJ\u0006\u0010!\u001a\u00020\tJ\u0008\u0010\"\u001a\u00020#H\u0016J\u0008\u0010$\u001a\u00020%H\u0016J\u0006\u0010&\u001a\u00020\tJ/\u0010\'\u001a\u0002H(\"\u0012\u0008\u0000\u0010(*\u000c\u0012\u0004\u0012\u0002H(\u0012\u0002\u0008\u00030)2\u0006\u0010*\u001a\u00020\t2\u0006\u0010\u001d\u001a\u0002H(\u00a2\u0006\u0002\u0010+J\u0008\u0010,\u001a\u0004\u0018\u00010\tJ\u0008\u0010-\u001a\u00020.H\u0016J\u0016\u0010/\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u00100\u001a\u00020\u0011J\u0008\u00101\u001a\u0004\u0018\u00010\tJ\u0006\u00102\u001a\u00020\tJ\u0008\u00103\u001a\u000204H\u0016J\u0006\u00105\u001a\u00020\tJ\u0006\u00106\u001a\u00020\u001cJ\u0006\u00107\u001a\u00020\u001cJ0\u00108\u001a\u0002092\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010:\u001a\u00020\u00112\u0006\u0010;\u001a\u00020\u00102\u0006\u0010<\u001a\u00020\u00112\u0008\u0008\u0002\u0010=\u001a\u00020\u001cJ\u0018\u0010>\u001a\u0002092\u0006\u0010?\u001a\u00020\u00162\u0006\u0010@\u001a\u00020\u0016H\u0016J\u0010\u0010A\u001a\u0002092\u0006\u0010B\u001a\u00020\u0018H\u0016J\u0010\u0010C\u001a\u0002092\u0006\u0010D\u001a\u00020\u001aH\u0016J\u000e\u0010E\u001a\u0002092\u0006\u0010F\u001a\u00020\tJ\u000e\u0010G\u001a\u0002092\u0006\u0010H\u001a\u00020\tJ\u0010\u0010I\u001a\u0002092\u0006\u0010J\u001a\u00020#H\u0016J\u0010\u0010K\u001a\u0002092\u0006\u0010L\u001a\u00020%H\u0016J/\u0010M\u001a\u000209\"\u0012\u0008\u0000\u0010(*\u000c\u0012\u0004\u0012\u0002H(\u0012\u0002\u0008\u00030)2\u0006\u0010*\u001a\u00020\t2\u0006\u0010N\u001a\u0002H(\u00a2\u0006\u0002\u0010OJ\u000e\u0010P\u001a\u0002092\u0006\u0010Q\u001a\u00020\tJ\u0010\u0010R\u001a\u0002092\u0006\u0010S\u001a\u00020.H\u0016J\u000e\u0010T\u001a\u0002092\u0006\u0010H\u001a\u00020\tJ\u0010\u0010U\u001a\u0002092\u0006\u0010V\u001a\u000204H\u0016J\u000e\u0010W\u001a\u0002092\u0006\u0010X\u001a\u00020\u001cJ\u000e\u0010Y\u001a\u0002092\u0006\u0010\r\u001a\u00020\tJ\u000e\u0010Z\u001a\u0002092\u0006\u0010\u0012\u001a\u00020\u0013J\u0016\u0010[\u001a\u0002092\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\\\u001a\u00020\tJ\u0016\u0010]\u001a\u0002092\u0006\u0010\\\u001a\u00020\t2\u0006\u0010^\u001a\u00020\tJ\u000e\u0010_\u001a\u0002092\u0006\u0010`\u001a\u00020\tJ\u000e\u0010a\u001a\u0002092\u0006\u0010b\u001a\u00020\tJ\u000e\u0010c\u001a\u0002092\u0006\u0010d\u001a\u00020\tJ\u000e\u0010e\u001a\u0002092\u0006\u0010f\u001a\u00020\u001cJ\u0016\u0010g\u001a\u0002092\u0006\u0010*\u001a\u00020\t2\u0006\u0010h\u001a\u00020\u000bJ\u0016\u0010i\u001a\u0002092\u0006\u0010*\u001a\u00020\t2\u0006\u0010h\u001a\u00020\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R \u0010\u0007\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006k"
    }
    d2 = {
        "Lcom/stripe/jvmcore/storage/SharedPrefs;",
        "",
        "keyValueStore",
        "Lcom/stripe/jvmcore/storage/KeyValueStore;",
        "(Lcom/stripe/jvmcore/storage/KeyValueStore;)V",
        "getKeyValueStore",
        "()Lcom/stripe/jvmcore/storage/KeyValueStore;",
        "listenerMap",
        "",
        "",
        "",
        "Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener;",
        "getAccessibilityLanguageVersion",
        "code",
        "getConfigRebootTimeWindowInSeconds",
        "Lkotlin/Pair;",
        "",
        "",
        "approach",
        "Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;",
        "defaultTimeWindow",
        "getEncryptedAccountOfflineConfig",
        "",
        "getFeatureFlags",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
        "getFormsConfig",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;",
        "getIsServerConfigRebootTimeEnforced",
        "",
        "defaultValue",
        "getKeyProfileName",
        "getLastAccessibilityUberLanguagePackVersion",
        "expectedAccessibilityIdentifier",
        "getLocationId",
        "getLpmConfig",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;",
        "getMagstripeConfig",
        "Lcom/stripe/proto/model/config/MagstripeConfig;",
        "getMerchantDetailsForEdgeHeadersOnly",
        "getMessage",
        "M",
        "Lcom/squareup/wire/Message;",
        "key",
        "(Ljava/lang/String;Lcom/squareup/wire/Message;)Lcom/squareup/wire/Message;",
        "getMobilePosConfig",
        "getOfflineConfig",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;",
        "getRebootTimeInSeconds",
        "defaultTimeInSeconds",
        "getRecentlyUsedLanguagesTagForAccessibility",
        "getRpcSessionToken",
        "getTippingConfig",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;",
        "getTransactionLogConfig",
        "getTransactionLogEnabled",
        "getUpdateInProgress",
        "putConfigRebootTimeWindowInSeconds",
        "",
        "rebootTimeInSeconds",
        "startHour",
        "durationInSeconds",
        "isEnforced",
        "putEncryptedAccountOfflineConfig",
        "encryptedData",
        "encryptionIv",
        "putFeatureFlags",
        "featureFlags",
        "putFormsConfig",
        "formsConfigPb",
        "putKeyProfileName",
        "keyProfileName",
        "putLocationId",
        "token",
        "putLpmConfig",
        "lpmConfigPb",
        "putMagstripeConfig",
        "magstripeConfig",
        "putMessage",
        "message",
        "(Ljava/lang/String;Lcom/squareup/wire/Message;)V",
        "putMobilePosConfig",
        "merchantNameData",
        "putOfflineConfig",
        "offlineConfigPb",
        "putRpcSessionToken",
        "putTippingConfig",
        "tippingConfig",
        "putUpdateInProgress",
        "inProgress",
        "removeAccessibilityLanguageVersion",
        "removeConfigRebootTime",
        "setAccessibilityLanguageVersion",
        "version",
        "setLastAccessibilityUberLanguagePackVersion",
        "newAccessibilityInstallIdentifier",
        "setMerchantDetailsForEdgeHeadersOnly",
        "merchantId",
        "setRecentlyUsedLanguagesTagForAccessibility",
        "languages",
        "setTransactionLogConfig",
        "config",
        "setTransactionLogEnabled",
        "enabled",
        "subscribeToChanges",
        "listener",
        "unsubscribeFromChanges",
        "Companion",
        "storage"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ACCESSIBILITY_RECENTLY_USED_LANGUAGES_TAG:Ljava/lang/String; = "accessibility_recently-used-languages-tag"

.field private static final ACCOUNT_OFFLINE_CONFIG_ENCRYPTED_DATA:Ljava/lang/String; = "offline_config_encrypted_data"

.field private static final ACCOUNT_OFFLINE_CONFIG_ENCRYPTION_IV:Ljava/lang/String; = "offline_config_encryption_iv"

.field public static final BLUETOOTH_DEVICE_NAME_SERIAL_MAPPING:Ljava/lang/String; = "bluetooth_device_to_serial_mapping"

.field public static final Companion:Lcom/stripe/jvmcore/storage/SharedPrefs$Companion;

.field public static final DEFAULT_MERCHANT_DETAILS_FOR_EDGE_HEADERS_ONLY:Ljava/lang/String; = ""

.field private static final DEFAULT_MOBILE_POS_CONFIG:Ljava/lang/String; = ""

.field private static final DEFAULT_READER_LOCATION:Ljava/lang/String; = ""

.field private static final DEFAULT_RPC_SESSION_TOKEN:Ljava/lang/String; = ""

.field private static final DEFAULT_UPDATE_IN_PROGRESS:Z = false

.field private static final FORMS_CONFIG:Ljava/lang/String; = "forms_config"

.field private static final FULL_OFFLINE_CONFIG:Ljava/lang/String; = "full_offline_config"

.field private static final IS_SERVER_CONFIG_REBOOT_TIME_ENFORCED:Ljava/lang/String; = "is_server_config_reboot_time_enforced"

.field public static final KEY_MERCHANT_DETAILS_FOR_EDGE_HEADERS_ONLY:Ljava/lang/String; = "merchant_details_for_edge_headers_only"

.field private static final KEY_PROFILE_NAME:Ljava/lang/String; = "key_profile_name"

.field public static final LAST_ACCESSIBILITY_UBER_LANGUAGE_PACK_IDENTIFIER:Ljava/lang/String; = "accessibility_uber_pack_identifier"

.field public static final LAST_ACCESSIBILITY_UBER_LANGUAGE_PACK_VERSION:Ljava/lang/String; = "accessibility_uber_pack_last_version"

.field public static final LAST_ACTIVE_OFFLINE_ACCOUNT_ID:Ljava/lang/String; = "offline_account_id"

.field private static final LPM_CONFIG:Ljava/lang/String; = "lpm_config"

.field private static final MAGSTRIPE_CONFIG:Ljava/lang/String; = "magstripe_config"

.field private static final MOBILE_POS_CONFIG:Ljava/lang/String; = "mobile_pos_config"

.field public static final READER_FEATURE_FLAGS:Ljava/lang/String; = "reader_feature_flags"

.field private static final READER_LOCATION_KEY:Ljava/lang/String; = "reader_location"

.field private static final RPC_SESSION_TOKEN:Ljava/lang/String; = "rpc_session_token"

.field private static final TIPPING_CONFIG:Ljava/lang/String; = "tipping_config"

.field private static final TRANSACTION_LOG_CONFIG:Ljava/lang/String; = "transaction_log_config"

.field private static final TRANSACTION_LOG_ENABLED:Ljava/lang/String; = "transaction_log_enabled"

.field private static final UPDATE_IN_PROGRESS:Ljava/lang/String; = "update_in_progress"


# instance fields
.field private final keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

.field private final listenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/jvmcore/storage/SharedPrefs$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/jvmcore/storage/SharedPrefs$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/jvmcore/storage/SharedPrefs;->Companion:Lcom/stripe/jvmcore/storage/SharedPrefs$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/jvmcore/storage/KeyValueStore;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "keyValueStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    .line 15
    invoke-interface {p1}, Lcom/stripe/jvmcore/storage/KeyValueStore;->getListenerMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->listenerMap:Ljava/util/Map;

    return-void
.end method

.method public static synthetic putConfigRebootTimeWindowInSeconds$default(Lcom/stripe/jvmcore/storage/SharedPrefs;Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;JIJZILjava/lang/Object;)V
    .locals 9

    if-nez p9, :cond_1

    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v8, v0

    goto :goto_0

    :cond_0
    move/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-wide v6, p5

    .line 140
    invoke-virtual/range {v1 .. v8}, Lcom/stripe/jvmcore/storage/SharedPrefs;->putConfigRebootTimeWindowInSeconds(Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;JIJZ)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: putConfigRebootTimeWindowInSeconds"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getAccessibilityLanguageVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    sget-object v1, Lcom/stripe/jvmcore/storage/SharedPrefs;->Companion:Lcom/stripe/jvmcore/storage/SharedPrefs$Companion;

    invoke-static {v1, p1}, Lcom/stripe/jvmcore/storage/SharedPrefs$Companion;->access$getAccessibilityLanguageKey(Lcom/stripe/jvmcore/storage/SharedPrefs$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/stripe/jvmcore/storage/KeyValueStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getConfigRebootTimeWindowInSeconds(Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;Lkotlin/Pair;)Lkotlin/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "approach"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultTimeWindow"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    new-instance v0, Lkotlin/Pair;

    .line 165
    iget-object v1, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    sget-object v2, Lcom/stripe/jvmcore/storage/SharedPrefs;->Companion:Lcom/stripe/jvmcore/storage/SharedPrefs$Companion;

    invoke-static {v2, p1}, Lcom/stripe/jvmcore/storage/SharedPrefs$Companion;->access$getStartHourName(Lcom/stripe/jvmcore/storage/SharedPrefs$Companion;Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-interface {v1, v3, v4}, Lcom/stripe/jvmcore/storage/KeyValueStore;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 166
    iget-object v3, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    invoke-static {v2, p1}, Lcom/stripe/jvmcore/storage/SharedPrefs$Companion;->access$getDurationName(Lcom/stripe/jvmcore/storage/SharedPrefs$Companion;Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-interface {v3, p1, v4, v5}, Lcom/stripe/jvmcore/storage/KeyValueStore;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 164
    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getEncryptedAccountOfflineConfig()Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "[B[B>;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    const-string v1, "offline_config_encrypted_data"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/storage/KeyValueStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    const-string v3, "offline_config_encryption_iv"

    invoke-interface {v1, v3, v2}, Lcom/stripe/jvmcore/storage/KeyValueStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    new-instance v2, Lkotlin/Pair;

    .line 62
    iget-object v3, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    invoke-interface {v3, v0}, Lcom/stripe/jvmcore/storage/KeyValueStore;->base64Decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 63
    iget-object v3, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    invoke-interface {v3, v1}, Lcom/stripe/jvmcore/storage/KeyValueStore;->base64Decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 61
    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 58
    :cond_1
    :goto_0
    new-instance v0, Lkotlin/Pair;

    const/4 v1, 0x0

    new-array v2, v1, [B

    new-array v1, v1, [B

    invoke-direct {v0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFeatureFlags()Lcom/stripe/proto/model/config/ReaderFeatureFlags;
    .locals 154

    .line 34
    new-instance v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    const/16 v152, 0x3f

    const/16 v153, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

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

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const-wide/16 v62, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const-wide/16 v70, 0x0

    const-wide/16 v72, 0x0

    const/16 v74, 0x0

    const-wide/16 v75, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const-wide/16 v84, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const-wide/16 v88, 0x0

    const/16 v90, 0x0

    const-wide/16 v91, 0x0

    const/16 v93, 0x0

    const/16 v94, 0x0

    const-wide/16 v95, 0x0

    const-wide/16 v97, 0x0

    const/16 v99, 0x0

    const/16 v100, 0x0

    const/16 v101, 0x0

    const/16 v102, 0x0

    const/16 v103, 0x0

    const/16 v104, 0x0

    const/16 v105, 0x0

    const/16 v106, 0x0

    const/16 v107, 0x0

    const/16 v108, 0x0

    const/16 v109, 0x0

    const/16 v110, 0x0

    const/16 v111, 0x0

    const/16 v112, 0x0

    const/16 v113, 0x0

    const/16 v114, 0x0

    const/16 v115, 0x0

    const/16 v116, 0x0

    const/16 v117, 0x0

    const/16 v118, 0x0

    const/16 v119, 0x0

    const/16 v120, 0x0

    const/16 v121, 0x0

    const/16 v122, 0x0

    const/16 v123, 0x0

    const/16 v124, 0x0

    const/16 v125, 0x0

    const/16 v126, 0x0

    const/16 v127, 0x0

    const/16 v128, 0x0

    const/16 v129, 0x0

    const/16 v130, 0x0

    const/16 v131, 0x0

    const/16 v132, 0x0

    const/16 v133, 0x0

    const/16 v134, 0x0

    const-wide/16 v135, 0x0

    const/16 v137, 0x0

    const/16 v138, 0x0

    const/16 v139, 0x0

    const/16 v140, 0x0

    const/16 v141, 0x0

    const-wide/16 v142, 0x0

    const-wide/16 v144, 0x0

    const/16 v146, 0x0

    const/16 v147, 0x0

    const/16 v148, -0x1

    const/16 v149, -0x1

    const/16 v150, -0x1

    const/16 v151, -0x1

    invoke-direct/range {v0 .. v153}, Lcom/stripe/proto/model/config/ReaderFeatureFlags;-><init>(ZZZZJZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZJZZZZZZJJZJZZZZZZZJZZJZJZZJJZLcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZJZZZZZJJZLokio/ByteString;IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/squareup/wire/Message;

    const-string v1, "reader_feature_flags"

    move-object/from16 v2, p0

    invoke-virtual {v2, v1, v0}, Lcom/stripe/jvmcore/storage/SharedPrefs;->getMessage(Ljava/lang/String;Lcom/squareup/wire/Message;)Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    return-object v0
.end method

.method public getFormsConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;
    .locals 9

    .line 84
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;-><init>(Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;IILokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/squareup/wire/Message;

    const-string v1, "forms_config"

    invoke-virtual {p0, v1, v0}, Lcom/stripe/jvmcore/storage/SharedPrefs;->getMessage(Ljava/lang/String;Lcom/squareup/wire/Message;)Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    return-object v0
.end method

.method public final getIsServerConfigRebootTimeEnforced(Z)Z
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    .line 193
    const-string v1, "is_server_config_reboot_time_enforced"

    invoke-interface {v0, v1, p1}, Lcom/stripe/jvmcore/storage/KeyValueStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public final getKeyProfileName()Ljava/lang/String;
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    const-string v1, "key_profile_name"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/storage/KeyValueStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getKeyValueStore()Lcom/stripe/jvmcore/storage/KeyValueStore;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    return-object v0
.end method

.method public final getLastAccessibilityUberLanguagePackVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "expectedAccessibilityIdentifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    const-string v1, "accessibility_uber_pack_identifier"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/storage/KeyValueStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object v2

    .line 252
    :cond_0
    iget-object p1, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    const-string v0, "accessibility_uber_pack_last_version"

    invoke-interface {p1, v0, v2}, Lcom/stripe/jvmcore/storage/KeyValueStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getLocationId()Ljava/lang/String;
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    const-string v1, "reader_location"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/storage/KeyValueStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    return-object v0
.end method

.method public getLpmConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;
    .locals 6

    .line 112
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;-><init>(Ljava/util/List;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/squareup/wire/Message;

    const-string v1, "lpm_config"

    invoke-virtual {p0, v1, v0}, Lcom/stripe/jvmcore/storage/SharedPrefs;->getMessage(Ljava/lang/String;Lcom/squareup/wire/Message;)Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;

    return-object v0
.end method

.method public getMagstripeConfig()Lcom/stripe/proto/model/config/MagstripeConfig;
    .locals 4

    .line 123
    new-instance v0, Lcom/stripe/proto/model/config/MagstripeConfig;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/stripe/proto/model/config/MagstripeConfig;-><init>(ZLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/squareup/wire/Message;

    const-string v1, "magstripe_config"

    invoke-virtual {p0, v1, v0}, Lcom/stripe/jvmcore/storage/SharedPrefs;->getMessage(Ljava/lang/String;Lcom/squareup/wire/Message;)Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/config/MagstripeConfig;

    return-object v0
.end method

.method public final getMerchantDetailsForEdgeHeadersOnly()Ljava/lang/String;
    .locals 3

    .line 296
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    const-string v1, "merchant_details_for_edge_headers_only"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/storage/KeyValueStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    return-object v0
.end method

.method public final getMessage(Ljava/lang/String;Lcom/squareup/wire/Message;)Lcom/squareup/wire/Message;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message<",
            "TM;*>;>(",
            "Ljava/lang/String;",
            "TM;)TM;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Lcom/stripe/jvmcore/storage/KeyValueStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->adapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    invoke-interface {v2, v0}, Lcom/stripe/jvmcore/storage/KeyValueStore;->base64Decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 219
    :catch_0
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    invoke-interface {v0, p1}, Lcom/stripe/jvmcore/storage/KeyValueStore;->remove(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object p2
.end method

.method public final getMobilePosConfig()Ljava/lang/String;
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    const-string v1, "mobile_pos_config"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/storage/KeyValueStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOfflineConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;
    .locals 12

    .line 98
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;-><init>(ZILjava/util/Map;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;ZZLjava/util/Map;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/squareup/wire/Message;

    const-string v1, "full_offline_config"

    invoke-virtual {p0, v1, v0}, Lcom/stripe/jvmcore/storage/SharedPrefs;->getMessage(Ljava/lang/String;Lcom/squareup/wire/Message;)Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    return-object v0
.end method

.method public final getRebootTimeInSeconds(Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;J)J
    .locals 1

    const-string v0, "approach"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lcom/stripe/jvmcore/storage/KeyValueStore;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final getRecentlyUsedLanguagesTagForAccessibility()Ljava/lang/String;
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    const-string v1, "accessibility_recently-used-languages-tag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/storage/KeyValueStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRpcSessionToken()Ljava/lang/String;
    .locals 3

    .line 18
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    const-string v1, "rpc_session_token"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/storage/KeyValueStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTippingConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;
    .locals 3

    .line 42
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;-><init>(Ljava/util/Map;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/squareup/wire/Message;

    const-string v1, "tipping_config"

    invoke-virtual {p0, v1, v0}, Lcom/stripe/jvmcore/storage/SharedPrefs;->getMessage(Ljava/lang/String;Lcom/squareup/wire/Message;)Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    return-object v0
.end method

.method public final getTransactionLogConfig()Ljava/lang/String;
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    const-string v1, "transaction_log_config"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/storage/KeyValueStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    return-object v0
.end method

.method public final getTransactionLogEnabled()Z
    .locals 3

    .line 315
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    const-string v1, "transaction_log_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/storage/KeyValueStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getUpdateInProgress()Z
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    const-string v1, "update_in_progress"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/storage/KeyValueStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final putConfigRebootTimeWindowInSeconds(Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;JIJZ)V
    .locals 2

    const-string v0, "approach"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 148
    new-array v0, v0, [Lkotlin/Pair;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v0, p3

    .line 149
    sget-object p2, Lcom/stripe/jvmcore/storage/SharedPrefs;->Companion:Lcom/stripe/jvmcore/storage/SharedPrefs$Companion;

    invoke-static {p2, p1}, Lcom/stripe/jvmcore/storage/SharedPrefs$Companion;->access$getStartHourName(Lcom/stripe/jvmcore/storage/SharedPrefs$Companion;Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p3, p4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, v0, p4

    .line 150
    invoke-static {p2, p1}, Lcom/stripe/jvmcore/storage/SharedPrefs$Companion;->access$getDurationName(Lcom/stripe/jvmcore/storage/SharedPrefs$Companion;Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v0, p3

    .line 147
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    .line 153
    sget-object p3, Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;->REBOOT_TIME_BY_SERVER_DEFAULT:Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;

    if-ne p1, p3, :cond_0

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 154
    const-string p3, "is_server_config_reboot_time_enforced"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    invoke-interface {p1, p2}, Lcom/stripe/jvmcore/storage/KeyValueStore;->batchSetFields(Ljava/util/Map;)V

    return-void
.end method

.method public putEncryptedAccountOfflineConfig([B[B)V
    .locals 2

    const-string v0, "encryptedData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptionIv"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 73
    new-array v0, v0, [Lkotlin/Pair;

    iget-object v1, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    invoke-interface {v1, p1}, Lcom/stripe/jvmcore/storage/KeyValueStore;->base64Encode([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "offline_config_encrypted_data"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 74
    iget-object p1, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    invoke-interface {p1, p2}, Lcom/stripe/jvmcore/storage/KeyValueStore;->base64Encode([B)Ljava/lang/String;

    move-result-object p1

    const-string p2, "offline_config_encryption_iv"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 72
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 77
    iget-object p2, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    invoke-interface {p2, p1}, Lcom/stripe/jvmcore/storage/KeyValueStore;->batchSetFields(Ljava/util/Map;)V

    return-void
.end method

.method public putFeatureFlags(Lcom/stripe/proto/model/config/ReaderFeatureFlags;)V
    .locals 1

    const-string v0, "featureFlags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    const-string v0, "reader_feature_flags"

    check-cast p1, Lcom/squareup/wire/Message;

    invoke-virtual {p0, v0, p1}, Lcom/stripe/jvmcore/storage/SharedPrefs;->putMessage(Ljava/lang/String;Lcom/squareup/wire/Message;)V

    return-void
.end method

.method public putFormsConfig(Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;)V
    .locals 1

    const-string v0, "formsConfigPb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    const-string v0, "forms_config"

    check-cast p1, Lcom/squareup/wire/Message;

    invoke-virtual {p0, v0, p1}, Lcom/stripe/jvmcore/storage/SharedPrefs;->putMessage(Ljava/lang/String;Lcom/squareup/wire/Message;)V

    return-void
.end method

.method public final putKeyProfileName(Ljava/lang/String;)V
    .locals 2

    const-string v0, "keyProfileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    const-string v1, "key_profile_name"

    invoke-interface {v0, v1, p1}, Lcom/stripe/jvmcore/storage/KeyValueStore;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final putLocationId(Ljava/lang/String;)V
    .locals 2

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    const-string v1, "reader_location"

    invoke-interface {v0, v1, p1}, Lcom/stripe/jvmcore/storage/KeyValueStore;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putLpmConfig(Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;)V
    .locals 1

    const-string v0, "lpmConfigPb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    const-string v0, "lpm_config"

    check-cast p1, Lcom/squareup/wire/Message;

    invoke-virtual {p0, v0, p1}, Lcom/stripe/jvmcore/storage/SharedPrefs;->putMessage(Ljava/lang/String;Lcom/squareup/wire/Message;)V

    return-void
.end method

.method public putMagstripeConfig(Lcom/stripe/proto/model/config/MagstripeConfig;)V
    .locals 1

    const-string v0, "magstripeConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    const-string v0, "magstripe_config"

    check-cast p1, Lcom/squareup/wire/Message;

    invoke-virtual {p0, v0, p1}, Lcom/stripe/jvmcore/storage/SharedPrefs;->putMessage(Ljava/lang/String;Lcom/squareup/wire/Message;)V

    return-void
.end method

.method public final putMessage(Ljava/lang/String;Lcom/squareup/wire/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message<",
            "TM;*>;>(",
            "Ljava/lang/String;",
            "TM;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    invoke-virtual {p2}, Lcom/squareup/wire/Message;->encode()[B

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/stripe/jvmcore/storage/KeyValueStore;->base64Encode([B)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/stripe/jvmcore/storage/KeyValueStore;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final putMobilePosConfig(Ljava/lang/String;)V
    .locals 2

    const-string v0, "merchantNameData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    const-string v1, "mobile_pos_config"

    invoke-interface {v0, v1, p1}, Lcom/stripe/jvmcore/storage/KeyValueStore;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putOfflineConfig(Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;)V
    .locals 1

    const-string v0, "offlineConfigPb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    const-string v0, "full_offline_config"

    check-cast p1, Lcom/squareup/wire/Message;

    invoke-virtual {p0, v0, p1}, Lcom/stripe/jvmcore/storage/SharedPrefs;->putMessage(Ljava/lang/String;Lcom/squareup/wire/Message;)V

    return-void
.end method

.method public final putRpcSessionToken(Ljava/lang/String;)V
    .locals 2

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    const-string v1, "rpc_session_token"

    invoke-interface {v0, v1, p1}, Lcom/stripe/jvmcore/storage/KeyValueStore;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putTippingConfig(Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;)V
    .locals 1

    const-string v0, "tippingConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    const-string v0, "tipping_config"

    check-cast p1, Lcom/squareup/wire/Message;

    invoke-virtual {p0, v0, p1}, Lcom/stripe/jvmcore/storage/SharedPrefs;->putMessage(Ljava/lang/String;Lcom/squareup/wire/Message;)V

    return-void
.end method

.method public final putUpdateInProgress(Z)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    const-string v1, "update_in_progress"

    invoke-interface {v0, v1, p1}, Lcom/stripe/jvmcore/storage/KeyValueStore;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final removeAccessibilityLanguageVersion(Ljava/lang/String;)V
    .locals 2

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    sget-object v1, Lcom/stripe/jvmcore/storage/SharedPrefs;->Companion:Lcom/stripe/jvmcore/storage/SharedPrefs$Companion;

    invoke-static {v1, p1}, Lcom/stripe/jvmcore/storage/SharedPrefs$Companion;->access$getAccessibilityLanguageKey(Lcom/stripe/jvmcore/storage/SharedPrefs$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/stripe/jvmcore/storage/KeyValueStore;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public final removeConfigRebootTime(Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;)V
    .locals 4

    const-string v0, "approach"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 171
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 172
    sget-object v1, Lcom/stripe/jvmcore/storage/SharedPrefs;->Companion:Lcom/stripe/jvmcore/storage/SharedPrefs$Companion;

    invoke-static {v1, p1}, Lcom/stripe/jvmcore/storage/SharedPrefs$Companion;->access$getStartHourName(Lcom/stripe/jvmcore/storage/SharedPrefs$Companion;Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    .line 173
    invoke-static {v1, p1}, Lcom/stripe/jvmcore/storage/SharedPrefs$Companion;->access$getDurationName(Lcom/stripe/jvmcore/storage/SharedPrefs$Companion;Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 170
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 176
    sget-object v1, Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;->REBOOT_TIME_BY_SERVER_DEFAULT:Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;

    if-ne p1, v1, :cond_0

    .line 177
    const-string p1, "is_server_config_reboot_time_enforced"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_0
    iget-object p1, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    invoke-interface {p1, v0}, Lcom/stripe/jvmcore/storage/KeyValueStore;->batchRemoveFields(Ljava/util/List;)V

    return-void
.end method

.method public final setAccessibilityLanguageVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    sget-object v1, Lcom/stripe/jvmcore/storage/SharedPrefs;->Companion:Lcom/stripe/jvmcore/storage/SharedPrefs$Companion;

    invoke-static {v1, p1}, Lcom/stripe/jvmcore/storage/SharedPrefs$Companion;->access$getAccessibilityLanguageKey(Lcom/stripe/jvmcore/storage/SharedPrefs$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/stripe/jvmcore/storage/KeyValueStore;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setLastAccessibilityUberLanguagePackVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newAccessibilityInstallIdentifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    const-string v1, "accessibility_uber_pack_last_version"

    invoke-interface {v0, v1, p1}, Lcom/stripe/jvmcore/storage/KeyValueStore;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object p1, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    const-string v0, "accessibility_uber_pack_identifier"

    invoke-interface {p1, v0, p2}, Lcom/stripe/jvmcore/storage/KeyValueStore;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setMerchantDetailsForEdgeHeadersOnly(Ljava/lang/String;)V
    .locals 2

    const-string v0, "merchantId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    const-string v1, "merchant_details_for_edge_headers_only"

    invoke-interface {v0, v1, p1}, Lcom/stripe/jvmcore/storage/KeyValueStore;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setRecentlyUsedLanguagesTagForAccessibility(Ljava/lang/String;)V
    .locals 2

    const-string v0, "languages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    const-string v1, "accessibility_recently-used-languages-tag"

    invoke-interface {v0, v1, p1}, Lcom/stripe/jvmcore/storage/KeyValueStore;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setTransactionLogConfig(Ljava/lang/String;)V
    .locals 2

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    const-string v1, "transaction_log_config"

    invoke-interface {v0, v1, p1}, Lcom/stripe/jvmcore/storage/KeyValueStore;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setTransactionLogEnabled(Z)V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->keyValueStore:Lcom/stripe/jvmcore/storage/KeyValueStore;

    const-string v1, "transaction_log_enabled"

    invoke-interface {v0, v1, p1}, Lcom/stripe/jvmcore/storage/KeyValueStore;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final subscribeToChanges(Ljava/lang/String;Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->listenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->listenerMap:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v1, Ljava/util/Set;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->listenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final unsubscribeFromChanges(Ljava/lang/String;Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/SharedPrefs;->listenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
