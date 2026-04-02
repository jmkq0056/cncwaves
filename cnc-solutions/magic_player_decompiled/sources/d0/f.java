package d0;

import a0.h;
import android.graphics.Point;
import android.media.MediaPlayer;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.view.ViewCompat;
import cn.huidu.lcd.render.model.AreaNode;
import cn.huidu.lcd.render.model.ClockNode;
import cn.huidu.lcd.render.model.EWatchNode;
import cn.huidu.lcd.render.model.HdmiInNode;
import cn.huidu.lcd.render.model.HtmlNode;
import cn.huidu.lcd.render.model.ImageNode;
import cn.huidu.lcd.render.model.LiveStreamNode;
import cn.huidu.lcd.render.model.OfficeNode;
import cn.huidu.lcd.render.model.ProgramNode;
import cn.huidu.lcd.render.model.QrCodeNode;
import cn.huidu.lcd.render.model.ScreenNode;
import cn.huidu.lcd.render.model.TextNode;
import cn.huidu.lcd.render.model.TimerNode;
import cn.huidu.lcd.render.model.VideoNode;
import cn.huidu.lcd.render.model.WeatherNode;
import cn.huidu.lcd.render.model.WidgetNode;
import cn.huidu.lcd.render.player.view.ContainerView;
import d0.c;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import z.b;

/* JADX INFO: loaded from: classes.dex */
public class f extends e<ProgramNode> implements c.a {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final List<g> f1499m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final h0.a f1500n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public b0.c f1501o;

    public f(a0.g gVar) {
        super(gVar);
        this.f1496k = true;
        this.f1500n = new h0.a();
        this.f1499m = new ArrayList();
    }

    @Override // d0.e
    public void B() {
        Iterator<g> it = this.f1499m.iterator();
        while (it.hasNext()) {
            it.next().B();
        }
    }

    @Override // d0.e
    public void C() {
        super.C();
        this.f1500n.d();
        for (g gVar : this.f1499m) {
            if (gVar.I()) {
                gVar.C();
            }
        }
    }

    @Override // d0.e
    public void E(int i4) {
        super.E(i4);
        StringBuilder sbA = android.support.v4.media.f.a("program [");
        sbA.append(((ProgramNode) this.f1487b).getName());
        sbA.append("] start: ");
        sbA.append(i4);
        h0.h.b("ProgramPlayer", sbA.toString());
        this.f1500n.c(i4);
        this.f1500n.d();
        for (g gVar : this.f1499m) {
            if (gVar.I()) {
                gVar.E(i4);
            } else {
                gVar.f1491f = true;
            }
        }
    }

    @Override // d0.e
    public void G() {
        super.G();
        I();
    }

    public void H() {
        ViewGroup viewGroup;
        for (g gVar : this.f1499m) {
            int displayId = ((ScreenNode) gVar.f1487b).getDisplayId();
            if (displayId == 0) {
                viewGroup = this.f1486a.f31b;
            } else {
                h.a aVar = this.f1486a.f32c.f40b.get(Integer.valueOf(displayId));
                viewGroup = aVar != null ? aVar.f41a : null;
            }
            if (viewGroup != null) {
                viewGroup.addView(gVar.o(), 0);
            } else {
                h0.h.b("ProgramPlayer", "attachToScreen: display not found: " + displayId);
            }
        }
    }

    public final void I() {
        this.f1500n.b();
        Iterator<g> it = this.f1499m.iterator();
        while (it.hasNext()) {
            it.next().G();
        }
    }

