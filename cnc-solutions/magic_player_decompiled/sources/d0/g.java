package d0;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import androidx.core.view.ViewCompat;
import cn.huidu.lcd.render.model.AreaNode;
import cn.huidu.lcd.render.model.ScreenNode;
import cn.huidu.lcd.render.player.view.ContainerView;
import d0.a;
import d0.c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class g extends e<ScreenNode> implements ContainerView.a, a.InterfaceC0016a, c.a {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public ContainerView f1502m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f1503n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final List<b> f1504o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final List<a> f1505p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f1506q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Bitmap f1507r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public b0.c f1508s;

    public g(a0.g gVar) {
        super(gVar);
        this.f1506q = ViewCompat.MEASURED_STATE_MASK;
        this.f1504o = new ArrayList();
        this.f1505p = new ArrayList();
    }

    @Override // d0.e
    public void B() {
        Iterator<b> it = this.f1504o.iterator();
        while (it.hasNext()) {
            it.next().B();
        }
    }

    @Override // d0.e
    public void C() {
        super.C();
        Iterator<b> it = this.f1504o.iterator();
        while (it.hasNext()) {
            it.next().C();
        }
    }

    @Override // d0.e
    public void E(int i4) {
        super.E(i4);
        StringBuilder sbA = android.support.v4.media.f.a("screen [");
        sbA.append(((ScreenNode) this.f1487b).getDisplayId());
        sbA.append("] start: ");
        sbA.append(i4);
        h0.h.b("ScreenPlayer", sbA.toString());
        Iterator<b> it = this.f1504o.iterator();
        while (it.hasNext()) {
            it.next().E(i4);
        }
    }

    @Override // d0.e
    public void G() {
        super.G();
        H();
    }

    public final void H() {
        for (b bVar : this.f1504o) {
            bVar.f1497l = null;
            bVar.G();
        }
        this.f1504o.clear();
        this.f1505p.clear();
        ContainerView containerView = this.f1502m;
        if (containerView != null) {
            containerView.removeAllViews();
            this.f1502m.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        }
    }

    public boolean I() {
        return this.f1488c != null;
    }

    public void J() {
        b0.c cVar = this.f1508s;
        if (cVar != null) {
            b0.d dVar = (b0.d) cVar;
            if (dVar.f174j > 0) {
                dVar.f165b.removeMessages(1);
                dVar.f165b.sendEmptyMessageDelayed(1, dVar.f174j);
            }
        }
    }

    @Override // d0.e, d0.c
    public void a() {
        super.a();
        for (b bVar : this.f1504o) {
            if (bVar.f1479q > 0) {
                bVar.f1491f = false;
            }
            if (bVar.f1490e == 3) {
                bVar.a();
            }
        }
    }

    @Override // d0.c
    public int getDuration() {
        return this.f1503n;
    }

    @Override // d0.c.a
    public void j(c cVar) {
        boolean z3 = true;
        if (this.f1490e != 1) {
            return;
        }
        Iterator<b> it = this.f1504o.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (!it.next().f1491f) {
                z3 = false;
                break;
            }
        }
        if (z3) {
            D();
            return;
        }
        h0.h.b("ScreenPlayer", "Wait other area complete: remain=" + (((long) this.f1503n) - s()));
        cVar.a();
    }

    @Override // d0.d
    public void m() {
        H();
        int iMax = 0;
        for (int i4 = 0; i4 < ((ScreenNode) this.f1487b).childCount(); i4++) {
            AreaNode child = ((ScreenNode) this.f1487b).getChild(i4);
            if (!child.isHidden()) {
                if (child.isButtonArea()) {
                    a aVar = new a(this.f1486a);
                    aVar.f1473f = this;
                    aVar.q(child);
                    this.f1505p.add(aVar);
                } else {
                    b bVar = new b(this.f1486a);
                    bVar.f1497l = this;
                    bVar.q(child);
                    this.f1504o.add(bVar);
                }
                iMax = Math.max(iMax, child.getDuration());
            }
        }
        this.f1503n = iMax;
    }

    @Override // d0.d
    public void n() {
        Bitmap bitmap = this.f1507r;
        if (bitmap != null) {
            this.f1502m.setBgImage(bitmap);
        } else {
            this.f1502m.setBgColor(this.f1506q);
        }
        this.f1502m.removeAllViews();
        for (int i4 = 0; i4 < this.f1504o.size(); i4++) {
            this.f1502m.addView(this.f1504o.get(i4).o());
        }
        for (int i5 = 0; i5 < this.f1505p.size(); i5++) {
            this.f1502m.addView(this.f1505p.get(i5).o());
        }
    }

    @Override // d0.d
    public View p(Context context) {
        ContainerView containerView = new ContainerView(context);
        this.f1502m = containerView;
        containerView.setOnTouchActiveListener(this);
        return this.f1502m;
    }

    @Override // d0.e
    public void t(Object obj) {
        Iterator<b> it = this.f1504o.iterator();
        while (it.hasNext()) {
            h hVar = it.next().f1480r;
            if (hVar != null) {
                hVar.t(obj);
            }
        }
    }

    @Override // d0.e
    public void z() {
        super.z();
        Iterator<b> it = this.f1504o.iterator();
        while (it.hasNext()) {
            it.next().z();
        }
    }
}
