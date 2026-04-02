package n;

import android.util.Log;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2624a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f2625b = new a();

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Map<String, String> f2626a = new HashMap();

        public boolean a(String str, boolean z3) {
            String str2 = this.f2626a.get(str);
            if (str2 != null) {
                try {
                    return Boolean.parseBoolean(str2);
                } catch (Exception unused) {
                    Log.w("BaseConfig", "getBoolean:: parse failed for key: " + str);
                }
            }
            return z3;
        }

        public int b(String str, int i4) {
            String str2 = this.f2626a.get(str);
            if (str2 != null) {
                try {
                    return Integer.parseInt(str2);
                } catch (Exception unused) {
                    Log.w("BaseConfig", "getInt:: parse failed for key: " + str);
                }
            }
            return i4;
        }

        public long c(String str, long j4) {
            String str2 = this.f2626a.get(str);
            if (str2 != null) {
                try {
                    return Long.parseLong(str2);
                } catch (Exception unused) {
                    Log.w("BaseConfig", "getLong:: parse failed for key: " + str);
                }
            }
            return j4;
        }
    }

    public b(String str) {
        this.f2624a = str;
    }

    public abstract void a(a aVar);

    public abstract void b(a aVar);
}
