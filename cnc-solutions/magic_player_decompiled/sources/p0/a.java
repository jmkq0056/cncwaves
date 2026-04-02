package p0;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.support.v4.media.f;
import android.util.Log;
import cn.huidu.lcd.core.entity.model.CloudRegisterResult;
import cn.huidu.lcd.transmit.model.MessageModel;
import cn.huidu.lcd.transmit.model.ResultData;
import j.j;
import java.nio.charset.StandardCharsets;
import java.util.Objects;
import l.e;
import n.d;
import o0.b;
import o0.c;
import s.h;
import x2.g;
import x2.i;
import x2.k;
import x2.n;
import x2.s;

/* JADX INFO: loaded from: classes.dex */
public class a implements c, Handler.Callback {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static volatile a f2969n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public i f2970a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public HandlerThread f2971b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Handler f2972c;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f2977h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f2978i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f2979j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f2980k;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f2973d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2974e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f2975f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2976g = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2981l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final g f2982m = new C0035a();

    /* JADX INFO: renamed from: p0.a$a, reason: collision with other inner class name */
    public class C0035a implements g {
        public C0035a() {
        }

        @Override // x2.g
        public void a(String str, n nVar) {
            a aVar = a.this;
            byte[] bArr = nVar.f3982a;
            Objects.requireNonNull(aVar);
            String str2 = new String(bArr, StandardCharsets.UTF_8);
            h.a("MQTT receive: " + str2);
            MessageModel messageModel = (MessageModel) h.a.A0(str2, MessageModel.class);
            if (messageModel != null && messageModel.module != null) {
                s0.a.b().e(messageModel, aVar);
                return;
            }
            MessageModel messageModel2 = new MessageModel();
            messageModel2.uuid = messageModel != null ? messageModel.uuid : null;
            messageModel2.module = "Error";
            messageModel2.reply = ResultData.error("kIllegalMessage", "invalid message");
            aVar.d(messageModel2);
        }

        @Override // x2.g
        public void b(Throwable th) {
            StringBuilder sbA = f.a("connectionLost::");
            sbA.append(th.getMessage());
            h.a(sbA.toString());
            a.this.n(false);
            a.this.o(false);
        }

        @Override // x2.g
        public void c(x2.c cVar) {
            h.a("deliveryComplete::");
        }
    }

    public static a j() {
        if (f2969n == null) {
            synchronized (a.class) {
                if (f2969n == null) {
                    f2969n = new a();
                }
            }
        }
        return f2969n;
    }

    @Override // o0.c
    public /* synthetic */ boolean a() {
        return b.a(this);
    }

    @Override // o0.c
    public void b(String str, byte[] bArr) {
        Handler handler = s0.a.b().f3426a;
        if (handler == null || Looper.myLooper() == handler.getLooper()) {
            l(str, bArr);
        } else {
            handler.post(new l.n(this, str, bArr));
        }
    }

    @Override // o0.c
    public /* synthetic */ void c(MessageModel messageModel, ResultData resultData) {
        b.c(this, messageModel, resultData);
    }

    @Override // o0.c
    public void d(MessageModel messageModel) {
        String strY0 = h.a.y0(messageModel);
        if (strY0 == null) {
            StringBuilder sbA = f.a("MessageModel to json failed: ");
            sbA.append(messageModel.uuid);
            h.a(sbA.toString());
        } else {
            StringBuilder sbA2 = f.a("MQTT send (length = ");
            sbA2.append(strY0.length());
            sbA2.append("): ");
            sbA2.append(strY0);
            h.a(sbA2.toString());
            b("/json/lcd/message", strY0.getBytes(StandardCharsets.UTF_8));
        }
    }

    @Override // o0.c
    public /* synthetic */ boolean e() {
        return b.b(this);
    }

    @Override // o0.c
    public /* synthetic */ void f(o0.a aVar) {
        b.e(this, aVar);
    }

    public synchronized void g() {
        h.a("MqttMsgClient close: ");
        this.f2974e = false;
        Handler handler = this.f2972c;
        if (handler != null) {
            handler.removeMessages(1);
            this.f2972c.sendEmptyMessage(2);
        }
    }

