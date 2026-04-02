package d0;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.RectF;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import cn.huidu.lcd.render.model.AreaNode;
import cn.huidu.lcd.render.model.ClockNode;
import cn.huidu.lcd.render.model.EWatchNode;
import cn.huidu.lcd.render.model.HdmiInNode;
import cn.huidu.lcd.render.model.HtmlNode;
import cn.huidu.lcd.render.model.ImageNode;
import cn.huidu.lcd.render.model.LiveStreamNode;
import cn.huidu.lcd.render.model.OfficeNode;
import cn.huidu.lcd.render.model.PlayIndex;
import cn.huidu.lcd.render.model.QrCodeNode;
import cn.huidu.lcd.render.model.TextNode;
import cn.huidu.lcd.render.model.TimerNode;
import cn.huidu.lcd.render.model.VideoNode;
import cn.huidu.lcd.render.model.WeatherNode;
import cn.huidu.lcd.render.model.WidgetNode;
import cn.huidu.lcd.render.model.extra.AnimationNode;
import cn.huidu.lcd.render.player.view.ContainerView;
import d0.c;
import f0.g;
import f0.i;
import f0.j;
import f0.k;
import f0.l;
import f0.m;
import f0.n;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import z.b;

/* JADX INFO: loaded from: classes.dex */
public class b extends e<AreaNode> implements c.a, g.a, l.a {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public ContainerView f1475m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final z.d f1476n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final y.h f1477o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final List<WidgetNode> f1478p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f1479q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public h f1480r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f1481s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public f0.g f1482t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public l f1483u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Bitmap f1484v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f1485w;

    public b(a0.g gVar) {
        super(gVar);
        this.f1478p = new ArrayList();
        this.f1477o = new y.h();
        this.f1476n = new z.a(4);
    }

    @Override // d0.e
    public void B() {
        if (this.f1480r != null || this.f1478p.isEmpty()) {
            return;
        }
        WidgetNode widgetNode = this.f1478p.get(0);
        h hVarI = I(widgetNode);
        this.f1480r = hVarI;
        if (hVarI != null) {
            hVarI.B();
        }
        if ((widgetNode instanceof ImageNode) || ((z.a) this.f1476n).b() <= 0) {
            return;
        }
        ((z.a) this.f1476n).d(0);
    }

    @Override // d0.e
    public void C() {
        super.C();
        h hVar = this.f1480r;
        if (hVar != null) {
            hVar.C();
        }
    }

    @Override // d0.e
    public void E(int i4) {
        super.E(i4);
        StringBuilder sbA = android.support.v4.media.f.a("area [");
        sbA.append(((AreaNode) this.f1487b).getName());
        sbA.append("] start: ");
        sbA.append(i4);
        h0.h.b("AreaPlayer", sbA.toString());
        PlayIndex playIndexH = H(i4);
        M(playIndexH.index, playIndexH.position);
        if (playIndexH.index == 0 && (!this.f1477o.f3994a.isEmpty())) {
            y.h hVar = this.f1477o;
            hVar.f3999f = false;
            hVar.c(0);
        }
    }

    @Override // d0.e
    public void G() {
        super.G();
        y.h hVar = this.f1477o;
        hVar.f3999f = true;
        View view = hVar.f3997d;
        if (view != null) {
            view.clearAnimation();
        }
        ((z.a) this.f1476n).f();
        h hVar2 = this.f1480r;
        if (hVar2 != null) {
            hVar2.G();
            this.f1480r = null;
        }
    }

    public final PlayIndex H(int i4) {
        int i5;
        PlayIndex playIndex = new PlayIndex();
        if (this.f1478p.isEmpty() || (i5 = this.f1479q) <= 0) {
            playIndex.index = -1;
            return playIndex;
        }
        int i6 = i4 % i5;
        int i7 = 0;
        int duration = 0;
        while (true) {
            if (i7 >= this.f1478p.size()) {
                break;
            }
            WidgetNode widgetNode = this.f1478p.get(i7);
            if (i6 < widgetNode.getDuration() + duration) {
                playIndex.index = i7;
                playIndex.position = i6 - duration;
                playIndex.duration = widgetNode.getDuration();
                break;
            }
            duration += widgetNode.getDuration();
            i7++;
        }
        return playIndex;
    }