    public void J() {
        Iterator<g> it = this.f1499m.iterator();
        while (it.hasNext()) {
            View view = it.next().f1488c;
            if (view != null) {
                ViewParent parent = view.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(view);
                }
            }
        }
    }

    @Override // d0.e, d0.c
    public void a() {
        super.a();
        for (g gVar : this.f1499m) {
            if (gVar.I()) {
                gVar.f1491f = false;
                gVar.a();
            }
        }
    }

    @Override // d0.c
    public int getDuration() {
        return ((ProgramNode) this.f1487b).getDuration();
    }

    @Override // d0.c.a
    public void j(c cVar) {
        boolean z3 = true;
        if (this.f1490e != 1) {
            return;
        }
        Iterator<g> it = this.f1499m.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            g next = it.next();
            if (next.I() && !next.f1491f) {
                z3 = false;
                break;
            }
        }
        if (z3) {
            long jS = s();
            if (!((ProgramNode) this.f1487b).isFixedDuration() || ((long) ((ProgramNode) this.f1487b).getDuration()) - jS <= 500) {
                D();
                return;
            }
            h0.h.b("ProgramPlayer", "Program not complete: " + jS + "/" + ((ProgramNode) this.f1487b).getDuration());
        }
        cVar.a();
    }

    @Override // d0.d
    public void m() {
        boolean z3;
        String str;
        I();
        h0.a aVar = this.f1500n;
        String backgroundMusic = ((ProgramNode) this.f1487b).getBackgroundMusic();
        boolean zIsBGMLoop = ((ProgramNode) this.f1487b).isBGMLoop();
        if (aVar.f1796d == 0 || (str = aVar.f1795c) == null || !str.equals(backgroundMusic)) {
            aVar.f1795c = backgroundMusic;
            aVar.f1798f = 0;
            aVar.b();
            if (!TextUtils.isEmpty(aVar.f1795c)) {
                try {
                    MediaPlayer mediaPlayer = new MediaPlayer();
                    aVar.f1793a = mediaPlayer;
                    int i4 = aVar.f1794b;
                    if (i4 != 0) {
                        mediaPlayer.setAudioSessionId(i4);
                    } else {
                        aVar.f1794b = mediaPlayer.getAudioSessionId();
                    }
                    aVar.f1793a.setOnErrorListener(aVar);
                    aVar.f1793a.setOnPreparedListener(aVar);
                    aVar.f1793a.setDataSource(aVar.f1795c);
                    aVar.f1793a.setLooping(zIsBGMLoop);
                    aVar.f1793a.prepareAsync();
                    aVar.f1796d = 1;
                } catch (IOException e4) {
                    e4.printStackTrace();
                    aVar.f1796d = -1;
                    aVar.f1797e = -1;
                }
            }
        } else {
            Log.d("BGMPlayer", "init: source not change.");
        }
        if (((ProgramNode) this.f1487b).getBackgroundImage() != null) {
            String backgroundImage = ((ProgramNode) this.f1487b).getBackgroundImage();
            Point pointB = w0.a.b(w0.c.f3777a);
            b.d dVarC = z.b.c(backgroundImage);
            int i5 = pointB.x;
            int i6 = pointB.y;
            dVarC.f4188f = i5;
            dVarC.f4189g = i6;
            dVarC.a(new p.b(this));
        }
        int backgroundColor = ((ProgramNode) this.f1487b).getBackgroundColor() | ViewCompat.MEASURED_STATE_MASK;
        ProgramNode programNode = (ProgramNode) this.f1487b;
        ArrayList<ScreenNode> arrayList = new ArrayList();
        ScreenNode screenNode = new ScreenNode();
        screenNode.setDisplayId(0);
        for (int i7 = 0; i7 < programNode.childCount(); i7++) {
            screenNode.addChild(programNode.getChild(i7));
        }
        arrayList.add(screenNode);
        List<ScreenNode> subScreens = programNode.getSubScreens();
        if (subScreens != null) {
            for (ScreenNode screenNode2 : subScreens) {
                Iterator it = arrayList.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (((ScreenNode) it.next()).getDisplayId() == screenNode2.getDisplayId()) {
                            z3 = true;
                            break;
                        }
                    } else {
                        z3 = false;
                        break;
                    }
                }
                if (!z3) {
                    arrayList.add(screenNode2);
                }
            }
        }
        int i8 = cn.huidu.lcd.core.a.f337c != 102 ? 9 : 2;
        a.a.a("limitAreaCount: maxVideoCount=", i8, "ProgramUtils");
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            ScreenNode screenNode3 = (ScreenNode) arrayList.get(i11);
            for (int i12 = 0; i12 < screenNode3.childCount(); i12++) {
                AreaNode child = screenNode3.getChild(i12);
                int i13 = 0;
                for (int i14 = 0; i14 < child.childCount(); i14++) {
                    WidgetNode child2 = child.getChild(i14);
                    if (child2 instanceof ImageNode) {
                        i13 |= 1;
                    } else if (child2 instanceof VideoNode) {
                        i13 |= 2;
                    } else if (child2 instanceof TextNode) {
                        i13 |= 4;
                    } else if (child2 instanceof ClockNode) {
                        i13 |= 8;
                    } else if (child2 instanceof EWatchNode) {
                        i13 |= 16;
                    } else if (child2 instanceof HtmlNode) {
                        i13 |= 32;
                    } else if (child2 instanceof WeatherNode) {
                        i13 |= 64;
                    } else if (child2 instanceof TimerNode) {
                        i13 |= 128;
                    } else if (child2 instanceof QrCodeNode) {
                        i13 |= 256;
                    } else if (child2 instanceof LiveStreamNode) {
                        i13 |= 512;
                    } else if (child2 instanceof OfficeNode) {
                        i13 |= 1024;
                    } else if (child2 instanceof HdmiInNode) {
                        i13 |= 2048;
                    }
                }
                if ((i13 & 2) != 0 || (i13 & 512) != 0) {
                    i9++;
                    a.a.a("limitAreaCount: video++ ", i9, "ProgramUtils");
                    child.setHidden(i9 > i8);
                } else if ((i13 & 2048) != 0) {
                    i10++;
                    a.a.a("limitAreaCount: hdmiIn++ ", i10, "ProgramUtils");
                    if (i10 > 1) {
                        child.setHidden(true);
                    } else {
                        i9++;
                    }
                } else {
                    child.setHidden(false);
                }
            }
        }
        this.f1499m.clear();
        for (ScreenNode screenNode4 : arrayList) {
            if (screenNode4.getDisplayId() == 0 || this.f1486a.f37h) {
                g gVar = new g(this.f1486a);
                gVar.f1508s = this.f1501o;
                gVar.f1497l = this;
                gVar.f1487b = screenNode4;
                gVar.m();
                if (gVar.f1488c != null) {
                    gVar.n();
                }
                gVar.f1506q = backgroundColor;
                ContainerView containerView = gVar.f1502m;
                if (containerView != null) {
                    containerView.setBgColor(backgroundColor);
                }
                this.f1499m.add(gVar);
            } else {
                StringBuilder sbA = android.support.v4.media.f.a("Dual screen disabled, ignore screen ");
                sbA.append(screenNode4.getDisplayId());
                h0.h.b("ProgramPlayer", sbA.toString());
            }
        }
    }

    @Override // d0.e
    public void t(Object obj) {
        for (g gVar : this.f1499m) {
            if (gVar.I()) {
                gVar.t(obj);
            }
        }
    }

    @Override // d0.e
    public void x() {
        if (this.f1486a.f35f || ((ProgramNode) this.f1487b).isFixedDuration()) {
            D();
        }
    }

    @Override // d0.e
    public void z() {
        super.z();
        h0.a aVar = this.f1500n;
        if (aVar.a() && aVar.f1793a.isPlaying()) {
            aVar.f1793a.pause();
            aVar.f1796d = 4;
        }
        aVar.f1797e = 4;
        for (g gVar : this.f1499m) {
            if (gVar.I()) {
                gVar.z();
            }
        }
    }
}
