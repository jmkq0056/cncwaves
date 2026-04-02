package d0;

import android.content.Context;
import android.view.View;
import cn.huidu.lcd.render.model.Node;

/* JADX INFO: loaded from: classes.dex */
public abstract class d<T extends Node> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public a0.g f1486a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public T f1487b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public View f1488c;

    public d(a0.g gVar) {
        this.f1486a = gVar;
    }

    public void m() {
    }

    public void n() {
    }

    public final View o() {
        if (this.f1488c == null) {
            View viewP = p(this.f1486a.f30a);
            this.f1488c = viewP;
            if (this.f1487b != null && viewP != null) {
                n();
            }
        }
        return this.f1488c;
    }

    public View p(Context context) {
        return null;
    }

    public final void q(T t3) {
        this.f1487b = t3;
        m();
        if (this.f1488c != null) {
            n();
        }
    }
}
