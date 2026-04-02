package cn.huidu.lcd.player.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import j.w;
import java.util.Objects;
import l.c;

/* JADX INFO: loaded from: classes.dex */
public class UsbReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        Log.d("UsbReceiver", "onReceive: " + action);
        Objects.requireNonNull(c.a());
        if ("android.hardware.usb.action.USB_DEVICE_DETACHED".equals(action)) {
            g3.c.b().f(new w(2));
        } else if ("android.hardware.usb.action.USB_DEVICE_ATTACHED".equals(action)) {
            g3.c.b().f(new w(1));
        }
    }
}
