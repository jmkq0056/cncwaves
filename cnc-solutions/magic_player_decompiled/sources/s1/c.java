package s1;

import java.io.Serializable;
import java.util.Comparator;
import java.util.Objects;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: loaded from: classes.dex */
public final class c<T> extends j<T> implements Serializable {
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Comparator<T> f3448a;

    public c(Comparator<T> comparator) {
        Objects.requireNonNull(comparator);
        this.f3448a = comparator;
    }

    @Override // java.util.Comparator
    public int compare(T t3, T t4) {
        return this.f3448a.compare(t3, t4);
    }

    @Override // java.util.Comparator
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof c) {
            return this.f3448a.equals(((c) obj).f3448a);
        }
        return false;
    }

    public int hashCode() {
        return this.f3448a.hashCode();
    }

    public String toString() {
        return this.f3448a.toString();
    }
}
