package n3;

import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes2.dex */
public class h<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final j3.a<T, ?> f2797a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List<i> f2798b = new ArrayList();

    public h(j3.a<T, ?> aVar, String str) {
        this.f2797a = aVar;
    }

    public void a(StringBuilder sb, String str, List<Object> list) {
        ListIterator<i> listIterator = this.f2798b.listIterator();
        while (listIterator.hasNext()) {
            if (listIterator.hasPrevious()) {
                sb.append(" AND ");
            }
            i next = listIterator.next();
            next.a(sb, str);
            next.b(list);
        }
    }

    public void b(j3.e eVar) {
        j3.a<T, ?> aVar = this.f2797a;
        if (aVar != null) {
            j3.e[] properties = aVar.getProperties();
            int length = properties.length;
            boolean z3 = false;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    break;
                }
                if (eVar == properties[i4]) {
                    z3 = true;
                    break;
                }
                i4++;
            }
            if (z3) {
                return;
            }
            StringBuilder sbA = android.support.v4.media.f.a("Property '");
            sbA.append(eVar.f2032c);
            sbA.append("' is not part of ");
            sbA.append(this.f2797a);
            throw new j3.d(sbA.toString());
        }
    }
}
