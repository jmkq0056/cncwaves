package w1;

import java.io.IOException;
import java.util.Map;
import t1.v;
import t1.x;
import t1.y;
import v1.t;

/* JADX INFO: loaded from: classes2.dex */
public final class j implements y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final v1.g f3853a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final t1.d f3854b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final v1.o f3855c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final d f3856d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final y1.b f3857e = y1.b.f4009a;

    public static final class a<T> extends x<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final t<T> f3858a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Map<String, b> f3859b;

        public a(t<T> tVar, Map<String, b> map) {
            this.f3858a = tVar;
            this.f3859b = map;
        }

        @Override // t1.x
        public T a(a2.a aVar) throws IOException {
            if (aVar.W() == a2.b.NULL) {
                aVar.S();
                return null;
            }
            T tA = this.f3858a.a();
            try {
                aVar.C();
                while (aVar.J()) {
                    b bVar = this.f3859b.get(aVar.Q());
                    if (bVar == null || !bVar.f3862c) {
                        aVar.b0();
                    } else {
                        bVar.a(aVar, tA);
                    }
                }
                aVar.G();
                return tA;
            } catch (IllegalAccessException e4) {
                throw new AssertionError(e4);
            } catch (IllegalStateException e5) {
                throw new v(e5);
            }
        }

        @Override // t1.x
        public void b(a2.c cVar, T t3) throws IOException {
            if (t3 == null) {
                cVar.J();
                return;
            }
            cVar.D();
            try {
                for (b bVar : this.f3859b.values()) {
                    if (bVar.c(t3)) {
                        cVar.H(bVar.f3860a);
                        bVar.b(cVar, t3);
                    }
                }
                cVar.G();
            } catch (IllegalAccessException e4) {
                throw new AssertionError(e4);
            }
        }
    }

    public static abstract class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f3860a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f3861b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f3862c;

        public b(String str, boolean z3, boolean z4) {
            this.f3860a = str;
            this.f3861b = z3;
            this.f3862c = z4;
        }

        public abstract void a(a2.a aVar, Object obj);

        public abstract void b(a2.c cVar, Object obj);

        public abstract boolean c(Object obj);
    }

    public j(v1.g gVar, t1.d dVar, v1.o oVar, d dVar2) {
        this.f3853a = gVar;
        this.f3854b = dVar;
        this.f3855c = oVar;
        this.f3856d = dVar2;
    }

    /*  JADX ERROR: NullPointerException in pass: ConstructorVisitor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.RegisterArg.sameRegAndSVar(jadx.core.dex.instructions.args.InsnArg)" because "resultArg" is null
        	at jadx.core.dex.visitors.MoveInlineVisitor.processMove(MoveInlineVisitor.java:52)
        	at jadx.core.dex.visitors.MoveInlineVisitor.moveInline(MoveInlineVisitor.java:41)
        	at jadx.core.dex.visitors.ConstructorVisitor.visit(ConstructorVisitor.java:43)
        */
    @Override // t1.y
    public <T> t1.x<T> a(
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r35v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:224)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:169)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:407)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:337)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:303)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
        */
    /*  JADX ERROR: NullPointerException in pass: ConstructorVisitor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.RegisterArg.sameRegAndSVar(jadx.core.dex.instructions.args.InsnArg)" because "resultArg" is null
        	at jadx.core.dex.visitors.MoveInlineVisitor.processMove(MoveInlineVisitor.java:52)
        	at jadx.core.dex.visitors.MoveInlineVisitor.moveInline(MoveInlineVisitor.java:41)
        */

    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean b(java.lang.reflect.Field r6, boolean r7) {
        /*
            r5 = this;
            v1.o r0 = r5.f3855c
            java.lang.Class r1 = r6.getType()
            boolean r2 = r0.c(r1)
            r3 = 1
            r4 = 0
            if (r2 != 0) goto L17
            boolean r1 = r0.b(r1, r7)
            if (r1 == 0) goto L15
            goto L17
        L15:
            r1 = 0
            goto L18
        L17:
            r1 = 1
        L18:
            if (r1 != 0) goto L63
            int r1 = r6.getModifiers()
            r1 = r1 & 136(0x88, float:1.9E-43)
            if (r1 == 0) goto L23
            goto L5d
        L23:
            boolean r1 = r6.isSynthetic()
            if (r1 == 0) goto L2a
            goto L5d
        L2a:
            java.lang.Class r1 = r6.getType()
            boolean r1 = r0.c(r1)
            if (r1 == 0) goto L35
            goto L5d
        L35:
            if (r7 == 0) goto L3a
            java.util.List<t1.a> r7 = r0.f3676a
            goto L3c
        L3a:
            java.util.List<t1.a> r7 = r0.f3677b
        L3c:
            boolean r0 = r7.isEmpty()
            if (r0 != 0) goto L5f
            t1.b r0 = new t1.b
            r0.<init>(r6)
            java.util.Iterator r6 = r7.iterator()
        L4b:
            boolean r7 = r6.hasNext()
            if (r7 == 0) goto L5f
            java.lang.Object r7 = r6.next()
            t1.a r7 = (t1.a) r7
            boolean r7 = r7.b(r0)
            if (r7 == 0) goto L4b
        L5d:
            r6 = 1
            goto L60
        L5f:
            r6 = 0
        L60:
            if (r6 != 0) goto L63
            goto L64
        L63:
            r3 = 0
        L64:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: w1.j.b(java.lang.reflect.Field, boolean):boolean");
    }
}
