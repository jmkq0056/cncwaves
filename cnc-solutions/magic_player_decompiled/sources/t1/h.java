package t1;

import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicLongArray;

/* JADX INFO: loaded from: classes2.dex */
public class h extends x<AtomicLongArray> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x f3533a;

    public h(x xVar) {
        this.f3533a = xVar;
    }

    @Override // t1.x
    public AtomicLongArray a(a2.a aVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        aVar.B();
        while (aVar.J()) {
            arrayList.add(Long.valueOf(((Number) this.f3533a.a(aVar)).longValue()));
        }
        aVar.F();
        int size = arrayList.size();
        AtomicLongArray atomicLongArray = new AtomicLongArray(size);
        for (int i4 = 0; i4 < size; i4++) {
            atomicLongArray.set(i4, ((Long) arrayList.get(i4)).longValue());
        }
        return atomicLongArray;
    }

    @Override // t1.x
    public void b(a2.c cVar, AtomicLongArray atomicLongArray) throws IOException {
        AtomicLongArray atomicLongArray2 = atomicLongArray;
        cVar.C();
        int length = atomicLongArray2.length();
        for (int i4 = 0; i4 < length; i4++) {
            this.f3533a.b(cVar, Long.valueOf(atomicLongArray2.get(i4)));
        }
        cVar.F();
    }
}
