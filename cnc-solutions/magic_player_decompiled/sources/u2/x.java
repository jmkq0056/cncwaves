package u2;

import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class x {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final x f3621d = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f3622a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f3623b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f3624c;

    public class a extends x {
        @Override // u2.x
        public x d(long j4) {
            return this;
        }

        @Override // u2.x
        public void f() {
        }

        @Override // u2.x
        public x g(long j4, TimeUnit timeUnit) {
            return this;
        }
    }

    public x a() {
        this.f3622a = false;
        return this;
    }

    public x b() {
        this.f3624c = 0L;
        return this;
    }

    public long c() {
        if (this.f3622a) {
            return this.f3623b;
        }
        throw new IllegalStateException("No deadline");
    }

    public x d(long j4) {
        this.f3622a = true;
        this.f3623b = j4;
        return this;
    }

    public boolean e() {
        return this.f3622a;
    }

    public void f() throws InterruptedIOException {
        if (Thread.interrupted()) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
        if (this.f3622a && this.f3623b - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    public x g(long j4, TimeUnit timeUnit) {
        if (j4 < 0) {
            throw new IllegalArgumentException(androidx.viewpager2.adapter.a.a("timeout < 0: ", j4));
        }
        if (timeUnit == null) {
            throw new IllegalArgumentException("unit == null");
        }
        this.f3624c = timeUnit.toNanos(j4);
        return this;
    }
}
