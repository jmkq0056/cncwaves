package com.stripe.core.connectivity.wifi;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: WifiAuthenticationResult.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/core/connectivity/wifi/WifiAuthenticationResult;", "", "(Ljava/lang/String;I)V", "None", "UnknownError", "InvalidSsid", "InvalidPassword", "Success", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WifiAuthenticationResult {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ WifiAuthenticationResult[] $VALUES;
    public static final WifiAuthenticationResult None = new WifiAuthenticationResult("None", 0);
    public static final WifiAuthenticationResult UnknownError = new WifiAuthenticationResult("UnknownError", 1);
    public static final WifiAuthenticationResult InvalidSsid = new WifiAuthenticationResult("InvalidSsid", 2);
    public static final WifiAuthenticationResult InvalidPassword = new WifiAuthenticationResult("InvalidPassword", 3);
    public static final WifiAuthenticationResult Success = new WifiAuthenticationResult("Success", 4);

    private static final /* synthetic */ WifiAuthenticationResult[] $values() {
        return new WifiAuthenticationResult[]{None, UnknownError, InvalidSsid, InvalidPassword, Success};
    }

    public static EnumEntries<WifiAuthenticationResult> getEntries() {
        return $ENTRIES;
    }

    public static WifiAuthenticationResult valueOf(String str) {
        return (WifiAuthenticationResult) Enum.valueOf(WifiAuthenticationResult.class, str);
    }

    public static WifiAuthenticationResult[] values() {
        return (WifiAuthenticationResult[]) $VALUES.clone();
    }

    private WifiAuthenticationResult(String str, int i) {
    }

    static {
        WifiAuthenticationResult[] wifiAuthenticationResultArr$values = $values();
        $VALUES = wifiAuthenticationResultArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(wifiAuthenticationResultArr$values);
    }
}
