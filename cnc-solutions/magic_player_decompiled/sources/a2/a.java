package a2;

import android.support.v4.media.f;
import com.google.zxing.oned.rss.expanded.decoders.DecodedChar;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import t1.s;
import v1.q;
import w1.e;

/* JADX INFO: loaded from: classes2.dex */
public class a implements Closeable {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final char[] f56p = ")]}'\n".toCharArray();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Reader f57a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f58b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final char[] f59c = new char[1024];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f60d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f61e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f62f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f63g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f64h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f65i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f66j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f67k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int[] f68l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f69m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String[] f70n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int[] f71o;

    /* JADX INFO: renamed from: a2.a$a, reason: collision with other inner class name */
    public class C0002a extends q {
        public C0002a() {
            super(0);
        }

        @Override // v1.q
        public void b(a aVar) throws IOException {
            if (aVar instanceof e) {
                e eVar = (e) aVar;
                eVar.d0(b.NAME);
                Map.Entry entry = (Map.Entry) ((Iterator) eVar.e0()).next();
                eVar.g0(entry.getValue());
                eVar.g0(new s((String) entry.getKey()));
                return;
            }
            int iE = aVar.f64h;
            if (iE == 0) {
                iE = aVar.E();
            }
            if (iE == 13) {
                aVar.f64h = 9;
                return;
            }
            if (iE == 12) {
                aVar.f64h = 8;
            } else {
                if (iE == 14) {
                    aVar.f64h = 10;
                    return;
                }
                StringBuilder sbA = f.a("Expected a name but was ");
                sbA.append(aVar.W());
                sbA.append(aVar.L());
                throw new IllegalStateException(sbA.toString());
            }
        }
    }

    static {
        q.f3685a = new C0002a();
    }

    public a(Reader reader) {
        int[] iArr = new int[32];
        this.f68l = iArr;
        this.f69m = 0;
        this.f69m = 0 + 1;
        iArr[0] = 6;
        this.f70n = new String[32];
        this.f71o = new int[32];
        Objects.requireNonNull(reader, "in == null");
        this.f57a = reader;
    }

    public void B() throws IOException {
        int iE = this.f64h;
        if (iE == 0) {
            iE = E();
        }
        if (iE == 3) {
            X(1);
            this.f71o[this.f69m - 1] = 0;
            this.f64h = 0;
        } else {
            StringBuilder sbA = f.a("Expected BEGIN_ARRAY but was ");
            sbA.append(W());
            sbA.append(L());
            throw new IllegalStateException(sbA.toString());
        }
    }

    public void C() throws IOException {
        int iE = this.f64h;
        if (iE == 0) {
            iE = E();
        }
        if (iE == 1) {
            X(3);
            this.f64h = 0;
        } else {
            StringBuilder sbA = f.a("Expected BEGIN_OBJECT but was ");
            sbA.append(W());
            sbA.append(L());
            throw new IllegalStateException(sbA.toString());
        }
    }

