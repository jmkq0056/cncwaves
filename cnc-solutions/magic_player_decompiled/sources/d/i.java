package d;

import cn.huidu.lcd.core.db.entity.ProgramVisitors;
import java.util.Iterator;
import l.j;

/* JADX INFO: loaded from: classes.dex */
public class i implements j {
    @Override // l.j
    public void a() {
        g gVarD = g.d();
        synchronized (gVarD) {
            gVarD.f1449g.d();
        }
    }

    @Override // l.j
    public ProgramVisitors b() {
        ProgramVisitors programVisitorsA;
        g gVarD = g.d();
        synchronized (gVarD) {
            if (gVarD.f1447e) {
                Iterator<c> it = gVarD.f1446d.iterator();
                while (it.hasNext()) {
                    gVarD.f1449g.c(it.next());
                }
                programVisitorsA = gVarD.f1449g.a();
            } else {
                programVisitorsA = null;
            }
        }
        return programVisitorsA;
    }
}
