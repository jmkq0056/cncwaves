package c0;

import android.util.Log;
import androidx.appcompat.widget.ActivityChooserView;
import cn.huidu.lcd.render.model.PlayIndex;
import cn.huidu.lcd.render.model.PlayList;
import cn.huidu.lcd.render.model.ProgramNode;
import cn.huidu.lcd.render.model.extra.TimeRange;
import h0.h;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class a implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public LinkedList<ProgramNode> f314a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f315b;

    public a(int i4) {
        if (i4 != 1) {
            this.f314a = new LinkedList<>();
        } else {
            this.f314a = new LinkedList<>();
        }
    }

    @Override // c0.c
    public /* synthetic */ boolean a() {
        return b.c(this);
    }

    @Override // c0.c
    public void b(PlayList playList, ProgramNode programNode) {
        programNode.setCurrentPlayCount(programNode.getCurrentPlayCount() + 1);
        synchronized (this.f314a) {
            this.f314a.add(programNode);
            if (this.f314a.size() > playList.size()) {
                this.f314a.removeFirst();
            }
        }
    }

    @Override // c0.c
    public PlayIndex c(PlayList playList, int i4) {
        int i5 = i(playList, Calendar.getInstance());
        h.b("BalancedPlayStrategy", "onPlayNext: [" + i4 + "] -> [" + i5 + "]");
        return i5 >= 0 ? new PlayIndex(i5) : new PlayIndex(-1);
    }

    @Override // c0.c
    public PlayIndex d(PlayList playList) {
        h.b("BalancedPlayStrategy", "onStart: ");
        this.f314a.clear();
        int i4 = i(playList, Calendar.getInstance());
        if (i4 >= 0) {
            return new PlayIndex(i4);
        }
        return null;
    }

    @Override // c0.c
    public int e(PlayList playList, int i4, int i5) {
        Calendar calendar = Calendar.getInstance();
        if (i5 > 0) {
            calendar.add(14, i5);
        }
        int i6 = i(playList, calendar);
        h.b("BalancedPlayStrategy", "onPreloadNext: [" + i4 + "] -> [" + i6 + "] in " + i5);
        if (i6 < 0 || i6 == i4) {
            return -1;
        }
        return i6;
    }

    @Override // c0.c
    public PlayIndex f(d0.f fVar, PlayList playList, int i4) {
        int i5;
        if ((fVar != null && fVar.f1490e == 1) || (i5 = i(playList, Calendar.getInstance())) < 0) {
            return null;
        }
        h.b("BalancedPlayStrategy", "find available program: " + i5);
        return new PlayIndex(i5);
    }

    @Override // c0.c
    public /* synthetic */ boolean g() {
        return b.d(this);
    }

    public int h(PlayList playList, int i4, float f4) {
        int i5;
        int i6;
        int playCountPerDay;
        while (i4 < playList.size()) {
            ProgramNode programNode = playList.get(i4);
            if (programNode.isValidNow() && ((f4 <= 0.0f || programNode.getDuration() <= f4) && (playCountPerDay = programNode.getPlayCountPerDay()) > 0)) {
                if (programNode.isPriorityNow()) {
                    return i4;
                }
                if (programNode.getCurrentPlayCount() < playCountPerDay) {
                    int iH = h(playList, i4 + 1, programNode.getMaxFreeTime() * 1000.0f);
                    return iH == -1 ? i4 : iH;
                }
            }
            i4++;
        }
        int i7 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        int i8 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        int i9 = -1;
        for (int i10 = 0; i10 < playList.size(); i10++) {
            ProgramNode programNode2 = playList.get(i10);
            if (programNode2.isValidNow() && (f4 <= 0.0f || programNode2.getDuration() <= f4)) {
                synchronized (this.f314a) {
                    i5 = 0;
                    i6 = 0;
                    for (int i11 = 0; i11 < this.f314a.size(); i11++) {
                        if (this.f314a.get(i11) == programNode2) {
                            i5++;
                            i6 += i11;
                        }
                    }
                }
                if (i5 < i8 || (i5 == i8 && i6 < i7)) {
                    i9 = i10;
                    i8 = i5;
                    i7 = i6;
                }
            }
        }
        return i9;
    }

    public int i(PlayList playList, Calendar calendar) {
        long j4 = this.f315b;
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTimeInMillis(j4);
        if ((calendar.get(1) == calendar2.get(1) && calendar.get(2) == calendar2.get(2) && calendar.get(5) == calendar2.get(5)) ? false : true) {
            this.f315b = calendar.getTimeInMillis();
            for (int i4 = 0; i4 < playList.size(); i4++) {
                playList.get(i4).setCurrentPlayCount(0);
            }
        }
        for (int i5 = 0; i5 < playList.size(); i5++) {
            ProgramNode programNode = playList.get(i5);
            programNode.setValidNow(h.a.Z(programNode, calendar));
            if (programNode.isValidNow() && programNode.getPlayCountPerDay() > 0) {
                List<TimeRange> timeRangesToday = programNode.getTimeRangesToday();
                ArrayList<TimeRange> arrayList = new ArrayList();
                if (timeRangesToday != null) {
                    for (int i6 = 0; i6 < timeRangesToday.size(); i6++) {
                        TimeRange timeRange = timeRangesToday.get(i6);
                        int startTime = timeRange.getStartTime();
                        int endTime = timeRange.getEndTime();
                        if (startTime > endTime) {
                            arrayList.add(new TimeRange(startTime, 86400));
                            arrayList.add(new TimeRange(0, endTime));
                        } else {
                            arrayList.add(timeRange);
                        }
                    }
                }
                if (arrayList.isEmpty()) {
                    arrayList.add(new TimeRange(0, 86400));
                }
                int iJ = h.a.J(calendar);
                int i7 = 0;
                int i8 = 0;
                for (TimeRange timeRange2 : arrayList) {
                    int startTime2 = timeRange2.getStartTime();
                    int endTime2 = timeRange2.getEndTime();
                    if (iJ > startTime2) {
                        i7 += iJ > endTime2 ? endTime2 - startTime2 : iJ - startTime2;
                    }
                    i8 += endTime2 - startTime2;
                }
                int playCountPerDay = programNode.getPlayCountPerDay();
                float f4 = playCountPerDay * (i7 / i8);
                int currentPlayCount = programNode.getCurrentPlayCount();
                StringBuilder sbA = android.support.v4.media.f.a("calculatePriority: [");
                sbA.append(programNode.getName());
                sbA.append("] currentPlayCount: ");
                sbA.append(currentPlayCount);
                sbA.append(", expectedPlayCount: ");
                sbA.append(f4);
                Log.d("BalancedPlayStrategy", sbA.toString());
                programNode.setPriorityNow(((float) currentPlayCount) < f4);
                int i9 = playCountPerDay - currentPlayCount;
                if (programNode.isPriorityNow() || i9 <= 0) {
                    programNode.setMaxFreeTime(0.0f);
                } else {
                    int duration = (i8 - i7) - ((programNode.getDuration() * i9) / 1000);
                    StringBuilder sbA2 = android.support.v4.media.f.a("calculatePriority: [");
                    sbA2.append(programNode.getName());
                    sbA2.append("] maxInsert: ");
                    sbA2.append(duration);
                    Log.d("BalancedPlayStrategy", sbA2.toString());
                    programNode.setMaxFreeTime(duration);
                }
            }
        }
        return h(playList, 0, 0.0f);
    }
}
