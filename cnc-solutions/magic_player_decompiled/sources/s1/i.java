package s1;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes2.dex */
public final class i extends o<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f3464a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f3465b;

    public i(Object obj) {
        this.f3465b = obj;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return !this.f3464a;
    }

    @Override // java.util.Iterator
    public Object next() {
        if (this.f3464a) {
            throw new NoSuchElementException();
        }
        this.f3464a = true;
        return this.f3465b;
    }
}
