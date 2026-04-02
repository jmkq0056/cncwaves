package com.stripe.core.connectivity.wifi;

import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: WifiSecurity.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\b\u0086\u0081\u0002\u0018\u0000 \u000f2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000fB\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u0010"}, d2 = {"Lcom/stripe/core/connectivity/wifi/WifiSecurity;", "", "code", "", "minPasswordLength", "", "(Ljava/lang/String;ILjava/lang/String;I)V", "getCode", "()Ljava/lang/String;", "getMinPasswordLength", "()I", "WPA2_EAP", "WPA", "WPA2", "UNSUPPORTED", "Companion", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WifiSecurity {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ WifiSecurity[] $VALUES;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    private static final List<WifiSecurity> ORDERED_SECURITY_MODES;
    public static final WifiSecurity UNSUPPORTED;
    public static final WifiSecurity WPA;
    public static final WifiSecurity WPA2;
    public static final WifiSecurity WPA2_EAP;
    private final String code;
    private final int minPasswordLength;

    private static final /* synthetic */ WifiSecurity[] $values() {
        return new WifiSecurity[]{WPA2_EAP, WPA, WPA2, UNSUPPORTED};
    }

    public static EnumEntries<WifiSecurity> getEntries() {
        return $ENTRIES;
    }

    public static WifiSecurity valueOf(String str) {
        return (WifiSecurity) Enum.valueOf(WifiSecurity.class, str);
    }

    public static WifiSecurity[] values() {
        return (WifiSecurity[]) $VALUES.clone();
    }

    private WifiSecurity(String str, int i, String str2, int i2) {
        this.code = str2;
        this.minPasswordLength = i2;
    }

    public final String getCode() {
        return this.code;
    }

    public final int getMinPasswordLength() {
        return this.minPasswordLength;
    }

    static {
        WifiSecurity wifiSecurity = new WifiSecurity("WPA2_EAP", 0, "WPA2-EAP", 8);
        WPA2_EAP = wifiSecurity;
        WifiSecurity wifiSecurity2 = new WifiSecurity("WPA", 1, "WPA", 8);
        WPA = wifiSecurity2;
        WifiSecurity wifiSecurity3 = new WifiSecurity("WPA2", 2, "WPA2", 8);
        WPA2 = wifiSecurity3;
        UNSUPPORTED = new WifiSecurity("UNSUPPORTED", 3, "UNSUPPORTED", 0);
        WifiSecurity[] wifiSecurityArr$values = $values();
        $VALUES = wifiSecurityArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(wifiSecurityArr$values);
        INSTANCE = new Companion(null);
        ORDERED_SECURITY_MODES = CollectionsKt.reversed(CollectionsKt.listOf((Object[]) new WifiSecurity[]{wifiSecurity2, wifiSecurity3, wifiSecurity}));
    }

    /* JADX INFO: compiled from: WifiSecurity.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\bR\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/core/connectivity/wifi/WifiSecurity$Companion;", "", "()V", "ORDERED_SECURITY_MODES", "", "Lcom/stripe/core/connectivity/wifi/WifiSecurity;", "fromCapabilities", "capabilities", "", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WifiSecurity fromCapabilities(String capabilities) {
            Object obj;
            Intrinsics.checkNotNullParameter(capabilities, "capabilities");
            Iterator it = WifiSecurity.ORDERED_SECURITY_MODES.iterator();
            while (true) {
                obj = null;
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (StringsKt.contains$default((CharSequence) capabilities, (CharSequence) ((WifiSecurity) next).getCode(), false, 2, (Object) null)) {
                    obj = next;
                    break;
                }
            }
            WifiSecurity wifiSecurity = (WifiSecurity) obj;
            return wifiSecurity == null ? WifiSecurity.UNSUPPORTED : wifiSecurity;
        }
    }
}
