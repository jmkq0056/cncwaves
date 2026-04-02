package o2;

import javax.annotation.Nullable;
import k2.c0;
import k2.t;

/* JADX INFO: loaded from: classes.dex */
public final class g extends c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    public final String f2869a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f2870b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final u2.g f2871c;

    public g(@Nullable String str, long j4, u2.g gVar) {
        this.f2869a = str;
        this.f2870b = j4;
        this.f2871c = gVar;
    }

    @Override // k2.c0
    public long B() {
        return this.f2870b;
    }

    @Override // k2.c0
    public t C() {
        String str = this.f2869a;
        if (str != null) {
            return t.b(str);
        }
        return null;
    }

    @Override // k2.c0
    public u2.g D() {
        return this.f2871c;
    }
}
