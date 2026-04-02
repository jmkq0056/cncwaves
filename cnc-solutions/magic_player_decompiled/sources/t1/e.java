package t1;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class e extends x<Number> {
    public e(i iVar) {
    }

    @Override // t1.x
    public Number a(a2.a aVar) throws IOException {
        if (aVar.W() != a2.b.NULL) {
            return Double.valueOf(aVar.N());
        }
        aVar.S();
        return null;
    }

    @Override // t1.x
    public void b(a2.c cVar, Number number) throws IOException {
        Number number2 = number;
        if (number2 == null) {
            cVar.J();
        } else {
            i.a(number2.doubleValue());
            cVar.Q(number2);
        }
    }
}
