package n0;

import java.lang.reflect.Array;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Field f2717a;

    static {
        Field declaredField = null;
        try {
            declaredField = Class.forName("android.text.TextLine").getDeclaredField("sCached");
            declaredField.setAccessible(true);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        f2717a = declaredField;
    }

    public static void a() {
        Object obj;
        Field field = f2717a;
        if (field == null) {
            return;
        }
        try {
            obj = field.get(null);
        } catch (Exception unused) {
            obj = null;
        }
        if (obj != null) {
            int length = Array.getLength(obj);
            for (int i4 = 0; i4 < length; i4++) {
                Array.set(obj, i4, null);
            }
        }
    }
}