    public final void D() throws d {
        if (this.f58b) {
            return;
        }
        c0("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:159:0x0205, code lost:
    
        if (K(r6) != false) goto L113;
     */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0174 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0257  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0266 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0267  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int E() throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 795
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: a2.a.E():int");
    }

    public void F() throws IOException {
        int iE = this.f64h;
        if (iE == 0) {
            iE = E();
        }
        if (iE != 4) {
            StringBuilder sbA = f.a("Expected END_ARRAY but was ");
            sbA.append(W());
            sbA.append(L());
            throw new IllegalStateException(sbA.toString());
        }
        int i4 = this.f69m - 1;
        this.f69m = i4;
        int[] iArr = this.f71o;
        int i5 = i4 - 1;
        iArr[i5] = iArr[i5] + 1;
        this.f64h = 0;
    }

    public void G() throws IOException {
        int iE = this.f64h;
        if (iE == 0) {
            iE = E();
        }
        if (iE != 2) {
            StringBuilder sbA = f.a("Expected END_OBJECT but was ");
            sbA.append(W());
            sbA.append(L());
            throw new IllegalStateException(sbA.toString());
        }
        int i4 = this.f69m - 1;
        this.f69m = i4;
        this.f70n[i4] = null;
        int[] iArr = this.f71o;
        int i5 = i4 - 1;
        iArr[i5] = iArr[i5] + 1;
        this.f64h = 0;
    }

    public final boolean H(int i4) throws IOException {
        int i5;
        int i6;
        char[] cArr = this.f59c;
        int i7 = this.f63g;
        int i8 = this.f60d;
        this.f63g = i7 - i8;
        int i9 = this.f61e;
        if (i9 != i8) {
            int i10 = i9 - i8;
            this.f61e = i10;
            System.arraycopy(cArr, i8, cArr, 0, i10);
        } else {
            this.f61e = 0;
        }
        this.f60d = 0;
        do {
            Reader reader = this.f57a;
            int i11 = this.f61e;
            int i12 = reader.read(cArr, i11, cArr.length - i11);
            if (i12 == -1) {
                return false;
            }
            i5 = this.f61e + i12;
            this.f61e = i5;
            if (this.f62f == 0 && (i6 = this.f63g) == 0 && i5 > 0 && cArr[0] == 65279) {
                this.f60d++;
                this.f63g = i6 + 1;
                i4++;
            }
        } while (i5 < i4);
        return true;
    }

    public String I() {
        StringBuilder sb = new StringBuilder();
        sb.append(DecodedChar.FNC1);
        int i4 = this.f69m;
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = this.f68l[i5];
            if (i6 == 1 || i6 == 2) {
                sb.append('[');
                sb.append(this.f71o[i5]);
                sb.append(']');
            } else if (i6 == 3 || i6 == 4 || i6 == 5) {
                sb.append('.');
                String[] strArr = this.f70n;
                if (strArr[i5] != null) {
                    sb.append(strArr[i5]);
                }
            }
        }
        return sb.toString();
    }

    public boolean J() throws IOException {
        int iE = this.f64h;
        if (iE == 0) {
            iE = E();
        }
        return (iE == 2 || iE == 4) ? false : true;
    }

