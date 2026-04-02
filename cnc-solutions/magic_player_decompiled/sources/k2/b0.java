package k2;

import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class b0 extends c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ t f2083a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f2084b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ u2.g f2085c;

    public b0(t tVar, long j4, u2.g gVar) {
        this.f2083a = tVar;
        this.f2084b = j4;
        this.f2085c = gVar;
    }

    @Override // k2.c0
    public long B() {
        return this.f2084b;
    }

    @Override // k2.c0
    @Nullable
    public t C() {
        return this.f2083a;
    }

    @Override // k2.c0
    public u2.g D() {
        return this.f2085c;
    }
}
