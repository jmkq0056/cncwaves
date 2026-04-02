package com.stripe.jvmcore.storage;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.squareup.wire.Message;
import com.stripe.jvmcore.reboot.RebootTimeSettingApproach;
import com.stripe.proto.model.config.MagstripeConfig;
import com.stripe.proto.model.config.ReaderFeatureFlags;
import com.stripe.proto.terminal.terminal.pub.message.config.FormsConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.LpmConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.TippingConfigPb;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SharedPrefs.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b2\b\u0016\u0018\u0000 j2\u00020\u0001:\u0001jB\u000f\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\f\u001a\u0004\u0018\u00010\t2\u0006\u0010\r\u001a\u00020\tJ.\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000f2\u0006\u0010\u0012\u001a\u00020\u00132\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fJ\u0014\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00160\u000fH\u0016J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\u000e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001cJ\b\u0010\u001e\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u001f\u001a\u0004\u0018\u00010\t2\u0006\u0010 \u001a\u00020\tJ\u0006\u0010!\u001a\u00020\tJ\b\u0010\"\u001a\u00020#H\u0016J\b\u0010$\u001a\u00020%H\u0016J\u0006\u0010&\u001a\u00020\tJ/\u0010'\u001a\u0002H(\"\u0012\b\u0000\u0010(*\f\u0012\u0004\u0012\u0002H(\u0012\u0002\b\u00030)2\u0006\u0010*\u001a\u00020\t2\u0006\u0010\u001d\u001a\u0002H(¢\u0006\u0002\u0010+J\b\u0010,\u001a\u0004\u0018\u00010\tJ\b\u0010-\u001a\u00020.H\u0016J\u0016\u0010/\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u00100\u001a\u00020\u0011J\b\u00101\u001a\u0004\u0018\u00010\tJ\u0006\u00102\u001a\u00020\tJ\b\u00103\u001a\u000204H\u0016J\u0006\u00105\u001a\u00020\tJ\u0006\u00106\u001a\u00020\u001cJ\u0006\u00107\u001a\u00020\u001cJ0\u00108\u001a\u0002092\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010:\u001a\u00020\u00112\u0006\u0010;\u001a\u00020\u00102\u0006\u0010<\u001a\u00020\u00112\b\b\u0002\u0010=\u001a\u00020\u001cJ\u0018\u0010>\u001a\u0002092\u0006\u0010?\u001a\u00020\u00162\u0006\u0010@\u001a\u00020\u0016H\u0016J\u0010\u0010A\u001a\u0002092\u0006\u0010B\u001a\u00020\u0018H\u0016J\u0010\u0010C\u001a\u0002092\u0006\u0010D\u001a\u00020\u001aH\u0016J\u000e\u0010E\u001a\u0002092\u0006\u0010F\u001a\u00020\tJ\u000e\u0010G\u001a\u0002092\u0006\u0010H\u001a\u00020\tJ\u0010\u0010I\u001a\u0002092\u0006\u0010J\u001a\u00020#H\u0016J\u0010\u0010K\u001a\u0002092\u0006\u0010L\u001a\u00020%H\u0016J/\u0010M\u001a\u000209\"\u0012\b\u0000\u0010(*\f\u0012\u0004\u0012\u0002H(\u0012\u0002\b\u00030)2\u0006\u0010*\u001a\u00020\t2\u0006\u0010N\u001a\u0002H(¢\u0006\u0002\u0010OJ\u000e\u0010P\u001a\u0002092\u0006\u0010Q\u001a\u00020\tJ\u0010\u0010R\u001a\u0002092\u0006\u0010S\u001a\u00020.H\u0016J\u000e\u0010T\u001a\u0002092\u0006\u0010H\u001a\u00020\tJ\u0010\u0010U\u001a\u0002092\u0006\u0010V\u001a\u000204H\u0016J\u000e\u0010W\u001a\u0002092\u0006\u0010X\u001a\u00020\u001cJ\u000e\u0010Y\u001a\u0002092\u0006\u0010\r\u001a\u00020\tJ\u000e\u0010Z\u001a\u0002092\u0006\u0010\u0012\u001a\u00020\u0013J\u0016\u0010[\u001a\u0002092\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\\\u001a\u00020\tJ\u0016\u0010]\u001a\u0002092\u0006\u0010\\\u001a\u00020\t2\u0006\u0010^\u001a\u00020\tJ\u000e\u0010_\u001a\u0002092\u0006\u0010`\u001a\u00020\tJ\u000e\u0010a\u001a\u0002092\u0006\u0010b\u001a\u00020\tJ\u000e\u0010c\u001a\u0002092\u0006\u0010d\u001a\u00020\tJ\u000e\u0010e\u001a\u0002092\u0006\u0010f\u001a\u00020\u001cJ\u0016\u0010g\u001a\u0002092\u0006\u0010*\u001a\u00020\t2\u0006\u0010h\u001a\u00020\u000bJ\u0016\u0010i\u001a\u0002092\u0006\u0010*\u001a\u00020\t2\u0006\u0010h\u001a\u00020\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R \u0010\u0007\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006k"}, d2 = {"Lcom/stripe/jvmcore/storage/SharedPrefs;", "", "keyValueStore", "Lcom/stripe/jvmcore/storage/KeyValueStore;", "(Lcom/stripe/jvmcore/storage/KeyValueStore;)V", "getKeyValueStore", "()Lcom/stripe/jvmcore/storage/KeyValueStore;", "listenerMap", "", "", "", "Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener;", "getAccessibilityLanguageVersion", "code", "getConfigRebootTimeWindowInSeconds", "Lkotlin/Pair;", "", "", "approach", "Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;", "defaultTimeWindow", "getEncryptedAccountOfflineConfig", "", "getFeatureFlags", "Lcom/stripe/proto/model/config/ReaderFeatureFlags;", "getFormsConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;", "getIsServerConfigRebootTimeEnforced", "", "defaultValue", "getKeyProfileName", "getLastAccessibilityUberLanguagePackVersion", "expectedAccessibilityIdentifier", "getLocationId", "getLpmConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;", "getMagstripeConfig", "Lcom/stripe/proto/model/config/MagstripeConfig;", "getMerchantDetailsForEdgeHeadersOnly", "getMessage", "M", "Lcom/squareup/wire/Message;", "key", "(Ljava/lang/String;Lcom/squareup/wire/Message;)Lcom/squareup/wire/Message;", "getMobilePosConfig", "getOfflineConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;", "getRebootTimeInSeconds", "defaultTimeInSeconds", "getRecentlyUsedLanguagesTagForAccessibility", "getRpcSessionToken", "getTippingConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;", "getTransactionLogConfig", "getTransactionLogEnabled", "getUpdateInProgress", "putConfigRebootTimeWindowInSeconds", "", "rebootTimeInSeconds", "startHour", "durationInSeconds", "isEnforced", "putEncryptedAccountOfflineConfig", "encryptedData", "encryptionIv", "putFeatureFlags", "featureFlags", "putFormsConfig", "formsConfigPb", "putKeyProfileName", "keyProfileName", "putLocationId", "token", "putLpmConfig", "lpmConfigPb", "putMagstripeConfig", "magstripeConfig", "putMessage", "message", "(Ljava/lang/String;Lcom/squareup/wire/Message;)V", "putMobilePosConfig", "merchantNameData", "putOfflineConfig", "offlineConfigPb", "putRpcSessionToken", "putTippingConfig", "tippingConfig", "putUpdateInProgress", "inProgress", "removeAccessibilityLanguageVersion", "removeConfigRebootTime", "setAccessibilityLanguageVersion", "version", "setLastAccessibilityUberLanguagePackVersion", "newAccessibilityInstallIdentifier", "setMerchantDetailsForEdgeHeadersOnly", "merchantId", "setRecentlyUsedLanguagesTagForAccessibility", "languages", "setTransactionLogConfig", "config", "setTransactionLogEnabled", "enabled", "subscribeToChanges", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "unsubscribeFromChanges", "Companion", "storage"}, k = 1, mv = {1, 9, 0}, xi = 48)
public class SharedPrefs {
    public static final String ACCESSIBILITY_RECENTLY_USED_LANGUAGES_TAG = "accessibility_recently-used-languages-tag";
    private static final String ACCOUNT_OFFLINE_CONFIG_ENCRYPTED_DATA = "offline_config_encrypted_data";
    private static final String ACCOUNT_OFFLINE_CONFIG_ENCRYPTION_IV = "offline_config_encryption_iv";
    public static final String BLUETOOTH_DEVICE_NAME_SERIAL_MAPPING = "bluetooth_device_to_serial_mapping";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String DEFAULT_MERCHANT_DETAILS_FOR_EDGE_HEADERS_ONLY = "";
    private static final String DEFAULT_MOBILE_POS_CONFIG = "";
    private static final String DEFAULT_READER_LOCATION = "";
    private static final String DEFAULT_RPC_SESSION_TOKEN = "";
    private static final boolean DEFAULT_UPDATE_IN_PROGRESS = false;
    private static final String FORMS_CONFIG = "forms_config";
    private static final String FULL_OFFLINE_CONFIG = "full_offline_config";
    private static final String IS_SERVER_CONFIG_REBOOT_TIME_ENFORCED = "is_server_config_reboot_time_enforced";
    public static final String KEY_MERCHANT_DETAILS_FOR_EDGE_HEADERS_ONLY = "merchant_details_for_edge_headers_only";
    private static final String KEY_PROFILE_NAME = "key_profile_name";
    public static final String LAST_ACCESSIBILITY_UBER_LANGUAGE_PACK_IDENTIFIER = "accessibility_uber_pack_identifier";
    public static final String LAST_ACCESSIBILITY_UBER_LANGUAGE_PACK_VERSION = "accessibility_uber_pack_last_version";
    public static final String LAST_ACTIVE_OFFLINE_ACCOUNT_ID = "offline_account_id";
    private static final String LPM_CONFIG = "lpm_config";
    private static final String MAGSTRIPE_CONFIG = "magstripe_config";
    private static final String MOBILE_POS_CONFIG = "mobile_pos_config";
    public static final String READER_FEATURE_FLAGS = "reader_feature_flags";
    private static final String READER_LOCATION_KEY = "reader_location";
    private static final String RPC_SESSION_TOKEN = "rpc_session_token";
    private static final String TIPPING_CONFIG = "tipping_config";
    private static final String TRANSACTION_LOG_CONFIG = "transaction_log_config";
    private static final String TRANSACTION_LOG_ENABLED = "transaction_log_enabled";
    private static final String UPDATE_IN_PROGRESS = "update_in_progress";
    private final KeyValueStore keyValueStore;
    private final Map<String, Set<SharedPrefsChangeListener>> listenerMap;

