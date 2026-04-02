package i;

import android.net.wifi.WifiConfiguration;

/* JADX INFO: loaded from: classes.dex */
public class h {
    public static void a(WifiConfiguration wifiConfiguration) {
        try {
            wifiConfiguration.getClass().getField("requirePMF").set(wifiConfiguration, Boolean.TRUE);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
