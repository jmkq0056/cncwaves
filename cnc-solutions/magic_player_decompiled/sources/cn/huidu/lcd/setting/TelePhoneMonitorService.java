package cn.huidu.lcd.setting;

import android.app.Service;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;
import cn.huidu.lcd.setting.broadcast.TimeTickBroadcastReceiver;
import n0.d;

/* JADX INFO: loaded from: classes.dex */
public class TelePhoneMonitorService extends Service {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public TimeTickBroadcastReceiver f516a;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.f516a);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i4, int i5) {
        try {
            d.a().c();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        IntentFilter intentFilter = new IntentFilter("android.intent.action.TIME_TICK");
        TimeTickBroadcastReceiver timeTickBroadcastReceiver = new TimeTickBroadcastReceiver();
        this.f516a = timeTickBroadcastReceiver;
        registerReceiver(timeTickBroadcastReceiver, intentFilter);
        return 1;
    }
}