    public final boolean K(char c4) throws d {
        if (c4 == '\t' || c4 == '\n' || c4 == '\f' || c4 == '\r' || c4 == ' ') {
            return false;
        }
        if (c4 != '#') {
            if (c4 == ',') {
                return false;
            }
            if (c4 != '/' && c4 != '=') {
                if (c4 == '{' || c4 == '}' || c4 == ':') {
                    return false;
                }
                if (c4 != ';') {
                    switch (c4) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        D();
        return false;
    }

    public String L() {
        return " at line " + (this.f62f + 1) + " column " + ((this.f60d - this.f63g) + 1) + " path " + I();
    }

    public boolean M() throws IOException {
        int iE = this.f64h;
        if (iE == 0) {
            iE = E();
        }
        if (iE == 5) {
            this.f64h = 0;
            int[] iArr = this.f71o;
            int i4 = this.f69m - 1;
            iArr[i4] = iArr[i4] + 1;
            return true;
        }
        if (iE != 6) {
            StringBuilder sbA = f.a("Expected a boolean but was ");
            sbA.append(W());
            sbA.append(L());
            throw new IllegalStateException(sbA.toString());
        }
        this.f64h = 0;
        int[] iArr2 = this.f71o;
        int i5 = this.f69m - 1;
        iArr2[i5] = iArr2[i5] + 1;
        return false;
    }

    public double N() throws IOException {
        int iE = this.f64h;
        if (iE == 0) {
            iE = E();
        }
        if (iE == 15) {
            this.f64h = 0;
            int[] iArr = this.f71o;
            int i4 = this.f69m - 1;
            iArr[i4] = iArr[i4] + 1;
            return this.f65i;
        }
        if (iE == 16) {
            this.f67k = new String(this.f59c, this.f60d, this.f66j);
            this.f60d += this.f66j;
        } else if (iE == 8 || iE == 9) {
            this.f67k = T(iE == 8 ? '\'' : '\"');
        } else if (iE == 10) {
            this.f67k = V();
        } else if (iE != 11) {
            StringBuilder sbA = f.a("Expected a double but was ");
            sbA.append(W());
            sbA.append(L());
            throw new IllegalStateException(sbA.toString());
        }
        this.f64h = 11;
        double d4 = Double.parseDouble(this.f67k);
        if (!this.f58b && (Double.isNaN(d4) || Double.isInfinite(d4))) {
            throw new d("JSON forbids NaN and infinities: " + d4 + L());
        }
        this.f67k = null;
        this.f64h = 0;
        int[] iArr2 = this.f71o;
        int i5 = this.f69m - 1;
        iArr2[i5] = iArr2[i5] + 1;
        return d4;
    }

    public int O() throws IOException {
        int iE = this.f64h;
        if (iE == 0) {
            iE = E();
        }
        if (iE == 15) {
            long j4 = this.f65i;
            int i4 = (int) j4;
            if (j4 != i4) {
                StringBuilder sbA = f.a("Expected an int but was ");
                sbA.append(this.f65i);
                sbA.append(L());
                throw new NumberFormatException(sbA.toString());
            }
            this.f64h = 0;
            int[] iArr = this.f71o;
            int i5 = this.f69m - 1;
            iArr[i5] = iArr[i5] + 1;
            return i4;
        }
        if (iE == 16) {
            this.f67k = new String(this.f59c, this.f60d, this.f66j);
            this.f60d += this.f66j;
        } else {
            if (iE != 8 && iE != 9 && iE != 10) {
                StringBuilder sbA2 = f.a("Expected an int but was ");
                sbA2.append(W());
                sbA2.append(L());
                throw new IllegalStateException(sbA2.toString());
            }
            if (iE == 10) {
                this.f67k = V();
            } else {
                this.f67k = T(iE == 8 ? '\'' : '\"');
            }
            try {
                int i6 = Integer.parseInt(this.f67k);
                this.f64h = 0;
                int[] iArr2 = this.f71o;
                int i7 = this.f69m - 1;
                iArr2[i7] = iArr2[i7] + 1;
                return i6;
            } catch (NumberFormatException unused) {
            }
        }
        this.f64h = 11;
        double d4 = Double.parseDouble(this.f67k);
        int i8 = (int) d4;
        if (i8 != d4) {
            StringBuilder sbA3 = f.a("Expected an int but was ");
            sbA3.append(this.f67k);
            sbA3.append(L());
            throw new NumberFormatException(sbA3.toString());
        }
        this.f67k = null;
        this.f64h = 0;
        int[] iArr3 = this.f71o;
        int i9 = this.f69m - 1;
        iArr3[i9] = iArr3[i9] + 1;
        return i8;
    }

    public long P() throws IOException {
        int iE = this.f64h;
        if (iE == 0) {
            iE = E();
        }
        if (iE == 15) {
            this.f64h = 0;
            int[] iArr = this.f71o;
            int i4 = this.f69m - 1;
            iArr[i4] = iArr[i4] + 1;
            return this.f65i;
        }
        if (iE == 16) {
            this.f67k = new String(this.f59c, this.f60d, this.f66j);
            this.f60d += this.f66j;
        } else {
            if (iE != 8 && iE != 9 && iE != 10) {
                StringBuilder sbA = f.a("Expected a long but was ");
                sbA.append(W());
                sbA.append(L());
                throw new IllegalStateException(sbA.toString());
            }
            if (iE == 10) {
                this.f67k = V();
            } else {
                this.f67k = T(iE == 8 ? '\'' : '\"');
            }
            try {
                long j4 = Long.parseLong(this.f67k);
                this.f64h = 0;
                int[] iArr2 = this.f71o;
                int i5 = this.f69m - 1;
                iArr2[i5] = iArr2[i5] + 1;
                return j4;
            } catch (NumberFormatException unused) {
            }
        }
        this.f64h = 11;
        double d4 = Double.parseDouble(this.f67k);
        long j5 = (long) d4;
        if (j5 != d4) {
            StringBuilder sbA2 = f.a("Expected a long but was ");
            sbA2.append(this.f67k);
            sbA2.append(L());
            throw new NumberFormatException(sbA2.toString());
        }
        this.f67k = null;
        this.f64h = 0;
        int[] iArr3 = this.f71o;
        int i6 = this.f69m - 1;
        iArr3[i6] = iArr3[i6] + 1;
        return j5;
    }

    public String Q() throws IOException {
        String strT;
        int iE = this.f64h;
        if (iE == 0) {
            iE = E();
        }
        if (iE == 14) {
            strT = V();
        } else if (iE == 12) {
            strT = T('\'');
        } else {
            if (iE != 13) {
                StringBuilder sbA = f.a("Expected a name but was ");
                sbA.append(W());
                sbA.append(L());
                throw new IllegalStateException(sbA.toString());
            }
            strT = T('\"');
        }
        this.f64h = 0;
        this.f70n[this.f69m - 1] = strT;
        return strT;
    }

    public final int R(boolean z3) throws IOException {
        char[] cArr = this.f59c;
        int i4 = this.f60d;
        int i5 = this.f61e;
        while (true) {
            boolean z4 = true;
            if (i4 == i5) {
                this.f60d = i4;
                if (!H(1)) {
                    if (!z3) {
                        return -1;
                    }
                    StringBuilder sbA = f.a("End of input");
                    sbA.append(L());
                    throw new EOFException(sbA.toString());
                }
                i4 = this.f60d;
                i5 = this.f61e;
            }
            int i6 = i4 + 1;
            char c4 = cArr[i4];
            if (c4 == '\n') {
                this.f62f++;
                this.f63g = i6;
            } else if (c4 != ' ' && c4 != '\r' && c4 != '\t') {
                if (c4 == '/') {
                    this.f60d = i6;
                    if (i6 == i5) {
                        this.f60d = i6 - 1;
                        boolean zH = H(2);
                        this.f60d++;
                        if (!zH) {
                            return c4;
                        }
                    }
                    D();
                    int i7 = this.f60d;
                    char c5 = cArr[i7];
                    if (c5 == '*') {
                        this.f60d = i7 + 1;
                        while (true) {
                            if (this.f60d + 2 > this.f61e && !H(2)) {
                                z4 = false;
                                break;
                            }
                            char[] cArr2 = this.f59c;
                            int i8 = this.f60d;
                            if (cArr2[i8] != '\n') {
                                for (int i9 = 0; i9 < 2; i9++) {
                                    if (this.f59c[this.f60d + i9] != "*/".charAt(i9)) {
                                        break;
                                    }
                                }
                                break;
                            }
                            this.f62f++;
                            this.f63g = i8 + 1;
                            this.f60d++;
                        }
                        if (!z4) {
                            c0("Unterminated comment");
                            throw null;
                        }
                        i4 = this.f60d + 2;
                        i5 = this.f61e;
                    } else {
                        if (c5 != '/') {
                            return c4;
                        }
                        this.f60d = i7 + 1;
                        a0();
                        i4 = this.f60d;
                        i5 = this.f61e;
                    }
                } else {
                    if (c4 != '#') {
                        this.f60d = i6;
                        return c4;
                    }
                    this.f60d = i6;
                    D();
                    a0();
                    i4 = this.f60d;
                    i5 = this.f61e;
                }
            }
            i4 = i6;
        }
    }

    public void S() throws IOException {
        int iE = this.f64h;
        if (iE == 0) {
            iE = E();
        }
        if (iE != 7) {
            StringBuilder sbA = f.a("Expected null but was ");
            sbA.append(W());
            sbA.append(L());
            throw new IllegalStateException(sbA.toString());
        }
        this.f64h = 0;
        int[] iArr = this.f71o;
        int i4 = this.f69m - 1;
        iArr[i4] = iArr[i4] + 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x005d, code lost:
    
        if (r2 != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005f, code lost:
    
        r2 = new java.lang.StringBuilder(java.lang.Math.max((r3 - r4) * 2, 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006d, code lost:
    
        r2.append(r0, r4, r3 - r4);
        r10.f60d = r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String T(char r11) throws a2.d {
        /*
            r10 = this;
            char[] r0 = r10.f59c
            r1 = 0
            r2 = r1
        L4:
            int r3 = r10.f60d
            int r4 = r10.f61e
        L8:
            r5 = r4
            r4 = r3
        La:
            r6 = 16
            r7 = 1
            if (r3 >= r5) goto L5d
            int r8 = r3 + 1
            char r3 = r0[r3]
            if (r3 != r11) goto L29
            r10.f60d = r8
            int r8 = r8 - r4
            int r8 = r8 - r7
            if (r2 != 0) goto L21
            java.lang.String r11 = new java.lang.String
            r11.<init>(r0, r4, r8)
            return r11
        L21:
            r2.append(r0, r4, r8)
            java.lang.String r11 = r2.toString()
            return r11
        L29:
            r9 = 92
            if (r3 != r9) goto L50
            r10.f60d = r8
            int r8 = r8 - r4
            int r8 = r8 - r7
            if (r2 != 0) goto L41
            int r2 = r8 + 1
            int r2 = r2 * 2
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            int r2 = java.lang.Math.max(r2, r6)
            r3.<init>(r2)
            r2 = r3
        L41:
            r2.append(r0, r4, r8)
            char r3 = r10.Y()
            r2.append(r3)
            int r3 = r10.f60d
            int r4 = r10.f61e
            goto L8
        L50:
            r6 = 10
            if (r3 != r6) goto L5b
            int r3 = r10.f62f
            int r3 = r3 + r7
            r10.f62f = r3
            r10.f63g = r8
        L5b:
            r3 = r8
            goto La
        L5d:
            if (r2 != 0) goto L6d
            int r2 = r3 - r4
            int r2 = r2 * 2
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            int r2 = java.lang.Math.max(r2, r6)
            r5.<init>(r2)
            r2 = r5
        L6d:
            int r5 = r3 - r4
            r2.append(r0, r4, r5)
            r10.f60d = r3
            boolean r3 = r10.H(r7)
            if (r3 == 0) goto L7b
            goto L4
        L7b:
            java.lang.String r11 = "Unterminated string"
            r10.c0(r11)
            goto L82
        L81:
            throw r1
        L82:
            goto L81
        */
        throw new UnsupportedOperationException("Method not decompiled: a2.a.T(char):java.lang.String");
    }

    public String U() throws IOException {
        String str;
        int iE = this.f64h;
        if (iE == 0) {
            iE = E();
        }
        if (iE == 10) {
            str = V();
        } else if (iE == 8) {
            str = T('\'');
        } else if (iE == 9) {
            str = T('\"');
        } else if (iE == 11) {
            str = this.f67k;
            this.f67k = null;
        } else if (iE == 15) {
            str = Long.toString(this.f65i);
        } else {
            if (iE != 16) {
                StringBuilder sbA = f.a("Expected a string but was ");
                sbA.append(W());
                sbA.append(L());
                throw new IllegalStateException(sbA.toString());
            }
            str = new String(this.f59c, this.f60d, this.f66j);
            this.f60d += this.f66j;
        }
        this.f64h = 0;
        int[] iArr = this.f71o;
        int i4 = this.f69m - 1;
        iArr[i4] = iArr[i4] + 1;
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x004a, code lost:
    
        D();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x0044. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String V() throws a2.d {
        /*
            r6 = this;
            r0 = 0
            r1 = 0
        L2:
            r2 = 0
        L3:
            int r3 = r6.f60d
            int r4 = r3 + r2
            int r5 = r6.f61e
            if (r4 >= r5) goto L4e
            char[] r4 = r6.f59c
            int r3 = r3 + r2
            char r3 = r4[r3]
            r4 = 9
            if (r3 == r4) goto L5c
            r4 = 10
            if (r3 == r4) goto L5c
            r4 = 12
            if (r3 == r4) goto L5c
            r4 = 13
            if (r3 == r4) goto L5c
            r4 = 32
            if (r3 == r4) goto L5c
            r4 = 35
            if (r3 == r4) goto L4a
            r4 = 44
            if (r3 == r4) goto L5c
            r4 = 47
            if (r3 == r4) goto L4a
            r4 = 61
            if (r3 == r4) goto L4a
            r4 = 123(0x7b, float:1.72E-43)
            if (r3 == r4) goto L5c
            r4 = 125(0x7d, float:1.75E-43)
            if (r3 == r4) goto L5c
            r4 = 58
            if (r3 == r4) goto L5c
            r4 = 59
            if (r3 == r4) goto L4a
            switch(r3) {
                case 91: goto L5c;
                case 92: goto L4a;
                case 93: goto L5c;
                default: goto L47;
            }
        L47:
            int r2 = r2 + 1
            goto L3
        L4a:
            r6.D()
            goto L5c
        L4e:
            char[] r3 = r6.f59c
            int r3 = r3.length
            if (r2 >= r3) goto L5e
            int r3 = r2 + 1
            boolean r3 = r6.H(r3)
            if (r3 == 0) goto L5c
            goto L3
        L5c:
            r0 = r2
            goto L7e
        L5e:
            if (r1 != 0) goto L6b
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r3 = 16
            int r3 = java.lang.Math.max(r2, r3)
            r1.<init>(r3)
        L6b:
            char[] r3 = r6.f59c
            int r4 = r6.f60d
            r1.append(r3, r4, r2)
            int r3 = r6.f60d
            int r3 = r3 + r2
            r6.f60d = r3
            r2 = 1
            boolean r2 = r6.H(r2)
            if (r2 != 0) goto L2
        L7e:
            if (r1 != 0) goto L8a
            java.lang.String r1 = new java.lang.String
            char[] r2 = r6.f59c
            int r3 = r6.f60d
            r1.<init>(r2, r3, r0)
            goto L95
        L8a:
            char[] r2 = r6.f59c
            int r3 = r6.f60d
            r1.append(r2, r3, r0)
            java.lang.String r1 = r1.toString()
        L95:
            int r2 = r6.f60d
            int r2 = r2 + r0
            r6.f60d = r2
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: a2.a.V():java.lang.String");
    }

    public b W() throws IOException {
        int iE = this.f64h;
        if (iE == 0) {
            iE = E();
        }
        switch (iE) {
            case 1:
                return b.BEGIN_OBJECT;
            case 2:
                return b.END_OBJECT;
            case 3:
                return b.BEGIN_ARRAY;
            case 4:
                return b.END_ARRAY;
            case 5:
            case 6:
                return b.BOOLEAN;
            case 7:
                return b.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return b.STRING;
            case 12:
            case 13:
            case 14:
                return b.NAME;
            case 15:
            case 16:
                return b.NUMBER;
            case 17:
                return b.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    public final void X(int i4) {
        int i5 = this.f69m;
        int[] iArr = this.f68l;
        if (i5 == iArr.length) {
            int i6 = i5 * 2;
            this.f68l = Arrays.copyOf(iArr, i6);
            this.f71o = Arrays.copyOf(this.f71o, i6);
            this.f70n = (String[]) Arrays.copyOf(this.f70n, i6);
        }
        int[] iArr2 = this.f68l;
        int i7 = this.f69m;
        this.f69m = i7 + 1;
        iArr2[i7] = i4;
    }

    public final char Y() throws d {
        int i4;
        int i5;
        if (this.f60d == this.f61e && !H(1)) {
            c0("Unterminated escape sequence");
            throw null;
        }
        char[] cArr = this.f59c;
        int i6 = this.f60d;
        int i7 = i6 + 1;
        this.f60d = i7;
        char c4 = cArr[i6];
        if (c4 == '\n') {
            this.f62f++;
            this.f63g = i7;
        } else if (c4 != '\"' && c4 != '\'' && c4 != '/' && c4 != '\\') {
            if (c4 == 'b') {
                return '\b';
            }
            if (c4 == 'f') {
                return '\f';
            }
            if (c4 == 'n') {
                return '\n';
            }
            if (c4 == 'r') {
                return '\r';
            }
            if (c4 == 't') {
                return '\t';
            }
            if (c4 != 'u') {
                c0("Invalid escape sequence");
                throw null;
            }
            if (i7 + 4 > this.f61e && !H(4)) {
                c0("Unterminated escape sequence");
                throw null;
            }
            char c5 = 0;
            int i8 = this.f60d;
            int i9 = i8 + 4;
            while (i8 < i9) {
                char c6 = this.f59c[i8];
                char c7 = (char) (c5 << 4);
                if (c6 < '0' || c6 > '9') {
                    if (c6 >= 'a' && c6 <= 'f') {
                        i4 = c6 - 'a';
                    } else {
                        if (c6 < 'A' || c6 > 'F') {
                            StringBuilder sbA = f.a("\\u");
                            sbA.append(new String(this.f59c, this.f60d, 4));
                            throw new NumberFormatException(sbA.toString());
                        }
                        i4 = c6 - 'A';
                    }
                    i5 = i4 + 10;
                } else {
                    i5 = c6 - '0';
                }
                c5 = (char) (i5 + c7);
                i8++;
            }
            this.f60d += 4;
            return c5;
        }
        return c4;
    }

    public final void Z(char c4) throws d {
        char[] cArr = this.f59c;
        do {
            int i4 = this.f60d;
            int i5 = this.f61e;
            while (i4 < i5) {
                int i6 = i4 + 1;
                char c5 = cArr[i4];
                if (c5 == c4) {
                    this.f60d = i6;
                    return;
                }
                if (c5 == '\\') {
                    this.f60d = i6;
                    Y();
                    i4 = this.f60d;
                    i5 = this.f61e;
                } else {
                    if (c5 == '\n') {
                        this.f62f++;
                        this.f63g = i6;
                    }
                    i4 = i6;
                }
            }
            this.f60d = i4;
        } while (H(1));
        c0("Unterminated string");
        throw null;
    }

    public final void a0() {
        char c4;
        do {
            if (this.f60d >= this.f61e && !H(1)) {
                return;
            }
            char[] cArr = this.f59c;
            int i4 = this.f60d;
            int i5 = i4 + 1;
            this.f60d = i5;
            c4 = cArr[i4];
            if (c4 == '\n') {
                this.f62f++;
                this.f63g = i5;
                return;
            }
        } while (c4 != '\r');
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x00a1, code lost:
    
        D();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:61:0x009b. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b0() throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: a2.a.b0():void");
    }

    public final IOException c0(String str) throws d {
        StringBuilder sbA = f.a(str);
        sbA.append(L());
        throw new d(sbA.toString());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f64h = 0;
        this.f68l[0] = 8;
        this.f69m = 1;
        this.f57a.close();
    }

    public String toString() {
        return getClass().getSimpleName() + L();
    }
}
