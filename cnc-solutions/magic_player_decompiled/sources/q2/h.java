package q2;

import java.io.IOException;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class h extends l2.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3248b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List f3249c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ g f3250d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(g gVar, String str, Object[] objArr, int i4, List list) {
        super(str, objArr);
        this.f3250d = gVar;
        this.f3248b = i4;
        this.f3249c = list;
    }

    @Override // l2.b
    public void a() {
        Objects.requireNonNull(this.f3250d.f3218j);
        try {
            this.f3250d.f3226r.H(this.f3248b, b.CANCEL);
            synchronized (this.f3250d) {
                this.f3250d.f3228t.remove(Integer.valueOf(this.f3248b));
            }
        } catch (IOException unused) {
        }
    }
}
