package r2;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLSocket;
import k2.v;

/* JADX INFO: loaded from: classes.dex */
public class d extends f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Method f3374c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Method f3375d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Method f3376e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Class<?> f3377f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Class<?> f3378g;

    /* JADX INFO: loaded from: classes2.dex */
    public static class a implements InvocationHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List<String> f3379a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f3380b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f3381c;

        public a(List<String> list) {
            this.f3379a = list;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            if (objArr == null) {
                objArr = l2.c.f2438b;
            }
            if (name.equals("supports") && Boolean.TYPE == returnType) {
                return Boolean.TRUE;
            }
            if (name.equals("unsupported") && Void.TYPE == returnType) {
                this.f3380b = true;
                return null;
            }
            if (name.equals("protocols") && objArr.length == 0) {
                return this.f3379a;
            }
            if ((!name.equals("selectProtocol") && !name.equals("select")) || String.class != returnType || objArr.length != 1 || !(objArr[0] instanceof List)) {
                if ((!name.equals("protocolSelected") && !name.equals("selected")) || objArr.length != 1) {
                    return method.invoke(this, objArr);
                }
                this.f3381c = (String) objArr[0];
                return null;
            }
            List list = (List) objArr[0];
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                if (this.f3379a.contains(list.get(i4))) {
                    String str = (String) list.get(i4);
                    this.f3381c = str;
                    return str;
                }
            }
            String str2 = this.f3379a.get(0);
            this.f3381c = str2;
            return str2;
        }
    }

    public d(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
        this.f3374c = method;
        this.f3375d = method2;
        this.f3376e = method3;
        this.f3377f = cls;
        this.f3378g = cls2;
    }

    @Override // r2.f
    public void a(SSLSocket sSLSocket) {
        try {
            this.f3376e.invoke(null, sSLSocket);
        } catch (IllegalAccessException | InvocationTargetException e4) {
            throw l2.c.a("unable to remove alpn", e4);
        }
    }

    @Override // r2.f
    public void f(SSLSocket sSLSocket, String str, List<v> list) {
        try {
            this.f3374c.invoke(null, sSLSocket, Proxy.newProxyInstance(f.class.getClassLoader(), new Class[]{this.f3377f, this.f3378g}, new a(f.b(list))));
        } catch (IllegalAccessException | InvocationTargetException e4) {
            throw l2.c.a("unable to set alpn", e4);
        }
    }

    @Override // r2.f
    @Nullable
    public String i(SSLSocket sSLSocket) {
        try {
            a aVar = (a) Proxy.getInvocationHandler(this.f3375d.invoke(null, sSLSocket));
            boolean z3 = aVar.f3380b;
            if (!z3 && aVar.f3381c == null) {
                f.f3385a.l(4, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", null);
                return null;
            }
            if (z3) {
                return null;
            }
            return aVar.f3381c;
        } catch (IllegalAccessException | InvocationTargetException e4) {
            throw l2.c.a("unable to get selected protocol", e4);
        }
    }
}
