package t1;

import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes2.dex */
public class g extends x<AtomicLong> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x f3532a;

    public g(x xVar) {
        this.f3532a = xVar;
    }

    @Override // t1.x
    public AtomicLong a(a2.a aVar) {
        return new AtomicLong(((Number) this.f3532a.a(aVar)).longValue());
    }

    @Override // t1.x
    public void b(a2.c cVar, AtomicLong atomicLong) {
        this.f3532a.b(cVar, Long.valueOf(atomicLong.get()));
    }
}
