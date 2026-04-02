package q;

import android.app.AlarmManager;
import android.content.Context;
import android.media.AudioManager;
import android.net.wifi.WifiConfiguration;
import android.os.SystemClock;
import android.provider.Settings;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import j.r;
import java.util.TimeZone;
import n.o;

/* JADX INFO: loaded from: classes.dex */
public class d {
    public static void a(Context context) {
        n.a aVar = (n.a) l.b.c().a(n.a.class);
        if (!k.b(context) && cn.huidu.lcd.core.a.f337c != 103) {
            try {
                Settings.System.putInt(context.getContentResolver(), "accelerometer_rotation", 0);
                Settings.System.putInt(context.getContentResolver(), "user_rotation", 0);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        int iA = k.a();
        a.a.a("current rotation = ", iA, "ConfigInitUtils");
        if (iA != aVar.f2607d) {
            aVar.f2607d = iA;
            l.b.c().d(aVar);
        }
        n.l lVar = (n.l) l.b.c().a(n.l.class);
        String str = lVar.f2673d;
        String id = TimeZone.getDefault().getID();
        if (str != null && !str.equals(id)) {
            Log.d("ConfigInitUtils", "initConfig: set time zone: " + str);
            AlarmManager alarmManager = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM);
            if (alarmManager != null) {
                alarmManager.setTimeZone(str);
            }
        }
        if (lVar.f2672c || lVar.f2676g != 0 || lVar.f2677h) {
            boolean z3 = Settings.Global.getInt(context.getContentResolver(), "auto_time") > 0;
            if (z3) {
                try {
                    Settings.Global.putInt(context.getContentResolver(), "auto_time", 0);
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
            }
            boolean z4 = Settings.Global.getInt(context.getContentResolver(), "auto_time_zone") > 0;
            if (z4) {
                try {
                    Settings.Global.putInt(context.getContentResolver(), "auto_time_zone", 0);
                } catch (Exception e6) {
                    e6.printStackTrace();
                }
            }
        }
        j jVar = new j(context);
        o.f fVarC = jVar.c();
        if (fVarC != null && fVarC.f2837a) {
            int i4 = fVarC.f2838b;
            b bVar = new b(context);
            bVar.e(bVar.b(i4));
            Log.d("ConfigInitUtils", "initConfig: set brightness: " + i4);
        }
        o.f fVarF = jVar.f();
        if (fVarF != null && fVarF.f2837a) {
            int i5 = fVarF.f2838b;
            AudioManager audioManager = (AudioManager) context.getSystemService("audio");
            int streamMaxVolume = audioManager.getStreamMaxVolume(3);
            if (cn.huidu.lcd.core.a.f337c == 103) {
                if (i5 >= 0 && i5 <= 100) {
                    streamMaxVolume = i5;
                }
            } else if (i5 == 0) {
                streamMaxVolume = 0;
            } else if (i5 > 0 && i5 < 60) {
                streamMaxVolume = i5 / 6;
            } else if (i5 >= 60 && i5 < 100) {
                streamMaxVolume = (i5 / 6) - 1;
            }
            if (streamMaxVolume == 0) {
                audioManager.setStreamMute(3, true);
            } else {
                audioManager.setStreamVolume(3, streamMaxVolume, 0);
            }
            a.a.a("initConfig: set volume: ", i5, "ConfigInitUtils");
        }
        b(context, (o) l.b.c().a(o.class));
    }

    public static void b(Context context, o oVar) {
        i.d dVar = new i.d(context);
        WifiConfiguration wifiConfigurationD = dVar.d();
        String str = wifiConfigurationD.SSID;
        String str2 = wifiConfigurationD.preSharedKey;
        String str3 = oVar.f2687d;
        String str4 = oVar.f2690g;
        String str5 = oVar.f2691h;
        boolean zF = dVar.f();
        boolean z3 = oVar.f2686c;
        boolean z4 = oVar.f2688e == 1;
        if (z3) {
            if (!z4) {
                str4 = str5;
            }
            boolean z5 = (str.equals(str3) && str2.equals(str4)) ? false : true;
            if (zF) {
                if (!z5) {
                    return;
                }
                wifiConfigurationD.SSID = str3;
                wifiConfigurationD.preSharedKey = str4;
                dVar.h(wifiConfigurationD);
                dVar.b();
                SystemClock.sleep(2000L);
            } else if (z5) {
                wifiConfigurationD.SSID = str3;
                wifiConfigurationD.preSharedKey = str4;
                dVar.h(wifiConfigurationD);
            }
            Log.d("ConfigInitUtils", "initWifiHotspot: +++" + dVar.c(oVar));
        } else if (zF) {
            dVar.b();
        }
        r rVar = new r();
        rVar.f1965e = true;
        g3.c.b().f(rVar);
    }
}
