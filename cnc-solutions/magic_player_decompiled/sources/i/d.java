package i;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.concurrent.Executor;
import n.o;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"SoonBlockedPrivateApi"})
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WifiManager f1868a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ConnectivityManager f1869b;

    public d(Context context) {
        this.f1868a = (WifiManager) context.getApplicationContext().getSystemService("wifi");
        this.f1869b = (ConnectivityManager) context.getSystemService("connectivity");
    }

    public static WifiConfiguration a(o oVar) {
        WifiConfiguration wifiConfiguration = new WifiConfiguration();
        wifiConfiguration.SSID = oVar.f2687d;
        if (oVar.f2688e == 1) {
            wifiConfiguration.preSharedKey = oVar.f2690g;
        } else {
            wifiConfiguration.preSharedKey = oVar.f2691h;
        }
        wifiConfiguration.hiddenSSID = false;
        if (Build.VERSION.SDK_INT >= 25) {
            Log.d("WifiApUtils", "createApConfig: sdk v25 >>>");
            wifiConfiguration.allowedKeyManagement.set(4);
            wifiConfiguration.allowedAuthAlgorithms.set(0);
            try {
                Log.e("zhuw", "apBand = " + oVar.f2694k);
                wifiConfiguration.getClass().getField("apBand").set(wifiConfiguration, Integer.valueOf(oVar.f2694k));
            } catch (Exception e4) {
                w0.h.h(e4);
            }
        } else {
            wifiConfiguration.status = 2;
            wifiConfiguration.allowedGroupCiphers.set(2);
            wifiConfiguration.allowedGroupCiphers.set(3);
            wifiConfiguration.allowedKeyManagement.set(4);
            wifiConfiguration.allowedPairwiseCiphers.set(1);
            wifiConfiguration.allowedPairwiseCiphers.set(2);
            wifiConfiguration.allowedProtocols.set(1);
        }
        return wifiConfiguration;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x000e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized boolean b() {
        /*
            r2 = this;
            monitor-enter(r2)
            boolean r0 = r2.f()     // Catch: java.lang.Throwable -> L11
            r1 = 0
            if (r0 == 0) goto Le
            boolean r0 = r2.i(r1)     // Catch: java.lang.Throwable -> L11
            if (r0 == 0) goto Lf
        Le:
            r1 = 1
        Lf:
            monitor-exit(r2)
            return r1
        L11:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: i.d.b():boolean");
    }

    public synchronized boolean c(o oVar) {
        boolean z3 = false;
        if (!TextUtils.isEmpty(oVar.f2687d) && (!TextUtils.isEmpty(oVar.f2691h) || !TextUtils.isEmpty(oVar.f2690g))) {
            if (this.f1868a.isWifiEnabled()) {
                this.f1868a.saveConfiguration();
                this.f1868a.setWifiEnabled(false);
            }
            if (h(a(oVar)) && i(true)) {
                z3 = true;
            }
            return z3;
        }
        Log.d("WifiApUtils", "enableAp: illegal params!");
        return false;
    }

    public WifiConfiguration d() {
        try {
            Method method = this.f1868a.getClass().getMethod("getWifiApConfiguration", new Class[0]);
            method.setAccessible(true);
            return (WifiConfiguration) method.invoke(this.f1868a, new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    public boolean e() {
        String str;
        Method method;
        try {
            Method method2 = this.f1868a.getClass().getMethod("getCountryCode", new Class[0]);
            method2.setAccessible(true);
            str = (String) method2.invoke(this.f1868a, new Object[0]);
            method = this.f1868a.getClass().getMethod("isDualBandSupported", new Class[0]);
            method.setAccessible(true);
        } catch (Exception unused) {
        }
        return ((Boolean) method.invoke(this.f1868a, new Object[0])).booleanValue() && str != null;
    }

    public synchronized boolean f() {
        Method method;
        try {
            method = this.f1868a.getClass().getMethod("isWifiApEnabled", new Class[0]);
            method.setAccessible(true);
        } catch (Exception unused) {
            return false;
        }
        return ((Boolean) method.invoke(this.f1868a, new Object[0])).booleanValue();
    }

    public synchronized boolean g() {
        boolean z3;
        z3 = true;
        if (!f()) {
            if (!i(true)) {
                z3 = false;
            }
        }
        return z3;
    }

    public synchronized boolean h(WifiConfiguration wifiConfiguration) {
        if (wifiConfiguration == null) {
            return false;
        }
        try {
            Method method = this.f1868a.getClass().getMethod("setWifiApConfiguration", WifiConfiguration.class);
            method.setAccessible(true);
            return ((Boolean) method.invoke(this.f1868a, wifiConfiguration)).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    public final boolean i(boolean z3) {
        int i4 = Build.VERSION.SDK_INT;
        if (i4 < 24) {
            try {
                return ((Boolean) this.f1868a.getClass().getMethod("setWifiApEnabled", WifiConfiguration.class, Boolean.TYPE).invoke(this.f1868a, null, Boolean.valueOf(z3))).booleanValue();
            } catch (Exception e4) {
                e4.printStackTrace();
                return false;
            }
        }
        if (z3) {
            if (i4 >= 30) {
                try {
                    Object objA = w0.c.a("tethering");
                    Class<?> cls = Class.forName("android.net.TetheringManager$StartTetheringCallback");
                    Object objNewProxyInstance = Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: i.a
                        @Override // java.lang.reflect.InvocationHandler
                        public final Object invoke(Object obj, Method method, Object[] objArr) {
                            StringBuilder sbA = android.support.v4.media.f.a("invoke: ");
                            sbA.append(method.getName());
                            Log.d("WifiApUtils", sbA.toString());
                            return obj;
                        }
                    });
                    Class<?> cls2 = Class.forName("android.net.TetheringManager$TetheringRequest");
                    Class<?> cls3 = Class.forName("android.net.TetheringManager$TetheringRequest$Builder");
                    objA.getClass().getDeclaredMethod("startTethering", cls2, Executor.class, cls).invoke(objA, cls3.getMethod("build", new Class[0]).invoke(cls3.getConstructor(Integer.TYPE).newInstance(0), new Object[0]), new Executor() { // from class: i.b
                        @Override // java.util.concurrent.Executor
                        public final void execute(Runnable runnable) {
                            runnable.run();
                        }
                    }, objNewProxyInstance);
                    return true;
                } catch (Exception e5) {
                    w0.h.h(e5);
                }
            } else {
                try {
                    Log.d("WifiApUtils", "startTethering: >>>");
                    Field declaredField = this.f1869b.getClass().getDeclaredField("mService");
                    declaredField.setAccessible(true);
                    Object obj = declaredField.get(this.f1869b);
                    if (obj != null) {
                        c cVar = new c(this, new Handler(Looper.getMainLooper()));
                        if (i4 >= 28) {
                            obj.getClass().getMethod("startTethering", Integer.TYPE, ResultReceiver.class, Boolean.TYPE, String.class).invoke(obj, 0, cVar, Boolean.TRUE, w0.c.f3777a.getPackageName());
                            return true;
                        }
                        obj.getClass().getMethod("startTethering", Integer.TYPE, ResultReceiver.class, Boolean.TYPE).invoke(obj, 0, cVar, Boolean.TRUE);
                        return true;
                    }
                    Log.d("WifiApUtils", "startTethering: cannot get ConnectivityService!");
                } catch (Exception e6) {
                    w0.h.h(e6);
                }
            }
        } else if (i4 >= 30) {
            try {
                Object objA2 = w0.c.a("tethering");
                objA2.getClass().getDeclaredMethod("stopTethering", Integer.TYPE).invoke(objA2, 0);
                return true;
            } catch (Exception e7) {
                w0.h.h(e7);
            }
        } else {
            try {
                Log.d("WifiApUtils", "stopTethering: >>>");
                Field declaredField2 = this.f1869b.getClass().getDeclaredField("mService");
                declaredField2.setAccessible(true);
                Object obj2 = declaredField2.get(this.f1869b);
                if (obj2 != null) {
                    if (i4 >= 28) {
                        obj2.getClass().getMethod("stopTethering", Integer.TYPE, String.class).invoke(obj2, 0, w0.c.f3777a.getPackageName());
                        return true;
                    }
                    obj2.getClass().getMethod("stopTethering", Integer.TYPE).invoke(obj2, 0);
                    return true;
                }
                Log.d("WifiApUtils", "stopTethering: cannot get ConnectivityService!");
            } catch (Exception e8) {
                w0.h.h(e8);
            }
        }
        return false;
    }
}