    public final h I(WidgetNode widgetNode) {
        h cVar;
        RectF scaleRect;
        h hVar = this.f1480r;
        if (hVar != null && hVar.H(widgetNode)) {
            h hVar2 = this.f1480r;
            if (hVar2.f1487b != widgetNode) {
                hVar2.f1487b = widgetNode;
                hVar2.m();
                if (hVar2.f1488c != null) {
                    hVar2.n();
                }
            }
            return this.f1480r;
        }
        if (widgetNode instanceof VideoNode) {
            if (this.f1483u == null) {
                int i4 = 0;
                while (true) {
                    if (i4 >= ((AreaNode) this.f1487b).childCount()) {
                        z = false;
                        break;
                    }
                    WidgetNode child = ((AreaNode) this.f1487b).getChild(i4);
                    if ((child instanceof VideoNode) && (scaleRect = child.getScaleRect()) != null) {
                        float fWidth = scaleRect.width();
                        float fHeight = scaleRect.height();
                        if (fWidth > 0.0f && fHeight > 0.0f && (fWidth < 1.0f || fHeight < 1.0f)) {
                            break;
                        }
                    }
                    i4++;
                }
                l lVar = new l(this.f1486a, z);
                this.f1483u = lVar;
                lVar.f1679v = this;
            }
            cVar = this.f1483u;
        } else if (widgetNode instanceof ImageNode) {
            if (this.f1482t == null) {
                f0.g gVar = new f0.g(this.f1486a, this.f1476n);
                this.f1482t = gVar;
                gVar.f1653z = ((z.a) this.f1476n).b() == ((AreaNode) this.f1487b).childCount();
                this.f1482t.f1651x = this;
            }
            cVar = this.f1482t;
        } else if (widgetNode instanceof TextNode) {
            cVar = new k(this.f1486a);
        } else if (widgetNode instanceof ClockNode) {
            cVar = new f0.a(this.f1486a, 0);
        } else if (widgetNode instanceof HtmlNode) {
            cVar = new f0.f(this.f1486a);
        } else if (widgetNode instanceof EWatchNode) {
            cVar = new f0.b(this.f1486a);
        } else if (widgetNode instanceof WeatherNode) {
            cVar = ((WeatherNode) widgetNode).getStyle() == 0 ? new m(this.f1486a) : new n(this.f1486a);
        } else if (widgetNode instanceof TimerNode) {
            cVar = new f0.a(this.f1486a, 1);
        } else if (widgetNode instanceof QrCodeNode) {
            cVar = new j(this.f1486a);
        } else if (widgetNode instanceof LiveStreamNode) {
            cVar = new f0.h(this.f1486a);
        } else if (widgetNode instanceof OfficeNode) {
            cVar = new i(this.f1486a);
        } else if (widgetNode instanceof HdmiInNode) {
            cVar = new f0.c(this.f1486a);
        } else {
            cVar = null;
            h0.h.b("AreaPlayer", "createWidget:: unknown widget: " + widgetNode);
        }
        if (cVar != null) {
            int width = ((AreaNode) this.f1487b).getWidth();
            int height = ((AreaNode) this.f1487b).getHeight();
            cVar.f1509m = width;
            cVar.f1510n = height;
            cVar.f1511o = this.f1485w;
        }
        if (cVar != null) {
            cVar.f1487b = widgetNode;
            cVar.m();
            if (cVar.f1488c != null) {
                cVar.n();
            }
        }
        return cVar;
    }

    public void J(int i4) {
        int size = this.f1478p.size();
        if (size >= 2) {
            int i5 = (this.f1481s + i4) % size;
            if (i5 >= size) {
                i5 -= size;
            } else if (i5 < 0) {
                i5 += size;
            }
            M(i5, 0);
            return;
        }
        if (size >= 1) {
            h hVar = this.f1480r;
            if (hVar instanceof i) {
                i iVar = (i) hVar;
                int iB = ((z.a) iVar.f1659q).b();
                if (iB >= 2) {
                    int i6 = (iVar.f1661s + i4) % iB;
                    if (i6 >= iB) {
                        i6 -= iB;
                    } else if (i6 < 0) {
                        i6 += iB;
                    }
                    iVar.I(i6, 0);
                }
            }
        }
    }

    public void K(int i4, int i5) {
        a.b.a("onNextOrPrevious: index--> ", i4, " status--> ", i5, "AreaPlayer");
        J(i5);
    }

    public void L(int i4, String str) {
        Log.d("AreaPlayer", "onSwitchVideoToIndex: status--> " + i4);
        J(i4);
    }

