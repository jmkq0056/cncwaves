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
public class BootUpReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public List<d> f517a;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) throws Throwable {
        StringBuilder sbA = f.a("onReceive: ");
        sbA.append(intent.getAction());
        Log.d("BootUpReceiver", sbA.toString());
        int i4 = a.f337c;
        if (i4 == 102 || i4 == 39) {
            List<d> listD = new j(context).d();
            this.f517a = listD;
            if (listD == null || listD.size() <= 0) {
                return;
            }
            List<d> list = this.f517a;
            if (list != null) {
                for (d dVar : list) {
                    StringBuilder sbA2 = g.a("TimerSwitch", ": (");
                    sbA2.append(dVar.f2820a);
                    sbA2.append(", ");
                    sbA2.append(dVar.f2821b);
                    sbA2.append(")");
                    Log.d("BootUpReceiver", sbA2.toString());
                }
            }
            int iH = h.a.h(this.f517a, h.a.A(this.f517a) ? h.a.p() : h.a.q());
            a.a.a("开机---sleepTime----->", iH, "BootUpReceiver");
            if (iH <= 0 || iH >= 31536000) {
                iH = 31104000;
            }
            if (iH > 60) {
                Log.d("BootUpReceiver", "开机->setPowerOnAlarm---sleepTime----->" + iH);
                cn.huidu.lcd.core.util.a.e(iH);
            }
        }
    }
}