    @Inject
    public SharedPrefs(KeyValueStore keyValueStore) {
        Intrinsics.checkNotNullParameter(keyValueStore, "keyValueStore");
        this.keyValueStore = keyValueStore;
        this.listenerMap = keyValueStore.getListenerMap();
    }

    public final KeyValueStore getKeyValueStore() {
        return this.keyValueStore;
    }

    public final String getRpcSessionToken() {
        String string = this.keyValueStore.getString(RPC_SESSION_TOKEN, "");
        Intrinsics.checkNotNull(string);
        return string;
    }

    public final void putRpcSessionToken(String token) {
        Intrinsics.checkNotNullParameter(token, "token");
        this.keyValueStore.putString(RPC_SESSION_TOKEN, token);
    }

    public final String getLocationId() {
        String string = this.keyValueStore.getString(READER_LOCATION_KEY, "");
        return string == null ? "" : string;
    }

    public final void putLocationId(String token) {
        Intrinsics.checkNotNullParameter(token, "token");
        this.keyValueStore.putString(READER_LOCATION_KEY, token);
    }

    public ReaderFeatureFlags getFeatureFlags() {
        return (ReaderFeatureFlags) getMessage(READER_FEATURE_FLAGS, new ReaderFeatureFlags(false, false, false, false, 0L, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, 0L, false, false, false, false, false, false, 0L, 0L, false, 0L, false, false, false, false, false, false, false, 0L, false, false, 0L, false, 0L, false, false, 0L, 0L, false, null, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, 0L, false, false, false, false, false, 0L, 0L, false, null, -1, -1, -1, -1, 63, null));
    }

