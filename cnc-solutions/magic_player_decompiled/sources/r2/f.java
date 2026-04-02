package r2;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import k2.v;
import v1.q;

/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f3385a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Logger f3386b;

    /* JADX WARN: Removed duplicated region for block: B:13:0x0041 A[Catch: ClassNotFoundException -> 0x0061, TRY_ENTER, TryCatch #2 {ClassNotFoundException -> 0x0061, blocks: (B:6:0x0014, B:13:0x0041, B:15:0x005a, B:5:0x000d, B:3:0x0005), top: B:46:0x0005, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0058  */
    static {
        /*
            Method dump skipped, instruction units count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: r2.f.<clinit>():void");
    }

    public static List<String> b(List<v> list) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            v vVar = list.get(i4);
            if (vVar != v.HTTP_1_0) {
                arrayList.add(vVar.f2258a);
            }
        }
        return arrayList;
    }

    public void a(SSLSocket sSLSocket) {
    }

    public q c(X509TrustManager x509TrustManager) {
        return new t2.a(d(x509TrustManager));
    }

    public t2.d d(X509TrustManager x509TrustManager) {
        return new t2.b(x509TrustManager.getAcceptedIssuers());
    }

    public void e(SSLSocketFactory sSLSocketFactory) {
    }

    public void f(SSLSocket sSLSocket, @Nullable String str, List<v> list) {
    }

    public void g(Socket socket, InetSocketAddress inetSocketAddress, int i4) throws IOException {
        socket.connect(inetSocketAddress, i4);
    }

    public SSLContext h() {
        if ("1.7".equals(System.getProperty("java.specification.version"))) {
            try {
                return SSLContext.getInstance("TLSv1.2");
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        try {
            return SSLContext.getInstance("TLS");
        } catch (NoSuchAlgorithmException e4) {
            throw new IllegalStateException("No TLS provider", e4);
        }
    }

    @Nullable
    public String i(SSLSocket sSLSocket) {
        return null;
    }

    public Object j(String str) {
        if (f3386b.isLoggable(Level.FINE)) {
            return new Throwable(str);
        }
        return null;
    }

    public boolean k(String str) {
        return true;
    }

    public void l(int i4, String str, @Nullable Throwable th) {
        f3386b.log(i4 == 5 ? Level.WARNING : Level.INFO, str, th);
    }

    public void m(String str, Object obj) {
        if (obj == null) {
            str = androidx.appcompat.view.a.a(str, " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);");
        }
        l(5, str, (Throwable) obj);
    }

    public String toString() {
        return getClass().getSimpleName();
    }
}
