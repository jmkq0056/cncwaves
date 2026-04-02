package w1;

import com.google.zxing.oned.rss.expanded.decoders.DecodedChar;
import java.io.Reader;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import v1.s;

/* JADX INFO: loaded from: classes2.dex */
public final class e extends a2.a {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final Reader f3828u = new a();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final Object f3829v = new Object();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Object[] f3830q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f3831r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public String[] f3832s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int[] f3833t;

    public class a extends Reader {
        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            throw new AssertionError();
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i4, int i5) {
            throw new AssertionError();
        }
    }

    public e(t1.n nVar) {
        super(f3828u);
        this.f3830q = new Object[32];
        this.f3831r = 0;
        this.f3832s = new String[32];
        this.f3833t = new int[32];
        g0(nVar);
    }

    private String L() {
        StringBuilder sbA = android.support.v4.media.f.a(" at path ");
        sbA.append(I());
        return sbA.toString();
    }

    @Override // a2.a
    public void B() {
        d0(a2.b.BEGIN_ARRAY);
        g0(((t1.k) e0()).iterator());
        this.f3833t[this.f3831r - 1] = 0;
    }

    @Override // a2.a
    public void C() {
        d0(a2.b.BEGIN_OBJECT);
        g0(new s.b.a((s.b) ((t1.q) e0()).f3546a.entrySet()));
    }

    @Override // a2.a
    public void F() {
        d0(a2.b.END_ARRAY);
        f0();
        f0();
        int i4 = this.f3831r;
        if (i4 > 0) {
            int[] iArr = this.f3833t;
            int i5 = i4 - 1;
            iArr[i5] = iArr[i5] + 1;
        }
    }

    @Override // a2.a
    public void G() {
        d0(a2.b.END_OBJECT);
        f0();
        f0();
        int i4 = this.f3831r;
        if (i4 > 0) {
            int[] iArr = this.f3833t;
            int i5 = i4 - 1;
            iArr[i5] = iArr[i5] + 1;
        }
    }

    @Override // a2.a
    public String I() {
        StringBuilder sb = new StringBuilder();
        sb.append(DecodedChar.FNC1);
        int i4 = 0;
        while (i4 < this.f3831r) {
            Object[] objArr = this.f3830q;
            if (objArr[i4] instanceof t1.k) {
                i4++;
                if (objArr[i4] instanceof Iterator) {
                    sb.append('[');
                    sb.append(this.f3833t[i4]);
                    sb.append(']');
                }
            } else if (objArr[i4] instanceof t1.q) {
                i4++;
                if (objArr[i4] instanceof Iterator) {
                    sb.append('.');
                    String[] strArr = this.f3832s;
                    if (strArr[i4] != null) {
                        sb.append(strArr[i4]);
                    }
                }
            }
            i4++;
        }
        return sb.toString();
    }

    @Override // a2.a
    public boolean J() {
        a2.b bVarW = W();
        return (bVarW == a2.b.END_OBJECT || bVarW == a2.b.END_ARRAY) ? false : true;
    }

    @Override // a2.a
    public boolean M() {
        d0(a2.b.BOOLEAN);
        boolean zB = ((t1.s) f0()).b();
        int i4 = this.f3831r;
        if (i4 > 0) {
            int[] iArr = this.f3833t;
            int i5 = i4 - 1;
            iArr[i5] = iArr[i5] + 1;
        }
        return zB;
    }

    @Override // a2.a
    public double N() {
        a2.b bVarW = W();
        a2.b bVar = a2.b.NUMBER;
        if (bVarW != bVar && bVarW != a2.b.STRING) {
            throw new IllegalStateException("Expected " + bVar + " but was " + bVarW + L());
        }
        t1.s sVar = (t1.s) e0();
        double dDoubleValue = sVar.f3547a instanceof Number ? sVar.c().doubleValue() : Double.parseDouble(sVar.d());
        if (!this.f58b && (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue))) {
            throw new NumberFormatException("JSON forbids NaN and infinities: " + dDoubleValue);
        }
        f0();
        int i4 = this.f3831r;
        if (i4 > 0) {
            int[] iArr = this.f3833t;
            int i5 = i4 - 1;
            iArr[i5] = iArr[i5] + 1;
        }
        return dDoubleValue;
    }

    @Override // a2.a
    public int O() {
        a2.b bVarW = W();
        a2.b bVar = a2.b.NUMBER;
        if (bVarW != bVar && bVarW != a2.b.STRING) {
            throw new IllegalStateException("Expected " + bVar + " but was " + bVarW + L());
        }
        t1.s sVar = (t1.s) e0();
        int iIntValue = sVar.f3547a instanceof Number ? sVar.c().intValue() : Integer.parseInt(sVar.d());
        f0();
        int i4 = this.f3831r;
        if (i4 > 0) {
            int[] iArr = this.f3833t;
            int i5 = i4 - 1;
            iArr[i5] = iArr[i5] + 1;
        }
        return iIntValue;
    }

    @Override // a2.a
    public long P() {
        a2.b bVarW = W();
        a2.b bVar = a2.b.NUMBER;
        if (bVarW != bVar && bVarW != a2.b.STRING) {
            throw new IllegalStateException("Expected " + bVar + " but was " + bVarW + L());
        }
        t1.s sVar = (t1.s) e0();
        long jLongValue = sVar.f3547a instanceof Number ? sVar.c().longValue() : Long.parseLong(sVar.d());
        f0();
        int i4 = this.f3831r;
        if (i4 > 0) {
            int[] iArr = this.f3833t;
            int i5 = i4 - 1;
            iArr[i5] = iArr[i5] + 1;
        }
        return jLongValue;
    }

    @Override // a2.a
    public String Q() {
        d0(a2.b.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) e0()).next();
        String str = (String) entry.getKey();
        this.f3832s[this.f3831r - 1] = str;
        g0(entry.getValue());
        return str;
    }

    @Override // a2.a
    public void S() {
        d0(a2.b.NULL);
        f0();
        int i4 = this.f3831r;
        if (i4 > 0) {
            int[] iArr = this.f3833t;
            int i5 = i4 - 1;
            iArr[i5] = iArr[i5] + 1;
        }
    }

    @Override // a2.a
    public String U() {
        a2.b bVarW = W();
        a2.b bVar = a2.b.STRING;
        if (bVarW == bVar || bVarW == a2.b.NUMBER) {
            String strD = ((t1.s) f0()).d();
            int i4 = this.f3831r;
            if (i4 > 0) {
                int[] iArr = this.f3833t;
                int i5 = i4 - 1;
                iArr[i5] = iArr[i5] + 1;
            }
            return strD;
        }
        throw new IllegalStateException("Expected " + bVar + " but was " + bVarW + L());
    }

    @Override // a2.a
    public a2.b W() {
        if (this.f3831r == 0) {
            return a2.b.END_DOCUMENT;
        }
        Object objE0 = e0();
        if (objE0 instanceof Iterator) {
            boolean z3 = this.f3830q[this.f3831r - 2] instanceof t1.q;
            Iterator it = (Iterator) objE0;
            if (!it.hasNext()) {
                return z3 ? a2.b.END_OBJECT : a2.b.END_ARRAY;
            }
            if (z3) {
                return a2.b.NAME;
            }
            g0(it.next());
            return W();
        }
        if (objE0 instanceof t1.q) {
            return a2.b.BEGIN_OBJECT;
        }
        if (objE0 instanceof t1.k) {
            return a2.b.BEGIN_ARRAY;
        }
        if (!(objE0 instanceof t1.s)) {
            if (objE0 instanceof t1.p) {
                return a2.b.NULL;
            }
            if (objE0 == f3829v) {
                throw new IllegalStateException("JsonReader is closed");
            }
            throw new AssertionError();
        }
        Object obj = ((t1.s) objE0).f3547a;
        if (obj instanceof String) {
            return a2.b.STRING;
        }
        if (obj instanceof Boolean) {
            return a2.b.BOOLEAN;
        }
        if (obj instanceof Number) {
            return a2.b.NUMBER;
        }
        throw new AssertionError();
    }

    @Override // a2.a
    public void b0() {
        if (W() == a2.b.NAME) {
            Q();
            this.f3832s[this.f3831r - 2] = "null";
        } else {
            f0();
            int i4 = this.f3831r;
            if (i4 > 0) {
                this.f3832s[i4 - 1] = "null";
            }
        }
        int i5 = this.f3831r;
        if (i5 > 0) {
            int[] iArr = this.f3833t;
            int i6 = i5 - 1;
            iArr[i6] = iArr[i6] + 1;
        }
    }

    @Override // a2.a, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f3830q = new Object[]{f3829v};
        this.f3831r = 1;
    }

    public final void d0(a2.b bVar) {
        if (W() == bVar) {
            return;
        }
        throw new IllegalStateException("Expected " + bVar + " but was " + W() + L());
    }

    public final Object e0() {
        return this.f3830q[this.f3831r - 1];
    }

    public final Object f0() {
        Object[] objArr = this.f3830q;
        int i4 = this.f3831r - 1;
        this.f3831r = i4;
        Object obj = objArr[i4];
        objArr[i4] = null;
        return obj;
    }

    public final void g0(Object obj) {
        int i4 = this.f3831r;
        Object[] objArr = this.f3830q;
        if (i4 == objArr.length) {
            int i5 = i4 * 2;
            this.f3830q = Arrays.copyOf(objArr, i5);
            this.f3833t = Arrays.copyOf(this.f3833t, i5);
            this.f3832s = (String[]) Arrays.copyOf(this.f3832s, i5);
        }
        Object[] objArr2 = this.f3830q;
        int i6 = this.f3831r;
        this.f3831r = i6 + 1;
        objArr2[i6] = obj;
    }

    @Override // a2.a
    public String toString() {
        return e.class.getSimpleName();
    }
}
