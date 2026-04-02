package com.thanosfisherman.wifiutils.wifiConnect;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.wifi.ScanResult;
import android.net.wifi.SupplicantState;
import android.net.wifi.WifiManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import b2.c;
import b2.d;
import b2.e;

/* JADX INFO: loaded from: classes2.dex */
public final class WifiConnectionReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NonNull
    public final d2.b f1393a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    public ScanResult f1394b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final WifiManager f1395c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f1396d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final Runnable f1398f = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final d f1397e = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i4 = e.f243n;
            WifiConnectionReceiver wifiConnectionReceiver = WifiConnectionReceiver.this;
            c.d(wifiConnectionReceiver.f1395c, wifiConnectionReceiver.f1394b);
            WifiConnectionReceiver wifiConnectionReceiver2 = WifiConnectionReceiver.this;
            WifiManager wifiManager = wifiConnectionReceiver2.f1395c;
            ScanResult scanResult = wifiConnectionReceiver2.f1394b;
            if (c.c(wifiManager, scanResult == null ? null : scanResult.BSSID)) {
                ((e.c) WifiConnectionReceiver.this.f1393a).b();
            } else {
                ((e.c) WifiConnectionReceiver.this.f1393a).a(com.thanosfisherman.wifiutils.wifiConnect.a.TIMEOUT_OCCURRED);
            }
            WifiConnectionReceiver.this.f1397e.b(this);
        }
    }

    public static /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f1400a;

        static {
            int[] iArr = new int[SupplicantState.values().length];
            f1400a = iArr;
            try {
                iArr[SupplicantState.COMPLETED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1400a[SupplicantState.FOUR_WAY_HANDSHAKE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1400a[SupplicantState.DISCONNECTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public WifiConnectionReceiver(@NonNull d2.b bVar, @NonNull WifiManager wifiManager, long j4) {
        this.f1393a = bVar;
        this.f1395c = wifiManager;
        this.f1396d = j4;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, @NonNull Intent intent) {
        String action = intent.getAction();
        int i4 = e.f243n;
        if (q0.a.g("android.net.wifi.STATE_CHANGE", action)) {
            WifiManager wifiManager = this.f1395c;
            ScanResult scanResult = this.f1394b;
            if (c.c(wifiManager, (String) new t1.b(scanResult != null ? scanResult.BSSID : null).f3529b)) {
                this.f1397e.b(this.f1398f);
                ((e.c) this.f1393a).b();
                return;
            }
            return;
        }
        if (q0.a.g("android.net.wifi.supplicant.STATE_CHANGE", action)) {
            SupplicantState supplicantState = (SupplicantState) intent.getParcelableExtra("newState");
            int intExtra = intent.getIntExtra("supplicantError", -1);
            if (supplicantState == null) {
                this.f1397e.b(this.f1398f);
                ((e.c) this.f1393a).a(com.thanosfisherman.wifiutils.wifiConnect.a.COULD_NOT_CONNECT);
                return;
            }
            supplicantState.toString();
            int i5 = b.f1400a[supplicantState.ordinal()];
            if (i5 == 1 || i5 == 2) {
                WifiManager wifiManager2 = this.f1395c;
                ScanResult scanResult2 = this.f1394b;
                if (c.c(wifiManager2, (String) new t1.b(scanResult2 != null ? scanResult2.BSSID : null).f3529b)) {
                    this.f1397e.b(this.f1398f);
                    ((e.c) this.f1393a).b();
                    return;
                }
                return;
            }
            if (i5 != 3) {
                return;
            }
            if (intExtra != 1) {
                c.d(this.f1395c, this.f1394b);
            } else {
                this.f1397e.b(this.f1398f);
                ((e.c) this.f1393a).a(com.thanosfisherman.wifiutils.wifiConnect.a.AUTHENTICATION_ERROR_OCCURRED);
            }
        }
    }
}
