package c0;

import android.os.SystemClock;
import android.util.Log;
import cn.huidu.lcd.render.model.PlayIndex;
import cn.huidu.lcd.render.model.PlayList;
import cn.huidu.lcd.render.model.ProgramNode;
import h0.h;

/* JADX INFO: loaded from: classes.dex */
public class e implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f316a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f317b;

    @Override // c0.c
    public boolean a() {
        return true;
    }

    @Override // c0.c
    public /* synthetic */ void b(PlayList playList, ProgramNode programNode) {
        b.b(this, playList, programNode);
    }

    @Override // c0.c
    public PlayIndex c(PlayList playList, int i4) {
        PlayIndex playIndexH = h(playList);
        StringBuilder sbA = android.support.v4.media.a.a("onPlayNext: current = ", i4, ", next = ");
        sbA.append(playIndexH.index);
        h.b("SyncPlayStrategy", sbA.toString());
        int i5 = playIndexH.duration;
        int i6 = playIndexH.position;
        int i7 = i5 - i6;
        if (i7 > 0 && i7 < i6 && i7 < 5000) {
            h.b("SyncPlayStrategy", "onPlayNext: wait " + i7 + "ms.");
            int i8 = playIndexH.index + 1;
            if (i8 >= playList.size()) {
                i8 = 0;
            }
            playIndexH.index = i8;
            playIndexH.position = 0;
            if (i7 < 100) {
                SystemClock.sleep(i7);
                playIndexH.delay = 0;
            } else {
                playIndexH.delay = i7;
            }
        }
        return playIndexH;
    }

    @Override // c0.c
    public PlayIndex d(PlayList playList) {
        h.b("SyncPlayStrategy", "onStart: ");
        if (!l.c.a().K) {
            return h(playList);
        }
        n.a aVar = (n.a) l.b.c().a(n.a.class);
        PlayIndex playIndex = new PlayIndex();
        playIndex.index = aVar.f2611h;
        playIndex.position = (int) aVar.f2612i;
        return playIndex;
    }

    @Override // c0.c
    public int e(PlayList playList, int i4, int i5) {
        int i6 = i4 + 1;
        if (i6 >= playList.size()) {
            i6 = 0;
        }
        h.b("SyncPlayStrategy", "onPreloadNext: current = " + i4 + ", next = " + i6);
        return i6;
    }

    @Override // c0.c
    public PlayIndex f(d0.f fVar, PlayList playList, int i4) {
        long j4 = this.f316a;
        if (j4 <= 0) {
            return null;
        }
        if (Math.abs(r.e.c() - ((SystemClock.elapsedRealtime() - this.f317b) + j4)) <= 30) {
            return null;
        }
        Log.d("SyncPlayStrategy", "adjustPlayIndex: time changed.");
        return h(playList);
    }

    @Override // c0.c
    public boolean g() {
        return true;
    }

    public final PlayIndex h(PlayList playList) {
        PlayIndex playIndex = new PlayIndex();
        long jC = r.e.c();
        this.f316a = jC;
        this.f317b = SystemClock.elapsedRealtime();
        long timeStamp = jC - playList.getTimeStamp();
        long duration = playList.getDuration();
        long j4 = timeStamp % duration;
        if (j4 < 0) {
            j4 += duration;
        }
        int i4 = 0;
        int i5 = 0;
        while (true) {
            if (i4 >= playList.size()) {
                break;
            }
            int duration2 = playList.get(i4).getDuration();
            int i6 = i5 + duration2;
            if (j4 < i6) {
                playIndex.index = i4;
                playIndex.position = (int) (j4 - ((long) i5));
                playIndex.duration = duration2;
                break;
            }
            i4++;
            i5 = i6;
        }
        return playIndex;
    }
}
