package w0;

import android.util.Log;
import w0.d;

/* JADX INFO: loaded from: classes.dex */
public class b {
    public static boolean a(String str) {
        d.a aVarC = d.c(androidx.appcompat.view.a.a("pm install -r -d ", str));
        Log.d("ApkInstaller", "install:: " + aVarC);
        String str2 = aVarC.f3779b;
        return str2 != null && str2.contains("Success");
    }
}
