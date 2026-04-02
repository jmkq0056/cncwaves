package v1;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes2.dex */
public class f implements t<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final y f3664a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Class f3665b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Type f3666c;

    public f(g gVar, Class cls, Type type) {
        y xVar;
        this.f3665b = cls;
        this.f3666c = type;
        try {
            Class<?> cls2 = Class.forName("sun.misc.Unsafe");
            Field declaredField = cls2.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            xVar = new u(cls2.getMethod("allocateInstance", Class.class), declaredField.get(null));
        } catch (Exception unused) {
            try {
                try {
                    Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
                    declaredMethod.setAccessible(true);
                    int iIntValue = ((Integer) declaredMethod.invoke(null, Object.class)).intValue();
                    Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, Integer.TYPE);
                    declaredMethod2.setAccessible(true);
                    xVar = new v(declaredMethod2, iIntValue);
                } catch (Exception unused2) {
                    Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
                    declaredMethod3.setAccessible(true);
                    xVar = new w(declaredMethod3);
                }
            } catch (Exception unused3) {
                xVar = new x();
            }
        }
        this.f3664a = xVar;
    }

    @Override // v1.t
    public Object a() {
        try {
            return this.f3664a.b(this.f3665b);
        } catch (Exception e4) {
            StringBuilder sbA = android.support.v4.media.f.a("Unable to invoke no-args constructor for ");
            sbA.append(this.f3666c);
            sbA.append(". Registering an InstanceCreator with Gson for this type may fix this problem.");
            throw new RuntimeException(sbA.toString(), e4);
        }
    }
}
