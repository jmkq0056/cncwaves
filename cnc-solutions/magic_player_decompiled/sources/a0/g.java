package a0;

import android.content.Context;
import android.os.SystemClock;
import android.view.ViewGroup;
import cn.huidu.lcd.render.model.AreaNode;
import cn.huidu.lcd.render.model.PlayTaskNode;
import cn.huidu.lcd.render.model.ProgramNode;
import cn.huidu.lcd.render.model.WidgetNode;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f30a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ViewGroup f31b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final h f32c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public b f33d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public a f34e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f35f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f36g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f37h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f38i;

    public g(Context context) {
        this.f30a = context;
        this.f32c = new h(context);
    }

    public void a() {
        h hVar = this.f32c;
        Iterator<Integer> it = hVar.f40b.keySet().iterator();
        while (it.hasNext()) {
            hVar.a(it.next().intValue());
        }
    }

    public void b(Object obj) {
        SystemClock.elapsedRealtime();
        if (obj instanceof PlayTaskNode) {
            a aVar = this.f34e;
            if (aVar != null) {
                x.b bVar = (x.b) aVar;
                bVar.a(bVar.f3941d);
                return;
            }
            return;
        }
        if (obj instanceof ProgramNode) {
            ProgramNode programNode = (ProgramNode) obj;
            a aVar2 = this.f34e;
            if (aVar2 != null) {
                ((x.b) aVar2).a(programNode);
                return;
            }
            return;
        }
        if (obj instanceof AreaNode) {
        } else if (obj instanceof WidgetNode) {
        }
    }

    public void c(Object obj) {
        SystemClock.elapsedRealtime();
        if (obj instanceof PlayTaskNode) {
            return;
        }
        if (!(obj instanceof ProgramNode)) {
            if (obj instanceof AreaNode) {
                return;
            } else {
                if (obj instanceof WidgetNode) {
                    return;
                }
                return;
            }
        }
        ProgramNode programNode = (ProgramNode) obj;
        a aVar = this.f34e;
        if (aVar != null) {
            x.b bVar = (x.b) aVar;
            synchronized (bVar) {
                bVar.f3941d = programNode;
                bVar.f3942e = SystemClock.elapsedRealtime();
                bVar.f3943f = System.currentTimeMillis();
                l.j jVar = bVar.f3940c;
                if (jVar != null) {
                    jVar.a();
                }
            }
        }
    }
}
