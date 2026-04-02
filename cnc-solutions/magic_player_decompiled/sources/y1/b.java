package y1;

import java.lang.reflect.AccessibleObject;
import v1.p;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f4009a;

    static {
        f4009a = p.f3684a < 9 ? new a() : new c();
    }

    public abstract void a(AccessibleObject accessibleObject);
}
