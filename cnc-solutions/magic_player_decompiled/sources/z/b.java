package z;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.LruCache;
import java.io.File;
import java.util.Objects;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import w0.e;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static volatile b f4176e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f f4177a = new f(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f4178b = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c f4179c = new e(33554432);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public c f4180d;

    /* JADX INFO: renamed from: z.b$b, reason: collision with other inner class name */
    public static class C0060b implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public File f4181a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public w0.e f4182b;

        public C0060b(File file, long j4) {
            this.f4181a = file;
        }

        @Override // z.b.c
        public void a(String str, Bitmap bitmap) {
            try {
                e.c cVarG = b().G(str);
                if (!bitmap.compress(Bitmap.CompressFormat.JPEG, 80, cVarG.b(0))) {
                    cVarG.a();
                } else if (cVarG.f3801c) {
                    w0.e.B(w0.e.this, cVarG, false);
                    w0.e.this.O(cVarG.f3799a.f3804a);
                } else {
                    w0.e.B(w0.e.this, cVarG, true);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }

        /* JADX WARN: Can't wrap try/catch for region: R(7:28|3|(4:6|(1:12)|20|21)|29|16|20|21) */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0021, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0022, code lost:
        
            r0.printStackTrace();
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final synchronized w0.e b() {
            /*
                r4 = this;
                monitor-enter(r4)
                w0.e r0 = r4.f4182b     // Catch: java.lang.Throwable -> L29
                r1 = 1
                if (r0 == 0) goto L15
                monitor-enter(r0)     // Catch: java.lang.Throwable -> L29
                java.io.Writer r2 = r0.f3792i     // Catch: java.lang.Throwable -> L12
                if (r2 != 0) goto Ld
                r2 = 1
                goto Le
            Ld:
                r2 = 0
            Le:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L29
                if (r2 == 0) goto L25
                goto L15
            L12:
                r1 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L29
                throw r1     // Catch: java.lang.Throwable -> L29
            L15:
                java.io.File r0 = r4.f4181a     // Catch: java.lang.Exception -> L21 java.lang.Throwable -> L29
                r2 = 67108864(0x4000000, double:3.31561842E-316)
                w0.e r0 = w0.e.J(r0, r1, r1, r2)     // Catch: java.lang.Exception -> L21 java.lang.Throwable -> L29
                r4.f4182b = r0     // Catch: java.lang.Exception -> L21 java.lang.Throwable -> L29
                goto L25
            L21:
                r0 = move-exception
                r0.printStackTrace()     // Catch: java.lang.Throwable -> L29
            L25:
                w0.e r0 = r4.f4182b     // Catch: java.lang.Throwable -> L29
                monitor-exit(r4)
                return r0
            L29:
                r0 = move-exception
                monitor-exit(r4)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: z.b.C0060b.b():w0.e");
        }

        @Override // z.b.c
        public synchronized void clear() {
            w0.e eVar = this.f4182b;
            if (eVar != null) {
                try {
                    eVar.close();
                    w0.e.E(eVar.f3784a);
                    this.f4182b = null;
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }

        @Override // z.b.c
        public Bitmap get(String str) {
            Bitmap bitmapDecodeStream;
            try {
                e.C0050e c0050eH = b().H(str);
                if (c0050eH == null || (bitmapDecodeStream = BitmapFactory.decodeStream(c0050eH.f3810a[0])) == null) {
                    return null;
                }
                Log.d("HDImageLoader", "execute: find disk cache: " + str);
                return bitmapDecodeStream;
            } catch (Exception e4) {
                e4.printStackTrace();
                return null;
            }
        }
    }

    public interface c {
        void a(String str, Bitmap bitmap);

        void clear();

        Bitmap get(String str);
    }

    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final f f4183a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Handler f4184b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final c f4185c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final c f4186d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f4187e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f4188f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f4189g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public z.c f4190h;

        public d(f fVar, Handler handler, c cVar, c cVar2, a aVar) {
            this.f4183a = fVar;
            this.f4184b = handler;
            this.f4185c = cVar;
            this.f4186d = cVar2;
        }

        public void a(z.c cVar) {
            this.f4190h = cVar;
            f fVar = this.f4183a;
            ThreadPoolExecutor threadPoolExecutor = fVar.f4192a;
            if (threadPoolExecutor == null || threadPoolExecutor.isShutdown()) {
                fVar.f4192a = new ThreadPoolExecutor(1, Runtime.getRuntime().availableProcessors(), 3L, TimeUnit.SECONDS, new LinkedBlockingDeque());
            }
            fVar.f4192a.execute(new m.b(fVar, this));
        }
    }

    public static class e implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public LruCache<String, Bitmap> f4191a;

        public class a extends LruCache<String, Bitmap> {
            public a(e eVar, int i4) {
                super(i4);
            }

            @Override // android.util.LruCache
            public int sizeOf(String str, Bitmap bitmap) {
                Bitmap bitmap2 = bitmap;
                if (bitmap2 == null) {
                    return 0;
                }
                return bitmap2.getByteCount();
            }
        }

        public e(int i4) {
            this.f4191a = new a(this, i4);
        }

        @Override // z.b.c
        public void a(String str, Bitmap bitmap) {
            this.f4191a.put(str, bitmap);
        }

        @Override // z.b.c
        public void clear() {
            this.f4191a.evictAll();
        }

        @Override // z.b.c
        public Bitmap get(String str) {
            return this.f4191a.get(str);
        }
    }

    public static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ThreadPoolExecutor f4192a;

        public f(a aVar) {
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x0063  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public android.graphics.Bitmap a(z.b.d r17) {
            /*
                Method dump skipped, instruction units count: 419
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: z.b.f.a(z.b$d):android.graphics.Bitmap");
        }
    }

    public static b b() {
        if (f4176e == null) {
            synchronized (b.class) {
                if (f4176e == null) {
                    f4176e = new b();
                }
            }
        }
        return f4176e;
    }

    public static d c(String str) {
        b bVarB = b();
        d dVar = new d(bVarB.f4177a, bVarB.f4178b, bVarB.f4179c, bVarB.f4180d, null);
        dVar.f4187e = str;
        return dVar;
    }

    public void a(boolean z3) {
        c cVar = this.f4179c;
        if (cVar != null) {
            cVar.clear();
        }
        c cVar2 = this.f4180d;
        if (cVar2 != null) {
            cVar2.clear();
        }
        if (z3) {
            f fVar = this.f4177a;
            Objects.requireNonNull(fVar);
            try {
                ThreadPoolExecutor threadPoolExecutor = fVar.f4192a;
                if (threadPoolExecutor != null) {
                    threadPoolExecutor.shutdownNow();
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    public void d(File file) {
        l.e.b(file);
        this.f4180d = new C0060b(file, 67108864L);
    }
}
