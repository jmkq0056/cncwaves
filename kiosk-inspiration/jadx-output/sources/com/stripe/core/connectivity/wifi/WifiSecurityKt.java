package com.stripe.core.connectivity.wifi;

import android.net.wifi.WifiConfiguration;
import java.util.BitSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WifiSecurity.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0002¨\u0006\u0005"}, d2 = {"getWifiSecurity", "Lcom/stripe/core/connectivity/wifi/WifiSecurity;", "Landroid/net/wifi/WifiConfiguration;", "isWpa2Eap", "", "connectivity_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class WifiSecurityKt {
    public static final WifiSecurity getWifiSecurity(WifiConfiguration wifiConfiguration) {
        Intrinsics.checkNotNullParameter(wifiConfiguration, "<this>");
        String str = wifiConfiguration.preSharedKey;
        if (str != null && str.length() > 0) {
            return WifiSecurity.WPA2;
        }
        if (isWpa2Eap(wifiConfiguration)) {
            return WifiSecurity.WPA2_EAP;
        }
        return WifiSecurity.UNSUPPORTED;
    }

    public static final boolean isWpa2Eap(WifiConfiguration wifiConfiguration) {
        Intrinsics.checkNotNullParameter(wifiConfiguration, "<this>");
        Set of = SetsKt.setOf((Object[]) new Integer[]{2, 3});
        BitSet allowedKeyManagement = wifiConfiguration.allowedKeyManagement;
        Intrinsics.checkNotNullExpressionValue(allowedKeyManagement, "allowedKeyManagement");
        if ((of instanceof Collection) && of.isEmpty()) {
            return false;
        }
        Iterator it = of.iterator();
        while (it.hasNext()) {
            if (allowedKeyManagement.get(((Number) it.next()).intValue())) {
                return true;
            }
        }
        return false;
    }
}
