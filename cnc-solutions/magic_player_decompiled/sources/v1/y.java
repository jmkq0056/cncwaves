package v1;

import java.lang.reflect.Modifier;

/* JADX INFO: loaded from: classes2.dex */
public abstract class y {
    public static void a(Class<?> cls) {
        int modifiers = cls.getModifiers();
        if (Modifier.isInterface(modifiers)) {
            StringBuilder sbA = android.support.v4.media.f.a("Interface can't be instantiated! Interface name: ");
            sbA.append(cls.getName());
            throw new UnsupportedOperationException(sbA.toString());
        }
        if (Modifier.isAbstract(modifiers)) {
            StringBuilder sbA2 = android.support.v4.media.f.a("Abstract class can't be instantiated! Class name: ");
            sbA2.append(cls.getName());
            throw new UnsupportedOperationException(sbA2.toString());
        }
    }

    public abstract <T> T b(Class<T> cls);
}
