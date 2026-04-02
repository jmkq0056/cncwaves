package u2;

import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class k extends x {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public x f3587e;

    public k(x xVar) {
        if (xVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f3587e = xVar;
    }

    @Override // u2.x
    public x a() {
        return this.f3587e.a();
    }

    @Override // u2.x
    public x b() {
        return this.f3587e.b();
    }

    @Override // u2.x
    public long c() {
        return this.f3587e.c();
    }

    @Override // u2.x
    public x d(long j4) {
        return this.f3587e.d(j4);
    }

    @Override // u2.x
    public boolean e() {
        return this.f3587e.e();
    }

    @Override // u2.x
    public void f() throws InterruptedIOException {
        this.f3587e.f();
    }

    @Override // u2.x
    public x g(long j4, TimeUnit timeUnit) {
        return this.f3587e.g(j4, timeUnit);
    }
}
