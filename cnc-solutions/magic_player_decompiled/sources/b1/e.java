package b1;

import android.os.Build;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HashSet<String> f180a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f181b;

    static {
        String str = Build.VERSION.RELEASE;
        f180a = new HashSet<>();
        f181b = "goog.exo.core";
    }

    public static synchronized void a(String str) {
        if (f180a.add(str)) {
            f181b += ", " + str;
        }
    }
}
