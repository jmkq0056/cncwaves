package m;

import s.l;

/* JADX INFO: loaded from: classes.dex */
public abstract class d implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final l f2466a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f2467b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Thread f2468c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2469d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f2470e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2471f = 2;

    public d(String str, int i4, int i5, int i6, char c4) {
        this.f2466a = new l(str, i4, i5, i6, c4);
    }

    public abstract void a();

    public abstract void b(byte[] bArr, int i4);

    public void c() {
    }

    public void d() {
        this.f2469d = true;
        Thread thread = this.f2468c;
        if (thread == null || !thread.isAlive()) {
            Thread thread2 = new Thread(this);
            this.f2468c = thread2;
            thread2.setName("SerialPortIO");
            this.f2468c.start();
        }
    }

    public abstract void e(byte[] bArr);

    /* JADX WARN: Removed duplicated region for block: B:20:0x006b  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            r11 = this;
            r0 = 10
            android.os.Process.setThreadPriority(r0)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Serial port thread started: "
            r0.append(r1)
            s.l r1 = r11.f2466a
            java.lang.String r1 = r1.f3418a
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            s.h.a(r0)
            r0 = 1024(0x400, float:1.435E-42)
            byte[] r0 = new byte[r0]
        L21:
            boolean r1 = r11.f2469d
            r2 = -1
            r3 = 0
            if (r1 == 0) goto L94
            s.l r1 = r11.f2466a
            int r4 = r1.f3423f
            r5 = 1
            if (r4 <= 0) goto L30
            r4 = 1
            goto L31
        L30:
            r4 = 0
        L31:
            if (r4 == 0) goto L34
            goto L6b
        L34:
            java.lang.String r4 = r1.f3418a
            java.lang.String r6 = "SerialPort"
            if (r4 != 0) goto L40
            java.lang.String r1 = "serial port params not init!"
            android.util.Log.w(r6, r1)
            goto L6c
        L40:
            r7 = 258(0x102, float:3.62E-43)
            int r4 = cn.huidu.lcd.core.util.NativeIO.open(r4, r7)
            r1.f3423f = r4
            if (r4 != r2) goto L50
            java.lang.String r1 = "open serial port failed"
            android.util.Log.w(r6, r1)
            goto L6c
        L50:
            int r7 = r1.f3419b
            int r8 = r1.f3420c
            int r9 = r1.f3421d
            char r10 = r1.f3422e
            boolean r4 = cn.huidu.lcd.core.util.NativeIO.initSerial(r4, r7, r8, r9, r10)
            if (r4 != 0) goto L6b
            java.lang.String r4 = "init serial port failed"
            android.util.Log.w(r6, r4)
            int r4 = r1.f3423f
            cn.huidu.lcd.core.util.NativeIO.close(r4)
            r1.f3423f = r2
            goto L6c
        L6b:
            r3 = 1
        L6c:
            if (r3 != 0) goto L74
            r1 = 5000(0x1388, double:2.4703E-320)
            android.os.SystemClock.sleep(r1)
            goto L21
        L74:
            boolean r1 = r11.f2467b
            if (r1 != 0) goto L7d
            r11.f2467b = r5
            r11.a()
        L7d:
            s.l r1 = r11.f2466a
            int r1 = r1.f3423f
            r2 = 500(0x1f4, float:7.0E-43)
            int r1 = cn.huidu.lcd.core.util.NativeIO.read(r1, r0, r2)
            if (r1 <= 0) goto L8e
            java.lang.String r2 = "read"
            s.l.a(r2, r0, r1)
        L8e:
            if (r1 <= 0) goto L21
            r11.b(r0, r1)
            goto L21
        L94:
            s.l r0 = r11.f2466a
            int r1 = r0.f3423f
            if (r1 == r2) goto L9f
            cn.huidu.lcd.core.util.NativeIO.close(r1)
            r0.f3423f = r2
        L9f:
            r11.f2467b = r3
            java.lang.String r0 = "Serial port thread finished: "
            java.lang.StringBuilder r0 = android.support.v4.media.f.a(r0)
            s.l r1 = r11.f2466a
            java.lang.String r1 = r1.f3418a
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            s.h.a(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: m.d.run():void");
    }
}
