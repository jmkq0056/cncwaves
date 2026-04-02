package cn.huidu.lcd.setting.broadcast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.support.v4.media.f;
import android.support.v4.media.g;
import android.util.Log;
import cn.huidu.lcd.core.a;
import java.util.List;
import o.d;
import q.j;

/* JADX INFO: loaded from: classes.dex */
public class ShutDownReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public List<d> f518a;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) throws Throwable {
        StringBuilder sbA = f.a("onReceive: ");
        sbA.append(intent.getAction());
        Log.d("ShutDownReceiver", sbA.toString());
        int i4 = a.f337c;
        if (i4 == 102 || i4 == 39) {
            List<d> listD = new j(context).d();
            this.f518a = listD;
            if (listD == null || listD.size() <= 0) {
                return;
            }
            List<d> list = this.f518a;
            if (list != null) {
                for (d dVar : list) {
                    StringBuilder sbA2 = g.a("TimerSwitch", ": (");
                    sbA2.append(dVar.f2820a);
                    sbA2.append(", ");
                    sbA2.append(dVar.f2821b);
                    sbA2.append(")");
                    Log.d("ShutDownReceiver", sbA2.toString());
                }
            }
            int iH = h.a.h(this.f518a, h.a.A(this.f518a) ? h.a.p() : h.a.q());
            a.a.a("关机---sleepTime----->", iH, "ShutDownReceiver");
            if (iH <= 0 || iH >= 31536000) {
                iH = 31104000;
            }
            if (iH > 60) {
                Log.d("ShutDownReceiver", "关机->setPowerOnAlarm---sleepTime----->" + iH);
                cn.huidu.lcd.core.util.a.e(iH);
            }
        }
    }
}
