package cn.huidu.lcd.player.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.SystemClock;
import android.util.Log;
import g3.c;
import j.s;
import s.h;

/* JADX INFO: loaded from: classes.dex */
public class SdcardReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f437a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f438b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static long f439c;

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        Uri data = intent.getData();
        if (action == null || data == null) {
            return;
        }
        String path = data.getPath();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - f439c < 2000 && action.equals(f437a) && path.equals(f438b)) {
            Log.d("SdcardReceiver", "Receive again: " + action + ", " + data);
            return;
        }
        f437a = action;
        f438b = path;
        f439c = jElapsedRealtime;
        h.a("SdcardReceiver: onReceive: " + action + ", " + data);
        byte b4 = -1;
        switch (action.hashCode()) {
            case -1665311200:
                if (action.equals("android.intent.action.MEDIA_REMOVED")) {
                    b4 = 4;
                }
                break;
            case -1514214344:
                if (action.equals("android.intent.action.MEDIA_MOUNTED")) {
                    b4 = 1;
                }
                break;
            case -963871873:
                if (action.equals("android.intent.action.MEDIA_UNMOUNTED")) {
                    b4 = 3;
                }
                break;
            case -625887599:
                if (action.equals("android.intent.action.MEDIA_EJECT")) {
                    b4 = 2;
                }
                break;
            case 1964681210:
                if (action.equals("android.intent.action.MEDIA_CHECKING")) {
                    b4 = 0;
                }
                break;
        }
        if (b4 == 1) {
            c.b().f(new s(data.getPath(), 1));
        } else {
            if (b4 != 2) {
                return;
            }
            c.b().f(new s(data.getPath(), 2));
        }
    }
}