    public void putFeatureFlags(ReaderFeatureFlags featureFlags) {
        Intrinsics.checkNotNullParameter(featureFlags, "featureFlags");
        putMessage(READER_FEATURE_FLAGS, featureFlags);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TippingConfigPb getTippingConfig() {
        return (TippingConfigPb) getMessage(TIPPING_CONFIG, new TippingConfigPb(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0));
    }

    public void putTippingConfig(TippingConfigPb tippingConfig) {
        Intrinsics.checkNotNullParameter(tippingConfig, "tippingConfig");
        putMessage(TIPPING_CONFIG, tippingConfig);
    }

    public Pair<byte[], byte[]> getEncryptedAccountOfflineConfig() {
        String string = this.keyValueStore.getString(ACCOUNT_OFFLINE_CONFIG_ENCRYPTED_DATA, null);
        String string2 = this.keyValueStore.getString(ACCOUNT_OFFLINE_CONFIG_ENCRYPTION_IV, null);
        if (string == null || string2 == null) {
            return new Pair<>(new byte[0], new byte[0]);
        }
        return new Pair<>(this.keyValueStore.base64Decode(string), this.keyValueStore.base64Decode(string2));
    }

    public void putEncryptedAccountOfflineConfig(byte[] encryptedData, byte[] encryptionIv) {
        Intrinsics.checkNotNullParameter(encryptedData, "encryptedData");
        Intrinsics.checkNotNullParameter(encryptionIv, "encryptionIv");
        this.keyValueStore.batchSetFields(MapsKt.mutableMapOf(TuplesKt.to(ACCOUNT_OFFLINE_CONFIG_ENCRYPTED_DATA, this.keyValueStore.base64Encode(encryptedData)), TuplesKt.to(ACCOUNT_OFFLINE_CONFIG_ENCRYPTION_IV, this.keyValueStore.base64Encode(encryptionIv))));
    }

    public FormsConfigPb getFormsConfig() {
        return (FormsConfigPb) getMessage(FORMS_CONFIG, new FormsConfigPb(null, null, null, 0, 0, null, 63, null));
    }

    public void putFormsConfig(FormsConfigPb formsConfigPb) {
        Intrinsics.checkNotNullParameter(formsConfigPb, "formsConfigPb");
        putMessage(FORMS_CONFIG, formsConfigPb);
    }

    public OfflineConfigPb getOfflineConfig() {
        return (OfflineConfigPb) getMessage(FULL_OFFLINE_CONFIG, new OfflineConfigPb(false, 0, null, null, null, false, false, null, null, 511, null));
    }

    public void putOfflineConfig(OfflineConfigPb offlineConfigPb) {
        Intrinsics.checkNotNullParameter(offlineConfigPb, "offlineConfigPb");
        putMessage(FULL_OFFLINE_CONFIG, offlineConfigPb);
    }

    public LpmConfigPb getLpmConfig() {
        return (LpmConfigPb) getMessage(LPM_CONFIG, new LpmConfigPb(null, null, null, 7, null));
    }

    public void putLpmConfig(LpmConfigPb lpmConfigPb) {
        Intrinsics.checkNotNullParameter(lpmConfigPb, "lpmConfigPb");
        putMessage(LPM_CONFIG, lpmConfigPb);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MagstripeConfig getMagstripeConfig() {
        return (MagstripeConfig) getMessage(MAGSTRIPE_CONFIG, new MagstripeConfig(false, null, 3, 0 == true ? 1 : 0));
    }

    public void putMagstripeConfig(MagstripeConfig magstripeConfig) {
        Intrinsics.checkNotNullParameter(magstripeConfig, "magstripeConfig");
        putMessage(MAGSTRIPE_CONFIG, magstripeConfig);
    }

    public final void putUpdateInProgress(boolean inProgress) {
        this.keyValueStore.putBoolean(UPDATE_IN_PROGRESS, inProgress);
    }

    public final boolean getUpdateInProgress() {
        return this.keyValueStore.getBoolean(UPDATE_IN_PROGRESS, false);
    }

    public final long getRebootTimeInSeconds(RebootTimeSettingApproach approach, long defaultTimeInSeconds) {
        Intrinsics.checkNotNullParameter(approach, "approach");
        return this.keyValueStore.getLong(approach.name(), defaultTimeInSeconds);
    }

    public static /* synthetic */ void putConfigRebootTimeWindowInSeconds$default(SharedPrefs sharedPrefs, RebootTimeSettingApproach rebootTimeSettingApproach, long j, int i, long j2, boolean z, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: putConfigRebootTimeWindowInSeconds");
        }
        sharedPrefs.putConfigRebootTimeWindowInSeconds(rebootTimeSettingApproach, j, i, j2, (i2 & 16) != 0 ? false : z);
    }

    public final void putConfigRebootTimeWindowInSeconds(RebootTimeSettingApproach approach, long rebootTimeInSeconds, int startHour, long durationInSeconds, boolean isEnforced) {
        Intrinsics.checkNotNullParameter(approach, "approach");
        Companion companion = INSTANCE;
        Map<String, ? extends Object> mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.to(approach.name(), Long.valueOf(rebootTimeInSeconds)), TuplesKt.to(companion.getStartHourName(approach), Integer.valueOf(startHour)), TuplesKt.to(companion.getDurationName(approach), Long.valueOf(durationInSeconds)));
        if (approach == RebootTimeSettingApproach.REBOOT_TIME_BY_SERVER_DEFAULT) {
            mapMutableMapOf.put(IS_SERVER_CONFIG_REBOOT_TIME_ENFORCED, Boolean.valueOf(isEnforced));
        }
        this.keyValueStore.batchSetFields(mapMutableMapOf);
    }

