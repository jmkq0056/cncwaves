package q2;

import java.io.IOException;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class i extends l2.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3251b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List f3252c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ g f3253d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(g gVar, String str, Object[] objArr, int i4, List list, boolean z3) {
        super(str, objArr);
        this.f3253d = gVar;
        this.f3251b = i4;
        this.f3252c = list;
    }

    @Override // l2.b
    public void a() {
        Objects.requireNonNull(this.f3253d.f3218j);
        try {
            this.f3253d.f3226r.H(this.f3251b, b.CANCEL);
            synchronized (this.f3253d) {
                this.f3253d.f3228t.remove(Integer.valueOf(this.f3251b));
            }
        } catch (IOException unused) {
        }
    }
}
