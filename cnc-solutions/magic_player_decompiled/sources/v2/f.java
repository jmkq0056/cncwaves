package v2;

import java.io.IOException;
import java.io.PushbackReader;
import org.eclipse.jetty.http.HttpStatus;
import org.xml.sax.Locator;

/* JADX INFO: loaded from: classes2.dex */
public class f implements k, Locator {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int[] f3725l = {1, 47, 5, 22, 1, 61, 4, 3, 1, 62, 6, 28, 1, 0, 27, 1, 1, -1, 6, 21, 1, 32, 4, 24, 1, 10, 4, 24, 1, 9, 4, 24, 2, 39, 7, 34, 2, 0, 27, 2, 2, -1, 8, 21, 2, 32, 29, 2, 2, 10, 29, 2, 2, 9, 29, 2, 3, 34, 28, 31, 3, 39, 28, 2, 3, 62, 8, 28, 3, 0, 27, 32, 3, -1, 8, 21, 3, 32, 28, 3, 3, 10, 28, 3, 3, 9, 28, 3, 4, 67, 28, 5, 4, 0, 28, 19, 4, -1, 28, 21, 5, 68, 28, 6, 5, 0, 28, 19, 5, -1, 28, 21, 6, 65, 28, 7, 6, 0, 28, 19, 6, -1, 28, 21, 7, 84, 28, 8, 7, 0, 28, 19, 7, -1, 28, 21, 8, 65, 28, 9, 8, 0, 28, 19, 8, -1, 28, 21, 9, 91, 28, 12, 9, 0, 28, 19, 9, -1, 28, 21, 10, 60, 27, 11, 10, 0, 27, 10, 10, -1, 23, 21, 11, 47, 32, 25, 11, 0, 27, 10, 11, -1, 32, 21, 12, 93, 27, 13, 12, 0, 27, 12, 12, -1, 28, 21, 13, 93, 27, 14, 13, 0, 27, 12, 13, -1, 28, 21, 14, 62, 9, 28, 14, 93, 27, 14, 14, 0, 27, 12, 14, -1, 28, 21, 15, 45, 28, 16, 15, 0, 27, 16, 15, -1, 10, 21, 16, 45, 28, 17, 16, 0, 27, 16, 16, -1, 10, 21, 17, 45, 28, 18, 17, 0, 20, 16, 17, -1, 10, 21, 18, 45, 22, 18, 18, 62, 10, 28, 18, 0, 21, 16, 18, -1, 10, 21, 19, 45, 28, 15, 19, 62, 28, 28, 19, 91, 28, 4, 19, 0, 27, 20, 19, -1, 28, 21, 20, 62, 11, 28, 20, 0, 27, 20, 20, -1, 28, 21, 22, 62, 12, 28, 22, 0, 27, 1, 22, 32, 28, 34, 22, 10, 28, 34, 22, 9, 28, 34, 23, 0, 13, 23, 23, -1, 13, 21, 24, 61, 28, 3, 24, 62, 3, 28, 24, 0, 2, 1, 24, -1, 3, 21, 24, 32, 28, 24, 24, 10, 28, 24, 24, 9, 28, 24, 25, 62, 15, 28, 25, 0, 27, 25, 25, -1, 15, 21, 25, 32, 28, 25, 25, 10, 28, 25, 25, 9, 28, 25, 26, 47, 28, 22, 26, 62, 17, 28, 26, 0, 27, 26, 26, -1, 28, 21, 26, 32, 16, 34, 26, 10, 16, 34, 26, 9, 16, 34, 27, 0, 13, 27, 27, -1, 13, 21, 28, 38, 14, 23, 28, 60, 23, 33, 28, 0, 27, 28, 28, -1, 23, 21, 29, 62, 24, 28, 29, 0, 27, 29, 29, -1, 24, 21, 30, 62, 26, 28, 30, 0, 27, 30, 30, -1, 26, 21, 30, 32, 25, 29, 30, 10, 25, 29, 30, 9, 25, 29, 31, 34, 7, 34, 31, 0, 27, 31, 31, -1, 8, 21, 31, 32, 29, 31, 31, 10, 29, 31, 31, 9, 29, 31, 32, 62, 8, 28, 32, 0, 27, 32, 32, -1, 8, 21, 32, 32, 7, 34, 32, 10, 7, 34, 32, 9, 7, 34, 33, 33, 28, 19, 33, 47, 28, 25, 33, 60, 27, 33, 33, 63, 28, 30, 33, 0, 27, 26, 33, -1, 19, 21, 33, 32, 18, 28, 33, 10, 18, 28, 33, 9, 18, 28, 34, 47, 28, 22, 34, 62, 30, 28, 34, 0, 27, 1, 34, -1, 30, 21, 34, 32, 28, 34, 34, 10, 28, 34, 34, 9, 28, 34, 35, 0, 13, 35, 35, -1, 13, 21};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static short[][] f3726m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f3727n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f3728a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f3729b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3730c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3731d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3732e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3733f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f3734g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3735h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f3737j;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public char[] f3736i = new char[200];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int[] f3738k = {8364, 65533, 8218, HttpStatus.PAYMENT_REQUIRED_402, 8222, 8230, 8224, 8225, 710, 8240, 352, 8249, 338, 65533, 381, 65533, 65533, 8216, 8217, 8220, 8221, 8226, 8211, 8212, 732, 8482, 353, 8250, 339, 65533, 382, 376};

