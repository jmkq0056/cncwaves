package cn.huidu.lcd.setting.broadcast;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.appcompat.widget.ActivityChooserModel;
import cn.huidu.lcd.setting.TelePhoneMonitorService;
import java.util.Iterator;
import s.h;

/* JADX INFO: loaded from: classes.dex */
public class TimeTickBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        boolean z3;
        if ("android.intent.action.TIME_TICK".equals(intent.getAction())) {
            try {
                Iterator<ActivityManager.RunningServiceInfo> it = ((ActivityManager) context.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY)).getRunningServices(100).iterator();
                while (it.hasNext()) {
                    if (it.next().service.getClassName().equals("cn.huidu.lcd.setting.TelePhoneMonitorService")) {
                        z3 = true;
                        break;
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            z3 = false;
            if (z3) {
                return;
            }
            h.a("detected TelePhoneMonitor service not running, restart it..");
            context.startService(new Intent(context, (Class<?>) TelePhoneMonitorService.class));
        }
    }
}
