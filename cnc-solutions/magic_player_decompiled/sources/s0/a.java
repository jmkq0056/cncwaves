package s0;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.Log;
import cn.huidu.lcd.core.db.PlayStatsDb;
import cn.huidu.lcd.core.db.VisitorStatsDb;
import cn.huidu.lcd.render.model.NodeTags;
import cn.huidu.lcd.transmit.model.MessageModel;
import cn.huidu.lcd.transmit.model.ResultData;
import cn.huidu.lcd.transmit.model.readback.GetOperateLogOptions;
import cn.huidu.lcd.transmit.model.readback.GetPlayStatsOptions;
import cn.huidu.lcd.transmit.model.readback.PlayStatsInfo;
import cn.huidu.lcd.transmit.model.readback.VisitorStatsInfo;
import j.l;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import org.greenrobot.eventbus.ThreadMode;
import t0.f;
import t0.g;
import t0.h;
import t0.i;
import v0.j;

/* JADX INFO: loaded from: classes.dex */
public class a implements Handler.Callback {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile a f3425c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Handler f3426a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map<String, b> f3427b;

    public a() {
        HashMap map = new HashMap();
        this.f3427b = map;
        map.put("Sync", new h());
        map.put(NodeTags.PLAY_TASK, new t0.a(2));
        map.put("Set", new t0.a(4));
        map.put("Get", new t0.a(1));
        map.put("Command", new t0.a(0));
        map.put("KeyEvent", new t0.d());
        map.put("Upgrade", new i());
        map.put("ScreenParam", new t0.a(3));
        map.put("ReadBack", new f());
        map.put("Task", new t0.a(5));
        map.put("SetConfig", new t0.c());
        map.put("GetConfig", new t0.b());
        map.put("Report", new g());
        HandlerThread handlerThread = new HandlerThread("MessageThread");
        handlerThread.start();
        this.f3426a = new Handler(handlerThread.getLooper(), this);
    }

