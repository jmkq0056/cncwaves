package b0;

import a0.g;
import android.os.Message;
import android.os.SystemClock;
import cn.huidu.lcd.render.model.PlayTaskNode;
import cn.huidu.lcd.render.model.ProgramNode;
import d0.c;
import d0.f;
import h0.h;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class d extends b implements c, c.a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f171g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f172h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public f f173i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f174j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f175k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f176l;

    public d(g gVar, int i4) {
        super(gVar);
        this.f174j = i4 * 1000;
    }

    @Override // b0.b
    public f a() {
        return this.f173i;
    }

    @Override // b0.b
    public void b(Message message) {
        int i4 = message.what;
        if (i4 == 1) {
            q(this.f171g);
        } else if (i4 == 2) {
            o(this.f175k);
            this.f175k = 0;
        }
    }

    @Override // b0.b
    public void c() {
        p(1);
    }

    @Override // b0.b
    public boolean e(PlayTaskNode playTaskNode) {
        this.f171g = 0;
        String homeUuid = playTaskNode.getHomeUuid();
        if (homeUuid != null && homeUuid.length() > 0) {
            int i4 = 0;
            while (true) {
                if (i4 >= playTaskNode.childCount()) {
                    break;
                }
                if (homeUuid.equals(playTaskNode.getChild(i4).getUuid())) {
                    this.f171g = i4;
                    break;
                }
                i4++;
            }
        }
        return playTaskNode.childCount() > 0;
    }

    @Override // b0.b
    public void g() {
    }

    @Override // b0.b
    public void h() {
        p(-1);
    }

    @Override // b0.b
    public void i() {
    }

    @Override // d0.c.a
    public void j(d0.c cVar) {
        cVar.a();
    }

    @Override // b0.b
    public void k() {
        super.k();
        q(this.f171g);
    }

    @Override // b0.b
    public void l() {
        super.l();
        f fVar = this.f173i;
        if (fVar != null) {
            fVar.G();
            fVar.J();
            this.f173i = null;
        }
    }

    @Override // b0.b
    public void m(int i4) {
        q(i4);
    }

    @Override // b0.b
    public void n(int i4, long j4) {
        q(i4);
    }

    public final void o(int i4) {
        h.b("InteractivePC", "nextOrPrevious: " + i4);
        int iChildCount = this.f166c.childCount();
        if (iChildCount <= 0) {
            return;
        }
        int i5 = (this.f172h + i4) % iChildCount;
        if (i5 < 0) {
            i5 += iChildCount;
        }
        q(i5);
    }

    public final void p(int i4) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - this.f176l <= 600 || this.f165b.hasMessages(2)) {
            this.f175k += i4;
            this.f165b.removeMessages(2);
            this.f165b.sendEmptyMessageDelayed(2, 600L);
        } else {
            o(i4);
        }
        this.f176l = jElapsedRealtime;
    }

    public final void q(int i4) {
        ProgramNode child = this.f166c.getChild(i4);
        if (child == null) {
            h.b("InteractivePC", "switchProgram: illegal index: " + i4);
            return;
        }
        this.f172h = i4;
        f fVar = this.f173i;
        if (fVar != null && fVar.f1487b == child) {
            h.b("InteractivePC", "switchProgram: start over.");
            this.f173i.a();
            return;
        }
        f fVar2 = new f(this.f164a);
        this.f173i = fVar2;
        fVar2.f1497l = this;
        fVar2.f1501o = this;
        Iterator<d0.g> it = fVar2.f1499m.iterator();
        while (it.hasNext()) {
            it.next().f1508s = this;
        }
        f fVar3 = this.f173i;
        fVar3.f1487b = child;
        fVar3.m();
        this.f173i.H();
        this.f173i.E(0);
        if (fVar != null) {
            fVar.G();
            fVar.J();
        }
        if (i4 != this.f171g) {
            if (this.f174j <= 0) {
                this.f165b.removeMessages(1);
                return;
            }
            this.f165b.removeMessages(1);
            this.f165b.sendEmptyMessageDelayed(1, this.f174j);
            h.b("InteractivePC", "Auto back home program in " + this.f174j + "ms.");
        }
    }
}
