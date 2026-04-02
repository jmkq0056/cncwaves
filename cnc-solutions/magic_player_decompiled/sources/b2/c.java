package b2;

import android.annotation.SuppressLint;
import android.net.ConnectivityManager;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.os.Build;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"MissingPermission"})
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    public static ConnectivityManager.NetworkCallback f232a;

    @RequiresPermission(allOf = {"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_WIFI_STATE"})
    public static boolean a(@Nullable WifiManager wifiManager, @Nullable WifiConfiguration wifiConfiguration, boolean z3) {
        WifiConfiguration wifiConfigurationD;
        if (wifiConfiguration == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            if (!b(wifiManager, wifiConfiguration)) {
                return false;
            }
            if (z3) {
                if (!wifiManager.reassociate()) {
                    return false;
                }
            } else if (!wifiManager.reconnect()) {
                return false;
            }
            return true;
        }
        Iterator<WifiConfiguration> it = wifiManager.getConfiguredNetworks().iterator();
        int i4 = 0;
        while (it.hasNext()) {
            int i5 = it.next().priority;
            if (i5 > i4) {
                i4 = i5;
            }
        }
        int size = i4 + 1;
        if (size > 99999) {
            List<WifiConfiguration> configuredNetworks = wifiManager.getConfiguredNetworks();
            Collections.sort(configuredNetworks, p.a.f2920i);
            size = configuredNetworks.size();
            for (int i6 = 0; i6 < size; i6++) {
                WifiConfiguration wifiConfiguration2 = configuredNetworks.get(i6);
                wifiConfiguration2.priority = i6;
                wifiManager.updateNetwork(wifiConfiguration2);
            }
            wifiManager.saveConfiguration();
            wifiConfiguration = a.d(wifiManager, wifiConfiguration);
            if (wifiConfiguration == null) {
                return false;
            }
        }
        wifiConfiguration.priority = size;
        int iUpdateNetwork = wifiManager.updateNetwork(wifiConfiguration);
        if (iUpdateNetwork == -1 || !wifiManager.enableNetwork(iUpdateNetwork, false) || !wifiManager.saveConfiguration() || (wifiConfigurationD = a.d(wifiManager, wifiConfiguration)) == null || !b(wifiManager, wifiConfigurationD)) {
            return false;
        }
        if (z3) {
            if (!wifiManager.reassociate()) {
                return false;
            }
        } else if (!wifiManager.reconnect()) {
            return false;
        }
        return true;
    }

    public static boolean b(@Nullable WifiManager wifiManager, @Nullable WifiConfiguration wifiConfiguration) {
        List<WifiConfiguration> configuredNetworks = wifiManager.getConfiguredNetworks();
        boolean zEnableNetwork = false;
        if (configuredNetworks != null && !configuredNetworks.isEmpty()) {
            for (WifiConfiguration wifiConfiguration2 : configuredNetworks) {
                if (wifiConfiguration2 != null) {
                    int i4 = wifiConfiguration2.networkId;
                    if (i4 == wifiConfiguration.networkId) {
                        zEnableNetwork = wifiManager.enableNetwork(i4, true);
                    } else {
                        wifiManager.disableNetwork(i4);
                    }
                }
            }
            int i5 = e.f243n;
        }
        return zEnableNetwork;
    }

    public static boolean c(@Nullable WifiManager wifiManager, @Nullable String str) {
        if (str == null || wifiManager == null || wifiManager.getConnectionInfo() == null || wifiManager.getConnectionInfo().getBSSID() == null || wifiManager.getConnectionInfo().getIpAddress() == 0 || !q0.a.g(str, wifiManager.getConnectionInfo().getBSSID())) {
            return false;
        }
        wifiManager.getConnectionInfo().getSSID();
        wifiManager.getConnectionInfo().getBSSID();
        int i4 = e.f243n;
        return true;
    }

    public static boolean d(@Nullable WifiManager wifiManager, @Nullable ScanResult scanResult) {
        boolean zEnableNetwork = false;
        if (wifiManager == null) {
            return false;
        }
        List<WifiConfiguration> configuredNetworks = wifiManager.getConfiguredNetworks();
        if (configuredNetworks != null && scanResult != null && !configuredNetworks.isEmpty()) {
            Iterator<WifiConfiguration> it = configuredNetworks.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                WifiConfiguration next = it.next();
                if (q0.a.g(scanResult.BSSID, next.BSSID) && q0.a.g(scanResult.SSID, f(next.SSID))) {
                    zEnableNetwork = wifiManager.enableNetwork(next.networkId, true);
                    break;
                }
            }
            int i4 = e.f243n;
        }
        return zEnableNetwork;
    }

    public static void e(@Nullable WifiManager wifiManager) {
        List<WifiConfiguration> configuredNetworks;
        if (wifiManager == null || (configuredNetworks = wifiManager.getConfiguredNetworks()) == null || configuredNetworks.isEmpty()) {
            return;
        }
        Iterator<WifiConfiguration> it = configuredNetworks.iterator();
        while (it.hasNext()) {
            wifiManager.enableNetwork(it.next().networkId, false);
        }
    }

    @Nullable
    public static String f(@Nullable String str) {
        return (str == null || str.isEmpty()) ? str : str.replaceAll("^\"*", "").replaceAll("\"*$", "");
    }
}
