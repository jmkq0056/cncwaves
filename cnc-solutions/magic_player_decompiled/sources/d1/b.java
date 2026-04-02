package d1;

import c0.c;
import cn.huidu.lcd.render.model.PlayIndex;
import cn.huidu.lcd.render.model.PlayList;
import cn.huidu.lcd.render.model.ProgramNode;
import d0.f;
import h0.h;
import java.util.Calendar;
import org.eclipse.jetty.http.HttpStatus;

/* JADX INFO: loaded from: classes.dex */
public class b implements c {
    public b(int i4) {
    }

    @Override // c0.c
    public /* synthetic */ boolean a() {
        return c0.b.c(this);
    }

    @Override // c0.c
    public /* synthetic */ void b(PlayList playList, ProgramNode programNode) {
        c0.b.b(this, playList, programNode);
    }

    @Override // c0.c
    public PlayIndex c(PlayList playList, int i4) {
        int iH = h(playList, i4, Calendar.getInstance());
        h.b("ListCycleStrategy", "onPlayNext: current = " + i4 + ", next = " + iH);
        return iH >= 0 ? new PlayIndex(iH) : new PlayIndex(-1);
    }

    @Override // c0.c
    public PlayIndex d(PlayList playList) {
        int iH;
        long j4;
        h.b("ListCycleStrategy", "onStart: ");
        if (l.c.a().K) {
            n.a aVar = (n.a) l.b.c().a(n.a.class);
            iH = h(playList, aVar.f2611h - 1, Calendar.getInstance());
            j4 = aVar.f2612i;
        } else {
            iH = h(playList, -1, Calendar.getInstance());
            j4 = 0;
        }
        if (iH >= 0) {
            return new PlayIndex(iH, (int) j4);
        }
        return null;
    }

    @Override // c0.c
    public int e(PlayList playList, int i4, int i5) {
        Calendar calendar = Calendar.getInstance();
        if (i5 > 0) {
            calendar.add(14, i5);
        }
        int iH = h(playList, i4, calendar);
        h.b("ListCycleStrategy", "onPreloadNext: current = " + i4 + ", next = " + iH);
        if (iH >= 0) {
            return iH;
        }
        return -1;
    }

    @Override // c0.c
    public PlayIndex f(f fVar, PlayList playList, int i4) {
        if (fVar == null || fVar.f1490e != 1) {
            int iH = h(playList, -1, Calendar.getInstance());
            if (iH < 0) {
                return null;
            }
            h.b("ListCycleStrategy", "find available program: " + iH);
            return new PlayIndex(iH);
        }
        Calendar calendar = Calendar.getInstance();
        calendar.add(14, HttpStatus.INTERNAL_SERVER_ERROR_500);
        if (h.a.Z((ProgramNode) fVar.f1487b, calendar)) {
            return null;
        }
        int iH2 = h(playList, i4, calendar);
        h.b("ListCycleStrategy", "current program is out of date, find next: " + iH2);
        return new PlayIndex(iH2);
    }

    @Override // c0.c
    public /* synthetic */ boolean g() {
        return c0.b.d(this);
    }

    public int h(PlayList playList, int i4, Calendar calendar) {
        int i5 = i4 + 1;
        int i6 = 0;
        while (i6 < playList.size()) {
            if (i5 >= playList.size()) {
                i5 = 0;
            }
            if (i(playList.get(i5), calendar)) {
                return i5;
            }
            i6++;
            i5++;
        }
        return -1;
    }

    public boolean i(ProgramNode programNode, Calendar calendar) {
        return h.a.Z(programNode, calendar);
    }
}
