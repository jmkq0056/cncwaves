package v1;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.EnumSet;

/* JADX INFO: loaded from: classes2.dex */
public class j implements t<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Type f3674a;

    public j(g gVar, Type type) {
        this.f3674a = type;
    }

    @Override // v1.t
    public Object a() {
        Type type = this.f3674a;
        if (!(type instanceof ParameterizedType)) {
            StringBuilder sbA = android.support.v4.media.f.a("Invalid EnumSet type: ");
            sbA.append(this.f3674a.toString());
            throw new t1.o(sbA.toString());
        }
        Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
        if (type2 instanceof Class) {
            return EnumSet.noneOf((Class) type2);
        }
        StringBuilder sbA2 = android.support.v4.media.f.a("Invalid EnumSet type: ");
        sbA2.append(this.f3674a.toString());
        throw new t1.o(sbA2.toString());
    }
}