    public static a b() {
        if (f3425c == null) {
            synchronized (a.class) {
                if (f3425c == null) {
                    f3425c = new a();
                }
            }
        }
        return f3425c;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0053  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(cn.huidu.lcd.transmit.model.MessageModel r6, o0.c r7) throws r0.b {
        /*
            r5 = this;
            java.util.Map<java.lang.String, s0.b> r0 = r5.f3427b
            java.lang.String r1 = r6.module
            java.lang.Object r0 = r0.get(r1)
            s0.b r0 = (s0.b) r0
            if (r0 == 0) goto L6f
            boolean r1 = r7.e()
            if (r1 == 0) goto L6b
            boolean r1 = r0.b()
            if (r1 == 0) goto L6b
            l.c r1 = l.c.a()
            boolean r2 = r1.f2319y
            if (r2 == 0) goto L6b
            java.lang.String r2 = r6.key
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 != 0) goto L61
            java.lang.String r2 = r6.key
            boolean r3 = r1.f2319y
            r4 = 1
            if (r3 != 0) goto L30
            goto L54
        L30:
            if (r2 == 0) goto L53
            int r3 = r2.length()
            if (r3 != 0) goto L39
            goto L53
        L39:
            java.lang.String r3 = r1.f2320z
            java.lang.String r3 = r1.b(r3)
            boolean r3 = r2.equals(r3)
            if (r3 == 0) goto L46
            goto L54
        L46:
            java.lang.String r3 = r1.A
            if (r3 == 0) goto L53
            java.lang.String r1 = r1.b(r3)
            boolean r4 = r2.equals(r1)
            goto L54
        L53:
            r4 = 0
        L54:
            if (r4 == 0) goto L57
            goto L6b
        L57:
            r0.b r6 = new r0.b
            java.lang.String r7 = "kPasswordError"
            java.lang.String r0 = "device lock password wrong"
            r6.<init>(r7, r0)
            throw r6
        L61:
            r0.b r6 = new r0.b
            java.lang.String r7 = "kPermissionDenied"
            java.lang.String r0 = "device lock password is empty"
            r6.<init>(r7, r0)
            throw r6
        L6b:
            r0.a(r6, r7)
            return
        L6f:
            r0.b r7 = new r0.b
            java.lang.String r0 = "unsupported module: "
            java.lang.StringBuilder r0 = android.support.v4.media.f.a(r0)
            java.lang.String r6 = r6.module
            r0.append(r6)
            java.lang.String r6 = r0.toString()
            java.lang.String r0 = "kUnsupportedModule"
            r7.<init>(r0, r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: s0.a.a(cn.huidu.lcd.transmit.model.MessageModel, o0.c):void");
    }

    public final void c(Object obj) {
        this.f3426a.removeMessages(1);
        Message messageObtain = Message.obtain();
        messageObtain.what = 1;
        messageObtain.obj = obj;
        this.f3426a.sendMessageDelayed(messageObtain, 3000L);
    }

    public void d(o0.c cVar) {
        Log.d("MessageCenter", "onConnected: ");
        try {
            ((i) this.f3427b.get("Upgrade")).f(cVar);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        f(cVar, false);
        if (this.f3426a.hasMessages(100)) {
            return;
        }
        this.f3426a.sendEmptyMessageDelayed(100, 5000L);
    }

    public void e(MessageModel messageModel, o0.c cVar) {
        try {
            a(messageModel, cVar);
        } catch (r0.b e4) {
            cVar.c(messageModel, ResultData.error(e4.f3358a, e4.getMessage()));
        } catch (Throwable th) {
            String strE = w0.h.e(th);
            s.h.a(strE);
            cVar.c(messageModel, ResultData.error("kInternalError", strE));
        }
    }

    public final void f(o0.c cVar, boolean z3) {
        try {
            ((h) this.f3427b.get("Sync")).f(cVar, z3);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @org.greenrobot.eventbus.a(threadMode = ThreadMode.BACKGROUND)
    public void handleEvent(j.d dVar) {
        StringBuilder sbA = android.support.v4.media.f.a("handleEvent: ConfigChangedEvent: ");
        sbA.append(dVar.f1935a);
        Log.d("MessageCenter", sbA.toString());
        if (p0.a.j().f2975f || p0.a.j().f2976g) {
            c(dVar);
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i4 = message.what;
        final int i5 = 1;
        if (i4 == 1) {
            if (p0.a.j().f2975f || p0.a.j().f2976g) {
                f(p0.a.j(), message.obj instanceof j.e);
            }
            return true;
        }
        if (i4 != 100) {
            final int i6 = 0;
            if (i4 != 2 && i4 != 3) {
                return false;
            }
            this.f3426a.removeMessages(i4);
            if (!p0.a.j().f2975f && !p0.a.j().f2976g) {
                this.f3426a.sendEmptyMessageDelayed(message.what, 30000L);
            } else if (((f) this.f3427b.get("ReadBack")) != null) {
                int i7 = message.what;
                if (i7 == 2) {
                    final p0.a aVarJ = p0.a.j();
                    s.a.b().a(new Runnable() { // from class: t0.e
                        @Override // java.lang.Runnable
                        public final void run() throws Throwable {
                            switch (i6) {
                                case 0:
                                    o0.c cVar = aVarJ;
                                    try {
                                        List<PlayStatsInfo> listA = j.a(new GetPlayStatsOptions());
                                        ArrayList arrayList = (ArrayList) listA;
                                        if (!arrayList.isEmpty()) {
                                            File fileC = j.c(listA, "PlayStatsReport.zip");
                                            if (fileC.exists()) {
                                                PlayStatsDb.deleteAll();
                                            }
                                            byte[] bArrY = l.e.y(fileC, 33554432);
                                            if (bArrY != null) {
                                                cVar.b("/zip/lcd/playStats", bArrY);
                                                s.h.a("play stats reported, item count: " + arrayList.size());
                                            }
                                        } else {
                                            s.h.a("play stats is empty!");
                                        }
                                    } catch (r0.b e4) {
                                        int i8 = s.h.f3410a;
                                        s.h.a(w0.h.e(e4));
                                    }
                                    break;
                                default:
                                    o0.c cVar2 = aVarJ;
                                    try {
                                        List<VisitorStatsInfo> listB = j.b(new GetOperateLogOptions());
                                        ArrayList arrayList2 = (ArrayList) listB;
                                        if (!arrayList2.isEmpty()) {
                                            File fileC2 = j.c(listB, "VisitorStatsReport.zip");
                                            if (fileC2.exists()) {
                                                VisitorStatsDb.deleteAll();
                                            }
                                            byte[] bArrY2 = l.e.y(fileC2, 33554432);
                                            if (bArrY2 != null) {
                                                cVar2.b("/zip/lcd/visitorStats", bArrY2);
                                                s.h.a("visitor stats reported, item count: " + arrayList2.size());
                                            }
                                        } else {
                                            s.h.a("visitor stats is empty!");
                                        }
                                    } catch (r0.b e5) {
                                        int i9 = s.h.f3410a;
                                        s.h.a(w0.h.e(e5));
                                        return;
                                    }
                                    break;
                            }
                        }
                    });
                } else if (i7 == 3) {
                    final p0.a aVarJ2 = p0.a.j();
                    s.a.b().a(new Runnable() { // from class: t0.e
                        @Override // java.lang.Runnable
                        public final void run() throws Throwable {
                            switch (i5) {
                                case 0:
                                    o0.c cVar = aVarJ2;
                                    try {
                                        List<PlayStatsInfo> listA = j.a(new GetPlayStatsOptions());
                                        ArrayList arrayList = (ArrayList) listA;
                                        if (!arrayList.isEmpty()) {
                                            File fileC = j.c(listA, "PlayStatsReport.zip");
                                            if (fileC.exists()) {
                                                PlayStatsDb.deleteAll();
                                            }
                                            byte[] bArrY = l.e.y(fileC, 33554432);
                                            if (bArrY != null) {
                                                cVar.b("/zip/lcd/playStats", bArrY);
                                                s.h.a("play stats reported, item count: " + arrayList.size());
                                            }
                                        } else {
                                            s.h.a("play stats is empty!");
                                        }
                                    } catch (r0.b e4) {
                                        int i8 = s.h.f3410a;
                                        s.h.a(w0.h.e(e4));
                                    }
                                    break;
                                default:
                                    o0.c cVar2 = aVarJ2;
                                    try {
                                        List<VisitorStatsInfo> listB = j.b(new GetOperateLogOptions());
                                        ArrayList arrayList2 = (ArrayList) listB;
                                        if (!arrayList2.isEmpty()) {
                                            File fileC2 = j.c(listB, "VisitorStatsReport.zip");
                                            if (fileC2.exists()) {
                                                VisitorStatsDb.deleteAll();
                                            }
                                            byte[] bArrY2 = l.e.y(fileC2, 33554432);
                                            if (bArrY2 != null) {
                                                cVar2.b("/zip/lcd/visitorStats", bArrY2);
                                                s.h.a("visitor stats reported, item count: " + arrayList2.size());
                                            }
                                        } else {
                                            s.h.a("visitor stats is empty!");
                                        }
                                    } catch (r0.b e5) {
                                        int i9 = s.h.f3410a;
                                        s.h.a(w0.h.e(e5));
                                        return;
                                    }
                                    break;
                            }
                        }
                    });
                }
            } else {
                Log.d("MessageCenter", "ReadBackHandler not registered!");
            }
            return true;
        }
        e eVarA = e.a();
        synchronized (eVarA) {
            try {
                if (eVarA.f3440a.a()) {
                    s.h.a("ReportManager: try report play stats.");
                    a aVarB = b();
                    Objects.requireNonNull(aVarB);
                    Log.d("MessageCenter", "autoReportPlayStats: ");
                    aVarB.f3426a.removeMessages(2);
                    aVarB.f3426a.sendEmptyMessageDelayed(2, 3000L);
                }
                if (eVarA.f3441b.a()) {
                    s.h.a("ReportManager: try report visitor stats.");
                    a aVarB2 = b();
                    Objects.requireNonNull(aVarB2);
                    Log.d("MessageCenter", "autoReportVisitorStats: ");
                    aVarB2.f3426a.removeMessages(3);
                    aVarB2.f3426a.sendEmptyMessageDelayed(3, 3000L);
                }
            } finally {
            }
        }
        this.f3426a.removeMessages(100);
        this.f3426a.sendEmptyMessageDelayed(100, 5000L);
        return true;
    }

    @org.greenrobot.eventbus.a(threadMode = ThreadMode.BACKGROUND)
    public void handleEvent(l lVar) {
        StringBuilder sbA = android.support.v4.media.f.a("handleEvent: PlayTaskChangedEvent: ");
        sbA.append(lVar.f1948a);
        Log.d("MessageCenter", sbA.toString());
        if (p0.a.j().f2975f || p0.a.j().f2976g) {
            c(lVar);
        }
    }

    @org.greenrobot.eventbus.a(threadMode = ThreadMode.BACKGROUND)
    public void handleEvent(j.e eVar) {
        Log.d("MessageCenter", "handleEvent: StateChangedEvent: ");
        if (p0.a.j().f2975f || p0.a.j().f2976g) {
            c(eVar);
        }
    }
}
