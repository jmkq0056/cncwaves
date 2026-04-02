package j3;

import n3.i;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2030a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Class<?> f2031b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f2032c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f2033d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f2034e;

    public e(int i4, Class<?> cls, String str, boolean z3, String str2) {
        this.f2030a = i4;
        this.f2031b = cls;
        this.f2032c = str;
        this.f2033d = z3;
        this.f2034e = str2;
    }

    public i a(Object obj) {
        return new i.b(this, ">?", obj);
    }

    public i b(Object obj) {
        return new i.b(this, "<?", obj);
    }
}
