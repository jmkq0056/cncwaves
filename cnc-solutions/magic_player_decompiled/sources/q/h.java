package q;

import android.content.Context;
import android.net.ConnectivityManager;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class h {
    public static boolean a(Context context) {
        Exception e4;
        Boolean bool;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        Boolean bool2 = Boolean.FALSE;
        try {
            bool = (Boolean) connectivityManager.getClass().getMethod("getMobileDataEnabled", new Class[0]).invoke(connectivityManager, new Object[0]);
        } catch (Exception e5) {
            e4 = e5;
            bool = bool2;
        }
        try {
            Log.d("MobileDataUtils", "getMobileDataStatus: enable =  " + bool);
        } catch (Exception e6) {
            e4 = e6;
            e4.printStackTrace();
        }
        return bool.booleanValue();
    }
}
