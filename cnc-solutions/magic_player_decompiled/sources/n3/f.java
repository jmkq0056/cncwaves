package n3;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class f<T> extends c<T> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final b<T> f2786f;

    public static final class b<T2> extends n3.b<T2, f<T2>> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f2787e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f2788f;

        public b(j3.a<T2, ?> aVar, String str, String[] strArr, int i4, int i5) {
            super(aVar, str, strArr);
            this.f2787e = i4;
            this.f2788f = i5;
        }

        @Override // n3.b
        public n3.a a() {
            return new f(this, this.f2783b, this.f2782a, (String[]) this.f2784c.clone(), this.f2787e, this.f2788f, null);
        }
    }

    public f(b bVar, j3.a aVar, String str, String[] strArr, int i4, int i5, a aVar2) {
        super(aVar, str, strArr, i4, i5);
        this.f2786f = bVar;
    }

    public static <T2> f<T2> c(j3.a<T2, ?> aVar, String str, Object[] objArr, int i4, int i5) {
        return new b(aVar, str, n3.a.b(objArr), i4, i5).b();
    }

    public List<T> d() {
        a();
        return ((j3.a) this.f2778b.f3529b).loadAllAndCloseCursor(((t1.b) this.f2777a.getDatabase()).D(this.f2779c, this.f2780d));
    }
}
