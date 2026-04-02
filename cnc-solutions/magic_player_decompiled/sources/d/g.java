package d;

import android.os.SystemClock;
import android.util.Log;
import com.arcsoft.face.AgeInfo;
import com.arcsoft.face.FaceEngine;
import com.arcsoft.face.FaceInfo;
import com.arcsoft.face.GenderInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static volatile g f1442q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ExecutorService f1443a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public FaceEngine f1444b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1445c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1447e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1450h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f1451i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f1452j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public j.g f1453k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f1454l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f1455m;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List<c> f1446d = new ArrayList();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public List<FaceInfo> f1456n = new ArrayList();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public List<GenderInfo> f1457o = new ArrayList();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public List<AgeInfo> f1458p = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public h f1448f = new h();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public h f1449g = new h();

    public static int c(int i4) {
        if (i4 <= 0) {
            return 0;
        }
        if (i4 <= 14) {
            return 1;
        }
        if (i4 <= 30) {
            return 2;
        }
        return i4 <= 60 ? 3 : 4;
    }

    public static g d() {
        if (f1442q == null) {
            synchronized (g.class) {
                if (f1442q == null) {
                    f1442q = new g();
                }
            }
        }
        return f1442q;
    }

    public final synchronized void a(c cVar) {
        if (this.f1447e) {
            if (SystemClock.elapsedRealtime() - cVar.f1433e > 1000 && cVar.f1431c != -1 && cVar.f1432d != 0) {
                this.f1450h++;
                this.f1448f.c(cVar);
                this.f1449g.c(cVar);
            }
        }
    }

    public final synchronized c b(int i4) {
        for (int i5 = 0; i5 < this.f1446d.size(); i5++) {
            c cVar = this.f1446d.get(i5);
            if (cVar.f1429a == i4) {
                return cVar;
            }
        }
        return null;
    }

    public final synchronized void e(Runnable runnable) {
        ExecutorService executorService = this.f1443a;
        if (executorService == null || executorService.isShutdown()) {
            this.f1443a = Executors.newSingleThreadExecutor();
        }
        try {
            this.f1443a.execute(runnable);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x019f A[Catch: all -> 0x01cc, DONT_GENERATE, TRY_ENTER, TryCatch #4 {, blocks: (B:4:0x0002, B:8:0x0008, B:10:0x000f, B:18:0x002f, B:19:0x0037, B:21:0x003d, B:23:0x004d, B:34:0x007f, B:24:0x0062, B:26:0x0066, B:28:0x0073, B:30:0x0077, B:33:0x007c, B:35:0x008a, B:52:0x00be, B:54:0x00cf, B:63:0x00f0, B:65:0x00f8, B:87:0x014a, B:68:0x010b, B:70:0x0119, B:72:0x011d, B:75:0x0122, B:76:0x0124, B:78:0x0132, B:80:0x0136, B:86:0x0148, B:89:0x014f, B:91:0x0157, B:93:0x0165, B:94:0x0170, B:95:0x0172, B:107:0x019f, B:108:0x01a0, B:120:0x01c3, B:117:0x01be, B:124:0x01c7, B:125:0x01c8, B:127:0x01ca, B:128:0x01cb, B:59:0x00e9, B:38:0x0096, B:40:0x009a, B:41:0x00a0, B:43:0x00a6, B:45:0x00b0, B:14:0x0028, B:114:0x01af, B:116:0x01b7, B:119:0x01c0, B:111:0x01a5, B:96:0x0173, B:98:0x0177, B:103:0x018f, B:105:0x0197, B:106:0x019a), top: B:141:0x0002, inners: #0, #1, #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00ec  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void f(byte[] r15, int r16, int r17) {
        /*
            Method dump skipped, instruction units count: 465
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.g.f(byte[], int, int):void");
    }

    public final synchronized void g() {
        j.g gVar;
        boolean z3 = false;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        for (c cVar : this.f1446d) {
            int i10 = cVar.f1431c;
            if (i10 == 0) {
                i4++;
            } else if (i10 == 1) {
                i5++;
            }
            int i11 = cVar.f1432d;
            if (i11 > 0) {
                if (i11 <= 14) {
                    i6++;
                } else if (i11 <= 30) {
                    i7++;
                } else if (i11 <= 60) {
                    i8++;
                } else {
                    i9++;
                }
            }
        }
        if (SystemClock.elapsedRealtime() - this.f1452j < 30000 && (gVar = this.f1453k) != null) {
            if (gVar.f1939a == i4 && gVar.f1940b == i5 && gVar.f1941c == i6 && gVar.f1942d == i7 && gVar.f1943e == i8 && gVar.f1944f == i9) {
                z3 = true;
            }
            if (z3) {
                Log.d("FaceProcessor", "sendFaceDetectEvent: event not change!");
                return;
            }
        }
        this.f1452j = SystemClock.elapsedRealtime();
        this.f1453k = new j.g(i4, i5, i6, i7, i8, i9);
        g3.c.b().f(this.f1453k);
    }
}