    public final void h() {
        h.a("MqttMsgClient closeConnection: ");
        try {
            n(false);
            o(false);
            synchronized (this.f2973d) {
                i iVar = this.f2970a;
                if (iVar != null) {
                    if (iVar.B()) {
                        ((s) this.f2970a.f3972a.D(null, null)).f3986a.d(-1L);
                    }
                    this.f2970a.close();
                    this.f2970a = null;
                }
            }
        } catch (Exception e4) {
            StringBuilder sbA = f.a("closeConnection: +++ ");
            sbA.append(e4.getMessage());
            Log.d("MqttMsgClient", sbA.toString());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x003e A[Catch: Exception -> 0x009c, TryCatch #0 {Exception -> 0x009c, blocks: (B:4:0x0005, B:6:0x000a, B:7:0x000c, B:37:0x0090, B:39:0x0094, B:20:0x0021, B:21:0x0022, B:23:0x003e, B:25:0x0044, B:27:0x0054, B:28:0x005d, B:29:0x0066, B:31:0x006a, B:33:0x0074, B:34:0x007c, B:36:0x0082, B:8:0x000d, B:10:0x0011, B:15:0x001b), top: B:46:0x0005, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006a A[Catch: Exception -> 0x009c, TryCatch #0 {Exception -> 0x009c, blocks: (B:4:0x0005, B:6:0x000a, B:7:0x000c, B:37:0x0090, B:39:0x0094, B:20:0x0021, B:21:0x0022, B:23:0x003e, B:25:0x0044, B:27:0x0054, B:28:0x005d, B:29:0x0066, B:31:0x006a, B:33:0x0074, B:34:0x007c, B:36:0x0082, B:8:0x000d, B:10:0x0011, B:15:0x001b), top: B:46:0x0005, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x007c A[Catch: Exception -> 0x009c, TryCatch #0 {Exception -> 0x009c, blocks: (B:4:0x0005, B:6:0x000a, B:7:0x000c, B:37:0x0090, B:39:0x0094, B:20:0x0021, B:21:0x0022, B:23:0x003e, B:25:0x0044, B:27:0x0054, B:28:0x005d, B:29:0x0066, B:31:0x006a, B:33:0x0074, B:34:0x007c, B:36:0x0082, B:8:0x000d, B:10:0x0011, B:15:0x001b), top: B:46:0x0005, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0094 A[Catch: Exception -> 0x009c, TRY_LEAVE, TryCatch #0 {Exception -> 0x009c, blocks: (B:4:0x0005, B:6:0x000a, B:7:0x000c, B:37:0x0090, B:39:0x0094, B:20:0x0021, B:21:0x0022, B:23:0x003e, B:25:0x0044, B:27:0x0054, B:28:0x005d, B:29:0x0066, B:31:0x006a, B:33:0x0074, B:34:0x007c, B:36:0x0082, B:8:0x000d, B:10:0x0011, B:15:0x001b), top: B:46:0x0005, inners: #1 }] */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean handleMessage(@androidx.annotation.NonNull android.os.Message r5) {
        /*
            r4 = this;
            int r5 = r5.what
            r0 = 1
            if (r5 != r0) goto La2
            boolean r5 = r4.f2977h     // Catch: java.lang.Exception -> L9c
            r1 = 0
            if (r5 != 0) goto L22
            java.lang.Object r5 = r4.f2973d     // Catch: java.lang.Exception -> L9c
            monitor-enter(r5)     // Catch: java.lang.Exception -> L9c
            x2.i r2 = r4.f2970a     // Catch: java.lang.Throwable -> L1f
            if (r2 == 0) goto L1a
            boolean r2 = r2.B()     // Catch: java.lang.Throwable -> L1f
            if (r2 != 0) goto L18
            goto L1a
        L18:
            r2 = 0
            goto L1b
        L1a:
            r2 = 1
        L1b:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L1f
            if (r2 == 0) goto L90
            goto L22
        L1f:
            r1 = move-exception
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L1f
            throw r1     // Catch: java.lang.Exception -> L9c
        L22:
            java.lang.String r5 = "MqttMsgClient"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L9c
            r2.<init>()     // Catch: java.lang.Exception -> L9c
            java.lang.String r3 = "loop: mConfigChanged+++"
            r2.append(r3)     // Catch: java.lang.Exception -> L9c
            boolean r3 = r4.f2977h     // Catch: java.lang.Exception -> L9c
            r2.append(r3)     // Catch: java.lang.Exception -> L9c
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> L9c
            android.util.Log.d(r5, r2)     // Catch: java.lang.Exception -> L9c
            boolean r5 = r4.f2977h     // Catch: java.lang.Exception -> L9c
            if (r5 == 0) goto L66
            r4.f2977h = r1     // Catch: java.lang.Exception -> L9c
            int r5 = r4.f2981l     // Catch: java.lang.Exception -> L9c
            if (r5 != 0) goto L66
            l.b r5 = l.b.c()     // Catch: java.lang.Exception -> L9c
            java.lang.Class<n.c> r1 = n.c.class
            n.b r5 = r5.a(r1)     // Catch: java.lang.Exception -> L9c
            n.c r5 = (n.c) r5     // Catch: java.lang.Exception -> L9c
            boolean r1 = r5.f2627c     // Catch: java.lang.Exception -> L9c
            if (r1 == 0) goto L5d
            java.lang.String r1 = r5.f2628d     // Catch: java.lang.Exception -> L9c
            r4.f2978i = r1     // Catch: java.lang.Exception -> L9c
            java.lang.String r5 = r5.f2629e     // Catch: java.lang.Exception -> L9c
            r4.f2979j = r5     // Catch: java.lang.Exception -> L9c
            goto L66
        L5d:
            java.lang.String r5 = "Cloud server is not registered!"
            s.h.a(r5)     // Catch: java.lang.Exception -> L9c
            r4.g()     // Catch: java.lang.Exception -> L9c
            goto La8
        L66:
            int r5 = r4.f2981l     // Catch: java.lang.Exception -> L9c
            if (r5 != 0) goto L7c
            java.lang.String r5 = r4.f2978i     // Catch: java.lang.Exception -> L9c
            java.lang.String r1 = r4.f2979j     // Catch: java.lang.Exception -> L9c
            boolean r5 = r4.m(r5, r1)     // Catch: java.lang.Exception -> L9c
            if (r5 == 0) goto L90
            s0.a r5 = s0.a.b()     // Catch: java.lang.Exception -> L9c
            r5.d(r4)     // Catch: java.lang.Exception -> L9c
            goto L90
        L7c:
            boolean r5 = r4.i()     // Catch: java.lang.Exception -> L9c
            if (r5 == 0) goto L90
            java.lang.String r5 = "MqttMsgClient"
            java.lang.String r1 = "loop: +++ createLanConnection"
            android.util.Log.d(r5, r1)     // Catch: java.lang.Exception -> L9c
            s0.a r5 = s0.a.b()     // Catch: java.lang.Exception -> L9c
            r5.d(r4)     // Catch: java.lang.Exception -> L9c
        L90:
            boolean r5 = r4.f2974e     // Catch: java.lang.Exception -> L9c
            if (r5 == 0) goto La8
            android.os.Handler r5 = r4.f2972c     // Catch: java.lang.Exception -> L9c
            r1 = 5000(0x1388, double:2.4703E-320)
            r5.sendEmptyMessageDelayed(r0, r1)     // Catch: java.lang.Exception -> L9c
            goto La8
        L9c:
            java.lang.String r5 = "MqttMsgClient: monitor thread interrupted."
            s.h.a(r5)
            goto La8
        La2:
            r1 = 2
            if (r5 != r1) goto La8
            r4.h()
        La8:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p0.a.handleMessage(android.os.Message):boolean");
    }

    public final boolean i() {
        h();
        n.g gVar = (n.g) l.b.c().a(n.g.class);
        d dVar = (d) l.b.c().a(d.class);
        this.f2980k = gVar.f2650f;
        String str = gVar.f2651g;
        if ("".equals(str)) {
            return false;
        }
        try {
            String str2 = "tcp://" + str.substring(0, str.indexOf(":")) + ":" + str.substring(str.indexOf(":") + 1);
            String str3 = dVar.f2632d;
            k kVar = new k();
            kVar.f3977d = true;
            kVar.f3978e = 30;
            kVar.f3974a = 30;
            d3.b bVar = new d3.b(e.w(e.f(), "MqttPersistence").getAbsolutePath());
            synchronized (this.f2973d) {
                i iVar = new i(str2, str3, bVar);
                this.f2970a = iVar;
                g gVar2 = this.f2982m;
                x2.f fVar = iVar.f3972a;
                fVar.f3966f = gVar2;
                fVar.f3964d.f4020h.f4069b = gVar2;
                iVar.f3973b = 30000L;
                ((s) fVar.C(kVar, null, null)).f3986a.d(iVar.f3973b);
                this.f2970a.D(str3, 1);
            }
            o(true);
            h.a("MqttMsgClient: connect success!");
            return true;
        } catch (Exception e4) {
            StringBuilder sbA = f.a("MqttMsgClient: connect failed: ");
            sbA.append(e4.getMessage());
            h.a(sbA.toString());
            return false;
        }
    }

    public synchronized void k() {
        h.a("MqttMsgClient open: ");
        this.f2977h = true;
        this.f2974e = true;
        HandlerThread handlerThread = this.f2971b;
        if (handlerThread == null || !handlerThread.isAlive()) {
            HandlerThread handlerThread2 = new HandlerThread("MqttThread");
            this.f2971b = handlerThread2;
            handlerThread2.start();
            this.f2972c = new Handler(this.f2971b.getLooper(), this);
        }
        if (this.f2972c.hasMessages(1)) {
            this.f2972c.removeMessages(1);
        }
        this.f2972c.sendEmptyMessage(1);
    }

    public final void l(String str, byte[] bArr) {
        try {
            h.a("publish::" + str + ", " + bArr);
            synchronized (this.f2973d) {
                i iVar = this.f2970a;
                if (iVar == null || !iVar.B()) {
                    h.a("message publish failed (not connected)");
                } else {
                    this.f2970a.C(str, bArr, 0, false);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public final boolean m(String str, String str2) {
        h.a("reconnect: " + str + ", username: " + str2);
        h();
        CloudRegisterResult cloudRegisterResultF = s.k.f(str, str2, l.c.a().f2296b);
        if (!cloudRegisterResultF.isRegisterSuccess()) {
            return false;
        }
        if (cloudRegisterResultF.resources.host.endsWith("/")) {
            this.f2980k = cloudRegisterResultF.resources.host;
        } else {
            this.f2980k = cloudRegisterResultF.resources.host + ":" + cloudRegisterResultF.resources.port;
        }
        StringBuilder sbA = f.a("tcp://");
        sbA.append(cloudRegisterResultF.mqtt.host);
        sbA.append(":");
        sbA.append(cloudRegisterResultF.mqtt.port);
        String string = sbA.toString();
        String str3 = cloudRegisterResultF.username;
        String str4 = cloudRegisterResultF.password;
        String str5 = cloudRegisterResultF.clientId;
        k kVar = new k();
        kVar.f3977d = true;
        kVar.f3978e = 30;
        kVar.f3974a = 30;
        if (str3 != null) {
            kVar.f3975b = str3;
        }
        if (str4 != null) {
            kVar.f3976c = (char[]) str4.toCharArray().clone();
        }
        try {
            d3.b bVar = new d3.b(e.w(e.f(), "MqttPersistence").getAbsolutePath());
            synchronized (this.f2973d) {
                i iVar = new i(string, str5, bVar);
                this.f2970a = iVar;
                g gVar = this.f2982m;
                x2.f fVar = iVar.f3972a;
                fVar.f3966f = gVar;
                fVar.f3964d.f4020h.f4069b = gVar;
                iVar.f3973b = 30000L;
                ((s) fVar.C(kVar, null, null)).f3986a.d(iVar.f3973b);
                this.f2970a.D(str5, 1);
            }
            Log.d("MqttMsgClient", "createConnection: ");
            n(true);
            h.a("MqttMsgClient: connect success!");
            return true;
        } catch (Exception e4) {
            h.a("MqttMsgClient: connect failed: " + e4);
            return false;
        }
    }

    public final void n(boolean z3) {
        this.f2975f = z3;
        l.c cVarA = l.c.a();
        if (cVarA.G != z3) {
            StringBuilder sbA = f.a("setMqttConnected: mMqttConnected-->");
            sbA.append(cVarA.G);
            sbA.append(" connected-> ");
            sbA.append(z3);
            h.a(sbA.toString());
            cVarA.G = z3;
            g3.c.b().f(new j(z3));
        }
    }

    public final void o(boolean z3) {
        this.f2976g = z3;
        l.c cVarA = l.c.a();
        if (cVarA.H != z3) {
            StringBuilder sbA = f.a("setLanMqttConnected: mLanMqttConnected-->");
            sbA.append(cVarA.H);
            sbA.append(" connected-> ");
            sbA.append(z3);
            h.a(sbA.toString());
            cVarA.H = z3;
            g3.c.b().f(new j(z3));
        }
    }
}
