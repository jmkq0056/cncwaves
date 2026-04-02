package t1;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class k extends n implements Iterable<n> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<n> f3544a = new ArrayList();

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof k) && ((k) obj).f3544a.equals(this.f3544a));
    }

    public int hashCode() {
        return this.f3544a.hashCode();
    }

    @Override // java.lang.Iterable
    public Iterator<n> iterator() {
        return this.f3544a.iterator();
    }
}
