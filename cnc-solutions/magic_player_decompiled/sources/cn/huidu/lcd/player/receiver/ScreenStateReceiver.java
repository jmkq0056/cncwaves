package cn.huidu.lcd.player.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.graphics.Point;
import android.support.v4.media.f;
import android.util.Log;
import android.view.WindowManager;
import j.e;
import java.util.Objects;
import l.c;
import s.h;

/* JADX INFO: loaded from: classes.dex */
public class ScreenStateReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (action == null) {
            return;
        }
        h.a("ScreenStateReceiver: onReceive: " + action);
        action.hashCode();
        switch (action) {
            case "android.intent.action.SCREEN_OFF":
                c.a().k(false);
                break;
            case "android.intent.action.SCREEN_ON":
                c.a().k(true);
                break;
            case "android.intent.action.CONFIGURATION_CHANGED":
                c cVarA = c.a();
                Objects.requireNonNull(cVarA);
                Point pointB = s.c.b();
                int rotation = ((WindowManager) w0.c.f3777a.getSystemService("window")).getDefaultDisplay().getRotation();
                if (cVarA.f2298d != pointB.x || cVarA.f2299e != pointB.y || cVarA.C != rotation) {
                    StringBuilder sbA = f.a("updateScreenConfig: ");
                    sbA.append(pointB.x);
                    sbA.append(", ");
                    sbA.append(pointB.y);
                    sbA.append(", ");
                    sbA.append(rotation);
                    Log.d("DeviceManager", sbA.toString());
                    cVarA.f2298d = pointB.x;
                    cVarA.f2299e = pointB.y;
                    cVarA.C = rotation;
                    cVarA.d();
                    break;
                }
                break;
        }
        g3.c.b().f(new e());
    }
}
