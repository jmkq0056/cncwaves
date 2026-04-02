package v0;

import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.security.cert.X509Certificate;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.net.ssl.X509TrustManager;
import k2.a0;
import k2.c0;
import k2.u;
import k2.w;
import k2.x;
import org.eclipse.jetty.http.HttpHeaderValues;
import org.eclipse.jetty.http.HttpHeaders;
import org.fourthline.cling.model.types.BytesRange;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: v0.a$a, reason: collision with other inner class name */
    public class C0048a implements X509TrustManager {
        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return new X509Certificate[0];
        }
    }

    public interface b {
    }

    public static void a(String str, File file, long j4, b bVar) {
        Throwable th;
        InputStream inputStreamA;
        long j5;
        FileOutputStream fileOutputStream = null;
        try {
            x.a aVar = new x.a();
            aVar.e(str);
            if (j4 > 0) {
                aVar.a(HttpHeaders.RANGE, BytesRange.PREFIX + j4 + "-");
            }
            aVar.a(HttpHeaders.CONNECTION, HttpHeaderValues.CLOSE);
            a0 a0VarB = ((w) b().a(aVar.b())).b();
            try {
                String strC = a0VarB.f2063f.c(HttpHeaders.CONTENT_LENGTH);
                if (strC == null) {
                    strC = null;
                }
                Objects.requireNonNull(strC);
                j5 = Long.parseLong(strC);
            } catch (Exception e4) {
                e4.printStackTrace();
                j5 = 0;
            }
            Log.d("FileDownloadUtils", "download: " + str + ", exists length: " + j4 + ", content length: " + j5);
            c0 c0Var = a0VarB.f2064g;
            Objects.requireNonNull(c0Var);
            inputStreamA = c0Var.D().A();
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file, j4 > 0);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i4 = inputStreamA.read(bArr);
                        if (i4 == -1) {
                            break;
                        }
                        fileOutputStream2.write(bArr, 0, i4);
                        j4 += (long) i4;
                        v0.b bVar2 = (v0.b) bVar;
                        c cVar = (c) bVar2.f3639a;
                        AtomicBoolean atomicBoolean = (AtomicBoolean) bVar2.f3640b;
                        Objects.requireNonNull(cVar);
                        atomicBoolean.set(true);
                        cVar.f(((cVar.f3642b + j4) / cVar.f3641a) * 100.0f);
                        if (!(!cVar.f3644d)) {
                            Log.d("FileDownloadUtils", "download: task canceled.");
                            break;
                        }
                    }
                    fileOutputStream2.getFD().sync();
                    l.e.B(fileOutputStream2);
                    l.e.B(inputStreamA);
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream = fileOutputStream2;
                    l.e.B(fileOutputStream);
                    l.e.B(inputStreamA);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
            inputStreamA = null;
            l.e.B(fileOutputStream);
            l.e.B(inputStreamA);
            throw th;
        }
    }

    public static u b() {
        C0048a c0048a = new C0048a();
        u.b bVar = new u.b();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        bVar.a(30L, timeUnit);
        bVar.c(30L, timeUnit);
        bVar.b(30L, timeUnit);
        bVar.f2237j = new l(c0048a);
        bVar.f2238k = r2.f.f3385a.c(c0048a);
        return new u(bVar);
    }
}
