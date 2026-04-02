package s1;

import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class d {
    public static int a(Set<?> set) {
        Iterator<?> it = set.iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            Object next = it.next();
            iHashCode = ((iHashCode + (next != null ? next.hashCode() : 0)) ^ (-1)) ^ (-1);
        }
        return iHashCode;
    }

    public static int b(int i4) {
        return (int) (((long) Integer.rotateLeft((int) (((long) i4) * (-862048943)), 15)) * 461845907);
    }
}
