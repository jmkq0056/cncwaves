package t1;

import java.io.EOFException;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;
import w1.o;

/* JADX INFO: loaded from: classes2.dex */
public final class i {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final z1.a<?> f3534i = new z1.a<>(Object.class);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ThreadLocal<Map<z1.a<?>, a<?>>> f3535a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map<z1.a<?>, x<?>> f3536b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final v1.g f3537c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final w1.d f3538d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List<y> f3539e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f3540f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final List<y> f3541g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List<y> f3542h;

    public static class a<T> extends x<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public x<T> f3543a;

        @Override // t1.x
        public T a(a2.a aVar) {
            x<T> xVar = this.f3543a;
            if (xVar != null) {
                return xVar.a(aVar);
            }
            throw new IllegalStateException();
        }

        @Override // t1.x
        public void b(a2.c cVar, T t3) {
            x<T> xVar = this.f3543a;
            if (xVar == null) {
                throw new IllegalStateException();
            }
            xVar.b(cVar, t3);
        }
    }

    public i() {
        v1.o oVar = v1.o.f3675c;
        c cVar = c.f3530a;
        Map mapEmptyMap = Collections.emptyMap();
        List<y> listEmptyList = Collections.emptyList();
        List<y> listEmptyList2 = Collections.emptyList();
        List listEmptyList3 = Collections.emptyList();
        this.f3535a = new ThreadLocal<>();
        this.f3536b = new ConcurrentHashMap();
        v1.g gVar = new v1.g(mapEmptyMap);
        this.f3537c = gVar;
        this.f3540f = true;
        this.f3541g = listEmptyList;
        this.f3542h = listEmptyList2;
        ArrayList arrayList = new ArrayList();
        arrayList.add(w1.o.D);
        arrayList.add(w1.h.f3845b);
        arrayList.add(oVar);
        arrayList.addAll(listEmptyList3);
        arrayList.add(w1.o.f3893r);
        arrayList.add(w1.o.f3882g);
        arrayList.add(w1.o.f3879d);
        arrayList.add(w1.o.f3880e);
        arrayList.add(w1.o.f3881f);
        x<Number> xVar = w1.o.f3886k;
        arrayList.add(new w1.q(Long.TYPE, Long.class, xVar));
        arrayList.add(new w1.q(Double.TYPE, Double.class, new e(this)));
        arrayList.add(new w1.q(Float.TYPE, Float.class, new f(this)));
        arrayList.add(w1.o.f3889n);
        arrayList.add(w1.o.f3883h);
        arrayList.add(w1.o.f3884i);
        arrayList.add(new w1.p(AtomicLong.class, new w(new g(xVar))));
        arrayList.add(new w1.p(AtomicLongArray.class, new w(new h(xVar))));
        arrayList.add(w1.o.f3885j);
        arrayList.add(w1.o.f3890o);
        arrayList.add(w1.o.f3894s);
        arrayList.add(w1.o.f3895t);
        arrayList.add(new w1.p(BigDecimal.class, w1.o.f3891p));
        arrayList.add(new w1.p(BigInteger.class, w1.o.f3892q));
        arrayList.add(w1.o.f3896u);
        arrayList.add(w1.o.f3897v);
        arrayList.add(w1.o.f3899x);
        arrayList.add(w1.o.f3900y);
        arrayList.add(w1.o.B);
        arrayList.add(w1.o.f3898w);
        arrayList.add(w1.o.f3877b);
        arrayList.add(w1.c.f3825b);
        arrayList.add(w1.o.A);
        arrayList.add(w1.l.f3865b);
        arrayList.add(w1.k.f3863b);
        arrayList.add(w1.o.f3901z);
        arrayList.add(w1.a.f3819c);
        arrayList.add(w1.o.f3876a);
        arrayList.add(new w1.b(gVar));
        arrayList.add(new w1.g(gVar, false));
        w1.d dVar = new w1.d(gVar);
        this.f3538d = dVar;
        arrayList.add(dVar);
        arrayList.add(w1.o.E);
        arrayList.add(new w1.j(gVar, cVar, oVar, dVar));
        this.f3539e = Collections.unmodifiableList(arrayList);
    }

    public static void a(double d4) {
        if (Double.isNaN(d4) || Double.isInfinite(d4)) {
            throw new IllegalArgumentException(d4 + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    public <T> T b(a2.a aVar, Type type) {
        boolean z3 = aVar.f58b;
        boolean z4 = true;
        aVar.f58b = true;
        try {
            try {
                try {
                    aVar.W();
                    z4 = false;
                    T tA = e(new z1.a<>(type)).a(aVar);
                    aVar.f58b = z3;
                    return tA;
                } catch (IOException e4) {
                    throw new v(e4);
                } catch (AssertionError e5) {
                    AssertionError assertionError = new AssertionError("AssertionError (GSON 2.8.6): " + e5.getMessage());
                    assertionError.initCause(e5);
                    throw assertionError;
                }
            } catch (EOFException e6) {
                if (!z4) {
                    throw new v(e6);
                }
                aVar.f58b = z3;
                return null;
            } catch (IllegalStateException e7) {
                throw new v(e7);
            }
        } catch (Throwable th) {
            aVar.f58b = z3;
            throw th;
        }
    }

    public <T> T c(String str, Type type) {
        if (str == null) {
            return null;
        }
        a2.a aVar = new a2.a(new StringReader(str));
        aVar.f58b = false;
        T t3 = (T) b(aVar, type);
        if (t3 != null) {
            try {
                if (aVar.W() != a2.b.END_DOCUMENT) {
                    throw new o("JSON document was not fully consumed.");
                }
            } catch (a2.d e4) {
                throw new v(e4);
            } catch (IOException e5) {
                throw new o(e5);
            }
        }
        return t3;
    }

    public <T> T d(n nVar, Class<T> cls) {
        return (T) q0.a.B(cls).cast(nVar == null ? null : b(new w1.e(nVar), cls));
    }

    public <T> x<T> e(z1.a<T> aVar) {
        x<T> xVar = (x) this.f3536b.get(aVar);
        if (xVar != null) {
            return xVar;
        }
        Map<z1.a<?>, a<?>> map = this.f3535a.get();
        boolean z3 = false;
        if (map == null) {
            map = new HashMap<>();
            this.f3535a.set(map);
            z3 = true;
        }
        a<?> aVar2 = map.get(aVar);
        if (aVar2 != null) {
            return aVar2;
        }
        try {
            a<?> aVar3 = new a<>();
            map.put(aVar, aVar3);
            Iterator<y> it = this.f3539e.iterator();
            while (it.hasNext()) {
                x<T> xVarA = it.next().a(this, aVar);
                if (xVarA != null) {
                    if (aVar3.f3543a != null) {
                        throw new AssertionError();
                    }
                    aVar3.f3543a = xVarA;
                    this.f3536b.put(aVar, xVarA);
                    return xVarA;
                }
            }
            throw new IllegalArgumentException("GSON (2.8.6) cannot handle " + aVar);
        } finally {
            map.remove(aVar);
            if (z3) {
                this.f3535a.remove();
            }
        }
    }

    public <T> x<T> f(y yVar, z1.a<T> aVar) {
        if (!this.f3539e.contains(yVar)) {
            yVar = this.f3538d;
        }
        boolean z3 = false;
        for (y yVar2 : this.f3539e) {
            if (z3) {
                x<T> xVarA = yVar2.a(this, aVar);
                if (xVarA != null) {
                    return xVarA;
                }
            } else if (yVar2 == yVar) {
                z3 = true;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize " + aVar);
    }

    public a2.c g(Writer writer) {
        a2.c cVar = new a2.c(writer);
        cVar.f93i = false;
        return cVar;
    }

    public String h(Object obj) {
        if (obj == null) {
            n nVar = p.f3545a;
            StringWriter stringWriter = new StringWriter();
            try {
                j(nVar, g(stringWriter));
                return stringWriter.toString();
            } catch (IOException e4) {
                throw new o(e4);
            }
        }
        Type type = obj.getClass();
        StringWriter stringWriter2 = new StringWriter();
        try {
            i(obj, type, g(stringWriter2));
            return stringWriter2.toString();
        } catch (IOException e5) {
            throw new o(e5);
        }
    }

    public void i(Object obj, Type type, a2.c cVar) {
        x xVarE = e(new z1.a(type));
        boolean z3 = cVar.f90f;
        cVar.f90f = true;
        boolean z4 = cVar.f91g;
        cVar.f91g = this.f3540f;
        boolean z5 = cVar.f93i;
        cVar.f93i = false;
        try {
            try {
                try {
                    xVarE.b(cVar, obj);
                } catch (IOException e4) {
                    throw new o(e4);
                }
            } catch (AssertionError e5) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON 2.8.6): " + e5.getMessage());
                assertionError.initCause(e5);
                throw assertionError;
            }
        } finally {
            cVar.f90f = z3;
            cVar.f91g = z4;
            cVar.f93i = z5;
        }
    }

    public void j(n nVar, a2.c cVar) {
        boolean z3 = cVar.f90f;
        cVar.f90f = true;
        boolean z4 = cVar.f91g;
        cVar.f91g = this.f3540f;
        boolean z5 = cVar.f93i;
        cVar.f93i = false;
        try {
            try {
                ((o.u) w1.o.C).b(cVar, nVar);
            } catch (IOException e4) {
                throw new o(e4);
            } catch (AssertionError e5) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON 2.8.6): " + e5.getMessage());
                assertionError.initCause(e5);
                throw assertionError;
            }
        } finally {
            cVar.f90f = z3;
            cVar.f91g = z4;
            cVar.f93i = z5;
        }
    }

    public n k(Object obj) {
        if (obj == null) {
            return p.f3545a;
        }
        Type type = obj.getClass();
        w1.f fVar = new w1.f();
        i(obj, type, fVar);
        return fVar.U();
    }

    public String toString() {
        return "{serializeNulls:false,factories:" + this.f3539e + ",instanceCreators:" + this.f3537c + "}";
    }
}
