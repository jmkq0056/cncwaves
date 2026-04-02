package g3;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Map<Class<?>, List<m>> f1781a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a[] f1782b = new a[4];

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List<m> f1783a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Map<Class, Object> f1784b = new HashMap();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Map<String, Class> f1785c = new HashMap();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final StringBuilder f1786d = new StringBuilder(128);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Class<?> f1787e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f1788f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public i3.a f1789g;

        public boolean a(Method method, Class<?> cls) {
            Object objPut = this.f1784b.put(cls, method);
            if (objPut == null) {
                return true;
            }
            if (objPut instanceof Method) {
                if (!b((Method) objPut, cls)) {
                    throw new IllegalStateException();
                }
                this.f1784b.put(cls, this);
            }
            return b(method, cls);
        }

        public final boolean b(Method method, Class<?> cls) {
            this.f1786d.setLength(0);
            this.f1786d.append(method.getName());
            StringBuilder sb = this.f1786d;
            sb.append('>');
            sb.append(cls.getName());
            String string = this.f1786d.toString();
            Class<?> declaringClass = method.getDeclaringClass();
            Class clsPut = this.f1785c.put(string, declaringClass);
            if (clsPut == null || clsPut.isAssignableFrom(declaringClass)) {
                return true;
            }
            this.f1785c.put(string, clsPut);
            return false;
        }

        public void c() {
            if (this.f1788f) {
                this.f1787e = null;
                return;
            }
            Class<? super Object> superclass = this.f1787e.getSuperclass();
            this.f1787e = superclass;
            String name = superclass.getName();
            if (name.startsWith("java.") || name.startsWith("javax.") || name.startsWith("android.") || name.startsWith("androidx.")) {
                this.f1787e = null;
            }
        }
    }

    public n(List<Object> list, boolean z3, boolean z4) {
    }

    public final void a(a aVar) {
        Method[] methods;
        org.greenrobot.eventbus.a aVar2;
        try {
            try {
                methods = aVar.f1787e.getDeclaredMethods();
            } catch (LinkageError e4) {
                StringBuilder sbA = android.support.v4.media.f.a("Could not inspect methods of ");
                sbA.append(aVar.f1787e.getName());
                throw new e(androidx.appcompat.view.a.a(sbA.toString(), ". Please make this class visible to EventBus annotation processor to avoid reflection."), e4);
            }
        } catch (Throwable unused) {
            methods = aVar.f1787e.getMethods();
            aVar.f1788f = true;
        }
        for (Method method : methods) {
            int modifiers = method.getModifiers();
            if ((modifiers & 1) != 0 && (modifiers & 5192) == 0) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length == 1 && (aVar2 = (org.greenrobot.eventbus.a) method.getAnnotation(org.greenrobot.eventbus.a.class)) != null) {
                    Class<?> cls = parameterTypes[0];
                    if (aVar.a(method, cls)) {
                        aVar.f1783a.add(new m(method, cls, aVar2.threadMode(), aVar2.priority(), aVar2.sticky()));
                    }
                }
            }
        }
    }

    public final List<m> b(a aVar) {
        ArrayList arrayList = new ArrayList(aVar.f1783a);
        aVar.f1783a.clear();
        aVar.f1784b.clear();
        aVar.f1785c.clear();
        int i4 = 0;
        aVar.f1786d.setLength(0);
        aVar.f1787e = null;
        aVar.f1788f = false;
        aVar.f1789g = null;
        synchronized (f1782b) {
            while (true) {
                if (i4 >= 4) {
                    break;
                }
                a[] aVarArr = f1782b;
                if (aVarArr[i4] == null) {
                    aVarArr[i4] = aVar;
                    break;
                }
                i4++;
            }
        }
        return arrayList;
    }

    public final a c() {
        synchronized (f1782b) {
            for (int i4 = 0; i4 < 4; i4++) {
                a[] aVarArr = f1782b;
                a aVar = aVarArr[i4];
                if (aVar != null) {
                    aVarArr[i4] = null;
                    return aVar;
                }
            }
            return new a();
        }
    }
}
