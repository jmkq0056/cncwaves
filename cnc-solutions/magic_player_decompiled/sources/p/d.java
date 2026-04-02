package p;

import android.content.Context;
import android.net.wifi.SupplicantState;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class d extends i<a> {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ int f2924j = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f2925d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final WifiManager f2926e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Context f2927f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public b f2928g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f2929h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f2930i;

    public interface b {
    }

    public d(Context context) {
        this.f2927f = context;
        this.f2926e = (WifiManager) context.getApplicationContext().getSystemService("wifi");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0098  */
    /* JADX WARN: Type inference failed for: r12v0, types: [p.d] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [int] */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    @Override // p.i
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(p.d.a r13) {
        /*
            Method dump skipped, instruction units count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p.d.b(java.lang.Object):void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0241  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void d(java.lang.String r18, java.lang.String r19) {
        /*
            Method dump skipped, instruction units count: 852
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p.d.d(java.lang.String, java.lang.String):void");
    }

    public void e(String str, String str2, int i4) {
        this.f2929h = false;
        this.f2930i = str;
        c(new a(str, str2, i4));
    }

    public final int f(int i4) {
        Log.i("ConnectWifiTask", "connectByNetworkId::" + i4);
        this.f2926e.disconnect();
        this.f2926e.enableNetwork(i4, true);
        this.f2926e.reassociate();
        this.f2926e.saveConfiguration();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        String strA = android.support.v4.media.b.a(android.support.v4.media.f.a("\""), this.f2930i, "\"");
        boolean z3 = false;
        while (SystemClock.elapsedRealtime() - jElapsedRealtime <= 20000) {
            SystemClock.sleep(200L);
            try {
                WifiInfo connectionInfo = this.f2926e.getConnectionInfo();
                if (connectionInfo != null) {
                    int networkId = connectionInfo.getNetworkId();
                    String ssid = connectionInfo.getSSID();
                    SupplicantState supplicantState = connectionInfo.getSupplicantState();
                    Log.i("ConnectWifiTask", "isConnectSuccess:: networkId = " + networkId + ", state = " + supplicantState);
                    if (strA.equals(ssid) && supplicantState == SupplicantState.COMPLETED) {
                        return 0;
                    }
                    if (networkId == i4) {
                        if (supplicantState == SupplicantState.ASSOCIATING || supplicantState == SupplicantState.ASSOCIATED || supplicantState == SupplicantState.FOUR_WAY_HANDSHAKE || supplicantState == SupplicantState.GROUP_HANDSHAKE) {
                            z3 = true;
                        }
                    } else if (networkId == -1) {
                        if (z3 && supplicantState == SupplicantState.DISCONNECTED) {
                            return 1;
                        }
                    } else if (supplicantState == SupplicantState.COMPLETED) {
                        return 3;
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        return 2;
    }

    public final WifiConfiguration g(String str, String str2, int i4) {
        WifiConfiguration wifiConfiguration = new WifiConfiguration();
        wifiConfiguration.SSID = android.support.v4.media.h.a("\"", str, "\"");
        if (i4 == 0) {
            wifiConfiguration.allowedKeyManagement.set(0);
        } else if (i4 == 1) {
            wifiConfiguration.allowedKeyManagement.set(0);
            wifiConfiguration.allowedAuthAlgorithms.set(0);
            wifiConfiguration.allowedAuthAlgorithms.set(1);
            int length = str2.length();
            if ((length == 10 || length == 26 || length == 58) && str2.matches("[0-9A-Fa-f]*")) {
                wifiConfiguration.wepKeys[0] = str2;
            } else {
                wifiConfiguration.wepKeys[0] = '\"' + str2 + '\"';
            }
        } else if (i4 == 2) {
            wifiConfiguration.allowedKeyManagement.set(1);
            if (str2.matches("[0-9A-Fa-f]{64}")) {
                wifiConfiguration.preSharedKey = str2;
            } else {
                wifiConfiguration.preSharedKey = '\"' + str2 + '\"';
            }
        } else if (i4 == 3) {
            wifiConfiguration.allowedKeyManagement.set(2);
            wifiConfiguration.preSharedKey = '\"' + str2 + '\"';
        }
        return wifiConfiguration;
    }

    public int h(String str) {
        ArrayList arrayList = new ArrayList();
        List<WifiConfiguration> configuredNetworks = this.f2926e.getConfiguredNetworks();
        if (configuredNetworks != null && !configuredNetworks.isEmpty()) {
            for (int i4 = 0; i4 < configuredNetworks.size(); i4++) {
                WifiConfiguration wifiConfiguration = configuredNetworks.get(i4);
                String str2 = wifiConfiguration.SSID;
                if (str2.startsWith("\"") && str2.endsWith("\"")) {
                    if (str2.equals("\"" + str + "\"")) {
                        arrayList.add(wifiConfiguration);
                    }
                } else if (str2.equals(str)) {
                    arrayList.add(wifiConfiguration);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return -1;
        }
        if (arrayList.size() >= 2) {
            Collections.sort(arrayList, p.a.f2913b);
        }
        return ((WifiConfiguration) arrayList.get(0)).networkId;
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f2931a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2932b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f2933c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f2934d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f2935e;

        public a(int i4) {
            this.f2935e = -1;
            this.f2932b = i4;
            this.f2931a = false;
        }

        public a(String str, String str2, int i4) {
            this.f2935e = -1;
            this.f2933c = str;
            this.f2934d = str2;
            this.f2931a = true;
            this.f2935e = i4;
        }
    }
}
