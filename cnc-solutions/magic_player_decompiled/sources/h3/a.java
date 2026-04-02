package h3;

import android.util.Log;
import g3.g;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes2.dex */
public class a implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f1865a;

    static {
        boolean z3;
        try {
            Class.forName("android.util.Log");
            z3 = true;
        } catch (ClassNotFoundException unused) {
            z3 = false;
        }
        f1865a = z3;
    }

    public a(String str) {
    }

    @Override // g3.g
    public void a(Level level, String str) {
        if (level != Level.OFF) {
            Log.println(c(level), "EventBus", str);
        }
    }

    @Override // g3.g
    public void b(Level level, String str, Throwable th) {
        if (level != Level.OFF) {
            int iC = c(level);
            StringBuilder sbA = android.support.v4.media.g.a(str, "\n");
            sbA.append(Log.getStackTraceString(th));
            Log.println(iC, "EventBus", sbA.toString());
        }
    }

    public final int c(Level level) {
        int iIntValue = level.intValue();
        if (iIntValue < 800) {
            return iIntValue < 500 ? 2 : 3;
        }
        if (iIntValue < 900) {
            return 4;
        }
        return iIntValue < 1000 ? 5 : 6;
    }
}
