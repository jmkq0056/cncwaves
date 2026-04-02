package v1;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes2.dex */
public class h implements t<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Constructor f3673a;

    public h(g gVar, Constructor constructor) {
        this.f3673a = constructor;
    }

    @Override // v1.t
    public Object a() {
        try {
            return this.f3673a.newInstance(null);
        } catch (IllegalAccessException e4) {
            throw new AssertionError(e4);
        } catch (InstantiationException e5) {
            StringBuilder sbA = android.support.v4.media.f.a("Failed to invoke ");
            sbA.append(this.f3673a);
            sbA.append(" with no args");
            throw new RuntimeException(sbA.toString(), e5);
        } catch (InvocationTargetException e6) {
            StringBuilder sbA2 = android.support.v4.media.f.a("Failed to invoke ");
            sbA2.append(this.f3673a);
            sbA2.append(" with no args");
            throw new RuntimeException(sbA2.toString(), e6.getTargetException());
        }
    }
}
