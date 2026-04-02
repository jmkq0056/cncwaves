package v1;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class u extends y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Method f3709a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f3710b;

    public u(Method method, Object obj) {
        this.f3709a = method;
        this.f3710b = obj;
    }

    @Override // v1.y
    public <T> T b(Class<T> cls) {
        y.a(cls);
        return (T) this.f3709a.invoke(this.f3710b, cls);
    }
}
