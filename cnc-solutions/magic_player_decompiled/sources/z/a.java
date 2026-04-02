package z;

import android.graphics.Bitmap;
import android.util.Log;
import android.util.LruCache;
import android.util.SparseIntArray;
import java.util.Objects;
import java.util.UUID;
import l.o;
import z.b;
import z.d;

/* JADX INFO: loaded from: classes.dex */
public class a implements d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LruCache<Integer, Bitmap> f4170b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f4172d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f4173e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public d.a f4174f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f4169a = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SparseIntArray f4171c = new SparseIntArray();

    /* JADX INFO: renamed from: z.a$a, reason: collision with other inner class name */
    public class C0059a extends LruCache<Integer, Bitmap> {
        public C0059a(int i4) {
            super(i4);
        }

        @Override // android.util.LruCache
        public void entryRemoved(boolean z3, Integer num, Bitmap bitmap, Bitmap bitmap2) {
            Integer num2 = num;
            if (bitmap2 == null) {
                a.this.f4171c.put(num2.intValue(), 0);
            }
        }
    }

    public a(int i4) {
        this.f4172d = i4;
        this.f4170b = new C0059a((i4 * 2) - 1);
    }

    public Bitmap a(int i4) {
        synchronized (this.f4169a) {
            if (i4 < b() && i4 >= 0) {
                Bitmap bitmap = this.f4170b.get(Integer.valueOf(i4));
                if (bitmap == null) {
                    c(i4);
                }
                return bitmap;
            }
            return null;
        }
    }

    public int b() {
        d.a aVar = this.f4174f;
        if (aVar != null) {
            return ((e) aVar).f4193a.size();
        }
        return 0;
    }

    public final void c(int i4) {
        synchronized (this.f4169a) {
            if (this.f4171c.get(i4) != 0) {
                return;
            }
            int iB = b();
            if (i4 >= 0 && i4 < iB) {
                this.f4171c.put(i4, 1);
                String str = this.f4173e;
                d.a aVar = this.f4174f;
                o oVar = new o(this, str, i4);
                e eVar = (e) aVar;
                Objects.requireNonNull(eVar);
                if (i4 < 0 || i4 >= eVar.f4193a.size()) {
                    oVar.b(null);
                    return;
                }
                b.d dVarC = b.c(eVar.f4193a.get(i4));
                int i5 = eVar.f4194b;
                int i6 = eVar.f4195c;
                dVarC.f4188f = i5;
                dVarC.f4189g = i6;
                dVarC.a(oVar);
                return;
            }
            Log.d("AsyncImageProvider", "loadImageAsync:: index out of bounds: " + i4 + "/" + iB);
            this.f4171c.put(i4, 3);
        }
    }

    public void d(int i4) {
        if (this.f4171c.get(i4) == 0) {
            c(i4);
        }
    }

    public void e(int i4) {
        int iB = b();
        for (int i5 = 0; i5 < this.f4172d && i5 < iB; i5++) {
            d((i4 + i5) % iB);
        }
    }

    public void f() {
        synchronized (this.f4169a) {
            this.f4173e = null;
            this.f4170b.evictAll();
            this.f4171c.clear();
        }
    }

    public void g(d.a aVar) {
        synchronized (this.f4169a) {
            this.f4174f = aVar;
            this.f4173e = UUID.randomUUID().toString();
            this.f4170b.evictAll();
            this.f4171c.clear();
        }
    }
}
