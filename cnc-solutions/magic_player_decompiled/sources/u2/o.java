package u2;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f3599a = Logger.getLogger(o.class.getName());

    public class a implements w {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ x f3600a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ InputStream f3601b;

        public a(x xVar, InputStream inputStream) {
            this.f3600a = xVar;
            this.f3601b = inputStream;
        }

        @Override // u2.w
        public x a() {
            return this.f3600a;
        }

        @Override // u2.w, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f3601b.close();
        }

        @Override // u2.w
        public long s(e eVar, long j4) throws IOException {
            if (j4 < 0) {
                throw new IllegalArgumentException(androidx.viewpager2.adapter.a.a("byteCount < 0: ", j4));
            }
            if (j4 == 0) {
                return 0L;
            }
            try {
                this.f3600a.f();
                s sVarJ = eVar.J(1);
                int i4 = this.f3601b.read(sVarJ.f3610a, sVarJ.f3612c, (int) Math.min(j4, 8192 - sVarJ.f3612c));
                if (i4 == -1) {
                    return -1L;
                }
                sVarJ.f3612c += i4;
                long j5 = i4;
                eVar.f3578b += j5;
                return j5;
            } catch (AssertionError e4) {
                if (o.a(e4)) {
                    throw new IOException(e4);
                }
                throw e4;
            }
        }

        public String toString() {
            StringBuilder sbA = android.support.v4.media.f.a("source(");
            sbA.append(this.f3601b);
            sbA.append(")");
            return sbA.toString();
        }
    }

    public static boolean a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    public static v b(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        if (socket.getOutputStream() == null) {
            throw new IOException("socket's output stream == null");
        }
        p pVar = new p(socket);
        OutputStream outputStream = socket.getOutputStream();
        if (outputStream != null) {
            return new u2.a(pVar, new n(pVar, outputStream));
        }
        throw new IllegalArgumentException("out == null");
    }

    public static w c(InputStream inputStream, x xVar) {
        if (inputStream != null) {
            return new a(xVar, inputStream);
        }
        throw new IllegalArgumentException("in == null");
    }

    public static w d(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        if (socket.getInputStream() == null) {
            throw new IOException("socket's input stream == null");
        }
        p pVar = new p(socket);
        return new b(pVar, c(socket.getInputStream(), pVar));
    }
}
