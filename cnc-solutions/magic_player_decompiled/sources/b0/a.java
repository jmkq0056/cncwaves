package b0;

import a0.g;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import cn.huidu.lcd.render.model.PlayIndex;
import cn.huidu.lcd.render.model.PlayList;
import cn.huidu.lcd.render.model.PlayTaskNode;
import cn.huidu.lcd.render.model.ProgramNode;
import cn.huidu.lcd.render.model.enums.FaceDetectTag;
import d0.c;
import d0.f;
import h0.h;
import h0.l;
import j.q;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import org.eclipse.jetty.http.HttpStatus;

/* JADX INFO: loaded from: classes.dex */
public class a extends b implements c.a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public c0.c f152g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final PlayList f153h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final l f154i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List<ProgramNode> f155j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public f f156k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public f f157l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f158m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f159n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f160o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f161p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public long f162q;

    /* JADX INFO: renamed from: b0.a$a, reason: collision with other inner class name */
    public class C0008a extends l {
        public C0008a() {
        }

        @Override // h0.l
        public void a() {
            a aVar = a.this;
            if (aVar.f168e == 2) {
                aVar.o(aVar.f152g.f(aVar.f156k, aVar.f153h, aVar.f158m));
                if (l.c.a().K && aVar.f164a.f38i) {
                    n.a aVar2 = (n.a) l.b.c().a(n.a.class);
                    long jS = aVar.f156k.s();
                    StringBuilder sbA = android.support.v4.media.f.a("checkPlaying: +++index ");
                    sbA.append(aVar2.f2611h);
                    sbA.append(" position ");
                    sbA.append(jS);
                    Log.d("AutoPlayController", sbA.toString());
                    aVar2.f2612i = jS;
                    l.b.c().d(aVar2);
                    g gVar = aVar.f164a;
                    synchronized (gVar) {
                        gVar.f38i = false;
                    }
                }
            }
        }
    }

    public a(g gVar, c0.c cVar) {
        super(gVar);
        this.f152g = cVar;
        this.f153h = new PlayList();
        this.f155j = new ArrayList();
        this.f154i = new C0008a();
    }

    @Override // b0.b
    public f a() {
        return this.f156k;
    }

    @Override // b0.b
    public void b(Message message) {
        ProgramNode programNode;
        int duration = 0;
        switch (message.what) {
            case 1:
                k();
                break;
            case 2:
                l();
                break;
            case 3:
                androidx.media.b.a(android.support.v4.media.f.a("handleMessage: msg.arg1-->"), message.arg1, "AutoPlayController");
                r(message.arg1, message.arg2);
                break;
            case 4:
                p(this.f156k);
                this.f156k = null;
                break;
            case 5:
                int i4 = message.arg1;
                int i5 = this.f158m;
                if (i4 == i5) {
                    c0.c cVar = this.f152g;
                    PlayList playList = this.f153h;
                    f fVar = this.f156k;
                    if (fVar != null && fVar.f1490e == 1) {
                        duration = (int) (((long) ((ProgramNode) fVar.f1487b).getDuration()) - this.f156k.s());
                    }
                    int iE = cVar.e(playList, i5, duration);
                    if (iE >= 0 && (programNode = this.f153h.get(iE)) != null) {
                        f fVar2 = this.f157l;
                        if (fVar2 != null) {
                            if (fVar2.f1487b == programNode) {
                                h.b("AutoPlayController", "preload: program already preloaded.");
                            } else {
                                h.b("AutoPlayController", "preload: release last preload program.");
                                this.f157l.G();
                            }
                        }
                        h.b("AutoPlayController", "preload: " + iE);
                        f fVar3 = new f(this.f164a);
                        this.f157l = fVar3;
                        fVar3.f1487b = programNode;
                        fVar3.m();
                        this.f157l.B();
                        break;
                    }
                }
                break;
            case 6:
                q(this.f161p);
                this.f161p = 0;
                break;
            case 7:
                l();
                k();
                break;
        }
    }

    @Override // b0.b
    public void c() {
        if (this.f152g.g()) {
            return;
        }
        t(1);
    }

    @Override // b0.b
    public void d(j.g gVar) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        PlayTaskNode playTaskNode = this.f166c;
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < playTaskNode.childCount(); i11++) {
            ProgramNode child = playTaskNode.getChild(i11);
            List<String> tags = child.getTags();
            if (tags != null && !tags.isEmpty()) {
                boolean zContains = tags.contains(FaceDetectTag.MALE);
                boolean zContains2 = tags.contains(FaceDetectTag.FEMALE);
                boolean zContains3 = tags.contains(FaceDetectTag.CHILD);
                boolean zContains4 = tags.contains(FaceDetectTag.YOUNG);
                boolean zContains5 = tags.contains(FaceDetectTag.MIDDLE_AGED);
                boolean zContains6 = tags.contains(FaceDetectTag.ELDERLY);
                int i12 = (!zContains || (i10 = gVar.f1939a) <= 0) ? 0 : i10 + 0;
                if (zContains2 && (i9 = gVar.f1940b) > 0) {
                    i12 += i9;
                }
                if ((!zContains && !zContains2) || i12 != 0) {
                    int i13 = (!zContains3 || (i8 = gVar.f1941c) <= 0) ? 0 : i8 + 0;
                    if (zContains4 && (i7 = gVar.f1942d) > 0) {
                        i13 += i7;
                    }
                    if (zContains5 && (i6 = gVar.f1943e) > 0) {
                        i13 += i6;
                    }
                    if (zContains6 && (i5 = gVar.f1944f) > 0) {
                        i13 += i5;
                    }
                    if (((!zContains3 && !zContains4 && !zContains5 && !zContains6) || i13 != 0) && (i4 = i12 + i13) > 0) {
                        StringBuilder sbA = android.support.v4.media.f.a("filter: match: ");
                        sbA.append(child.getName());
                        Log.d("ProgramTagFilter", sbA.toString());
                        child.setTagHitCount(i4);
                        arrayList.add(child);
                    }
                }
            }
        }
        Collections.sort(arrayList, p.a.f2915d);
        if (arrayList.isEmpty()) {
            if (this.f155j.isEmpty()) {
                return;
            }
            Log.d("AutoPlayController", "clear insert programs.");
            this.f155j.clear();
            int i14 = this.f160o;
            if (i14 >= 0) {
                o(this.f152g.c(this.f153h, i14 - 1));
                this.f160o = -1;
                return;
            }
            return;
        }
        boolean z3 = !this.f155j.isEmpty();
        this.f155j.clear();
        this.f155j.addAll(arrayList);
        f fVar = this.f156k;
        if (fVar == null || fVar.f1490e != 1) {
            this.f160o = -1;
        } else {
            ProgramNode programNode = (ProgramNode) fVar.f1487b;
            if (this.f155j.contains(programNode)) {
                this.f159n = this.f155j.indexOf(programNode);
                return;
            } else {
                if (z3) {
                    this.f159n = -1;
                    return;
                }
                this.f160o = this.f158m;
            }
        }
        s(0);
    }

    @Override // b0.b
    public boolean e(PlayTaskNode playTaskNode) {
        this.f153h.clear();
        int duration = 0;
        for (int i4 = 0; i4 < playTaskNode.childCount(); i4++) {
            ProgramNode child = playTaskNode.getChild(i4);
            if (!child.isOnlyFaceDetect()) {
                this.f153h.add(child);
                duration += child.getDuration();
            }
        }
        this.f153h.setDuration(duration);
        this.f153h.setTimeStamp(playTaskNode.getTimeStamp());
        g gVar = this.f164a;
        List<ProgramNode> programs = this.f153h.getPrograms();
        a0.f fVar = (a0.f) gVar.f33d;
        Objects.requireNonNull(fVar);
        if (programs != null) {
            fVar.f25q = new ArrayList(programs);
        } else {
            fVar.f25q = null;
        }
        return !this.f153h.isEmpty() && duration > 0;
    }

    @Override // b0.b
    public void f(q qVar) {
    }

    @Override // b0.b
    public void g() {
        if (this.f152g.a()) {
            return;
        }
        super.g();
        f fVar = this.f156k;
        if (fVar != null) {
            fVar.z();
        }
    }

    @Override // b0.b
    public void h() {
        if (this.f152g.g()) {
            return;
        }
        t(-1);
    }

    @Override // b0.b
    public void i() {
        if (this.f152g.a()) {
            return;
        }
        super.i();
        f fVar = this.f156k;
        if (fVar != null) {
            fVar.C();
        }
    }

    @Override // d0.c.a
    public void j(d0.c cVar) {
        Log.d("AutoPlayController", "onPlayFinish: mPlaySensorProgram=false");
        if (this.f155j.isEmpty()) {
            o(this.f152g.c(this.f153h, this.f158m));
            return;
        }
        int i4 = this.f159n + 1;
        if (i4 >= this.f155j.size()) {
            i4 = 0;
        }
        s(i4);
    }

    @Override // b0.b
    public void k() {
        super.k();
        l lVar = this.f154i;
        lVar.f1851a = RecyclerView.MAX_SCROLL_DURATION;
        lVar.f1852b = HttpStatus.INTERNAL_SERVER_ERROR_500;
        Thread thread = lVar.f1853c;
        if (thread == null || !thread.isAlive() || lVar.f1853c.isInterrupted()) {
            Thread thread2 = new Thread(new d.d(lVar));
            lVar.f1853c = thread2;
            thread2.setName("TimerTask");
            lVar.f1853c.start();
        }
        o(this.f152g.d(this.f153h));
    }

    @Override // b0.b
    public void l() {
        super.l();
        l lVar = this.f154i;
        Thread thread = lVar.f1853c;
        if (thread != null && thread.isAlive()) {
            lVar.f1853c.interrupt();
        }
        f fVar = this.f156k;
        if (fVar != null) {
            p(fVar);
            this.f156k = null;
        }
        f fVar2 = this.f157l;
        if (fVar2 != null) {
            fVar2.G();
            this.f157l = null;
        }
    }

    @Override // b0.b
    public void m(int i4) {
        if (this.f152g.g()) {
            return;
        }
        Log.d("AutoPlayController", "switchIndex: index-->" + i4);
        r(i4, 0);
    }

    @Override // b0.b
    public void n(int i4, long j4) {
        if (this.f152g.g()) {
            return;
        }
        Log.d("AutoPlayController", "switchIndex: index-->" + i4 + " position-->" + j4);
        r(i4, (int) j4);
    }

    public void o(@Nullable PlayIndex playIndex) {
        if (playIndex == null) {
            return;
        }
        boolean z3 = Looper.myLooper() == Looper.getMainLooper();
        int i4 = playIndex.index;
        if (i4 < 0) {
            this.f165b.removeMessages(5);
            if (!z3) {
                this.f165b.sendEmptyMessage(4);
                return;
            } else {
                p(this.f156k);
                this.f156k = null;
                return;
            }
        }
        if (playIndex.delay <= 0 && z3) {
            r(i4, playIndex.position);
            return;
        }
        Message messageObtain = Message.obtain();
        messageObtain.what = 3;
        messageObtain.arg1 = playIndex.index;
        messageObtain.arg2 = playIndex.position;
        this.f165b.sendMessageDelayed(messageObtain, playIndex.delay);
    }

    public final void p(f fVar) {
        if (fVar != null) {
            fVar.G();
            fVar.J();
        }
    }

    public final void q(int i4) {
        h.b("AutoPlayController", "nextOrPrevious: " + i4);
        if (this.f168e == 1) {
            i();
        }
        PlayList playList = this.f153h;
        int i5 = this.f158m;
        int size = playList.size();
        int iIndexOf = -1;
        if (size != 0) {
            Calendar calendar = Calendar.getInstance();
            ArrayList arrayList = new ArrayList();
            int size2 = 0;
            for (int i6 = 0; i6 < size; i6++) {
                ProgramNode programNode = playList.get(i6);
                if (h.a.Z(programNode, calendar)) {
                    if (i6 == i5) {
                        size2 = arrayList.size();
                    }
                    arrayList.add(programNode);
                }
            }
            int size3 = arrayList.size();
            if (size3 != 0) {
                if (size3 == 1) {
                    iIndexOf = playList.indexOf((ProgramNode) arrayList.get(0));
                } else {
                    int i7 = (size2 + i4) % size3;
                    if (i7 < 0) {
                        i7 += size3;
                    }
                    int iIndexOf2 = playList.indexOf((ProgramNode) arrayList.get(i7));
                    if (iIndexOf2 != i5) {
                        iIndexOf = iIndexOf2;
                    }
                }
            }
        }
        if (iIndexOf < 0) {
            return;
        }
        if (iIndexOf != this.f158m) {
            o(new PlayIndex(iIndexOf));
            return;
        }
        f fVar = this.f156k;
        if (fVar != null) {
            for (d0.g gVar : fVar.f1499m) {
                if (gVar.I()) {
                    Iterator<d0.b> it = gVar.f1504o.iterator();
                    while (it.hasNext()) {
                        it.next().J(i4);
                    }
                }
            }
        }
    }

    public final void r(int i4, int i5) {
        h.b("AutoPlayController", "playAt:: index: " + i4 + ", position: " + i5);
        ProgramNode programNode = this.f153h.get(i4);
        if (programNode == null) {
            h.d("AutoPlayController", "switchProgram:: program not found at index: " + i4);
            return;
        }
        this.f158m = i4;
        this.f152g.b(this.f153h, programNode);
        u(programNode, i5);
        int duration = programNode.getDuration() - i5;
        if (this.f153h.size() >= 2) {
            int i6 = duration / 2;
            if (i6 >= 5000) {
                i6 = duration - 5000;
            }
            h.b("AutoPlayController", "preload next program in " + i6 + " ms");
            this.f165b.removeMessages(5);
            Message messageObtainMessage = this.f165b.obtainMessage();
            messageObtainMessage.what = 5;
            messageObtainMessage.arg1 = i4;
            this.f165b.sendMessageDelayed(messageObtainMessage, i6);
        }
        if (l.c.a().K) {
            n.a aVar = (n.a) l.b.c().a(n.a.class);
            aVar.f2611h = i4;
            l.b.c().d(aVar);
        }
    }

    public final void s(int i4) {
        if (i4 < 0 || i4 >= this.f155j.size()) {
            a.a.a("playNextInsertProgram: illegal index: ", i4, "AutoPlayController");
            return;
        }
        this.f159n = i4;
        ProgramNode programNode = this.f155j.get(i4);
        StringBuilder sbA = android.support.v4.media.a.a("play insert program[", i4, "]: ");
        sbA.append(programNode.getName());
        Log.d("AutoPlayController", sbA.toString());
        u(programNode, 0);
    }

    public final void t(int i4) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - this.f162q <= 600 || this.f165b.hasMessages(6)) {
            this.f161p += i4;
            this.f165b.removeMessages(6);
            this.f165b.sendEmptyMessageDelayed(6, 600L);
        } else {
            q(i4);
        }
        this.f162q = jElapsedRealtime;
    }

    public final void u(ProgramNode programNode, int i4) {
        f fVar = this.f156k;
        if (fVar != null && fVar.f1487b == programNode) {
            h.b("AutoPlayController", "switchProgram:: program not changed.");
            if (this.f156k.f1490e != 3 || i4 > 0 || this.f164a.f35f || programNode.isFixedDuration()) {
                this.f156k.E(i4);
                return;
            } else {
                this.f156k.a();
                return;
            }
        }
        f fVar2 = this.f157l;
        if (fVar2 == null || fVar2.f1487b != programNode) {
            f fVar3 = new f(this.f164a);
            this.f156k = fVar3;
            fVar3.f1487b = programNode;
            fVar3.m();
        } else {
            h.b("AutoPlayController", "playAt: use preload program player.");
            this.f156k = this.f157l;
            this.f157l = null;
        }
        f fVar4 = this.f156k;
        fVar4.f1497l = this;
        fVar4.H();
        this.f156k.E(i4);
        if (fVar != null) {
            fVar.f1497l = null;
            this.f165b.postDelayed(new m.b(this, fVar), 300L);
        }
    }
}
