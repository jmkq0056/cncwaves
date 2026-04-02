package com.stripe.core.connectivity.wifi;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: WifiConfigurationUtilities.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/stripe/core/connectivity/wifi/WifiAdvancedConfig;", "", "enumName", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getEnumName", "()Ljava/lang/String;", "DHCP", "STATIC", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WifiAdvancedConfig {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ WifiAdvancedConfig[] $VALUES;
    public static final WifiAdvancedConfig DHCP = new WifiAdvancedConfig("DHCP", 0, "DHCP");
    public static final WifiAdvancedConfig STATIC = new WifiAdvancedConfig("STATIC", 1, "STATIC");
    private final String enumName;

    private static final /* synthetic */ WifiAdvancedConfig[] $values() {
        return new WifiAdvancedConfig[]{DHCP, STATIC};
    }

    public static EnumEntries<WifiAdvancedConfig> getEntries() {
        return $ENTRIES;
    }

    public static WifiAdvancedConfig valueOf(String str) {
        return (WifiAdvancedConfig) Enum.valueOf(WifiAdvancedConfig.class, str);
    }

    public static WifiAdvancedConfig[] values() {
        return (WifiAdvancedConfig[]) $VALUES.clone();
    }

    private WifiAdvancedConfig(String str, int i, String str2) {
        this.enumName = str2;
    }

    public final String getEnumName() {
        return this.enumName;
    }

    static {
        WifiAdvancedConfig[] wifiAdvancedConfigArr$values = $values();
        $VALUES = wifiAdvancedConfigArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(wifiAdvancedConfigArr$values);
    }
}
