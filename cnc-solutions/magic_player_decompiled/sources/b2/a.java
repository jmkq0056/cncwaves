package b2;

import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    public static String a(@NonNull ScanResult scanResult) {
        String str = scanResult.capabilities.contains("WEP") ? "WEP" : "OPEN";
        if (scanResult.capabilities.contains("PSK")) {
            str = "PSK";
        }
        if (scanResult.capabilities.contains("EAP")) {
            str = "EAP";
        }
        int i4 = e.f243n;
        return str;
    }

    public static String b(@NonNull WifiConfiguration wifiConfiguration) {
        String str;
        ArrayList arrayList = new ArrayList();
        str = "OPEN";
        if (wifiConfiguration.allowedKeyManagement.get(0)) {
            str = wifiConfiguration.wepKeys[0] != null ? "WEP" : "OPEN";
            arrayList.add(str);
        }
        if (wifiConfiguration.allowedKeyManagement.get(2) || wifiConfiguration.allowedKeyManagement.get(3)) {
            str = "EAP";
            arrayList.add("EAP");
        }
        if (wifiConfiguration.allowedKeyManagement.get(1)) {
            str = "PSK";
            arrayList.add("PSK");
        }
        arrayList.toString();
        int i4 = e.f243n;
        return str;
    }

    @Nullable
    @RequiresPermission(allOf = {"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_WIFI_STATE"})
    public static WifiConfiguration c(@NonNull WifiManager wifiManager, @NonNull ScanResult scanResult) {
        String str;
        if (scanResult.BSSID != null && (str = scanResult.SSID) != null && !str.isEmpty() && !scanResult.BSSID.isEmpty()) {
            String strA = c2.a.a(scanResult.SSID);
            String str2 = scanResult.BSSID;
            String strA2 = a(scanResult);
            List<WifiConfiguration> configuredNetworks = wifiManager.getConfiguredNetworks();
            if (configuredNetworks == null) {
                return null;
            }
            for (WifiConfiguration wifiConfiguration : configuredNetworks) {
                if (str2.equals(wifiConfiguration.BSSID) || strA.equals(wifiConfiguration.SSID)) {
                    if (q0.a.g(strA2, b(wifiConfiguration))) {
                        return wifiConfiguration;
                    }
                }
            }
        }
        return null;
    }

    @Nullable
    @RequiresPermission(allOf = {"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_WIFI_STATE"})
    public static WifiConfiguration d(@NonNull WifiManager wifiManager, @NonNull WifiConfiguration wifiConfiguration) {
        String str = wifiConfiguration.SSID;
        if (str != null && !str.isEmpty()) {
            String str2 = wifiConfiguration.BSSID;
            if (str2 == null) {
                str2 = "";
            }
            String strB = b(wifiConfiguration);
            List<WifiConfiguration> configuredNetworks = wifiManager.getConfiguredNetworks();
            if (configuredNetworks == null) {
                int i4 = e.f243n;
                return null;
            }
            for (WifiConfiguration wifiConfiguration2 : configuredNetworks) {
                if (str2.equals(wifiConfiguration2.BSSID) || str.equals(wifiConfiguration2.SSID)) {
                    if (q0.a.g(strB, b(wifiConfiguration2))) {
                        return wifiConfiguration2;
                    }
                }
            }
            int i5 = e.f243n;
        }
        return null;
    }
}
