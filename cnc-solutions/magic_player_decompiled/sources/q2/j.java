package q2;

import java.io.IOException;
import java.util.Objects;
import q2.s;

/* JADX INFO: loaded from: classes2.dex */
public class j extends l2.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3254b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ u2.e f3255c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f3256d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ g f3257e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(g gVar, String str, Object[] objArr, int i4, u2.e eVar, int i5, boolean z3) {
        super(str, objArr);
        this.f3257e = gVar;
        this.f3254b = i4;
        this.f3255c = eVar;
        this.f3256d = i5;
    }

    @Override // l2.b
    public void a() {
        try {
            s sVar = this.f3257e.f3218j;
            u2.e eVar = this.f3255c;
            int i4 = this.f3256d;
            Objects.requireNonNull((s.a) sVar);
            eVar.skip(i4);
            this.f3257e.f3226r.H(this.f3254b, b.CANCEL);
            synchronized (this.f3257e) {
                this.f3257e.f3228t.remove(Integer.valueOf(this.f3254b));
            }
        } catch (IOException unused) {
        }
    }
}
