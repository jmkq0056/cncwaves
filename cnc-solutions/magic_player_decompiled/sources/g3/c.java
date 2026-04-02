package g3;

import android.os.Looper;
import g3.h;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.logging.Level;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static volatile c f1735q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final d f1736r = new d();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final Map<Class<?>, List<Class<?>>> f1737s = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map<Class<?>, CopyOnWriteArrayList<o>> f1738a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map<Object, List<Class<?>>> f1739b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map<Class<?>, Object> f1740c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ThreadLocal<C0024c> f1741d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final h f1742e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final k f1743f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final g3.b f1744g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final g3.a f1745h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final n f1746i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ExecutorService f1747j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f1748k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f1749l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final boolean f1750m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final boolean f1751n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final boolean f1752o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final g f1753p;

    public class a extends ThreadLocal<C0024c> {
        public a(c cVar) {
        }

        @Override // java.lang.ThreadLocal
        public C0024c initialValue() {
            return new C0024c();
        }
    }

    public static /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f1754a;

        static {
            int[] iArr = new int[ThreadMode.values().length];
            f1754a = iArr;
            try {
                iArr[ThreadMode.POSTING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1754a[ThreadMode.MAIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1754a[ThreadMode.MAIN_ORDERED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1754a[ThreadMode.BACKGROUND.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1754a[ThreadMode.ASYNC.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: renamed from: g3.c$c, reason: collision with other inner class name */
    public static final class C0024c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List<Object> f1755a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f1756b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f1757c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Object f1758d;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public c() {
        /*
            r5 = this;
            g3.d r0 = g3.c.f1736r
            r5.<init>()
            g3.c$a r1 = new g3.c$a
            r1.<init>(r5)
            r5.f1741d = r1
            java.util.Objects.requireNonNull(r0)
            boolean r1 = h3.a.f1865a
            r2 = 0
            if (r1 == 0) goto L24
            android.os.Looper r1 = android.os.Looper.getMainLooper()     // Catch: java.lang.RuntimeException -> L19
            goto L1a
        L19:
            r1 = r2
        L1a:
            if (r1 == 0) goto L24
            h3.a r1 = new h3.a
            java.lang.String r3 = "EventBus"
            r1.<init>(r3)
            goto L29
        L24:
            g3.g$a r1 = new g3.g$a
            r1.<init>()
        L29:
            r5.f1753p = r1
            java.util.HashMap r1 = new java.util.HashMap
            r1.<init>()
            r5.f1738a = r1
            java.util.HashMap r1 = new java.util.HashMap
            r1.<init>()
            r5.f1739b = r1
            java.util.concurrent.ConcurrentHashMap r1 = new java.util.concurrent.ConcurrentHashMap
            r1.<init>()
            r5.f1740c = r1
            boolean r1 = h3.a.f1865a
            if (r1 == 0) goto L53
            android.os.Looper r1 = android.os.Looper.getMainLooper()     // Catch: java.lang.RuntimeException -> L49
            goto L4a
        L49:
            r1 = r2
        L4a:
            if (r1 != 0) goto L4d
            goto L53
        L4d:
            g3.h$a r3 = new g3.h$a
            r3.<init>(r1)
            goto L54
        L53:
            r3 = r2
        L54:
            r5.f1742e = r3
            if (r3 == 0) goto L62
            g3.f r1 = new g3.f
            android.os.Looper r3 = r3.f1765a
            r4 = 10
            r1.<init>(r5, r3, r4)
            goto L63
        L62:
            r1 = r2
        L63:
            r5.f1743f = r1
            g3.b r1 = new g3.b
            r1.<init>(r5)
            r5.f1744g = r1
            g3.a r1 = new g3.a
            r1.<init>(r5)
            r5.f1745h = r1
            r1 = 0
            g3.n r3 = new g3.n
            r3.<init>(r2, r1, r1)
            r5.f1746i = r3
            r1 = 1
            r5.f1748k = r1
            r5.f1749l = r1
            r5.f1750m = r1
            r5.f1751n = r1
            r5.f1752o = r1
            java.util.concurrent.ExecutorService r0 = r0.f1760a
            r5.f1747j = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: g3.c.<init>():void");
    }

    public static void a(List<Class<?>> list, Class<?>[] clsArr) {
        for (Class<?> cls : clsArr) {
            if (!list.contains(cls)) {
                list.add(cls);
                a(list, cls.getInterfaces());
            }
        }
    }

    public static c b() {
        c cVar = f1735q;
        if (cVar == null) {
            synchronized (c.class) {
                cVar = f1735q;
                if (cVar == null) {
                    cVar = new c();
                    f1735q = cVar;
                }
            }
        }
        return cVar;
    }

    public void c(j jVar) {
        Object obj = jVar.f1769a;
        o oVar = jVar.f1770b;
        jVar.f1769a = null;
        jVar.f1770b = null;
        jVar.f1771c = null;
        List<j> list = j.f1768d;
        synchronized (list) {
            if (((ArrayList) list).size() < 10000) {
                ((ArrayList) list).add(jVar);
            }
        }
        if (oVar.f1792c) {
            d(oVar, obj);
        }
    }

    public void d(o oVar, Object obj) {
        try {
            oVar.f1791b.f1775a.invoke(oVar.f1790a, obj);
        } catch (IllegalAccessException e4) {
            throw new IllegalStateException("Unexpected exception", e4);
        } catch (InvocationTargetException e5) {
            Throwable cause = e5.getCause();
            if (!(obj instanceof l)) {
                if (this.f1748k) {
                    g gVar = this.f1753p;
                    Level level = Level.SEVERE;
                    StringBuilder sbA = android.support.v4.media.f.a("Could not dispatch event: ");
                    sbA.append(obj.getClass());
                    sbA.append(" to subscribing class ");
                    sbA.append(oVar.f1790a.getClass());
                    gVar.b(level, sbA.toString(), cause);
                }
                if (this.f1750m) {
                    f(new l(this, cause, obj, oVar.f1790a));
                    return;
                }
                return;
            }
            if (this.f1748k) {
                g gVar2 = this.f1753p;
                Level level2 = Level.SEVERE;
                StringBuilder sbA2 = android.support.v4.media.f.a("SubscriberExceptionEvent subscriber ");
                sbA2.append(oVar.f1790a.getClass());
                sbA2.append(" threw an exception");
                gVar2.b(level2, sbA2.toString(), cause);
                l lVar = (l) obj;
                g gVar3 = this.f1753p;
                StringBuilder sbA3 = android.support.v4.media.f.a("Initial event ");
                sbA3.append(lVar.f1773b);
                sbA3.append(" caused exception in ");
                sbA3.append(lVar.f1774c);
                gVar3.b(level2, sbA3.toString(), lVar.f1772a);
            }
        }
    }

    public final boolean e() {
        h hVar = this.f1742e;
        if (hVar != null) {
            if (!(((h.a) hVar).f1765a == Looper.myLooper())) {
                return false;
            }
        }
        return true;
    }

    public void f(Object obj) {
        C0024c c0024c = this.f1741d.get();
        List<Object> list = c0024c.f1755a;
        list.add(obj);
        if (c0024c.f1756b) {
            return;
        }
        c0024c.f1757c = e();
        c0024c.f1756b = true;
        while (true) {
            try {
                if (list.isEmpty()) {
                    return;
                } else {
                    g(list.remove(0), c0024c);
                }
            } finally {
                c0024c.f1756b = false;
                c0024c.f1757c = false;
            }
        }
    }

    public final void g(Object obj, C0024c c0024c) {
        boolean zH;
        List list;
        Class<?> cls = obj.getClass();
        if (this.f1752o) {
            Map<Class<?>, List<Class<?>>> map = f1737s;
            synchronized (map) {
                List list2 = (List) ((HashMap) map).get(cls);
                list = list2;
                if (list2 == null) {
                    ArrayList arrayList = new ArrayList();
                    for (Class<?> superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
                        arrayList.add(superclass);
                        a(arrayList, superclass.getInterfaces());
                    }
                    ((HashMap) f1737s).put(cls, arrayList);
                    list = arrayList;
                }
            }
            int size = list.size();
            zH = false;
            for (int i4 = 0; i4 < size; i4++) {
                zH |= h(obj, c0024c, (Class) list.get(i4));
            }
        } else {
            zH = h(obj, c0024c, cls);
        }
        if (zH) {
            return;
        }
        if (this.f1749l) {
            this.f1753p.a(Level.FINE, "No subscribers registered for event " + cls);
        }
        if (!this.f1751n || cls == i.class || cls == l.class) {
            return;
        }
        f(new i(this, obj));
    }

    public final boolean h(Object obj, C0024c c0024c, Class<?> cls) {
        CopyOnWriteArrayList<o> copyOnWriteArrayList;
        synchronized (this) {
            copyOnWriteArrayList = this.f1738a.get(cls);
        }
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        for (o oVar : copyOnWriteArrayList) {
            c0024c.f1758d = obj;
            i(oVar, obj, c0024c.f1757c);
        }
        return true;
    }

    public final void i(o oVar, Object obj, boolean z3) {
        int i4 = b.f1754a[oVar.f1791b.f1776b.ordinal()];
        if (i4 == 1) {
            d(oVar, obj);
            return;
        }
        if (i4 == 2) {
            if (z3) {
                d(oVar, obj);
                return;
            } else {
                this.f1743f.a(oVar, obj);
                return;
            }
        }
        if (i4 == 3) {
            k kVar = this.f1743f;
            if (kVar != null) {
                kVar.a(oVar, obj);
                return;
            } else {
                d(oVar, obj);
                return;
            }
        }
        if (i4 == 4) {
            if (z3) {
                this.f1744g.a(oVar, obj);
                return;
            } else {
                d(oVar, obj);
                return;
            }
        }
        if (i4 == 5) {
            this.f1745h.a(oVar, obj);
        } else {
            StringBuilder sbA = android.support.v4.media.f.a("Unknown thread mode: ");
            sbA.append(oVar.f1791b.f1776b);
            throw new IllegalStateException(sbA.toString());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void j(java.lang.Object r12) {
        /*
            r11 = this;
            java.lang.Class r0 = r12.getClass()
            g3.n r1 = r11.f1746i
            java.util.Objects.requireNonNull(r1)
            java.util.Map<java.lang.Class<?>, java.util.List<g3.m>> r2 = g3.n.f1781a
            java.util.concurrent.ConcurrentHashMap r2 = (java.util.concurrent.ConcurrentHashMap) r2
            java.lang.Object r2 = r2.get(r0)
            java.util.List r2 = (java.util.List) r2
            if (r2 == 0) goto L16
            goto L7b
        L16:
            g3.n$a r2 = r1.c()
            r2.f1787e = r0
            r3 = 0
            r2.f1788f = r3
            r4 = 0
            r2.f1789g = r4
        L22:
            java.lang.Class<?> r5 = r2.f1787e
            if (r5 == 0) goto L67
            i3.a r5 = r2.f1789g
            if (r5 == 0) goto L3f
            i3.a r5 = r5.c()
            if (r5 == 0) goto L3f
            i3.a r5 = r2.f1789g
            i3.a r5 = r5.c()
            java.lang.Class<?> r6 = r2.f1787e
            java.lang.Class r7 = r5.b()
            if (r6 != r7) goto L3f
            goto L40
        L3f:
            r5 = r4
        L40:
            r2.f1789g = r5
            if (r5 == 0) goto L60
            g3.m[] r5 = r5.a()
            int r6 = r5.length
            r7 = 0
        L4a:
            if (r7 >= r6) goto L63
            r8 = r5[r7]
            java.lang.reflect.Method r9 = r8.f1775a
            java.lang.Class<?> r10 = r8.f1777c
            boolean r9 = r2.a(r9, r10)
            if (r9 == 0) goto L5d
            java.util.List<g3.m> r9 = r2.f1783a
            r9.add(r8)
        L5d:
            int r7 = r7 + 1
            goto L4a
        L60:
            r1.a(r2)
        L63:
            r2.c()
            goto L22
        L67:
            java.util.List r2 = r1.b(r2)
            r1 = r2
            java.util.ArrayList r1 = (java.util.ArrayList) r1
            boolean r1 = r1.isEmpty()
            if (r1 != 0) goto L95
            java.util.Map<java.lang.Class<?>, java.util.List<g3.m>> r1 = g3.n.f1781a
            java.util.concurrent.ConcurrentHashMap r1 = (java.util.concurrent.ConcurrentHashMap) r1
            r1.put(r0, r2)
        L7b:
            monitor-enter(r11)
            java.util.Iterator r0 = r2.iterator()     // Catch: java.lang.Throwable -> L92
        L80:
            boolean r1 = r0.hasNext()     // Catch: java.lang.Throwable -> L92
            if (r1 == 0) goto L90
            java.lang.Object r1 = r0.next()     // Catch: java.lang.Throwable -> L92
            g3.m r1 = (g3.m) r1     // Catch: java.lang.Throwable -> L92
            r11.k(r12, r1)     // Catch: java.lang.Throwable -> L92
            goto L80
        L90:
            monitor-exit(r11)     // Catch: java.lang.Throwable -> L92
            return
        L92:
            r12 = move-exception
            monitor-exit(r11)     // Catch: java.lang.Throwable -> L92
            throw r12
        L95:
            g3.e r12 = new g3.e
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Subscriber "
            r1.append(r2)
            r1.append(r0)
            java.lang.String r0 = " and its super classes have no public methods with the @Subscribe annotation"
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            r12.<init>(r0)
            goto Lb2
        Lb1:
            throw r12
        Lb2:
            goto Lb1
        */
        throw new UnsupportedOperationException("Method not decompiled: g3.c.j(java.lang.Object):void");
    }

    public final void k(Object obj, m mVar) {
        Object value;
        Class<?> cls = mVar.f1777c;
        o oVar = new o(obj, mVar);
        CopyOnWriteArrayList<o> copyOnWriteArrayList = this.f1738a.get(cls);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList<>();
            this.f1738a.put(cls, copyOnWriteArrayList);
        } else if (copyOnWriteArrayList.contains(oVar)) {
            StringBuilder sbA = android.support.v4.media.f.a("Subscriber ");
            sbA.append(obj.getClass());
            sbA.append(" already registered to event ");
            sbA.append(cls);
            throw new e(sbA.toString());
        }
        int size = copyOnWriteArrayList.size();
        for (int i4 = 0; i4 <= size; i4++) {
            if (i4 == size || mVar.f1778d > copyOnWriteArrayList.get(i4).f1791b.f1778d) {
                copyOnWriteArrayList.add(i4, oVar);
                break;
            }
        }
        List<Class<?>> arrayList = this.f1739b.get(obj);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.f1739b.put(obj, arrayList);
        }
        arrayList.add(cls);
        if (mVar.f1779e) {
            if (!this.f1752o) {
                Object obj2 = this.f1740c.get(cls);
                if (obj2 != null) {
                    i(oVar, obj2, e());
                    return;
                }
                return;
            }
            for (Map.Entry<Class<?>, Object> entry : this.f1740c.entrySet()) {
                if (cls.isAssignableFrom(entry.getKey()) && (value = entry.getValue()) != null) {
                    i(oVar, value, e());
                }
            }
        }
    }

    public synchronized void l(Object obj) {
        List<Class<?>> list = this.f1739b.get(obj);
        if (list != null) {
            Iterator<Class<?>> it = list.iterator();
            while (it.hasNext()) {
                CopyOnWriteArrayList<o> copyOnWriteArrayList = this.f1738a.get(it.next());
                if (copyOnWriteArrayList != null) {
                    int size = copyOnWriteArrayList.size();
                    int i4 = 0;
                    while (i4 < size) {
                        o oVar = copyOnWriteArrayList.get(i4);
                        if (oVar.f1790a == obj) {
                            oVar.f1792c = false;
                            copyOnWriteArrayList.remove(i4);
                            i4--;
                            size--;
                        }
                        i4++;
                    }
                }
            }
            this.f1739b.remove(obj);
        } else {
            this.f1753p.a(Level.WARNING, "Subscriber to unregister was not registered before: " + obj.getClass());
        }
    }

    public String toString() {
        StringBuilder sbA = android.support.v4.media.a.a("EventBus[indexCount=", 0, ", eventInheritance=");
        sbA.append(this.f1752o);
        sbA.append("]");
        return sbA.toString();
    }
}
