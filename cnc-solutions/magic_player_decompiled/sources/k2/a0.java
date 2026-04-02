package k2;

import java.io.Closeable;
import javax.annotation.Nullable;
import k2.q;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public final class a0 implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final x f2058a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final v f2059b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2060c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f2061d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    public final p f2062e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final q f2063f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    public final c0 f2064g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    public final a0 f2065h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    public final a0 f2066i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    public final a0 f2067j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f2068k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final long f2069l;

    public a0(a aVar) {
        this.f2058a = aVar.f2070a;
        this.f2059b = aVar.f2071b;
        this.f2060c = aVar.f2072c;
        this.f2061d = aVar.f2073d;
        this.f2062e = aVar.f2074e;
        this.f2063f = new q(aVar.f2075f);
        this.f2064g = aVar.f2076g;
        this.f2065h = aVar.f2077h;
        this.f2066i = aVar.f2078i;
        this.f2067j = aVar.f2079j;
        this.f2068k = aVar.f2080k;
        this.f2069l = aVar.f2081l;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        c0 c0Var = this.f2064g;
        if (c0Var == null) {
            throw new IllegalStateException("response is not eligible for a body and must not be closed");
        }
        c0Var.close();
    }

    public String toString() {
        StringBuilder sbA = android.support.v4.media.f.a("Response{protocol=");
        sbA.append(this.f2059b);
        sbA.append(", code=");
        sbA.append(this.f2060c);
        sbA.append(", message=");
        sbA.append(this.f2061d);
        sbA.append(", url=");
        sbA.append(this.f2058a.f2269a);
        sbA.append(MessageFormatter.DELIM_STOP);
        return sbA.toString();
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @Nullable
        public x f2070a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Nullable
        public v f2071b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2072c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f2073d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @Nullable
        public p f2074e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public q.a f2075f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        @Nullable
        public c0 f2076g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        @Nullable
        public a0 f2077h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        @Nullable
        public a0 f2078i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        @Nullable
        public a0 f2079j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public long f2080k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public long f2081l;

        public a() {
            this.f2072c = -1;
            this.f2075f = new q.a();
        }

        public a0 a() {
            if (this.f2070a == null) {
                throw new IllegalStateException("request == null");
            }
            if (this.f2071b == null) {
                throw new IllegalStateException("protocol == null");
            }
            if (this.f2072c >= 0) {
                if (this.f2073d != null) {
                    return new a0(this);
                }
                throw new IllegalStateException("message == null");
            }
            StringBuilder sbA = android.support.v4.media.f.a("code < 0: ");
            sbA.append(this.f2072c);
            throw new IllegalStateException(sbA.toString());
        }

        public a b(@Nullable a0 a0Var) {
            if (a0Var != null) {
                c("cacheResponse", a0Var);
            }
            this.f2078i = a0Var;
            return this;
        }

        public final void c(String str, a0 a0Var) {
            if (a0Var.f2064g != null) {
                throw new IllegalArgumentException(androidx.appcompat.view.a.a(str, ".body != null"));
            }
            if (a0Var.f2065h != null) {
                throw new IllegalArgumentException(androidx.appcompat.view.a.a(str, ".networkResponse != null"));
            }
            if (a0Var.f2066i != null) {
                throw new IllegalArgumentException(androidx.appcompat.view.a.a(str, ".cacheResponse != null"));
            }
            if (a0Var.f2067j != null) {
                throw new IllegalArgumentException(androidx.appcompat.view.a.a(str, ".priorResponse != null"));
            }
        }

        public a d(q qVar) {
            this.f2075f = qVar.e();
            return this;
        }

        public a(a0 a0Var) {
            this.f2072c = -1;
            this.f2070a = a0Var.f2058a;
            this.f2071b = a0Var.f2059b;
            this.f2072c = a0Var.f2060c;
            this.f2073d = a0Var.f2061d;
            this.f2074e = a0Var.f2062e;
            this.f2075f = a0Var.f2063f.e();
            this.f2076g = a0Var.f2064g;
            this.f2077h = a0Var.f2065h;
            this.f2078i = a0Var.f2066i;
            this.f2079j = a0Var.f2067j;
            this.f2080k = a0Var.f2068k;
            this.f2081l = a0Var.f2069l;
        }
    }
}
