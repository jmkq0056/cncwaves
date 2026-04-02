package q2;

import java.io.IOException;
import q2.g;

/* JADX INFO: loaded from: classes2.dex */
public class n extends l2.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ t f3263b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ g.f f3264c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(g.f fVar, String str, Object[] objArr, t tVar) {
        super(str, objArr);
        this.f3264c = fVar;
        this.f3263b = tVar;
    }

    @Override // l2.b
    public void a() {
        try {
            g.this.f3226r.B(this.f3263b);
        } catch (IOException unused) {
            g.B(g.this);
        }
    }
}