    /* JADX WARN: Code restructure failed: missing block: B:30:0x006b, code lost:
    
        r6 = r8;
     */
    static {
        /*
            Method dump skipped, instruction units count: 1320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: v2.f.<clinit>():void");
    }

    @Override // v2.k
    public void a(String str, String str2) {
        this.f3728a = str;
        this.f3729b = str2;
        this.f3733f = 0;
        this.f3732e = 0;
        this.f3731d = 0;
        this.f3730c = 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0337 A[PHI: r13 r14
      0x0337: PHI (r13v6 boolean) = (r13v3 boolean), (r13v4 boolean), (r13v3 boolean) binds: [B:170:0x0335, B:159:0x0318, B:152:0x030b] A[DONT_GENERATE, DONT_INLINE]
      0x0337: PHI (r14v5 boolean) = (r14v3 boolean), (r14v3 boolean), (r14v6 boolean) binds: [B:170:0x0335, B:159:0x0318, B:152:0x030b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0397  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x03a4  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01d8  */
    @Override // v2.k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(java.io.Reader r17, v2.j r18) throws org.xml.sax.SAXException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1396
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: v2.f.b(java.io.Reader, v2.j):void");
    }

    public final void c() {
        this.f3731d = this.f3733f;
        this.f3730c = this.f3732e;
    }

    public final void d(int i4, j jVar) {
        int i5 = this.f3737j;
        char[] cArr = this.f3736i;
        if (i5 >= cArr.length - 20) {
            int i6 = this.f3734g;
            if (i6 == 28 || i6 == 10) {
                ((i) jVar).i(cArr, 0, i5);
                this.f3737j = 0;
            } else {
                char[] cArr2 = new char[cArr.length * 2];
                System.arraycopy(cArr, 0, cArr2, 0, i5 + 1);
                this.f3736i = cArr2;
            }
        }
        char[] cArr3 = this.f3736i;
        int i7 = this.f3737j;
        this.f3737j = i7 + 1;
        cArr3[i7] = (char) i4;
    }

    public final void e(PushbackReader pushbackReader, int i4) throws IOException {
        if (i4 != -1) {
            pushbackReader.unread(i4);
        }
    }

    @Override // org.xml.sax.Locator
    public int getColumnNumber() {
        return this.f3731d;
    }

    @Override // org.xml.sax.Locator
    public int getLineNumber() {
        return this.f3730c;
    }

    @Override // org.xml.sax.Locator
    public String getPublicId() {
        return this.f3728a;
    }

    @Override // org.xml.sax.Locator
    public String getSystemId() {
        return this.f3729b;
    }

    @Override // v2.k
    public void startCDATA() {
        this.f3735h = 10;
    }
}
