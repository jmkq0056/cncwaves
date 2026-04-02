package n3;

import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import n3.a;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b<T, Q extends a<T>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2782a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final j3.a<T, ?> f2783b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String[] f2784c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Map<Long, WeakReference<Q>> f2785d = new HashMap();

    public b(j3.a<T, ?> aVar, String str, String[] strArr) {
        this.f2783b = aVar;
        this.f2782a = str;
        this.f2784c = strArr;
    }

    public abstract Q a();

    public Q b() {
        Q q4;
        long id = Thread.currentThread().getId();
        synchronized (this.f2785d) {
            WeakReference<Q> weakReference = this.f2785d.get(Long.valueOf(id));
            q4 = weakReference != null ? weakReference.get() : null;
            if (q4 == null) {
                c();
                q4 = (Q) a();
                this.f2785d.put(Long.valueOf(id), new WeakReference<>(q4));
            } else {
                String[] strArr = this.f2784c;
                System.arraycopy(strArr, 0, q4.f2780d, 0, strArr.length);
            }
        }
        return q4;
    }

    public void c() {
        synchronized (this.f2785d) {
            Iterator<Map.Entry<Long, WeakReference<Q>>> it = this.f2785d.entrySet().iterator();
            while (it.hasNext()) {
                if (it.next().getValue().get() == null) {
                    it.remove();
                }
            }
        }
    }
}
