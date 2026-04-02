package l0;

import android.net.wifi.SoftApConfiguration;
import android.os.Build;
import android.provider.Settings;
import android.util.Log;
import cn.huidu.lcd.setting.ui.network.WifiHotspotSetActivity;
import cn.huidu.lcd.setting.ui.view.CommonLoadingDialog;
import i.d;
import java.lang.reflect.Method;
import java.util.Objects;
import w0.c;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2375a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ WifiHotspotSetActivity f2376b;

    public /* synthetic */ a(WifiHotspotSetActivity wifiHotspotSetActivity, int i4) {
        this.f2375a = i4;
        this.f2376b = wifiHotspotSetActivity;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0085 -> B:27:0x0086). Please report as a decompilation issue!!! */
    @Override // java.lang.Runnable
    public final void run() {
        d dVar;
        boolean zBooleanValue;
        int i4;
        switch (this.f2375a) {
            case 0:
                WifiHotspotSetActivity wifiHotspotSetActivity = this.f2376b;
                wifiHotspotSetActivity.M.c(wifiHotspotSetActivity.N);
                break;
            case 1:
                WifiHotspotSetActivity wifiHotspotSetActivity2 = this.f2376b;
                wifiHotspotSetActivity2.M.c(wifiHotspotSetActivity2.N);
                break;
            default:
                WifiHotspotSetActivity wifiHotspotSetActivity3 = this.f2376b;
                boolean zF = wifiHotspotSetActivity3.M.f();
                boolean z3 = wifiHotspotSetActivity3.G;
                if (zF != z3) {
                    wifiHotspotSetActivity3.O.postDelayed(wifiHotspotSetActivity3.P, 500L);
                } else {
                    if (z3 && (dVar = wifiHotspotSetActivity3.M) != null) {
                        try {
                            i4 = Build.VERSION.SDK_INT;
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                        if (i4 >= 30) {
                            Method method = dVar.f1868a.getClass().getMethod("getSoftApConfiguration", new Class[0]);
                            method.setAccessible(true);
                            SoftApConfiguration softApConfiguration = (SoftApConfiguration) method.invoke(dVar.f1868a, new Object[0]);
                            Method method2 = softApConfiguration.getClass().getMethod("isAutoShutdownEnabled", new Class[0]);
                            method2.setAccessible(true);
                            zBooleanValue = ((Boolean) method2.invoke(softApConfiguration, new Object[0])).booleanValue();
                        } else {
                            zBooleanValue = i4 >= 28 && Settings.Global.getInt(c.f3777a.getContentResolver(), "soft_ap_timeout_enabled", 0) != 0;
                        }
                        if (zBooleanValue) {
                            Log.d("WifiHotspotSetActivity", "closeWifiAutoShutDown: +++");
                            d dVar2 = wifiHotspotSetActivity3.M;
                            Objects.requireNonNull(dVar2);
                            try {
                                int i5 = Build.VERSION.SDK_INT;
                                if (i5 >= 30) {
                                    Method method3 = dVar2.f1868a.getClass().getMethod("getSoftApConfiguration", new Class[0]);
                                    method3.setAccessible(true);
                                    SoftApConfiguration softApConfiguration2 = (SoftApConfiguration) method3.invoke(dVar2.f1868a, new Object[0]);
                                    Class<?> cls = Class.forName("android.net.wifi.SoftApConfiguration$Builder");
                                    SoftApConfiguration softApConfiguration3 = (SoftApConfiguration) cls.getMethod("build", new Class[0]).invoke(cls.getMethod("setAutoShutdownEnabled", Boolean.TYPE).invoke(cls.getConstructor(SoftApConfiguration.class).newInstance(softApConfiguration2), Boolean.FALSE), new Object[0]);
                                    Method method4 = dVar2.f1868a.getClass().getMethod("setSoftApConfiguration", SoftApConfiguration.class);
                                    method4.setAccessible(true);
                                    ((Boolean) method4.invoke(dVar2.f1868a, softApConfiguration3)).booleanValue();
                                } else if (i5 >= 28) {
                                    Settings.Global.putInt(c.f3777a.getContentResolver(), "soft_ap_timeout_enabled", 0);
                                }
                            } catch (Exception e5) {
                                e5.printStackTrace();
                            }
                        }
                    }
                    CommonLoadingDialog commonLoadingDialog = wifiHotspotSetActivity3.Q;
                    if (commonLoadingDialog != null) {
                        commonLoadingDialog.dismissAllowingStateLoss();
                        wifiHotspotSetActivity3.Q = null;
                    }
                    wifiHotspotSetActivity3.finish();
                }
                break;
        }
    }
}
