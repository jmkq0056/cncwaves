package o;

import android.net.wifi.ScanResult;

/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f2840a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2841b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f2842c;

    public g(ScanResult scanResult) {
        this.f2840a = scanResult.SSID;
        this.f2841b = scanResult.level;
        this.f2842c = scanResult.capabilities;
    }
}
