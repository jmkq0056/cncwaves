package g3;

import java.lang.reflect.Method;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes2.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Method f1775a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ThreadMode f1776b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Class<?> f1777c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1778d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f1779e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f1780f;

    public m(Method method, Class<?> cls, ThreadMode threadMode, int i4, boolean z3) {
        this.f1775a = method;
        this.f1776b = threadMode;
        this.f1777c = cls;
        this.f1778d = i4;
        this.f1779e = z3;
    }

    public final synchronized void a() {
        if (this.f1780f == null) {
            StringBuilder sb = new StringBuilder(64);
            sb.append(this.f1775a.getDeclaringClass().getName());
            sb.append('#');
            sb.append(this.f1775a.getName());
            sb.append('(');
            sb.append(this.f1777c.getName());
            this.f1780f = sb.toString();
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        a();
        m mVar = (m) obj;
        mVar.a();
        return this.f1780f.equals(mVar.f1780f);
    }

    public int hashCode() {
        return this.f1775a.hashCode();
    }
}
