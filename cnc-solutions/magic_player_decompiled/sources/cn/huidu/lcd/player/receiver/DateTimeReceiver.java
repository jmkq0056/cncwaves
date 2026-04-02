package cn.huidu.lcd.player.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.support.v4.media.f;
import android.util.Log;
import g3.c;
import j.t;
import java.util.TimeZone;
import l.b;
import n.l;

/* JADX INFO: loaded from: classes.dex */
public class DateTimeReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static long f435a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static long f436b;

    public static void a() {
        f435a = System.currentTimeMillis();
        f436b = SystemClock.elapsedRealtime();
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (action == null) {
            return;
        }
        Log.d("DateTimeReceiver", "onReceive: " + action);
        action.hashCode();
        switch (action) {
            case "android.intent.action.TIMEZONE_CHANGED":
                Log.d("DateTimeReceiver", "time zone changed.");
                TimeZone timeZone = TimeZone.getDefault();
                l lVar = (l) b.c().a(l.class);
                String str = lVar.f2673d;
                if (str != null && !str.equals(timeZone.getID())) {
                    StringBuilder sbA = f.a("update time zone: ");
                    sbA.append(timeZone.getID());
                    Log.d("DateTimeReceiver", sbA.toString());
                    lVar.f2673d = timeZone.getID();
                    b.c().d(lVar);
                    break;
                }
                break;
            case "android.intent.action.TIME_SET":
                Log.d("DateTimeReceiver", "time changed.");
                break;
            case "android.intent.action.DATE_CHANGED":
                Log.d("DateTimeReceiver", "date changed.");
                break;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long jAbs = Math.abs(jCurrentTimeMillis - ((jElapsedRealtime - f436b) + f435a));
        f435a = jCurrentTimeMillis;
        f436b = jElapsedRealtime;
        Log.d("DateTimeReceiver", "notifyTimeChanged: offset = " + jAbs);
        c.b().f(new t(jAbs));
    }
}
