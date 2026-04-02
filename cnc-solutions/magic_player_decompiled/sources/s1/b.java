package s1;

import com.google.errorprone.annotations.CanIgnoreReturnValue;

/* JADX INFO: loaded from: classes2.dex */
public final class b {
    @CanIgnoreReturnValue
    public static Object a(Object obj, int i4) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(android.support.v4.media.d.a("at index ", i4));
    }

    public static void b(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException("null key in entry: null=" + obj2);
        }
        if (obj2 != null) {
            return;
        }
        throw new NullPointerException("null value in entry: " + obj + "=null");
    }
}
