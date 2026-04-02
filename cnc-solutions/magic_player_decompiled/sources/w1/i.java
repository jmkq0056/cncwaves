package w1;

import java.lang.reflect.Field;
import t1.x;
import w1.j;

/* JADX INFO: loaded from: classes2.dex */
public class i extends j.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Field f3847d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f3848e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ x f3849f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ t1.i f3850g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ z1.a f3851h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ boolean f3852i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(j jVar, String str, boolean z3, boolean z4, Field field, boolean z5, x xVar, t1.i iVar, z1.a aVar, boolean z6) {
        super(str, z3, z4);
        this.f3847d = field;
        this.f3848e = z5;
        this.f3849f = xVar;
        this.f3850g = iVar;
        this.f3851h = aVar;
        this.f3852i = z6;
    }

    @Override // w1.j.b
    public void a(a2.a aVar, Object obj) throws IllegalAccessException {
        Object objA = this.f3849f.a(aVar);
        if (objA == null && this.f3852i) {
            return;
        }
        this.f3847d.set(obj, objA);
    }

    @Override // w1.j.b
    public void b(a2.c cVar, Object obj) throws IllegalAccessException {
        (this.f3848e ? this.f3849f : new n(this.f3850g, this.f3849f, this.f3851h.f4197b)).b(cVar, this.f3847d.get(obj));
    }

    @Override // w1.j.b
    public boolean c(Object obj) {
        return this.f3861b && this.f3847d.get(obj) != obj;
    }
}