    public final void M(int i4, int i5) {
        View viewO;
        if (i4 < 0 || i4 >= this.f1478p.size()) {
            h0.h.d("AreaPlayer", "playAt: illegal index: " + i4);
            return;
        }
        h0.h.b("AreaPlayer", "playAt: " + i4 + " at " + i5);
        this.f1481s = i4;
        h hVarI = I(this.f1478p.get(i4));
        h hVar = this.f1480r;
        boolean z3 = true;
        if (hVar != null && hVar != hVarI) {
            hVar.G();
            if (this.f1475m != null) {
                View view = this.f1480r.f1488c;
                if (hVarI != null && (viewO = hVarI.o()) != null) {
                    z3 = false;
                    this.f1475m.addView(viewO);
                }
                if (view != null) {
                    this.f1475m.removeView(view);
                }
            }
            this.f1480r = null;
        }
        if (hVarI != null) {
            if (z3) {
                View viewO2 = hVarI.o();
                if (this.f1475m != null && viewO2.getParent() == null) {
                    this.f1475m.addView(viewO2);
                }
            }
            hVarI.f1497l = this;
            this.f1480r = hVarI;
        }
        h hVar2 = this.f1480r;
        if (hVar2 != null) {
            hVar2.E(i5);
        }
        if (this.f1489d.hasMessages(11)) {
            this.f1489d.removeMessages(11);
        }
        this.f1489d.sendEmptyMessageDelayed(11, 1000L);
    }

    @Override // d0.e, d0.c
    public void a() {
        super.a();
        if (this.f1478p.size() == 1) {
            this.f1480r.a();
        } else {
            M(0, 0);
        }
    }

    @Override // d0.c
    public int getDuration() {
        return this.f1479q;
    }

