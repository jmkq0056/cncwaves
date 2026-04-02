package v1;

import java.lang.reflect.Type;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map<Type, t1.j<?>> f3667a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final y1.b f3668b = y1.b.f4009a;

    /* JADX INFO: Add missing generic type declarations: [T] */
    public class a<T> implements t<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ t1.j f3669a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Type f3670b;

        public a(g gVar, t1.j jVar, Type type) {
            this.f3669a = jVar;
            this.f3670b = type;
        }

        @Override // v1.t
        public T a() {
            return (T) this.f3669a.a(this.f3670b);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public class b<T> implements t<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ t1.j f3671a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Type f3672b;

        public b(g gVar, t1.j jVar, Type type) {
            this.f3671a = jVar;
            this.f3672b = type;
        }

        @Override // v1.t
        public T a() {
            return (T) this.f3671a.a(this.f3672b);
        }
    }

    public g(Map<Type, t1.j<?>> map) {
        this.f3667a = map;
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00e5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> v1.t<T> a(z1.a<T> r6) {
        /*
            Method dump skipped, instruction units count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: v1.g.a(z1.a):v1.t");
    }

    public String toString() {
        return this.f3667a.toString();
    }
}
