package b2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.IntentFilter;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.thanosfisherman.wifiutils.wifiConnect.WifiConnectionReceiver;
import com.thanosfisherman.wifiutils.wifiScan.WifiScanReceiver;
import com.thanosfisherman.wifiutils.wifiState.WifiStateReceiver;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"MissingPermission"})
public final class e {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final /* synthetic */ int f243n = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    public final WifiManager f244a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final Context f245b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f246c = 30000;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final WifiStateReceiver f247d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final WifiConnectionReceiver f248e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final WifiScanReceiver f249f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    public String f250g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    public String f251h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    public ScanResult f252i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    public d2.a f253j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    public f2.b f254k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final f2.a f255l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final d2.b f256m;

    public class a implements f2.a {
        public a() {
        }

        public void a() {
            int i4 = e.f243n;
            e eVar = e.this;
            Context context = eVar.f245b;
            WifiStateReceiver wifiStateReceiver = eVar.f247d;
            if (wifiStateReceiver != null) {
                try {
                    context.unregisterReceiver(wifiStateReceiver);
                } catch (IllegalArgumentException unused) {
                }
            }
            f2.b bVar = e.this.f254k;
            if (bVar != null) {
                bVar.a(true);
            }
            Objects.requireNonNull(e.this);
            e eVar2 = e.this;
            if (eVar2.f251h != null) {
                int i5 = e.f243n;
                if (!eVar2.f244a.startScan()) {
                    Objects.requireNonNull(e.this);
                    Objects.requireNonNull(e.this);
                    ((c) e.this.f256m).a(com.thanosfisherman.wifiutils.wifiConnect.a.COULD_NOT_SCAN);
                    return;
                }
                e eVar3 = e.this;
                Context context2 = eVar3.f245b;
                WifiScanReceiver wifiScanReceiver = eVar3.f249f;
                IntentFilter intentFilter = new IntentFilter("android.net.wifi.SCAN_RESULTS");
                if (wifiScanReceiver != null) {
                    try {
                        context2.registerReceiver(wifiScanReceiver, intentFilter);
                    } catch (Exception unused2) {
                    }
                }
            }
        }
    }

    public class b implements e2.a {
        public b() {
        }
    }

    public class c implements d2.b {
        public c() {
        }

        public void a(@NonNull com.thanosfisherman.wifiutils.wifiConnect.a aVar) {
            e eVar = e.this;
            Context context = eVar.f245b;
            WifiConnectionReceiver wifiConnectionReceiver = eVar.f248e;
            if (wifiConnectionReceiver != null) {
                try {
                    context.unregisterReceiver(wifiConnectionReceiver);
                } catch (IllegalArgumentException unused) {
                }
            }
            b2.c.e(e.this.f244a);
            d2.a aVar2 = e.this.f253j;
            if (aVar2 != null) {
                aVar2.b(aVar);
                int i4 = e.f243n;
            }
        }

        public void b() {
            int i4 = e.f243n;
            e eVar = e.this;
            Context context = eVar.f245b;
            WifiConnectionReceiver wifiConnectionReceiver = eVar.f248e;
            if (wifiConnectionReceiver != null) {
                try {
                    context.unregisterReceiver(wifiConnectionReceiver);
                } catch (IllegalArgumentException unused) {
                }
            }
            d2.a aVar = e.this.f253j;
            if (aVar != null) {
                aVar.a();
            }
        }
    }

    public e(@NonNull Context context) {
        a aVar = new a();
        this.f255l = aVar;
        b bVar = new b();
        c cVar = new c();
        this.f256m = cVar;
        this.f245b = context;
        WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService("wifi");
        this.f244a = wifiManager;
        if (wifiManager == null) {
            throw new RuntimeException("WifiManager is not supposed to be null");
        }
        this.f247d = new WifiStateReceiver(aVar);
        this.f249f = new WifiScanReceiver(bVar);
        this.f248e = new WifiConnectionReceiver(cVar, wifiManager, this.f246c);
    }
}