    public final Pair<Integer, Long> getConfigRebootTimeWindowInSeconds(RebootTimeSettingApproach approach, Pair<Integer, Long> defaultTimeWindow) {
        Intrinsics.checkNotNullParameter(approach, "approach");
        Intrinsics.checkNotNullParameter(defaultTimeWindow, "defaultTimeWindow");
        KeyValueStore keyValueStore = this.keyValueStore;
        Companion companion = INSTANCE;
        return new Pair<>(Integer.valueOf(keyValueStore.getInt(companion.getStartHourName(approach), defaultTimeWindow.getFirst().intValue())), Long.valueOf(this.keyValueStore.getLong(companion.getDurationName(approach), defaultTimeWindow.getSecond().longValue())));
    }

    public final void removeConfigRebootTime(RebootTimeSettingApproach approach) {
        Intrinsics.checkNotNullParameter(approach, "approach");
        Companion companion = INSTANCE;
        List<String> listMutableListOf = CollectionsKt.mutableListOf(approach.name(), companion.getStartHourName(approach), companion.getDurationName(approach));
        if (approach == RebootTimeSettingApproach.REBOOT_TIME_BY_SERVER_DEFAULT) {
            listMutableListOf.add(IS_SERVER_CONFIG_REBOOT_TIME_ENFORCED);
        }
        this.keyValueStore.batchRemoveFields(listMutableListOf);
    }

