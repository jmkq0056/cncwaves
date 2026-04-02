package i;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.wifi.ScanResult;
import android.net.wifi.SupplicantState;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.NonNull;
import cn.huidu.lcd.core.R$string;
import java.util.Objects;
import p.d;

/* JADX INFO: loaded from: classes.dex */
public class g extends BroadcastReceiver {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public p.b f1874c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f1875d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f1876e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1878g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ScanResult f1879h;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1877f = 30000;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final Runnable f1880i = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f1873b = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WifiManager f1872a = (WifiManager) w0.c.f3777a.getSystemService("wifi");

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.media.a.a(android.support.v4.media.f.a("Connection timeout: "), g.this.f1875d, "WifiConnectionHandler");
            if (g.this.a()) {
                g.this.b(0);
            } else {
                g.this.b(2);
            }
        }
    }

    public static /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f1882a;

        static {
            int[] iArr = new int[SupplicantState.values().length];
            f1882a = iArr;
            try {
                iArr[SupplicantState.COMPLETED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1882a[SupplicantState.FOUR_WAY_HANDSHAKE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1882a[SupplicantState.DISCONNECTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public final boolean a() {
        WifiInfo connectionInfo = this.f1872a.getConnectionInfo();
        if (connectionInfo == null || connectionInfo.getBSSID() == null || connectionInfo.getIpAddress() == 0) {
            return false;
        }
        StringBuilder sbA = android.support.v4.media.f.a("connected to BSSID = ");
        sbA.append(connectionInfo.getBSSID());
        sbA.append(",ssid = ");
        sbA.append(connectionInfo.getSSID());
        Log.d("WifiConnectionHandler", sbA.toString());
        ScanResult scanResult = this.f1879h;
        if (scanResult == null || scanResult.BSSID == null) {
            StringBuilder sbA2 = android.support.v4.media.f.a("isAlreadyConnected - mSSID - ");
            sbA2.append(connectionInfo.getSSID());
            sbA2.append(" return ssid is equals - ");
            sbA2.append(Objects.equals(this.f1875d, connectionInfo.getSSID().replace("\"", "")));
            Log.d("WifiConnectionHandler", sbA2.toString());
            return Objects.equals(this.f1875d, connectionInfo.getSSID().replace("\"", ""));
        }
        StringBuilder sbA3 = android.support.v4.media.f.a("isAlreadyConnected BSSID is equals - ");
        sbA3.append(Objects.equals(this.f1879h.BSSID, connectionInfo.getBSSID()));
        sbA3.append(" <<<>>> ssid is equals - ");
        sbA3.append(Objects.equals(this.f1875d, connectionInfo.getSSID().replace("\"", "")));
        Log.d("WifiConnectionHandler", sbA3.toString());
        return Objects.equals(this.f1879h.BSSID, connectionInfo.getBSSID()) || Objects.equals(this.f1875d, connectionInfo.getSSID().replace("\"", ""));
    }

    public final void b(final int i4) {
        Log.d("WifiConnectionHandler", "unregisterCallback: ");
        this.f1873b.removeCallbacks(this.f1880i);
        try {
            w0.c.f3777a.unregisterReceiver(this);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        final p.b bVar = this.f1874c;
        if (bVar != null) {
            this.f1873b.postDelayed(new Runnable() { // from class: i.f
                @Override // java.lang.Runnable
                public final void run() {
                    p.b bVar2 = bVar;
                    int i5 = i4;
                    p.d dVar = (p.d) bVar2.f2923b;
                    d.b bVar3 = dVar.f2928g;
                    if (bVar3 != null) {
                        if (i5 == 0) {
                            ((p.b) bVar3).e(true, null);
                        } else {
                            ((p.b) bVar3).e(false, i5 != 2 ? i5 != 3 ? dVar.f2927f.getString(R$string.connection_failed) : dVar.f2927f.getString(R$string.authentication_error) : dVar.f2927f.getString(R$string.connection_time_out));
                        }
                    }
                }
            }, 100L);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, @NonNull Intent intent) {
        String action = intent.getAction();
        if ("android.net.wifi.STATE_CHANGE".equals(action)) {
            if (a()) {
                b(0);
                return;
            }
            return;
        }
        if ("android.net.wifi.supplicant.STATE_CHANGE".equals(action)) {
            SupplicantState supplicantState = (SupplicantState) intent.getParcelableExtra("newState");
            int intExtra = intent.getIntExtra("supplicantError", -1);
            StringBuilder sb = new StringBuilder();
            sb.append("supplicant state changed: ");
            sb.append(supplicantState);
            androidx.media.a.a(sb, intExtra != -1 ? android.support.v4.media.d.a(", error: ", intExtra) : "", "WifiConnectionHandler");
            if (supplicantState == null) {
                b(1);
                return;
            }
            if (supplicantState == SupplicantState.ASSOCIATED) {
                this.f1878g = true;
            }
            int i4 = b.f1882a[supplicantState.ordinal()];
            if (i4 == 1 || i4 == 2) {
                if (a()) {
                    b(0);
                }
            } else if (i4 == 3 && intExtra == 1 && this.f1878g) {
                Log.d("WifiConnectionHandler", "Authentication error...");
                b(3);
            }
        }
    }
}
