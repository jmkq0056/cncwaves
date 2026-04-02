package d;

import android.os.SystemClock;
import android.util.Log;
import cn.huidu.lcd.core.db.entity.ProgramVisitors;
import cn.huidu.lcd.core.db.entity.VisitorStats;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f1459a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f1460b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1461c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1462d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1463e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1464f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1465g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1466h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1467i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f1468j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f1469k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f1470l;

    public ProgramVisitors a() {
        if (this.f1461c + this.f1462d <= 0) {
            return null;
        }
        ProgramVisitors programVisitors = new ProgramVisitors();
        programVisitors.setMale(this.f1461c);
        programVisitors.setFemale(this.f1462d);
        programVisitors.setChild(this.f1463e);
        programVisitors.setYoung(this.f1464f);
        programVisitors.setMiddle(this.f1465g);
        programVisitors.setOld(this.f1466h);
        programVisitors.setT1(this.f1467i);
        programVisitors.setT2(this.f1468j);
        programVisitors.setT3(this.f1469k);
        programVisitors.setT4(this.f1470l);
        return programVisitors;
    }

    public VisitorStats b() {
        if (this.f1459a <= 0) {
            return null;
        }
        long j4 = this.f1460b;
        if (j4 <= 0 || this.f1461c + this.f1462d <= 0) {
            return null;
        }
        long offset = j4 + ((long) TimeZone.getDefault().getOffset(this.f1460b));
        int iElapsedRealtime = (int) (SystemClock.elapsedRealtime() - this.f1459a);
        StringBuilder sbA = android.support.v4.media.f.a("VisitorStats: start time: ");
        sbA.append(this.f1460b);
        sbA.append(", duration: ");
        sbA.append(iElapsedRealtime);
        sbA.append(", male: ");
        sbA.append(this.f1461c);
        sbA.append(", female: ");
        sbA.append(this.f1462d);
        sbA.append(", child: ");
        sbA.append(this.f1463e);
        sbA.append(", young: ");
        sbA.append(this.f1464f);
        sbA.append(", middle: ");
        sbA.append(this.f1465g);
        sbA.append(", old: ");
        sbA.append(this.f1466h);
        sbA.append(", lt5s: ");
        sbA.append(this.f1467i);
        sbA.append(", lt15s: ");
        sbA.append(this.f1468j);
        sbA.append(", lt30s: ");
        sbA.append(this.f1469k);
        sbA.append(", gt30s: ");
        sbA.append(this.f1470l);
        Log.d("VisitorCounter", sbA.toString());
        VisitorStats visitorStats = new VisitorStats();
        visitorStats.setTime(offset);
        visitorStats.setDuration(iElapsedRealtime);
        visitorStats.setMale(this.f1461c);
        visitorStats.setFemale(this.f1462d);
        visitorStats.setChild(this.f1463e);
        visitorStats.setYoung(this.f1464f);
        visitorStats.setMiddle(this.f1465g);
        visitorStats.setOld(this.f1466h);
        visitorStats.setT1(this.f1467i);
        visitorStats.setT2(this.f1468j);
        visitorStats.setT3(this.f1469k);
        visitorStats.setT4(this.f1470l);
        return visitorStats;
    }

    public void c(c cVar) {
        if (cVar.f1431c == 0) {
            this.f1461c++;
        } else {
            this.f1462d++;
        }
        int i4 = cVar.f1432d;
        if (i4 <= 14) {
            this.f1463e++;
        } else if (i4 <= 30) {
            this.f1464f++;
        } else if (i4 <= 60) {
            this.f1465g++;
        } else {
            this.f1466h++;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime() - cVar.f1433e;
        if (jElapsedRealtime < 5000) {
            this.f1467i++;
            return;
        }
        if (jElapsedRealtime < 15000) {
            this.f1468j++;
        } else if (jElapsedRealtime < 30000) {
            this.f1469k++;
        } else {
            this.f1470l++;
        }
    }

    public void d() {
        this.f1460b = System.currentTimeMillis();
        this.f1459a = SystemClock.elapsedRealtime();
        this.f1461c = 0;
        this.f1462d = 0;
        this.f1463e = 0;
        this.f1464f = 0;
        this.f1465g = 0;
        this.f1466h = 0;
        this.f1467i = 0;
        this.f1468j = 0;
        this.f1469k = 0;
        this.f1470l = 0;
    }
}
