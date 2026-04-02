package g3;

import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes2.dex */
public class i implements l3.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f1766a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f1767b;

    public i(c cVar, Object obj) {
        this.f1766a = cVar;
        this.f1767b = obj;
    }

    @Override // l3.a
    public void a(K k4, T t3) {
        ((HashMap) this.f1766a).put(k4, new WeakReference(t3));
    }

    @Override // l3.a
    public boolean b(K k4, T t3) {
        boolean z3;
        ((ReentrantLock) this.f1767b).lock();
        try {
            if (get(k4) != t3 || t3 == 0) {
                z3 = false;
            } else {
                remove(k4);
                z3 = true;
            }
            return z3;
        } finally {
            ((ReentrantLock) this.f1767b).unlock();
        }
    }

    @Override // l3.a
    public void c() {
        ((ReentrantLock) this.f1767b).unlock();
    }

    @Override // l3.a
    public void clear() {
        ((ReentrantLock) this.f1767b).lock();
        try {
            ((HashMap) this.f1766a).clear();
        } finally {
            ((ReentrantLock) this.f1767b).unlock();
        }
    }

    @Override // l3.a
    public void d(Iterable<K> iterable) {
        ((ReentrantLock) this.f1767b).lock();
        try {
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                ((HashMap) this.f1766a).remove(it.next());
            }
        } finally {
            ((ReentrantLock) this.f1767b).unlock();
        }
    }

    @Override // l3.a
    public void e() {
        ((ReentrantLock) this.f1767b).lock();
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [T, java.lang.Object] */
    @Override // l3.a
    public T f(K k4) {
        Reference reference = (Reference) ((HashMap) this.f1766a).get(k4);
        if (reference != null) {
            return reference.get();
        }
        return null;
    }

    @Override // l3.a
    public void g(int i4) {
    }

    /* JADX WARN: Type inference failed for: r2v5, types: [T, java.lang.Object] */
    @Override // l3.a
    public T get(K k4) {
        ((ReentrantLock) this.f1767b).lock();
        try {
            Reference reference = (Reference) ((HashMap) this.f1766a).get(k4);
            if (reference != null) {
                return reference.get();
            }
            return null;
        } finally {
            ((ReentrantLock) this.f1767b).unlock();
        }
    }

    @Override // l3.a
    public void put(K k4, T t3) {
        ((ReentrantLock) this.f1767b).lock();
        try {
            ((HashMap) this.f1766a).put(k4, new WeakReference(t3));
        } finally {
            ((ReentrantLock) this.f1767b).unlock();
        }
    }

    @Override // l3.a
    public void remove(K k4) {
        ((ReentrantLock) this.f1767b).lock();
        try {
            ((HashMap) this.f1766a).remove(k4);
        } finally {
            ((ReentrantLock) this.f1767b).unlock();
        }
    }

    public i() {
        this.f1766a = new HashMap();
        this.f1767b = new ReentrantLock();
    }
}
