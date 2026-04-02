package a2;

import android.support.v4.media.f;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.util.Arrays;
import java.util.Objects;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes2.dex */
public class c implements Closeable, Flushable {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String[] f83j = new String[128];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String[] f84k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Writer f85a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f86b = new int[32];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f87c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f88d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f89e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f90f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f91g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f92h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f93i;

    static {
        for (int i4 = 0; i4 <= 31; i4++) {
            f83j[i4] = String.format("\\u%04x", Integer.valueOf(i4));
        }
        String[] strArr = f83j;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        f84k = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public c(Writer writer) {
        L(6);
        this.f89e = ":";
        this.f93i = true;
        Objects.requireNonNull(writer, "out == null");
        this.f85a = writer;
    }

    public final void B() throws IOException {
        int iK = K();
        if (iK == 1) {
            M(2);
            I();
            return;
        }
        if (iK == 2) {
            this.f85a.append(',');
            I();
        } else {
            if (iK == 4) {
                this.f85a.append((CharSequence) this.f89e);
                M(5);
                return;
            }
            if (iK != 6) {
                if (iK != 7) {
                    throw new IllegalStateException("Nesting problem.");
                }
                if (!this.f90f) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
            }
            M(7);
        }
    }

    public c C() throws IOException {
        T();
        B();
        L(1);
        this.f85a.write(91);
        return this;
    }

    public c D() throws IOException {
        T();
        B();
        L(3);
        this.f85a.write(123);
        return this;
    }

    public final c E(int i4, int i5, char c4) throws IOException {
        int iK = K();
        if (iK != i5 && iK != i4) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.f92h != null) {
            StringBuilder sbA = f.a("Dangling name: ");
            sbA.append(this.f92h);
            throw new IllegalStateException(sbA.toString());
        }
        this.f87c--;
        if (iK == i5) {
            I();
        }
        this.f85a.write(c4);
        return this;
    }

    public c F() throws IOException {
        E(1, 2, ']');
        return this;
    }

    public c G() throws IOException {
        E(3, 5, MessageFormatter.DELIM_STOP);
        return this;
    }

    public c H(String str) {
        Objects.requireNonNull(str, "name == null");
        if (this.f92h != null) {
            throw new IllegalStateException();
        }
        if (this.f87c == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.f92h = str;
        return this;
    }

    public final void I() throws IOException {
        if (this.f88d == null) {
            return;
        }
        this.f85a.write(10);
        int i4 = this.f87c;
        for (int i5 = 1; i5 < i4; i5++) {
            this.f85a.write(this.f88d);
        }
    }

    public c J() throws IOException {
        if (this.f92h != null) {
            if (!this.f93i) {
                this.f92h = null;
                return this;
            }
            T();
        }
        B();
        this.f85a.write("null");
        return this;
    }

    public final int K() {
        int i4 = this.f87c;
        if (i4 != 0) {
            return this.f86b[i4 - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    public final void L(int i4) {
        int i5 = this.f87c;
        int[] iArr = this.f86b;
        if (i5 == iArr.length) {
            this.f86b = Arrays.copyOf(iArr, i5 * 2);
        }
        int[] iArr2 = this.f86b;
        int i6 = this.f87c;
        this.f87c = i6 + 1;
        iArr2[i6] = i4;
    }

    public final void M(int i4) {
        this.f86b[this.f87c - 1] = i4;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void N(java.lang.String r9) throws java.io.IOException {
        /*
            r8 = this;
            boolean r0 = r8.f91g
            if (r0 == 0) goto L7
            java.lang.String[] r0 = a2.c.f84k
            goto L9
        L7:
            java.lang.String[] r0 = a2.c.f83j
        L9:
            java.io.Writer r1 = r8.f85a
            r2 = 34
            r1.write(r2)
            int r1 = r9.length()
            r3 = 0
            r4 = 0
        L16:
            if (r3 >= r1) goto L45
            char r5 = r9.charAt(r3)
            r6 = 128(0x80, float:1.794E-43)
            if (r5 >= r6) goto L25
            r5 = r0[r5]
            if (r5 != 0) goto L32
            goto L42
        L25:
            r6 = 8232(0x2028, float:1.1535E-41)
            if (r5 != r6) goto L2c
            java.lang.String r5 = "\\u2028"
            goto L32
        L2c:
            r6 = 8233(0x2029, float:1.1537E-41)
            if (r5 != r6) goto L42
            java.lang.String r5 = "\\u2029"
        L32:
            if (r4 >= r3) goto L3b
            java.io.Writer r6 = r8.f85a
            int r7 = r3 - r4
            r6.write(r9, r4, r7)
        L3b:
            java.io.Writer r4 = r8.f85a
            r4.write(r5)
            int r4 = r3 + 1
        L42:
            int r3 = r3 + 1
            goto L16
        L45:
            if (r4 >= r1) goto L4d
            java.io.Writer r0 = r8.f85a
            int r1 = r1 - r4
            r0.write(r9, r4, r1)
        L4d:
            java.io.Writer r9 = r8.f85a
            r9.write(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: a2.c.N(java.lang.String):void");
    }

    public c O(long j4) throws IOException {
        T();
        B();
        this.f85a.write(Long.toString(j4));
        return this;
    }

    public c P(Boolean bool) throws IOException {
        if (bool == null) {
            return J();
        }
        T();
        B();
        this.f85a.write(bool.booleanValue() ? "true" : "false");
        return this;
    }

    public c Q(Number number) throws IOException {
        if (number == null) {
            return J();
        }
        T();
        String string = number.toString();
        if (this.f90f || !(string.equals("-Infinity") || string.equals("Infinity") || string.equals("NaN"))) {
            B();
            this.f85a.append((CharSequence) string);
            return this;
        }
        throw new IllegalArgumentException("Numeric values must be finite, but was " + number);
    }

    public c R(String str) throws IOException {
        if (str == null) {
            return J();
        }
        T();
        B();
        N(str);
        return this;
    }

    public c S(boolean z3) throws IOException {
        T();
        B();
        this.f85a.write(z3 ? "true" : "false");
        return this;
    }

    public final void T() throws IOException {
        if (this.f92h != null) {
            int iK = K();
            if (iK == 5) {
                this.f85a.write(44);
            } else if (iK != 3) {
                throw new IllegalStateException("Nesting problem.");
            }
            I();
            M(4);
            N(this.f92h);
            this.f92h = null;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f85a.close();
        int i4 = this.f87c;
        if (i4 > 1 || (i4 == 1 && this.f86b[i4 - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.f87c = 0;
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        if (this.f87c == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.f85a.flush();
    }
}
