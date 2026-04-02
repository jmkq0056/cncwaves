package v1;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class w extends y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Method f3713a;

    public w(Method method) {
        this.f3713a = method;
    }

    @Override // v1.y
    public <T> T b(Class<T> cls) {
        y.a(cls);
        return (T) this.f3713a.invoke(null, cls, Object.class);
    }
}
