package v1;

import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class o implements t1.y, Cloneable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final o f3675c = new o();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public List<t1.a> f3676a = Collections.emptyList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List<t1.a> f3677b = Collections.emptyList();

    /* JADX INFO: Add missing generic type declarations: [T] */
    public class a<T> extends t1.x<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public t1.x<T> f3678a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ boolean f3679b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ boolean f3680c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ t1.i f3681d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ z1.a f3682e;

        public a(boolean z3, boolean z4, t1.i iVar, z1.a aVar) {
            this.f3679b = z3;
            this.f3680c = z4;
            this.f3681d = iVar;
            this.f3682e = aVar;
        }

        @Override // t1.x
        public T a(a2.a aVar) throws IOException {
            if (this.f3679b) {
                aVar.b0();
                return null;
            }
            t1.x<T> xVarF = this.f3678a;
            if (xVarF == null) {
                xVarF = this.f3681d.f(o.this, this.f3682e);
                this.f3678a = xVarF;
            }
            return xVarF.a(aVar);
        }

        @Override // t1.x
        public void b(a2.c cVar, T t3) throws IOException {
            if (this.f3680c) {
                cVar.J();
                return;
            }
            t1.x<T> xVarF = this.f3678a;
            if (xVarF == null) {
                xVarF = this.f3681d.f(o.this, this.f3682e);
                this.f3678a = xVarF;
            }
            xVarF.b(cVar, t3);
        }
    }

    @Override // t1.y
    public <T> t1.x<T> a(t1.i iVar, z1.a<T> aVar) {
        Class<? super T> cls = aVar.f4196a;
        boolean zC = c(cls);
        boolean z3 = zC || b(cls, true);
        boolean z4 = zC || b(cls, false);
        if (z3 || z4) {
            return new a(z4, z3, iVar, aVar);
        }
        return null;
    }

    public final boolean b(Class<?> cls, boolean z3) {
        Iterator<t1.a> it = (z3 ? this.f3676a : this.f3677b).iterator();
        while (it.hasNext()) {
            if (it.next().a(cls)) {
                return true;
            }
        }
        return false;
    }

    public final boolean c(Class<?> cls) {
        return !Enum.class.isAssignableFrom(cls) && (cls.isAnonymousClass() || cls.isLocalClass());
    }

    public Object clone() {
        try {
            return (o) super.clone();
        } catch (CloneNotSupportedException e4) {
            throw new AssertionError(e4);
        }
    }
}
