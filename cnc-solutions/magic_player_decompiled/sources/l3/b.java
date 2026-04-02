package l3;

import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes2.dex */
public class b<T> implements a<Long, T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final m3.c<Reference<T>> f2456a = new m3.c<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ReentrantLock f2457b = new ReentrantLock();

    @Override // l3.a
    public void a(Long l4, Object obj) {
        this.f2456a.b(l4.longValue(), new WeakReference(obj));
    }

    @Override // l3.a
    public boolean b(Long l4, Object obj) {
        boolean z3;
        Long l5 = l4;
        this.f2457b.lock();
        try {
            if (h(l5.longValue()) != obj || obj == null) {
                z3 = false;
            } else {
                remove(l5);
                z3 = true;
            }
            return z3;
        } finally {
            this.f2457b.unlock();
        }
    }

    @Override // l3.a
    public void c() {
        this.f2457b.unlock();
    }

    @Override // l3.a
    public void clear() {
        this.f2457b.lock();
        try {
            m3.c<Reference<T>> cVar = this.f2456a;
            cVar.f2589d = 0;
            Arrays.fill(cVar.f2586a, (Object) null);
        } finally {
            this.f2457b.unlock();
        }
    }

    @Override // l3.a
    public void d(Iterable<Long> iterable) {
        this.f2457b.lock();
        try {
            Iterator<Long> it = iterable.iterator();
            while (it.hasNext()) {
                this.f2456a.c(it.next().longValue());
            }
        } finally {
            this.f2457b.unlock();
        }
    }

    @Override // l3.a
    public void e() {
        this.f2457b.lock();
    }

    @Override // l3.a
    public Object f(Long l4) {
        Reference<T> referenceA = this.f2456a.a(l4.longValue());
        if (referenceA != null) {
            return referenceA.get();
        }
        return null;
    }

    @Override // l3.a
    public void g(int i4) {
        m3.c<Reference<T>> cVar = this.f2456a;
        Objects.requireNonNull(cVar);
        cVar.d((i4 * 5) / 3);
    }

    @Override // l3.a
    public Object get(Long l4) {
        return h(l4.longValue());
    }

    public T h(long j4) {
        this.f2457b.lock();
        try {
            Reference<T> referenceA = this.f2456a.a(j4);
            if (referenceA != null) {
                return referenceA.get();
            }
            return null;
        } finally {
            this.f2457b.unlock();
        }
    }

    public void i(long j4, T t3) {
        this.f2457b.lock();
        try {
            this.f2456a.b(j4, new WeakReference(t3));
        } finally {
            this.f2457b.unlock();
        }
    }

    @Override // l3.a
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public void remove(Long l4) {
        this.f2457b.lock();
        try {
            this.f2456a.c(l4.longValue());
        } finally {
            this.f2457b.unlock();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // l3.a
    public void put(Long l4, Object obj) {
        i(l4.longValue(), obj);
    }
}
