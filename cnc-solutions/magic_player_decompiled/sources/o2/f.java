package o2;

import java.util.List;
import k2.a0;
import k2.n;
import k2.s;
import k2.x;

/* JADX INFO: loaded from: classes2.dex */
public final class f implements s.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<s> f2857a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final n2.f f2858b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c f2859c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final n2.c f2860d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f2861e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final x f2862f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final k2.d f2863g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final n f2864h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f2865i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f2866j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f2867k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2868l;

    public f(List<s> list, n2.f fVar, c cVar, n2.c cVar2, int i4, x xVar, k2.d dVar, n nVar, int i5, int i6, int i7) {
        this.f2857a = list;
        this.f2860d = cVar2;
        this.f2858b = fVar;
        this.f2859c = cVar;
        this.f2861e = i4;
        this.f2862f = xVar;
        this.f2863g = dVar;
        this.f2864h = nVar;
        this.f2865i = i5;
        this.f2866j = i6;
        this.f2867k = i7;
    }

    public a0 a(x xVar) {
        return b(xVar, this.f2858b, this.f2859c, this.f2860d);
    }

    public a0 b(x xVar, n2.f fVar, c cVar, n2.c cVar2) {
        if (this.f2861e >= this.f2857a.size()) {
            throw new AssertionError();
        }
        this.f2868l++;
        if (this.f2859c != null && !this.f2860d.k(xVar.f2269a)) {
            StringBuilder sbA = android.support.v4.media.f.a("network interceptor ");
            sbA.append(this.f2857a.get(this.f2861e - 1));
            sbA.append(" must retain the same host and port");
            throw new IllegalStateException(sbA.toString());
        }
        if (this.f2859c != null && this.f2868l > 1) {
            StringBuilder sbA2 = android.support.v4.media.f.a("network interceptor ");
            sbA2.append(this.f2857a.get(this.f2861e - 1));
            sbA2.append(" must call proceed() exactly once");
            throw new IllegalStateException(sbA2.toString());
        }
        List<s> list = this.f2857a;
        int i4 = this.f2861e;
        f fVar2 = new f(list, fVar, cVar, cVar2, i4 + 1, xVar, this.f2863g, this.f2864h, this.f2865i, this.f2866j, this.f2867k);
        s sVar = list.get(i4);
        a0 a0VarA = sVar.a(fVar2);
        if (cVar != null && this.f2861e + 1 < this.f2857a.size() && fVar2.f2868l != 1) {
            throw new IllegalStateException("network interceptor " + sVar + " must call proceed() exactly once");
        }
        if (a0VarA == null) {
            throw new NullPointerException("interceptor " + sVar + " returned null");
        }
        if (a0VarA.f2064g != null) {
            return a0VarA;
        }
        throw new IllegalStateException("interceptor " + sVar + " returned a response with no body");
    }
}
