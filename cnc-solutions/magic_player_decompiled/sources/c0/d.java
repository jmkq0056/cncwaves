package c0;

import android.os.SystemClock;
import cn.huidu.lcd.core.db.PlayStatsDb;
import cn.huidu.lcd.render.model.PlayIndex;
import cn.huidu.lcd.render.model.PlayList;
import cn.huidu.lcd.render.model.ProgramNode;
import h0.h;

/* JADX INFO: loaded from: classes.dex */
public class d implements c {
    @Override // c0.c
    public /* synthetic */ boolean a() {
        return b.c(this);
    }

    @Override // c0.c
    public /* synthetic */ void b(PlayList playList, ProgramNode programNode) {
        b.b(this, playList, programNode);
    }

    @Override // c0.c
    public PlayIndex c(PlayList playList, int i4) {
        return new PlayIndex(i4);
    }

    @Override // c0.c
    public PlayIndex d(PlayList playList) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        String lastProgramId = PlayStatsDb.getLastProgramId();
        h.b("SingleCycleStrategy", "getLastProgram: " + lastProgramId + ", elapse: " + (SystemClock.elapsedRealtime() - jElapsedRealtime));
        if (lastProgramId != null) {
            for (int i4 = 0; i4 < playList.size(); i4++) {
                if (lastProgramId.equals(playList.get(i4).getUuid())) {
                    return new PlayIndex(i4);
                }
            }
        }
        return new PlayIndex(0);
    }

    @Override // c0.c
    public int e(PlayList playList, int i4, int i5) {
        return -1;
    }

    @Override // c0.c
    public /* synthetic */ PlayIndex f(d0.f fVar, PlayList playList, int i4) {
        return b.a(this, fVar, playList, i4);
    }

    @Override // c0.c
    public /* synthetic */ boolean g() {
        return b.d(this);
    }
}
