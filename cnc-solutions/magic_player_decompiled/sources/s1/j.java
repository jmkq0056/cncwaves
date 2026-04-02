package s1;

import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
public abstract class j<T> implements Comparator<T> {
    public static <T> j<T> a(Comparator<T> comparator) {
        return comparator instanceof j ? (j) comparator : new c(comparator);
    }
}
