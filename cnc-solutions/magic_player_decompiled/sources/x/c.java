package x;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.os.SystemClock;
import android.util.Log;
import w0.d;

/* JADX INFO: loaded from: classes.dex */
public class c extends AsyncTask<Object, Object, Object> {
    @Override // android.os.AsyncTask
    public Object doInBackground(Object... objArr) {
        try {
            SystemClock.sleep(6000L);
            NetworkInfo networkInfo = ((ConnectivityManager) w0.c.f3777a.getSystemService("connectivity")).getNetworkInfo(9);
            Log.d("ResetEthernetTask", "doInBackground: " + networkInfo);
            if (networkInfo == null || networkInfo.isConnected()) {
                return null;
            }
            Log.d("ResetEthernetTask", "doInBackground: reset ethernet >>>");
            Log.d("ResetEthernetTask", "execute(mdio eth0 0 0xb100): " + d.a("mdio eth0 0 0xb100"));
            SystemClock.sleep(2000L);
            Log.d("ResetEthernetTask", "execute(mdio eth0 0 0x3100): " + d.a("mdio eth0 0 0x3100"));
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }
}
