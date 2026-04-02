package w1;

import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import t1.x;
import w1.j;

/* JADX INFO: loaded from: classes2.dex */
public final class n<T> extends x<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final t1.i f3873a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final x<T> f3874b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Type f3875c;

    public n(t1.i iVar, x<T> xVar, Type type) {
        this.f3873a = iVar;
        this.f3874b = xVar;
        this.f3875c = type;
    }

    @Override // t1.x
    public T a(a2.a aVar) {
        return this.f3874b.a(aVar);
    }

    @Override // t1.x
    public void b(a2.c cVar, T t3) {
        x<T> xVarE = this.f3874b;
        Type type = this.f3875c;
        if (t3 != null && (type == Object.class || (type instanceof TypeVariable) || (type instanceof Class))) {
            type = t3.getClass();
        }
        if (type != this.f3875c) {
            xVarE = this.f3873a.e(new z1.a<>(type));
            if (xVarE instanceof j.a) {
                x<T> xVar = this.f3874b;
                if (!(xVar instanceof j.a)) {
                    xVarE = xVar;
                }
            }
        }
        xVarE.b(cVar, t3);
    }
}
