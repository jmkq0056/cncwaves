package v1;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class v extends y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Method f3711a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3712b;

    public v(Method method, int i4) {
        this.f3711a = method;
        this.f3712b = i4;
    }

    @Override // v1.y
    public <T> T b(Class<T> cls) {
        y.a(cls);
        return (T) this.f3711a.invoke(null, cls, Integer.valueOf(this.f3712b));
    }
}
