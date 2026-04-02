package q2;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class k extends l2.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3258b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ g f3259c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(g gVar, String str, Object[] objArr, int i4, b bVar) {
        super(str, objArr);
        this.f3259c = gVar;
        this.f3258b = i4;
    }

    @Override // l2.b
    public void a() {
        Objects.requireNonNull(this.f3259c.f3218j);
        synchronized (this.f3259c) {
            this.f3259c.f3228t.remove(Integer.valueOf(this.f3258b));
        }
    }
}
