package y1;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import t1.o;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Class f4010d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f4011b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Field f4012c;

    public c() {
        Object obj;
        Field declaredField = null;
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            f4010d = cls;
            Field declaredField2 = cls.getDeclaredField("theUnsafe");
            declaredField2.setAccessible(true);
            obj = declaredField2.get(null);
        } catch (Exception unused) {
            obj = null;
        }
        this.f4011b = obj;
        try {
            declaredField = AccessibleObject.class.getDeclaredField("override");
        } catch (NoSuchFieldException unused2) {
        }
        this.f4012c = declaredField;
    }

    @Override // y1.b
    public void a(AccessibleObject accessibleObject) {
        boolean z3 = false;
        if (this.f4011b != null && this.f4012c != null) {
            try {
                f4010d.getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE).invoke(this.f4011b, accessibleObject, Long.valueOf(((Long) f4010d.getMethod("objectFieldOffset", Field.class).invoke(this.f4011b, this.f4012c)).longValue()), Boolean.TRUE);
                z3 = true;
            } catch (Exception unused) {
            }
        }
        if (z3) {
            return;
        }
        try {
            accessibleObject.setAccessible(true);
        } catch (SecurityException e4) {
            throw new o("Gson couldn't modify fields for " + accessibleObject + "\nand sun.misc.Unsafe not found.\nEither write a custom type adapter, or make fields accessible, or include sun.misc.Unsafe.", e4);
        }
    }
}
