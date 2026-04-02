package v0;

import android.app.Application;
import android.content.pm.PackageInfo;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.net.ConnectivityManager;
import android.os.Build;
import android.os.SystemClock;
import android.view.Display;
import android.view.WindowManager;
import cn.huidu.lcd.transmit.model.report.DeviceInfo;
import cn.huidu.lcd.transmit.model.report.DisplayInfo;
import cn.huidu.lcd.transmit.model.report.NetworkInfo;
import cn.huidu.lcd.transmit.model.report.PlayerInfo;
import cn.huidu.lcd.transmit.model.report.ScreenInfo;
import cn.huidu.lcd.transmit.model.report.StorageInfo;
import cn.huidu.lcd.transmit.model.report.TelephonyInfo;
import cn.huidu.lcd.transmit.model.report.VersionInfo;
import java.io.File;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class k {
    public static DeviceInfo a() {
        String str;
        n.d dVar = (n.d) l.b.c().a(n.d.class);
        DeviceInfo deviceInfo = new DeviceInfo();
        deviceInfo.deviceName = dVar.f2631c;
        int i4 = cn.huidu.lcd.core.a.f338d;
        if (i4 == 4) {
            str = "RK3188";
        } else if (i4 == 5) {
            str = "RK3288";
        } else if (i4 != 6) {
            switch (i4) {
                case 11:
                    str = "A40i";
                    break;
                case 12:
                    str = "T972";
                    break;
                case 13:
                    str = "RK_3566";
                    break;
                case 14:
                    str = "RK_3568";
                    break;
                case 15:
                    str = "A133";
                    break;
                default:
                    str = "Unknown";
                    break;
            }
        } else {
            str = "RK_3399";
        }
        deviceInfo.cpu = str;
        deviceInfo.ram = ((int) Math.ceil(s.i.a() / 1048576.0f)) + "GB";
        deviceInfo.rom = ((int) Math.ceil((double) (((float) s.m.e()) / 1.07374182E9f))) + "GB";
        deviceInfo.uptime = SystemClock.elapsedRealtime();
        return deviceInfo;
    }

    public static String b(StorageInfo storageInfo) {
        if (a0.f.e().f11c) {
            return "Locked";
        }
        if (l.c.a().F == -8) {
            return "ResourceLost";
        }
        if (storageInfo == null) {
            storageInfo = f();
        }
        return storageInfo.availableSpace < 52428800 ? "SpaceNotEnough" : "Normal";
    }

    public static NetworkInfo c() {
        NetworkInfo networkInfo = new NetworkInfo();
        try {
            android.net.NetworkInfo activeNetworkInfo = ((ConnectivityManager) w0.c.f3777a.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                int type = activeNetworkInfo.getType();
                if (type == 0) {
                    networkInfo.type = "Mobile";
                } else if (type == 1) {
                    networkInfo.type = "WiFi";
                } else if (type == 9) {
                    networkInfo.type = "Ethernet";
                } else {
                    networkInfo.type = String.valueOf(type);
                }
            }
            networkInfo.ip = h.a.y();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return networkInfo;
    }

    public static PlayerInfo d() {
        a0.f fVarE = a0.f.e();
        PlayerInfo playerInfo = new PlayerInfo();
        if (l.e.v(w0.c.f3777a)) {
            playerInfo.status = l.c.a().F;
        } else {
            playerInfo.status = -4;
        }
        playerInfo.locked = fVarE.f11c;
        int i4 = fVarE.f14f;
        playerInfo.syncPlay = i4 == 1;
        playerInfo.playMode = h.a.F(i4);
        playerInfo.enableInteraction = fVarE.f15g;
        playerInfo.enablePlayResume = fVarE.f16h;
        playerInfo.autoBackDelay = fVarE.f17i;
        playerInfo.enableDualScreen = fVarE.f18j;
        playerInfo.autoPlayHdmiIn = fVarE.f19k;
        playerInfo.enableDLNA = fVarE.f20l;
        return playerInfo;
    }

    public static ScreenInfo e() {
        ScreenInfo screenInfo = new ScreenInfo();
        screenInfo.screenOn = w0.a.e(w0.c.f3777a);
        Point pointB = s.c.b();
        screenInfo.width = pointB.x;
        screenInfo.height = pointB.y;
        screenInfo.rotation = q.k.a() * 90;
        screenInfo.displays = new ArrayList();
        if (((n.a) l.b.c().a(n.a.class)).f2614k) {
            Application application = w0.c.f3777a;
            ArrayList arrayList = new ArrayList();
            Display defaultDisplay = ((WindowManager) application.getSystemService("window")).getDefaultDisplay();
            Display[] displays = ((DisplayManager) application.getSystemService("display")).getDisplays();
            if (displays != null) {
                for (Display display : displays) {
                    if (display.getDisplayId() == defaultDisplay.getDisplayId()) {
                        arrayList.add(0, display);
                    } else {
                        arrayList.add(display);
                    }
                }
            }
            Point point = new Point();
            for (int i4 = 0; i4 < arrayList.size(); i4++) {
                ((Display) arrayList.get(i4)).getRealSize(point);
                screenInfo.displays.add(new DisplayInfo(i4, point.x, point.y));
            }
        } else {
            screenInfo.displays.add(new DisplayInfo(0, screenInfo.width, screenInfo.height));
        }
        return screenInfo;
    }

    public static StorageInfo f() {
        StorageInfo storageInfo = new StorageInfo();
        storageInfo.totalSpace = s.m.e();
        storageInfo.availableSpace = s.m.d();
        return storageInfo;
    }

    public static TelephonyInfo g() {
        TelephonyInfo telephonyInfo = new TelephonyInfo();
        try {
            l.k kVarA = l.k.a();
            telephonyInfo.simState = kVarA.f2353a.getSimState();
            telephonyInfo.operator = kVarA.f2353a.getNetworkOperator();
            telephonyInfo.networkType = kVarA.b();
            telephonyInfo.roaming = kVarA.f2353a.isNetworkRoaming();
            telephonyInfo.phoneNumber = kVarA.f2353a.getLine1Number();
            telephonyInfo.ICCID = kVarA.f2353a.getSimSerialNumber();
            telephonyInfo.IMSI = kVarA.f2353a.getSubscriberId();
            telephonyInfo.IMEI = kVarA.f2353a.getImei();
            telephonyInfo.signalStrength = kVarA.f2354b;
            telephonyInfo.dbm = kVarA.f2355c;
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return telephonyInfo;
    }

    public static VersionInfo h() {
        int iIndexOf;
        int i4;
        VersionInfo versionInfo = new VersionInfo();
        VersionInfo.AppVersion appVersion = new VersionInfo.AppVersion();
        versionInfo.app = appVersion;
        appVersion.player = l.e.p(w0.c.f3777a);
        VersionInfo.AppVersion appVersion2 = versionInfo.app;
        PackageInfo packageInfoA = w0.a.a(w0.c.f3777a, "cn.huidu.lcd.services");
        String str = null;
        appVersion2.service = packageInfoA != null ? packageInfoA.versionName : null;
        VersionInfo.SystemVersion systemVersion = new VersionInfo.SystemVersion();
        versionInfo.system = systemVersion;
        systemVersion.buildTime = Build.TIME;
        systemVersion.buildVersion = cn.huidu.lcd.core.a.f335a;
        systemVersion.version = Build.VERSION.RELEASE;
        systemVersion.sdk = Build.VERSION.SDK_INT;
        String str2 = s.i.f3411a;
        if (str2 == null) {
            try {
                File file = new File("/proc/version");
                if (!file.canRead()) {
                    cn.huidu.lcd.core.util.a.a(file.getAbsolutePath());
                }
                String strZ = l.e.z(file);
                if (strZ != null && (iIndexOf = strZ.indexOf("Linux version")) != -1 && (i4 = iIndexOf + 13) < strZ.length()) {
                    str = strZ.substring(i4).trim().split(" ")[0];
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            if (str != null) {
                s.i.f3411a = str;
            }
            str2 = str != null ? str : "";
        }
        systemVersion.kernel = str2;
        return versionInfo;
    }
}
