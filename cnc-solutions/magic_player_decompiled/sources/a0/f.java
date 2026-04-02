package a0;

import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import cn.huidu.lcd.core.entity.model.ExtStorage;
import cn.huidu.lcd.core.entity.model.MediaEffect;
import cn.huidu.lcd.render.model.PlayTaskNode;
import cn.huidu.lcd.render.model.ProgramNode;
import cn.huidu.lcd.render.model.extra.TagControl;
import j.v;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import n.k;
import n.n;
import org.greenrobot.eventbus.ThreadMode;
import s.m;

/* JADX INFO: loaded from: classes.dex */
public class f implements b {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static volatile f f8v;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Handler f9a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ExecutorService f10b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f11c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f12d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f13e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f14f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f15g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f16h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f17i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f18j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f19k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f20l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f21m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f22n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public PlayTaskNode f24p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public List<ProgramNode> f25q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public PlayTaskNode f26r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f27s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f28t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f29u = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final MediaEffect f23o = new MediaEffect();

    public f() {
        h.a.q0(this);
    }

    public static f e() {
        if (f8v == null) {
            synchronized (f.class) {
                if (f8v == null) {
                    f8v = new f();
                }
            }
        }
        return f8v;
    }

    public final boolean a() {
        if (this.f12d) {
            return false;
        }
        int i4 = this.f22n;
        if (i4 == 1) {
            if (m.b(w0.c.f3777a) == null) {
                j(5);
                return true;
            }
        } else if (i4 == 2) {
            String strH = m.h(w0.c.f3777a);
            android.support.v4.media.c.a("checkStorageRemovedError: usb->", strH, "PlayTaskManager");
            if (strH == null) {
                j(4);
            }
        }
        return false;
    }

    public final String b(String str) {
        int i4 = Build.VERSION.SDK_INT;
        return ((i4 == 21 || i4 == 22) && str != null && str.contains("DISK")) ? androidx.appcompat.view.a.a(str, "/udisk0") : str;
    }