    public final String getKeyProfileName() {
        return this.keyValueStore.getString(KEY_PROFILE_NAME, null);
    }

    public final void putKeyProfileName(String keyProfileName) {
        Intrinsics.checkNotNullParameter(keyProfileName, "keyProfileName");
        this.keyValueStore.putString(KEY_PROFILE_NAME, keyProfileName);
    }

    public final boolean getIsServerConfigRebootTimeEnforced(boolean defaultValue) {
        return this.keyValueStore.getBoolean(IS_SERVER_CONFIG_REBOOT_TIME_ENFORCED, defaultValue);
    }

    public final <M extends Message<M, ?>> void putMessage(String key, M message) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(message, "message");
        KeyValueStore keyValueStore = this.keyValueStore;
        keyValueStore.putString(key, keyValueStore.base64Encode(message.encode()));
    }

    public final <M extends Message<M, ?>> M getMessage(String key, M defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        String string = this.keyValueStore.getString(key, "");
        String str = string;
        if (str != null && str.length() != 0) {
            try {
                return (M) defaultValue.adapter().decode(this.keyValueStore.base64Decode(string));
            } catch (Exception unused) {
                this.keyValueStore.remove(key);
            }
        }
        return defaultValue;
    }

    public final void subscribeToChanges(String key, SharedPrefsChangeListener listener) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(listener, "listener");
        if (!this.listenerMap.containsKey(key)) {
            this.listenerMap.put(key, new LinkedHashSet());
        }
        Set<SharedPrefsChangeListener> set = this.listenerMap.get(key);
        if (set != null) {
            set.add(listener);
        }
    }

    public final void unsubscribeFromChanges(String key, SharedPrefsChangeListener listener) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Set<SharedPrefsChangeListener> set = this.listenerMap.get(key);
        if (set != null) {
            set.remove(listener);
        }
    }

    public final String getMobilePosConfig() {
        return this.keyValueStore.getString(MOBILE_POS_CONFIG, "");
    }

    public final void putMobilePosConfig(String merchantNameData) {
        Intrinsics.checkNotNullParameter(merchantNameData, "merchantNameData");
        this.keyValueStore.putString(MOBILE_POS_CONFIG, merchantNameData);
    }

    public final String getLastAccessibilityUberLanguagePackVersion(String expectedAccessibilityIdentifier) {
        Intrinsics.checkNotNullParameter(expectedAccessibilityIdentifier, "expectedAccessibilityIdentifier");
        if (Intrinsics.areEqual(this.keyValueStore.getString(LAST_ACCESSIBILITY_UBER_LANGUAGE_PACK_IDENTIFIER, null), expectedAccessibilityIdentifier)) {
            return this.keyValueStore.getString(LAST_ACCESSIBILITY_UBER_LANGUAGE_PACK_VERSION, null);
        }
        return null;
    }

    public final void setLastAccessibilityUberLanguagePackVersion(String version, String newAccessibilityInstallIdentifier) {
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(newAccessibilityInstallIdentifier, "newAccessibilityInstallIdentifier");
        this.keyValueStore.putString(LAST_ACCESSIBILITY_UBER_LANGUAGE_PACK_VERSION, version);
        this.keyValueStore.putString(LAST_ACCESSIBILITY_UBER_LANGUAGE_PACK_IDENTIFIER, newAccessibilityInstallIdentifier);
    }

    public final void setRecentlyUsedLanguagesTagForAccessibility(String languages) {
        Intrinsics.checkNotNullParameter(languages, "languages");
        this.keyValueStore.putString(ACCESSIBILITY_RECENTLY_USED_LANGUAGES_TAG, languages);
    }

    public final String getRecentlyUsedLanguagesTagForAccessibility() {
        return this.keyValueStore.getString(ACCESSIBILITY_RECENTLY_USED_LANGUAGES_TAG, null);
    }

    public final void setAccessibilityLanguageVersion(String code, String version) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(version, "version");
        this.keyValueStore.putString(INSTANCE.getAccessibilityLanguageKey(code), version);
    }

    public final String getAccessibilityLanguageVersion(String code) {
        Intrinsics.checkNotNullParameter(code, "code");
        return this.keyValueStore.getString(INSTANCE.getAccessibilityLanguageKey(code), null);
    }

    public final void removeAccessibilityLanguageVersion(String code) {
        Intrinsics.checkNotNullParameter(code, "code");
        this.keyValueStore.remove(INSTANCE.getAccessibilityLanguageKey(code));
    }

    public final String getMerchantDetailsForEdgeHeadersOnly() {
        String string = this.keyValueStore.getString(KEY_MERCHANT_DETAILS_FOR_EDGE_HEADERS_ONLY, "");
        return string == null ? "" : string;
    }

    public final void setMerchantDetailsForEdgeHeadersOnly(String merchantId) {
        Intrinsics.checkNotNullParameter(merchantId, "merchantId");
        this.keyValueStore.putString(KEY_MERCHANT_DETAILS_FOR_EDGE_HEADERS_ONLY, merchantId);
    }

    public final String getTransactionLogConfig() {
        String string = this.keyValueStore.getString(TRANSACTION_LOG_CONFIG, "");
        return string == null ? "" : string;
    }

    public final void setTransactionLogConfig(String config) {
        Intrinsics.checkNotNullParameter(config, "config");
        this.keyValueStore.putString(TRANSACTION_LOG_CONFIG, config);
    }

    public final boolean getTransactionLogEnabled() {
        return this.keyValueStore.getBoolean(TRANSACTION_LOG_ENABLED, false);
    }

    public final void setTransactionLogEnabled(boolean enabled) {
        this.keyValueStore.putBoolean(TRANSACTION_LOG_ENABLED, enabled);
    }

    /* JADX INFO: compiled from: SharedPrefs.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\f\u0010 \u001a\u00020\u0004*\u00020\u0004H\u0002J\f\u0010!\u001a\u00020\u0004*\u00020\"H\u0002J\f\u0010#\u001a\u00020\u0004*\u00020\"H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcom/stripe/jvmcore/storage/SharedPrefs$Companion;", "", "()V", "ACCESSIBILITY_RECENTLY_USED_LANGUAGES_TAG", "", "ACCOUNT_OFFLINE_CONFIG_ENCRYPTED_DATA", "ACCOUNT_OFFLINE_CONFIG_ENCRYPTION_IV", "BLUETOOTH_DEVICE_NAME_SERIAL_MAPPING", "DEFAULT_MERCHANT_DETAILS_FOR_EDGE_HEADERS_ONLY", "DEFAULT_MOBILE_POS_CONFIG", "DEFAULT_READER_LOCATION", "DEFAULT_RPC_SESSION_TOKEN", "DEFAULT_UPDATE_IN_PROGRESS", "", "FORMS_CONFIG", "FULL_OFFLINE_CONFIG", "IS_SERVER_CONFIG_REBOOT_TIME_ENFORCED", "KEY_MERCHANT_DETAILS_FOR_EDGE_HEADERS_ONLY", "KEY_PROFILE_NAME", "LAST_ACCESSIBILITY_UBER_LANGUAGE_PACK_IDENTIFIER", "LAST_ACCESSIBILITY_UBER_LANGUAGE_PACK_VERSION", "LAST_ACTIVE_OFFLINE_ACCOUNT_ID", "LPM_CONFIG", "MAGSTRIPE_CONFIG", "MOBILE_POS_CONFIG", "READER_FEATURE_FLAGS", "READER_LOCATION_KEY", "RPC_SESSION_TOKEN", "TIPPING_CONFIG", "TRANSACTION_LOG_CONFIG", "TRANSACTION_LOG_ENABLED", "UPDATE_IN_PROGRESS", "getAccessibilityLanguageKey", "getDurationName", "Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;", "getStartHourName", "storage"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String getStartHourName(RebootTimeSettingApproach rebootTimeSettingApproach) {
            return rebootTimeSettingApproach.name() + "_start_hour";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String getDurationName(RebootTimeSettingApproach rebootTimeSettingApproach) {
            return rebootTimeSettingApproach.name() + "_duration_in_seconds";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String getAccessibilityLanguageKey(String str) {
            return "accessibility_lang_" + str;
        }
    }
}
