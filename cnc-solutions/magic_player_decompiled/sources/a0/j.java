package a0;

import a0.h;
import android.content.Context;
import android.util.Log;
import android.view.Display;
import android.view.ViewGroup;
import cn.huidu.lcd.render.model.AreaNode;
import cn.huidu.lcd.render.model.HdmiInNode;
import cn.huidu.lcd.render.model.PlayTaskNode;
import cn.huidu.lcd.render.model.ProgramNode;
import cn.huidu.lcd.render.model.ScreenNode;
import j.q;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class j implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final g f42a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public b0.b f43b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PlayTaskNode f44c;

    public j(Context context) {
        this.f42a = new g(context);
    }

    @Override // a0.i
    public void a(a aVar) {
        this.f42a.f34e = aVar;
    }

    @Override // a0.i
    public void b(int i4) {
        b0.b bVar = this.f43b;
        if (bVar instanceof b0.a) {
            b0.a aVar = (b0.a) bVar;
            if (i4 == 0) {
                Log.d("TaskPlayerImpl", "setPlayMode: list cycle mode.");
                aVar.f152g = new d1.b(1);
                return;
            }
            if (i4 == 1) {
                Log.d("TaskPlayerImpl", "setPlayMode: synchronous mode.");
                aVar.f152g = new c0.e();
                return;
            }
            if (i4 == 2) {
                Log.d("TaskPlayerImpl", "setPlayMode: balance mode.");
                aVar.f152g = new c0.a(0);
            } else {
                if (i4 == 3) {
                    Log.d("TaskPlayerImpl", "setPlayMode: single cycle mode.");
                    aVar.f152g = new c0.d();
                    return;
                }
                Log.d("TaskPlayerImpl", "setPlayMode: mode [" + i4 + "] is unsupported!");
            }
        }
    }

    @Override // a0.i
    public void c(int i4) {
        b0.b bVar = this.f43b;
        if (bVar != null) {
            bVar.m(i4);
        }
    }

    @Override // a0.i
    public void d(ViewGroup viewGroup) {
        this.f42a.f31b = viewGroup;
    }

    @Override // a0.i
    public void e(Object obj) {
        b0.b bVar = this.f43b;
        if (bVar != null) {
            Objects.requireNonNull(bVar);
            if (obj instanceof j.g) {
                bVar.d((j.g) obj);
                return;
            }
            if (obj instanceof q) {
                bVar.f((q) obj);
                return;
            }
            d0.f fVarA = bVar.a();
            if (fVarA == null || bVar.f168e == 0) {
                return;
            }
            fVarA.t(obj);
        }
    }

    @Override // a0.i
    public boolean f() {
        Log.d("TaskPlayerImpl", "pauseOrResume:");
        b0.b bVar = this.f43b;
        if (bVar == null) {
            return false;
        }
        int i4 = bVar.f168e;
        if (i4 == 2) {
            bVar.g();
        } else {
            if (i4 == 1) {
                bVar.i();
            }
        }
        return bVar.f168e == 1;
    }

    @Override // a0.i
    public void g(PlayTaskNode playTaskNode) {
        b0.b aVar;
        boolean z3;
        b0.b bVar = this.f43b;
        if (bVar != null) {
            bVar.l();
        }
        g gVar = this.f42a;
        ViewGroup viewGroup = gVar.f31b;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        int i4 = 0;
        gVar.f35f = false;
        gVar.f36g = false;
        this.f42a.f37h = f.e().f18j;
        g gVar2 = this.f42a;
        if (gVar2.f37h) {
            HashSet hashSet = new HashSet();
            for (int i5 = 0; i5 < playTaskNode.childCount(); i5++) {
                List<ScreenNode> subScreens = playTaskNode.getChild(i5).getSubScreens();
                if (subScreens != null) {
                    Iterator<ScreenNode> it = subScreens.iterator();
                    while (it.hasNext()) {
                        hashSet.add(Integer.valueOf(it.next().getDisplayId()));
                    }
                }
            }
            h hVar = gVar2.f32c;
            for (Integer num : hVar.f40b.keySet()) {
                if (!hashSet.contains(num)) {
                    hVar.a(num.intValue());
                }
            }
            Iterator it2 = hashSet.iterator();
            while (it2.hasNext()) {
                int iIntValue = ((Integer) it2.next()).intValue();
                if (hVar.f40b.get(Integer.valueOf(iIntValue)) == null) {
                    Display displayC = s.c.c(hVar.f39a, iIntValue);
                    if (displayC == null) {
                        Log.d("Presentations", "display '" + iIntValue + "' not exists!");
                    } else {
                        Log.d("Presentations", "createPresentation: " + displayC);
                        try {
                            h.a aVar2 = new h.a(hVar.f39a, displayC);
                            aVar2.show();
                            hVar.f40b.put(Integer.valueOf(iIntValue), aVar2);
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                    }
                }
            }
        } else {
            gVar2.a();
        }
        z.b.b().a(true);
        if (!f.e().f19k) {
            int i6 = 0;
            loop4: while (true) {
                if (i6 >= playTaskNode.childCount()) {
                    z3 = false;
                    break;
                }
                ProgramNode child = playTaskNode.getChild(i6);
                for (int i7 = 0; i7 < child.childCount(); i7++) {
                    AreaNode child2 = child.getChild(i7);
                    for (int i8 = 0; i8 < child2.childCount(); i8++) {
                        if (child2.getChild(i8) instanceof HdmiInNode) {
                            z3 = true;
                            break loop4;
                        }
                    }
                }
                i6++;
            }
            if (z3) {
                l.h.d().p();
            } else {
                l.h.d().r();
            }
        }
        f fVarE = f.e();
        if (playTaskNode.getTaskType() == 1) {
            Log.d("TaskPlayerImpl", "inter cut mode.");
            aVar = new b0.a(this.f42a, new c0.f(new p.b(this)));
        } else if (fVarE.f15g && playTaskNode.isInteractive()) {
            Log.d("TaskPlayerImpl", "interactive mode.");
            g gVar3 = this.f42a;
            gVar3.f36g = true;
            aVar = new b0.d(gVar3, fVarE.f17i);
        } else {
            int i9 = fVarE.f14f;
            if (i9 == 1) {
                Log.d("TaskPlayerImpl", "sync play mode.");
                g gVar4 = this.f42a;
                gVar4.f35f = true;
                aVar = new b0.a(gVar4, new c0.e());
            } else if (i9 == 2) {
                Log.d("TaskPlayerImpl", "balance play mode.");
                aVar = new b0.a(this.f42a, new c0.a(0));
            } else if (i9 == 3) {
                Log.d("TaskPlayerImpl", "single cycle mode.");
                aVar = new b0.a(this.f42a, new c0.d());
            } else {
                Log.d("TaskPlayerImpl", "list cycle mode.");
                aVar = new b0.a(this.f42a, new d1.b(1));
            }
        }
        this.f43b = aVar;
        if (playTaskNode.getTaskType() != 1) {
            this.f44c = playTaskNode;
        }
        b0.b bVar2 = this.f43b;
        bVar2.f166c = playTaskNode;
        if (playTaskNode.getTaskType() == 2) {
            i4 = playTaskNode.getStorageType() == 2 ? -6 : -5;
        } else if (playTaskNode.getTaskType() == 3) {
            i4 = -9;
        }
        bVar2.f169f = i4;
        bVar2.f167d = bVar2.e(playTaskNode);
        b0.b bVar3 = this.f43b;
        if (bVar3 == null) {
            Log.w("TaskPlayerImpl", "start: illegal state!");
        } else if (!bVar3.f167d) {
            Log.w("TaskPlayerImpl", "start: invalid play task!");
        } else {
            Log.d("TaskPlayerImpl", "start:");
            bVar3.k();
        }
    }

    @Override // a0.i
    public void h(int i4, long j4) {
        b0.b bVar = this.f43b;
        if (bVar != null) {
            bVar.n(i4, j4);
        }
    }

    public void i(b bVar) {
        this.f42a.f33d = bVar;
    }

    @Override // a0.i
    public void next() {
        Log.d("TaskPlayerImpl", "next:");
        b0.b bVar = this.f43b;
        if (bVar != null) {
            bVar.c();
        }
    }

    @Override // a0.i
    public void pause() {
        Log.d("TaskPlayerImpl", "pause: ");
        b0.b bVar = this.f43b;
        if (bVar != null) {
            bVar.g();
        }
    }

    @Override // a0.i
    public void previous() {
        Log.d("TaskPlayerImpl", "previous:");
        b0.b bVar = this.f43b;
        if (bVar != null) {
            bVar.h();
        }
    }

    @Override // a0.i
    public void resume() {
        Log.d("TaskPlayerImpl", "resume: ");
        b0.b bVar = this.f43b;
        if (bVar != null) {
            bVar.i();
        }
    }

    @Override // a0.i
    public void stop() {
        b0.b bVar = this.f43b;
        if (bVar != null) {
            Log.d("TaskPlayerImpl", "stop:");
            bVar.l();
        } else {
            Log.w("TaskPlayerImpl", "stop: illegal state!");
        }
        g gVar = this.f42a;
        if (gVar.f37h) {
            gVar.a();
        }
    }
}