    @Override // d0.c.a
    public void j(c cVar) {
        if (this.f1486a.f36g && !((AreaNode) this.f1487b).isCarousel()) {
            cVar.a();
            return;
        }
        int i4 = this.f1481s + 1;
        if (i4 >= this.f1478p.size()) {
            D();
            return;
        }
        if (!this.f1486a.f35f) {
            M(i4, 0);
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f1493h;
        long j4 = ((long) this.f1492g) + jElapsedRealtime;
        long j5 = this.f1494i + jElapsedRealtime;
        long jC = r.e.c();
        if (j5 != jC) {
            StringBuilder sbA = android.support.v4.media.f.a("syncPlayNext: time changed ");
            long j6 = jC - j5;
            sbA.append(j6);
            sbA.append("ms");
            h0.h.b("AreaPlayer", sbA.toString());
            j4 += j6;
            if (j4 < 0 || j4 > this.f1479q - 500) {
                D();
                return;
            }
            h0.h.b("AreaPlayer", "syncPlayNext: adjust position to " + j4);
            F((int) j4);
        }
        PlayIndex playIndexH = H((int) j4);
        int i5 = playIndexH.duration;
        int i6 = playIndexH.position;
        int i7 = i5 - i6;
        int i8 = playIndexH.index;
        if (i8 != this.f1481s || i7 >= 5000) {
            M(i8, i6);
            return;
        }
        h0.h.b("AreaPlayer", "wait " + i7 + "ms play next.");
        if (i7 < 100) {
            SystemClock.sleep(i7);
            M(i4, 0);
            return;
        }
        Message messageObtainMessage = this.f1489d.obtainMessage();
        messageObtainMessage.what = 10;
        messageObtainMessage.arg1 = i4;
        messageObtainMessage.arg2 = 0;
        this.f1489d.sendMessageDelayed(messageObtainMessage, i7);
    }

    @Override // d0.d
    public void m() {
        Objects.requireNonNull(this.f1486a);
        this.f1485w = a0.f.e().f15g;
        y.h hVar = this.f1477o;
        List<AnimationNode> animations = ((AreaNode) this.f1487b).getAnimations();
        hVar.f3994a.clear();
        if (animations != null) {
            hVar.f3994a.addAll(animations);
        }
        y.h hVar2 = this.f1477o;
        int width = ((AreaNode) this.f1487b).getWidth();
        int height = ((AreaNode) this.f1487b).getHeight();
        hVar2.f3995b = width;
        hVar2.f3996c = height;
        String backgroundImage = ((AreaNode) this.f1487b).getBackgroundImage();
        if (!TextUtils.isEmpty(backgroundImage)) {
            b.d dVarC = z.b.c(backgroundImage);
            int width2 = ((AreaNode) this.f1487b).getWidth();
            int height2 = ((AreaNode) this.f1487b).getHeight();
            dVarC.f4188f = width2;
            dVarC.f4189g = height2;
            dVarC.a(new p.b(this));
        }
        this.f1478p.clear();
        for (int i4 = 0; i4 < ((AreaNode) this.f1487b).childCount(); i4++) {
            this.f1478p.add(((AreaNode) this.f1487b).getChild(i4));
        }
        this.f1479q = ((AreaNode) this.f1487b).getDuration();
        List<WidgetNode> list = this.f1478p;
        ArrayList arrayList = new ArrayList();
        float fMax = 1.0f;
        float fMax2 = 1.0f;
        for (int i5 = 0; i5 < list.size(); i5++) {
            WidgetNode widgetNode = list.get(i5);
            if (widgetNode instanceof ImageNode) {
                ImageNode imageNode = (ImageNode) widgetNode;
                arrayList.add(imageNode.getImagePath());
                imageNode.setImageIndex(arrayList.size() - 1);
                RectF scaleRect = imageNode.getScaleRect();
                if (scaleRect != null && scaleRect.width() > 0.0f && scaleRect.height() > 0.0f) {
                    fMax = Math.max(1.0f / scaleRect.width(), fMax);
                    fMax2 = Math.max(1.0f / scaleRect.height(), fMax2);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        int width3 = ((AreaNode) this.f1487b).getWidth();
        int height3 = ((AreaNode) this.f1487b).getHeight();
        if (width3 <= 0 || height3 <= 0) {
            Point pointB = w0.a.b(this.f1486a.f30a);
            if (width3 <= 0) {
                width3 = pointB.x;
            }
            if (height3 <= 0) {
                height3 = pointB.y;
            }
        }
        if (fMax > 1.0f || fMax2 > 1.0f) {
            width3 = (int) (width3 * fMax);
            height3 = (int) (height3 * fMax2);
        }
        z.e eVar = new z.e();
        eVar.f4193a.clear();
        eVar.f4193a.addAll(arrayList);
        eVar.f4194b = width3;
        eVar.f4195c = height3;
        ((z.a) this.f1476n).g(eVar);
    }

    @Override // d0.d
    public void n() {
        if (((AreaNode) this.f1487b).isPercentUnit()) {
            this.f1475m.c(((AreaNode) this.f1487b).getX(), ((AreaNode) this.f1487b).getY(), ((AreaNode) this.f1487b).getWidth(), ((AreaNode) this.f1487b).getHeight());
        } else {
            this.f1475m.b(((AreaNode) this.f1487b).getX(), ((AreaNode) this.f1487b).getY(), ((AreaNode) this.f1487b).getWidth(), ((AreaNode) this.f1487b).getHeight());
        }
        if (((AreaNode) this.f1487b).getBackgroundImage() != null) {
            this.f1475m.setBgImage(this.f1484v);
        } else {
            this.f1475m.setBgColor(((AreaNode) this.f1487b).getBackgroundColor());
        }
        this.f1475m.setRotation(((AreaNode) this.f1487b).getRotation());
        this.f1475m.a(((AreaNode) this.f1487b).getStrokeWidth(), ((AreaNode) this.f1487b).getStrokeColor(), ((AreaNode) this.f1487b).getCornerRadius());
    }

    @Override // d0.d
    public View p(Context context) {
        ContainerView containerView = new ContainerView(context);
        this.f1475m = containerView;
        this.f1477o.f3997d = containerView;
        return containerView;
    }

    @Override // d0.e
    public void t(Object obj) {
        h hVar = this.f1480r;
        if (hVar != null) {
            hVar.t(obj);
        }
    }

    @Override // d0.e
    public void y(Message message) {
        super.y(message);
        int i4 = message.what;
        if (i4 == 10) {
            M(message.arg1, message.arg2);
        } else if (i4 == 11) {
            a0.g gVar = this.f1486a;
            synchronized (gVar) {
                gVar.f38i = true;
            }
        }
    }

    @Override // d0.e
    public void z() {
        super.z();
        y.h hVar = this.f1477o;
        hVar.f3999f = true;
        View view = hVar.f3997d;
        if (view != null) {
            view.clearAnimation();
        }
        h hVar2 = this.f1480r;
        if (hVar2 != null) {
            hVar2.z();
        }
    }
}
