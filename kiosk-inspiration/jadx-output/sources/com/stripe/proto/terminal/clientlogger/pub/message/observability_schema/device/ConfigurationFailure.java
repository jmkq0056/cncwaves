package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.device;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ConfigurationFailure.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u0000 \u000f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u0010"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/ConfigurationFailure;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "CONFIGURATION_FAILURE_INVALID", "DEVICE_OWNER_FAILURE", "APPS_CONFIG_FAILURE", "IP_TABLES_FAILURE", "HIDDEN_APPS_FAILURE", "BBPOS_PROPERTIES_FAILURE", "BOOT_ASSETS_FAILURE", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ConfigurationFailure implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ConfigurationFailure[] $VALUES;
    public static final ProtoAdapter<ConfigurationFailure> ADAPTER;
    public static final ConfigurationFailure APPS_CONFIG_FAILURE;
    public static final ConfigurationFailure BBPOS_PROPERTIES_FAILURE;
    public static final ConfigurationFailure BOOT_ASSETS_FAILURE;
    public static final ConfigurationFailure CONFIGURATION_FAILURE_INVALID;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final ConfigurationFailure DEVICE_OWNER_FAILURE;
    public static final ConfigurationFailure HIDDEN_APPS_FAILURE;
    public static final ConfigurationFailure IP_TABLES_FAILURE;
    private final int value;

    private static final /* synthetic */ ConfigurationFailure[] $values() {
        return new ConfigurationFailure[]{CONFIGURATION_FAILURE_INVALID, DEVICE_OWNER_FAILURE, APPS_CONFIG_FAILURE, IP_TABLES_FAILURE, HIDDEN_APPS_FAILURE, BBPOS_PROPERTIES_FAILURE, BOOT_ASSETS_FAILURE};
    }

    @JvmStatic
    public static final ConfigurationFailure fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<ConfigurationFailure> getEntries() {
        return $ENTRIES;
    }

    public static ConfigurationFailure valueOf(String str) {
        return (ConfigurationFailure) Enum.valueOf(ConfigurationFailure.class, str);
    }

    public static ConfigurationFailure[] values() {
        return (ConfigurationFailure[]) $VALUES.clone();
    }

    private ConfigurationFailure(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final ConfigurationFailure configurationFailure = new ConfigurationFailure("CONFIGURATION_FAILURE_INVALID", 0, 0);
        CONFIGURATION_FAILURE_INVALID = configurationFailure;
        DEVICE_OWNER_FAILURE = new ConfigurationFailure("DEVICE_OWNER_FAILURE", 1, 1);
        APPS_CONFIG_FAILURE = new ConfigurationFailure("APPS_CONFIG_FAILURE", 2, 2);
        IP_TABLES_FAILURE = new ConfigurationFailure("IP_TABLES_FAILURE", 3, 3);
        HIDDEN_APPS_FAILURE = new ConfigurationFailure("HIDDEN_APPS_FAILURE", 4, 4);
        BBPOS_PROPERTIES_FAILURE = new ConfigurationFailure("BBPOS_PROPERTIES_FAILURE", 5, 5);
        BOOT_ASSETS_FAILURE = new ConfigurationFailure("BOOT_ASSETS_FAILURE", 6, 6);
        ConfigurationFailure[] configurationFailureArr$values = $values();
        $VALUES = configurationFailureArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(configurationFailureArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ConfigurationFailure.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<ConfigurationFailure>(orCreateKotlinClass, syntax, configurationFailure) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.device.ConfigurationFailure$Companion$ADAPTER$1
            {
                ConfigurationFailure configurationFailure2 = configurationFailure;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public ConfigurationFailure fromValue(int value) {
                return ConfigurationFailure.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: ConfigurationFailure.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/ConfigurationFailure$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/ConfigurationFailure;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final ConfigurationFailure fromValue(int value) {
            switch (value) {
                case 0:
                    return ConfigurationFailure.CONFIGURATION_FAILURE_INVALID;
                case 1:
                    return ConfigurationFailure.DEVICE_OWNER_FAILURE;
                case 2:
                    return ConfigurationFailure.APPS_CONFIG_FAILURE;
                case 3:
                    return ConfigurationFailure.IP_TABLES_FAILURE;
                case 4:
                    return ConfigurationFailure.HIDDEN_APPS_FAILURE;
                case 5:
                    return ConfigurationFailure.BBPOS_PROPERTIES_FAILURE;
                case 6:
                    return ConfigurationFailure.BOOT_ASSETS_FAILURE;
                default:
                    return null;
            }
        }
    }
}
