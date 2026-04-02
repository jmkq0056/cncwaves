package s0;

import g3.j;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile d f3436c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f3437a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List<c> f3438b;

    public d(int i4) {
        if (i4 != 1) {
            this.f3438b = new ArrayList();
        }
    }

    public static d b() {
        if (f3436c == null) {
            synchronized (d.class) {
                if (f3436c == null) {
                    f3436c = new d(0);
                }
            }
        }
        return f3436c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public synchronized void a(j jVar) {
        Object obj = this.f3438b;
        if (((j) obj) != null) {
            ((j) obj).f1771c = jVar;
            this.f3438b = jVar;
        } else {
            if (((j) this.f3437a) != null) {
                throw new IllegalStateException("Head present, but no tail");
            }
            this.f3438b = jVar;
            this.f3437a = jVar;
        }
        notifyAll();
    }

    public synchronized j c() {
        j jVar;
        Object obj = this.f3437a;
        jVar = (j) obj;
        if (((j) obj) != null) {
            j jVar2 = ((j) obj).f1771c;
            this.f3437a = jVar2;
            if (jVar2 == null) {
                this.f3438b = null;
            }
        }
        return jVar;
    }

    public synchronized j d(int i4) {
        if (((j) this.f3437a) == null) {
            wait(i4);
        }
        return c();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x002c A[Catch: all -> 0x0055, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0007, B:7:0x000e, B:18:0x002c, B:19:0x0042, B:10:0x0016, B:12:0x001e, B:14:0x0026, B:20:0x0043, B:21:0x0045), top: B:27:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void e(s0.c r5) {
        /*
            r4 = this;
            monitor-enter(r4)
            boolean r0 = r5 instanceof u0.d     // Catch: java.lang.Throwable -> L55
            r1 = 1
            r0 = r0 ^ r1
            if (r0 == 0) goto L45
            java.lang.Object r0 = r4.f3437a     // Catch: java.lang.Throwable -> L55
            r2 = r0
            s0.c r2 = (s0.c) r2     // Catch: java.lang.Throwable -> L55
            if (r2 == 0) goto L43
            s0.c r0 = (s0.c) r0     // Catch: java.lang.Throwable -> L55
            boolean r2 = r0.f3432e     // Catch: java.lang.Throwable -> L55
            r3 = 0
            if (r2 != 0) goto L16
            goto L28
        L16:
            o0.c r2 = r0.f3429b     // Catch: java.lang.Throwable -> L55
            boolean r2 = r2.e()     // Catch: java.lang.Throwable -> L55
            if (r2 == 0) goto L29
            o0.c r2 = r0.f3429b     // Catch: java.lang.Throwable -> L55
            boolean r2 = r2.a()     // Catch: java.lang.Throwable -> L55
            if (r2 != 0) goto L29
            r0.f3432e = r3     // Catch: java.lang.Throwable -> L55
        L28:
            r1 = 0
        L29:
            if (r1 != 0) goto L2c
            goto L43
        L2c:
            java.lang.String r5 = "MsgTaskManager"
            java.lang.String r0 = "tryLock: device is occupied!"
            android.util.Log.d(r5, r0)     // Catch: java.lang.Throwable -> L55
            r0.b r5 = new r0.b     // Catch: java.lang.Throwable -> L55
            java.lang.String r0 = "kSystemBusy"
            java.lang.Object r1 = r4.f3437a     // Catch: java.lang.Throwable -> L55
            s0.c r1 = (s0.c) r1     // Catch: java.lang.Throwable -> L55
            cn.huidu.lcd.transmit.model.MessageModel r1 = r1.f3430c     // Catch: java.lang.Throwable -> L55
            java.lang.String r1 = r1.uuid     // Catch: java.lang.Throwable -> L55
            r5.<init>(r0, r1)     // Catch: java.lang.Throwable -> L55
            throw r5     // Catch: java.lang.Throwable -> L55
        L43:
            r4.f3437a = r5     // Catch: java.lang.Throwable -> L55
        L45:
            java.util.List<s0.c> r0 = r4.f3438b     // Catch: java.lang.Throwable -> L55
            java.util.List r0 = (java.util.List) r0     // Catch: java.lang.Throwable -> L55
            r0.add(r5)     // Catch: java.lang.Throwable -> L55
            s.a r0 = s.a.b()     // Catch: java.lang.Throwable -> L55
            r0.a(r5)     // Catch: java.lang.Throwable -> L55
            monitor-exit(r4)
            return
        L55:
            r5 = move-exception
            monitor-exit(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: s0.d.e(s0.c):void");
    }
}
