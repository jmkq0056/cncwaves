package q2;

import androidx.appcompat.widget.ActivityChooserView;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.logging.Logger;
import org.eclipse.jetty.http.HttpMethods;
import org.xbill.DNS.WKSRecord;
import q2.r;
import u2.w;

/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c[] f3176a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Map<u2.h, Integer> f3177b;

    public static final class a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final u2.g f3179b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f3180c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f3181d;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List<c> f3178a = new ArrayList();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public c[] f3182e = new c[8];

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f3183f = 7;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f3184g = 0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f3185h = 0;

        public a(int i4, w wVar) {
            this.f3180c = i4;
            this.f3181d = i4;
            Logger logger = u2.o.f3599a;
            this.f3179b = new u2.r(wVar);
        }

        public final void a() {
            Arrays.fill(this.f3182e, (Object) null);
            this.f3183f = this.f3182e.length - 1;
            this.f3184g = 0;
            this.f3185h = 0;
        }

        public final int b(int i4) {
            return this.f3183f + 1 + i4;
        }

        public final int c(int i4) {
            int i5;
            int i6 = 0;
            if (i4 > 0) {
                int length = this.f3182e.length;
                while (true) {
                    length--;
                    i5 = this.f3183f;
                    if (length < i5 || i4 <= 0) {
                        break;
                    }
                    c[] cVarArr = this.f3182e;
                    i4 -= cVarArr[length].f3175c;
                    this.f3185h -= cVarArr[length].f3175c;
                    this.f3184g--;
                    i6++;
                }
                c[] cVarArr2 = this.f3182e;
                System.arraycopy(cVarArr2, i5 + 1, cVarArr2, i5 + 1 + i6, this.f3184g);
                this.f3183f += i6;
            }
            return i6;
        }

        public final u2.h d(int i4) throws IOException {
            if (i4 >= 0 && i4 <= d.f3176a.length + (-1)) {
                return d.f3176a[i4].f3173a;
            }
            int iB = b(i4 - d.f3176a.length);
            if (iB >= 0) {
                c[] cVarArr = this.f3182e;
                if (iB < cVarArr.length) {
                    return cVarArr[iB].f3173a;
                }
            }
            StringBuilder sbA = android.support.v4.media.f.a("Header index too large ");
            sbA.append(i4 + 1);
            throw new IOException(sbA.toString());
        }

        public final void e(int i4, c cVar) {
            this.f3178a.add(cVar);
            int i5 = cVar.f3175c;
            if (i4 != -1) {
                i5 -= this.f3182e[(this.f3183f + 1) + i4].f3175c;
            }
            int i6 = this.f3181d;
            if (i5 > i6) {
                a();
                return;
            }
            int iC = c((this.f3185h + i5) - i6);
            if (i4 == -1) {
                int i7 = this.f3184g + 1;
                c[] cVarArr = this.f3182e;
                if (i7 > cVarArr.length) {
                    c[] cVarArr2 = new c[cVarArr.length * 2];
                    System.arraycopy(cVarArr, 0, cVarArr2, cVarArr.length, cVarArr.length);
                    this.f3183f = this.f3182e.length - 1;
                    this.f3182e = cVarArr2;
                }
                int i8 = this.f3183f;
                this.f3183f = i8 - 1;
                this.f3182e[i8] = cVar;
                this.f3184g++;
            } else {
                this.f3182e[this.f3183f + 1 + i4 + iC + i4] = cVar;
            }
            this.f3185h += i5;
        }

        public u2.h f() {
            int i4 = this.f3179b.readByte() & 255;
            boolean z3 = (i4 & 128) == 128;
            int iG = g(i4, WKSRecord.Service.LOCUS_CON);
            if (!z3) {
                return this.f3179b.c(iG);
            }
            r rVar = r.f3307d;
            byte[] bArrN = this.f3179b.n(iG);
            Objects.requireNonNull(rVar);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            r.a aVar = rVar.f3308a;
            int i5 = 0;
            int i6 = 0;
            for (byte b4 : bArrN) {
                i5 = (i5 << 8) | (b4 & 255);
                i6 += 8;
                while (i6 >= 8) {
                    int i7 = i6 - 8;
                    aVar = aVar.f3309a[(i5 >>> i7) & 255];
                    if (aVar.f3309a == null) {
                        byteArrayOutputStream.write(aVar.f3310b);
                        i6 -= aVar.f3311c;
                        aVar = rVar.f3308a;
                    } else {
                        i6 = i7;
                    }
                }
            }
            while (i6 > 0) {
                r.a aVar2 = aVar.f3309a[(i5 << (8 - i6)) & 255];
                if (aVar2.f3309a != null || aVar2.f3311c > i6) {
                    break;
                }
                byteArrayOutputStream.write(aVar2.f3310b);
                i6 -= aVar2.f3311c;
                aVar = rVar.f3308a;
            }
            return u2.h.h(byteArrayOutputStream.toByteArray());
        }

        public int g(int i4, int i5) {
            int i6 = i4 & i5;
            if (i6 < i5) {
                return i6;
            }
            int i7 = 0;
            while (true) {
                int i8 = this.f3179b.readByte() & 255;
                if ((i8 & 128) == 0) {
                    return i5 + (i8 << i7);
                }
                i5 += (i8 & WKSRecord.Service.LOCUS_CON) << i7;
                i7 += 7;
            }
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final u2.e f3186a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f3188c;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f3187b = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public c[] f3190e = new c[8];

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f3191f = 7;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f3192g = 0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f3193h = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f3189d = 4096;

        public b(u2.e eVar) {
            this.f3186a = eVar;
        }

        public final void a() {
            Arrays.fill(this.f3190e, (Object) null);
            this.f3191f = this.f3190e.length - 1;
            this.f3192g = 0;
            this.f3193h = 0;
        }

        public final int b(int i4) {
            int i5;
            int i6 = 0;
            if (i4 > 0) {
                int length = this.f3190e.length;
                while (true) {
                    length--;
                    i5 = this.f3191f;
                    if (length < i5 || i4 <= 0) {
                        break;
                    }
                    c[] cVarArr = this.f3190e;
                    i4 -= cVarArr[length].f3175c;
                    this.f3193h -= cVarArr[length].f3175c;
                    this.f3192g--;
                    i6++;
                }
                c[] cVarArr2 = this.f3190e;
                System.arraycopy(cVarArr2, i5 + 1, cVarArr2, i5 + 1 + i6, this.f3192g);
                c[] cVarArr3 = this.f3190e;
                int i7 = this.f3191f;
                Arrays.fill(cVarArr3, i7 + 1, i7 + 1 + i6, (Object) null);
                this.f3191f += i6;
            }
            return i6;
        }

        public final void c(c cVar) {
            int i4 = cVar.f3175c;
            int i5 = this.f3189d;
            if (i4 > i5) {
                a();
                return;
            }
            b((this.f3193h + i4) - i5);
            int i6 = this.f3192g + 1;
            c[] cVarArr = this.f3190e;
            if (i6 > cVarArr.length) {
                c[] cVarArr2 = new c[cVarArr.length * 2];
                System.arraycopy(cVarArr, 0, cVarArr2, cVarArr.length, cVarArr.length);
                this.f3191f = this.f3190e.length - 1;
                this.f3190e = cVarArr2;
            }
            int i7 = this.f3191f;
            this.f3191f = i7 - 1;
            this.f3190e[i7] = cVar;
            this.f3192g++;
            this.f3193h += i4;
        }

        public void d(u2.h hVar) {
            Objects.requireNonNull(r.f3307d);
            long j4 = 0;
            long j5 = 0;
            for (int i4 = 0; i4 < hVar.k(); i4++) {
                j5 += (long) r.f3306c[hVar.f(i4) & 255];
            }
            if (((int) ((j5 + 7) >> 3)) >= hVar.k()) {
                f(hVar.k(), WKSRecord.Service.LOCUS_CON, 0);
                u2.e eVar = this.f3186a;
                Objects.requireNonNull(eVar);
                hVar.o(eVar);
                return;
            }
            u2.e eVar2 = new u2.e();
            Objects.requireNonNull(r.f3307d);
            int i5 = 0;
            for (int i6 = 0; i6 < hVar.k(); i6++) {
                int iF = hVar.f(i6) & 255;
                int i7 = r.f3305b[iF];
                byte b4 = r.f3306c[iF];
                j4 = (j4 << b4) | ((long) i7);
                i5 += b4;
                while (i5 >= 8) {
                    i5 -= 8;
                    eVar2.N((int) (j4 >> i5));
                }
            }
            if (i5 > 0) {
                eVar2.N((int) ((j4 << (8 - i5)) | ((long) (255 >>> i5))));
            }
            u2.h hVarE = eVar2.E();
            f(hVarE.f3582a.length, WKSRecord.Service.LOCUS_CON, 128);
            u2.e eVar3 = this.f3186a;
            Objects.requireNonNull(eVar3);
            byte[] bArr = hVarE.f3582a;
            eVar3.L(bArr, 0, bArr.length);
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x006a  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void e(java.util.List<q2.c> r14) {
            /*
                Method dump skipped, instruction units count: 243
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: q2.d.b.e(java.util.List):void");
        }

        public void f(int i4, int i5, int i6) {
            if (i4 < i5) {
                this.f3186a.N(i4 | i6);
                return;
            }
            this.f3186a.N(i6 | i5);
            int i7 = i4 - i5;
            while (i7 >= 128) {
                this.f3186a.N(128 | (i7 & WKSRecord.Service.LOCUS_CON));
                i7 >>>= 7;
            }
            this.f3186a.N(i7);
        }
    }

    static {
        c cVar = new c(c.f3172i, "");
        int i4 = 0;
        u2.h hVar = c.f3169f;
        u2.h hVar2 = c.f3170g;
        u2.h hVar3 = c.f3171h;
        u2.h hVar4 = c.f3168e;
        c[] cVarArr = {cVar, new c(hVar, HttpMethods.GET), new c(hVar, HttpMethods.POST), new c(hVar2, "/"), new c(hVar2, "/index.html"), new c(hVar3, "http"), new c(hVar3, "https"), new c(hVar4, "200"), new c(hVar4, "204"), new c(hVar4, "206"), new c(hVar4, "304"), new c(hVar4, "400"), new c(hVar4, "404"), new c(hVar4, "500"), new c("accept-charset", ""), new c("accept-encoding", "gzip, deflate"), new c("accept-language", ""), new c("accept-ranges", ""), new c("accept", ""), new c("access-control-allow-origin", ""), new c("age", ""), new c("allow", ""), new c("authorization", ""), new c("cache-control", ""), new c("content-disposition", ""), new c("content-encoding", ""), new c("content-language", ""), new c("content-length", ""), new c("content-location", ""), new c("content-range", ""), new c("content-type", ""), new c("cookie", ""), new c("date", ""), new c("etag", ""), new c("expect", ""), new c("expires", ""), new c("from", ""), new c("host", ""), new c("if-match", ""), new c("if-modified-since", ""), new c("if-none-match", ""), new c("if-range", ""), new c("if-unmodified-since", ""), new c("last-modified", ""), new c("link", ""), new c("location", ""), new c("max-forwards", ""), new c("proxy-authenticate", ""), new c("proxy-authorization", ""), new c("range", ""), new c("referer", ""), new c("refresh", ""), new c("retry-after", ""), new c("server", ""), new c("set-cookie", ""), new c("strict-transport-security", ""), new c("transfer-encoding", ""), new c("user-agent", ""), new c("vary", ""), new c("via", ""), new c("www-authenticate", "")};
        f3176a = cVarArr;
        LinkedHashMap linkedHashMap = new LinkedHashMap(cVarArr.length);
        while (true) {
            c[] cVarArr2 = f3176a;
            if (i4 >= cVarArr2.length) {
                f3177b = Collections.unmodifiableMap(linkedHashMap);
                return;
            } else {
                if (!linkedHashMap.containsKey(cVarArr2[i4].f3173a)) {
                    linkedHashMap.put(cVarArr2[i4].f3173a, Integer.valueOf(i4));
                }
                i4++;
            }
        }
    }

    public static u2.h a(u2.h hVar) {
        int iK = hVar.k();
        for (int i4 = 0; i4 < iK; i4++) {
            byte bF = hVar.f(i4);
            if (bF >= 65 && bF <= 90) {
                StringBuilder sbA = android.support.v4.media.f.a("PROTOCOL_ERROR response malformed: mixed case name: ");
                sbA.append(hVar.n());
                throw new IOException(sbA.toString());
            }
        }
        return hVar;
    }
}
