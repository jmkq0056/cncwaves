package r2;

import android.os.Build;
import android.util.Log;
import java.io.EOFException;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.List;
import java.util.Objects;
import javax.annotation.Nullable;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;
import k2.v;
import v1.q;

/* JADX INFO: loaded from: classes.dex */
public class a extends f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final e<Socket> f3360c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final e<Socket> f3361d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final e<Socket> f3362e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final e<Socket> f3363f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final c f3364g;

    /* JADX INFO: renamed from: r2.a$a, reason: collision with other inner class name */
    /* JADX INFO: loaded from: classes2.dex */
    public static final class C0041a extends q {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f3365b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Method f3366c;

        public C0041a(Object obj, Method method) {
            super(1);
            this.f3365b = obj;
            this.f3366c = method;
        }

        @Override // v1.q
        public List<Certificate> a(List<Certificate> list, String str) throws SSLPeerUnverifiedException {
            try {
                return (List) this.f3366c.invoke(this.f3365b, (X509Certificate[]) list.toArray(new X509Certificate[list.size()]), "RSA", str);
            } catch (IllegalAccessException e4) {
                throw new AssertionError(e4);
            } catch (InvocationTargetException e5) {
                SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e5.getMessage());
                sSLPeerUnverifiedException.initCause(e5);
                throw sSLPeerUnverifiedException;
            }
        }

        public boolean equals(Object obj) {
            return obj instanceof C0041a;
        }

        public int hashCode() {
            return 0;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static final class b implements t2.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final X509TrustManager f3367a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Method f3368b;

        public b(X509TrustManager x509TrustManager, Method method) {
            this.f3368b = method;
            this.f3367a = x509TrustManager;
        }

        @Override // t2.d
        public X509Certificate a(X509Certificate x509Certificate) {
            try {
                TrustAnchor trustAnchor = (TrustAnchor) this.f3368b.invoke(this.f3367a, x509Certificate);
                if (trustAnchor != null) {
                    return trustAnchor.getTrustedCert();
                }
                return null;
            } catch (IllegalAccessException e4) {
                throw l2.c.a("unable to get issues and signature", e4);
            } catch (InvocationTargetException unused) {
                return null;
            }
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f3367a.equals(bVar.f3367a) && this.f3368b.equals(bVar.f3368b);
        }

        public int hashCode() {
            return (this.f3368b.hashCode() * 31) + this.f3367a.hashCode();
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Method f3369a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Method f3370b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Method f3371c;

        public c(Method method, Method method2, Method method3) {
            this.f3369a = method;
            this.f3370b = method2;
            this.f3371c = method3;
        }
    }

    public a(Class<?> cls, e<Socket> eVar, e<Socket> eVar2, e<Socket> eVar3, e<Socket> eVar4) throws NoSuchMethodException {
        Method method;
        Method method2;
        Method method3 = null;
        try {
            Class<?> cls2 = Class.forName("dalvik.system.CloseGuard");
            Method method4 = cls2.getMethod("get", new Class[0]);
            method2 = cls2.getMethod("open", String.class);
            method = cls2.getMethod("warnIfOpen", new Class[0]);
            method3 = method4;
        } catch (Exception unused) {
            method = null;
            method2 = null;
        }
        this.f3364g = new c(method3, method2, method);
        this.f3360c = eVar;
        this.f3361d = eVar2;
        this.f3362e = eVar3;
        this.f3363f = eVar4;
    }

    @Override // r2.f
    public q c(X509TrustManager x509TrustManager) {
        try {
            Class<?> cls = Class.forName("android.net.http.X509TrustManagerExtensions");
            return new C0041a(cls.getConstructor(X509TrustManager.class).newInstance(x509TrustManager), cls.getMethod("checkServerTrusted", X509Certificate[].class, String.class, String.class));
        } catch (Exception unused) {
            return new t2.a(d(x509TrustManager));
        }
    }

    @Override // r2.f
    public t2.d d(X509TrustManager x509TrustManager) {
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            declaredMethod.setAccessible(true);
            return new b(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException unused) {
            return new t2.b(x509TrustManager.getAcceptedIssuers());
        }
    }

    @Override // r2.f
    public void f(SSLSocket sSLSocket, String str, List<v> list) {
        if (str != null) {
            this.f3360c.c(sSLSocket, Boolean.TRUE);
            this.f3361d.c(sSLSocket, str);
        }
        e<Socket> eVar = this.f3363f;
        if (eVar != null) {
            if (eVar.a(sSLSocket.getClass()) != null) {
                Object[] objArr = new Object[1];
                u2.e eVar2 = new u2.e();
                int size = list.size();
                for (int i4 = 0; i4 < size; i4++) {
                    v vVar = list.get(i4);
                    if (vVar != v.HTTP_1_0) {
                        eVar2.N(vVar.f2258a.length());
                        eVar2.R(vVar.f2258a);
                    }
                }
                try {
                    objArr[0] = eVar2.n(eVar2.f3578b);
                    this.f3363f.d(sSLSocket, objArr);
                } catch (EOFException e4) {
                    throw new AssertionError(e4);
                }
            }
        }
    }

    @Override // r2.f
    public void g(Socket socket, InetSocketAddress inetSocketAddress, int i4) throws IOException {
        try {
            socket.connect(inetSocketAddress, i4);
        } catch (AssertionError e4) {
            if (!l2.c.t(e4)) {
                throw e4;
            }
            throw new IOException(e4);
        } catch (ClassCastException e5) {
            if (Build.VERSION.SDK_INT != 26) {
                throw e5;
            }
            IOException iOException = new IOException("Exception in connect");
            iOException.initCause(e5);
            throw iOException;
        } catch (SecurityException e6) {
            IOException iOException2 = new IOException("Exception in connect");
            iOException2.initCause(e6);
            throw iOException2;
        }
    }

    @Override // r2.f
    public SSLContext h() {
        boolean z3 = true;
        try {
            if (Build.VERSION.SDK_INT >= 22) {
                z3 = false;
            }
        } catch (NoClassDefFoundError unused) {
        }
        if (z3) {
            try {
                return SSLContext.getInstance("TLSv1.2");
            } catch (NoSuchAlgorithmException unused2) {
            }
        }
        try {
            return SSLContext.getInstance("TLS");
        } catch (NoSuchAlgorithmException e4) {
            throw new IllegalStateException("No TLS provider", e4);
        }
    }

    @Override // r2.f
    @Nullable
    public String i(SSLSocket sSLSocket) {
        byte[] bArr;
        e<Socket> eVar = this.f3362e;
        if (eVar == null) {
            return null;
        }
        if ((eVar.a(sSLSocket.getClass()) != null) && (bArr = (byte[]) this.f3362e.d(sSLSocket, new Object[0])) != null) {
            return new String(bArr, l2.c.f2445i);
        }
        return null;
    }

    @Override // r2.f
    public Object j(String str) {
        c cVar = this.f3364g;
        Method method = cVar.f3369a;
        if (method == null) {
            return null;
        }
        try {
            Object objInvoke = method.invoke(null, new Object[0]);
            cVar.f3370b.invoke(objInvoke, str);
            return objInvoke;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // r2.f
    public boolean k(String str) {
        try {
            Class<?> cls = Class.forName("android.security.NetworkSecurityPolicy");
            return n(str, cls, cls.getMethod("getInstance", new Class[0]).invoke(null, new Object[0]));
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return true;
        } catch (IllegalAccessException e4) {
            e = e4;
            throw l2.c.a("unable to determine cleartext support", e);
        } catch (IllegalArgumentException e5) {
            e = e5;
            throw l2.c.a("unable to determine cleartext support", e);
        } catch (InvocationTargetException e6) {
            e = e6;
            throw l2.c.a("unable to determine cleartext support", e);
        }
    }

    @Override // r2.f
    public void l(int i4, String str, @Nullable Throwable th) {
        int iMin;
        int i5 = i4 != 5 ? 3 : 5;
        if (th != null) {
            str = str + '\n' + Log.getStackTraceString(th);
        }
        int i6 = 0;
        int length = str.length();
        while (i6 < length) {
            int iIndexOf = str.indexOf(10, i6);
            if (iIndexOf == -1) {
                iIndexOf = length;
            }
            while (true) {
                iMin = Math.min(iIndexOf, i6 + 4000);
                Log.println(i5, "OkHttp", str.substring(i6, iMin));
                if (iMin >= iIndexOf) {
                    break;
                } else {
                    i6 = iMin;
                }
            }
            i6 = iMin + 1;
        }
    }

    @Override // r2.f
    public void m(String str, Object obj) {
        c cVar = this.f3364g;
        Objects.requireNonNull(cVar);
        boolean z3 = false;
        if (obj != null) {
            try {
                cVar.f3371c.invoke(obj, new Object[0]);
                z3 = true;
            } catch (Exception unused) {
            }
        }
        if (z3) {
            return;
        }
        l(5, str, null);
    }

    public final boolean n(String str, Class<?> cls, Object obj) {
        try {
            try {
                return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", String.class).invoke(obj, str)).booleanValue();
            } catch (NoSuchMethodException unused) {
                return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", new Class[0]).invoke(obj, new Object[0])).booleanValue();
            }
        } catch (NoSuchMethodException unused2) {
            return true;
        }
    }
}
