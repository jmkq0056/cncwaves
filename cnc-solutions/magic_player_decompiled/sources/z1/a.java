package z1;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class<? super T> f4196a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Type f4197b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f4198c;

    public a() {
        Type genericSuperclass = getClass().getGenericSuperclass();
        if (genericSuperclass instanceof Class) {
            throw new RuntimeException("Missing type parameter.");
        }
        Type typeA = v1.a.a(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
        this.f4197b = typeA;
        this.f4196a = (Class<? super T>) v1.a.e(typeA);
        this.f4198c = typeA.hashCode();
    }

    public final boolean equals(Object obj) {
        return (obj instanceof a) && v1.a.c(this.f4197b, ((a) obj).f4197b);
    }

    public final int hashCode() {
        return this.f4198c;
    }

    public final String toString() {
        return v1.a.i(this.f4197b);
    }

    public a(Type type) {
        Objects.requireNonNull(type);
        Type typeA = v1.a.a(type);
        this.f4197b = typeA;
        this.f4196a = (Class<? super T>) v1.a.e(typeA);
        this.f4198c = typeA.hashCode();
    }
}
