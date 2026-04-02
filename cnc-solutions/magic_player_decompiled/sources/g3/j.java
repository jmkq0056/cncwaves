package g3;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final List<j> f1768d = new ArrayList();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f1769a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o f1770b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public j f1771c;

    public j(Object obj, o oVar) {
        this.f1769a = obj;
        this.f1770b = oVar;
    }

    public static j a(o oVar, Object obj) {
        List<j> list = f1768d;
        synchronized (list) {
            int size = ((ArrayList) list).size();
            if (size <= 0) {
                return new j(obj, oVar);
            }
            j jVar = (j) ((ArrayList) list).remove(size - 1);
            jVar.f1769a = obj;
            jVar.f1770b = oVar;
            jVar.f1771c = null;
            return jVar;
        }
    }
}