    /* JADX WARN: Removed duplicated region for block: B:123:0x0250  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int c(cn.huidu.lcd.render.model.PlayTaskNode r18) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 645
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: a0.f.c(cn.huidu.lcd.render.model.PlayTaskNode):int");
    }

    public final void d(Runnable runnable) {
        ExecutorService executorService = this.f10b;
        if (executorService == null || executorService.isShutdown()) {
            this.f10b = Executors.newSingleThreadExecutor();
        }
        this.f9a.sendEmptyMessage(1);
        this.f10b.execute(runnable);
    }

    public void f() {
        n.a aVar = (n.a) l.b.c().a(n.a.class);
        this.f14f = aVar.f2608e;
        this.f15g = aVar.f2609f;
        this.f16h = aVar.f2610g;
        this.f17i = aVar.f2613j;
        this.f18j = aVar.f2614k;
        this.f19k = aVar.f2615l;
        this.f20l = aVar.f2617n;
        this.f22n = aVar.f2606c;
        k kVar = (k) l.b.c().a(k.class);
        this.f12d = kVar.f2663c == 0;
        this.f13e = kVar.f2664d;
        int i4 = kVar.f2665e;
        this.f21m = i4;
        if (i4 == 2 && cn.huidu.lcd.core.a.f337c == 103) {
            this.f21m = 1;
        }
        this.f23o.setScaleType(kVar.f2666f);
        this.f23o.setEffectType(kVar.f2667g);
        this.f23o.setDisplayTime(kVar.f2669i * 1000);
        this.f23o.setEffectTime(kVar.f2670j * 1000);
        this.f23o.setClearScreen(kVar.f2668h);
        this.f23o.setShowClock(kVar.f2671k);
        this.f11c = ((n) l.b.c().a(n.class)).f2685c;
    }

    public final void g() {
        if (a()) {
            s.h.a("PlayerDelegate: external storage removed!");
            return;
        }
        int iO = o();
        if (iO != 0) {
            if (new File(m.c()).exists() || this.f29u >= 6) {
                j(iO);
                return;
            }
            androidx.media.b.a(android.support.v4.media.f.a("loadCommonPlayTask - initLoop "), this.f29u, "PlayTaskManager");
            this.f9a.postDelayed(new c(this, 3), 5000L);
            this.f29u++;
        }
    }

    public final void h() {
        if (this.f11c) {
            j(7);
            return;
        }
        k(1);
        if (!this.f12d || this.f13e) {
            g();
        } else {
            i();
        }
    }

    public final void i() {
        String strH;
        int iO;
        int i4 = this.f21m;
        int i5 = 3;
        if (i4 == 0) {
            strH = m.h(w0.c.f3777a);
            if (strH == null) {
                strH = m.b(w0.c.f3777a);
                i5 = 2;
            }
        } else if (i4 == 1) {
            strH = m.h(w0.c.f3777a);
        } else if (i4 != 2) {
            strH = null;
            i5 = 0;
        } else {
            strH = m.b(w0.c.f3777a);
            i5 = 2;
        }
        ExtStorage extStorage = strH != null ? new ExtStorage(b(strH), i5) : null;
        if (extStorage != null) {
            iO = n(extStorage, false);
        } else {
            int i6 = this.f21m;
            iO = i6 == 2 ? 5 : i6 == 1 ? 4 : o();
        }
        if (iO != 0) {
            j(iO);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void j(int r5) {
        /*
            r4 = this;
            r4.f28t = r5
            r0 = 0
            r4.f24p = r0
            r4.f25q = r0
            l.c r0 = l.c.a()
            r1 = 3
            r2 = 1
            if (r5 == r2) goto L1e
            r3 = 2
            if (r5 == r3) goto L1c
            if (r5 == r1) goto L1e
            r3 = 4
            if (r5 == r3) goto L1e
            r3 = 5
            if (r5 == r3) goto L1e
            r3 = -3
            goto L1f
        L1c:
            r3 = -8
            goto L1f
        L1e:
            r3 = -1
        L1f:
            r0.j(r3)
            r0 = 8
            if (r5 != r0) goto L2a
            r4.m(r2)
            goto L37
        L2a:
            android.os.Handler r0 = r4.f9a
            android.os.Message r0 = r0.obtainMessage()
            r0.what = r1
            r0.arg1 = r5
            r0.sendToTarget()
        L37:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: a0.f.j(int):void");
    }

    public final void k(int i4) {
        Message messageObtainMessage = this.f9a.obtainMessage();
        messageObtainMessage.what = 6;
        messageObtainMessage.arg1 = i4;
        messageObtainMessage.sendToTarget();
    }

    public final void l(PlayTaskNode playTaskNode) {
        this.f28t = 0;
        this.f24p = playTaskNode;
        h0.g.i(playTaskNode, l.e.o());
        if (!this.f27s) {
            Log.d("PlayTaskManager", "setPlayTask: player not visible!");
            return;
        }
        Message messageObtainMessage = this.f9a.obtainMessage();
        messageObtainMessage.what = 2;
        messageObtainMessage.obj = playTaskNode;
        messageObtainMessage.sendToTarget();
    }

    public final void m(boolean z3) {
        if (!z3) {
            this.f9a.sendEmptyMessage(5);
        } else if (this.f27s) {
            this.f9a.sendEmptyMessage(4);
        } else {
            Log.d("PlayTaskManager", "showInputPassword: player not visible!");
        }
    }

    public final int n(ExtStorage extStorage, boolean z3) throws Throwable {
        StringBuilder sbA = android.support.v4.media.f.a("PlayerDelegate: tryLoadExtPlayTask: ");
        sbA.append(extStorage.path);
        s.h.a(sbA.toString());
        if (extStorage.type == 3) {
            k(3);
        } else {
            k(4);
        }
        PlayTaskNode playTaskNodeF = null;
        try {
            playTaskNodeF = h0.c.f(extStorage, this.f23o);
        } catch (IOException e4) {
            e4.printStackTrace();
        }
        if (playTaskNodeF == null || playTaskNodeF.childCount() == 0) {
            s.h.a("PlayerDelegate: tryLoadExtPlayTask: load failed!");
            return 3;
        }
        n.e eVar = (n.e) l.b.c().a(n.e.class);
        if (eVar.f2634c && !TextUtils.isEmpty(eVar.f2635d)) {
            synchronized (this) {
                this.f26r = playTaskNodeF;
            }
            s.h.a("PlayerDelegate: tryLoadExtPlayTask: need password!");
            return 8;
        }
        s.h.a("PlayerDelegate: tryLoadExtPlayTask: load success!");
        if (z3) {
            return c(playTaskNodeF);
        }
        l(playTaskNodeF);
        return 0;
    }

    public final int o() {
        s.h.a("PlayerDelegate: tryLoadPlayTask");
        k(2);
        PlayTaskNode playTaskNodeF = h0.g.f(0);
        int iD = h.a.d(playTaskNodeF);
        if (iD == 0) {
            s.h.a("PlayerDelegate: tryLoadPlayTask: Load failed!");
            return 1;
        }
        if (iD < 0) {
            s.h.a("PlayerDelegate: tryLoadPlayTask: Play task not valid!");
            return 2;
        }
        TagControl tagControlH = h0.g.h();
        if (tagControlH != null && tagControlH.isEnable()) {
            ArrayList arrayList = new ArrayList();
            List<String> showTags = tagControlH.getShowTags();
            List<String> hideTags = tagControlH.getHideTags();
            for (int i4 = 0; i4 < playTaskNodeF.childCount(); i4++) {
                ProgramNode child = playTaskNodeF.getChild(i4);
                List<String> tags = child.getTags();
                if (h0.i.a(showTags, tags) && !h0.i.a(hideTags, tags)) {
                    StringBuilder sbA = android.support.v4.media.f.a("filter: match: ");
                    sbA.append(child.getName());
                    Log.d("ProgramTagFilter", sbA.toString());
                    arrayList.add(child);
                }
            }
            playTaskNodeF.removeAllChild();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                playTaskNodeF.addChild((ProgramNode) it.next());
            }
        }
        s.h.a("PlayerDelegate: tryLoadPlayTask: Load success!");
        l(playTaskNodeF);
        return 0;
    }

    @org.greenrobot.eventbus.a(threadMode = ThreadMode.MAIN)
    public void onBusEvent(v vVar) {
        s.h.a("PlayerDelegate: onUpdatePlayTask: " + vVar);
        int i4 = vVar.f1970a;
        if (this.f11c) {
            j(7);
            return;
        }
        if (i4 == 0) {
            j(1);
            return;
        }
        if (i4 == 1) {
            f();
            this.f9a.sendEmptyMessage(1);
            return;
        }
        if (i4 != 2) {
            if (i4 != 3) {
                return;
            }
            Log.d("PlayTaskManager", "initPlay: ");
            d(new c(this, 0));
            return;
        }
        PlayTaskNode playTaskNode = (PlayTaskNode) vVar.f1971b;
        if (playTaskNode == null || playTaskNode.childCount() <= 0) {
            j(1);
        } else {
            l(playTaskNode);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x00e1  */
    @org.greenrobot.eventbus.a(threadMode = org.greenrobot.eventbus.ThreadMode.MAIN)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onBusEvent(j.s r9) {
        /*
            Method dump skipped, instruction units count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: a0.f.onBusEvent(j.s):void");
    }
}
