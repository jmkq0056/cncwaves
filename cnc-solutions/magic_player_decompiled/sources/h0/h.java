package h0;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f1825a = 6;

    public static boolean a(int i4) {
        return i4 <= f1825a;
    }

    public static void b(String str, String str2) {
        if (!a(5) || str2 == null) {
            return;
        }
        Log.d(str, str2);
    }

    public static void c(int i4) {
        f1825a = i4;
    }

    public static void d(String str, String str2) {
        if (!a(3) || str2 == null) {
            return;
        }
        Log.w(str, str2);
    }
}
