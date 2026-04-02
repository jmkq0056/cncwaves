package q2;

import java.io.IOException;
import q2.g;

/* JADX INFO: loaded from: classes2.dex */
public class l extends l2.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ p f3260b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ g.f f3261c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(g.f fVar, String str, Object[] objArr, p pVar) {
        super(str, objArr);
        this.f3261c = fVar;
        this.f3260b = pVar;
    }

    @Override // l2.b
    public void a() {
        try {
            g.this.f3210b.b(this.f3260b);
        } catch (IOException e4) {
            r2.f fVar = r2.f.f3385a;
            StringBuilder sbA = android.support.v4.media.f.a("Http2Connection.Listener failure for ");
            sbA.append(g.this.f3212d);
            fVar.l(4, sbA.toString(), e4);
            try {
                this.f3260b.c(b.PROTOCOL_ERROR);
            } catch (IOException unused) {
            }
        }
    }
}
