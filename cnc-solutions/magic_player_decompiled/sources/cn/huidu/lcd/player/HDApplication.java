package cn.huidu.lcd.player;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.util.Log;
import androidx.multidex.MultiDex;
import cn.huidu.lcd.core.db.OperateLogDb;
import cn.huidu.lcd.core.db.PlayStatsDb;
import cn.huidu.lcd.core.db.VisitorStatsDb;
import cn.huidu.lcd.core.setting.SettingService;
import cn.huidu.lcd.core.util.NativeIO;
import cn.huidu.lcd.core.util.a;
import cn.huidu.lcd.player.HDApplication;
import cn.huidu.lcd.player.receiver.DateTimeReceiver;
import java.io.File;
import java.util.Objects;
import l.e;
import l.f;
import l.l;
import n.d;
import s.b;
import s.h;
import s.o;
import w0.c;

/* JADX INFO: loaded from: classes.dex */
public class HDApplication extends Application {
    public static void a(HDApplication hDApplication) {
        Objects.requireNonNull(hDApplication);
        a.g();
        f.a().c();
        OperateLogDb.clearOldData();
        PlayStatsDb.clearOldData();
        VisitorStatsDb.clearOldData();
        File file = new File("/data/tombstones");
        if (file.exists() || file.mkdirs()) {
            return;
        }
        Log.d("HDApplication", "initResources: create tombstones dir failed.");
    }

    @Override // android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        Log.d("HDApplication", "attachBaseContext: ");
        MultiDex.install(this);
        c.f3777a = this;
    }

    @Override // android.app.Application
    public void onCreate() throws Throwable {
        String strD;
        super.onCreate();
        StringBuilder sbA = android.support.v4.media.f.a("Application launched >>>>>> V");
        sbA.append(e.p(this));
        h.a(sbA.toString());
        b.f3389b.a();
        q.f.c(this);
        o.a();
        NativeIO.signalSIGUSR2();
        Log.d("HDApplication", "Build Time: " + ((Object) DateFormat.format("yyyy-MM-dd HH:mm:ss", Build.TIME)));
        DateTimeReceiver.a();
        l.c.a().c(this);
        int i4 = cn.huidu.lcd.core.a.f337c;
        if (i4 == 102 || i4 == 107 || i4 == 108) {
            String strZ = e.z(new File("/mnt/private/ULI/factory/mac.txt"));
            strD = TextUtils.isEmpty(strZ) ? q.e.d() : e.a(strZ);
        } else {
            strD = i4 == 103 ? q.e.e() : q.e.d();
        }
        d dVar = (d) l.b.c().a(d.class);
        String strC = q.e.b(strD, i4) ? strD : q.e.b(dVar.c(), i4) ? dVar.c() : q.e.c(i4);
        dVar.d(strC);
        l.b.c().d(dVar);
        l.c.a().h(strC);
        if (!strC.equals(strD)) {
            android.support.v4.media.c.a("checkDeviceId: reset device id: ", strC, "HDApplication");
            if (i4 == 103) {
                q.e.g(strC);
            } else {
                q.e.f(strC);
            }
        }
        n.a aVar = (n.a) l.b.c().a(n.a.class);
        int iC = aVar.c();
        if (iC == 1 && i4 == 103) {
            iC = 2;
            aVar.d(2);
            l.b.c().d(aVar);
        }
        l.e().i(iC);
        z.b.b().d(e.k());
        n.l lVar = (n.l) l.b.c().a(n.l.class);
        r.e eVarD = r.e.d();
        eVarD.g(lVar.f());
        eVarD.i(lVar.d());
        eVarD.h(lVar.c());
        eVarD.f(lVar.h(), lVar.e(), lVar.i(), lVar.g());
        h0.h.c(6);
        startService(new Intent(this, (Class<?>) SettingService.class));
        new Thread(new Runnable() { // from class: v.a
            @Override // java.lang.Runnable
            public final void run() {
                HDApplication.a(this.f3626a);
            }
        }).start();
        if (i4 == 38) {
            new x.c().execute(new Object[0]);
        }
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onLowMemory() {
        long j4;
        Exception e4;
        long jMaxMemory;
        super.onLowMemory();
        StringBuilder sbA = android.support.v4.media.f.a("onLowMemory: ");
        try {
            Runtime runtime = Runtime.getRuntime();
            long jFreeMemory = runtime.freeMemory();
            long j5 = runtime.totalMemory();
            jMaxMemory = runtime.maxMemory();
            j4 = jFreeMemory + (jMaxMemory - j5);
        } catch (Exception e5) {
            j4 = 0;
            e4 = e5;
        }
        try {
            Log.d("MemoryUtils", "Current available memory: " + (j4 / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) + "M, Max: " + (jMaxMemory / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED));
        } catch (Exception e6) {
            e4 = e6;
            e4.printStackTrace();
        }
        sbA.append(j4);
        h.a(sbA.toString());
        z.b.b().a(false);
    }
}
