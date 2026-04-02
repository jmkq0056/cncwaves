package cn.huidu.lcd.player.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.NetworkInfo;
import android.util.Log;
import l.c;

/* JADX INFO: loaded from: classes.dex */
public class NetStateReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (action == null) {
            return;
        }
        Log.d("NetStateReceiver", "onReceive: " + action);
        if (action.equals("android.net.conn.CONNECTIVITY_CHANGE")) {
            int intExtra = intent.getIntExtra("networkType", -1);
            NetworkInfo networkInfo = (NetworkInfo) intent.getParcelableExtra("networkInfo");
            Log.d("NetStateReceiver", "onReceive: NetworkType: " + intExtra + ", " + networkInfo);
            if (intExtra == 9 && networkInfo != null && networkInfo.isConnected()) {
                c.a().f(context);
            }
        }
    }
}
