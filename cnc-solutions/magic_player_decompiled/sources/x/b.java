package x;

import android.location.Location;
import android.location.LocationManager;
import android.os.SystemClock;
import android.util.Log;
import cn.huidu.lcd.core.db.PlayStatsDb;
import cn.huidu.lcd.core.db.entity.PlayHistory;
import cn.huidu.lcd.core.db.entity.ProgramVisitors;
import cn.huidu.lcd.render.model.ProgramNode;
import d.i;
import java.util.TimeZone;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import l.j;

/* JADX INFO: loaded from: classes.dex */
public class b implements a0.a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static b f3937g = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ThreadPoolExecutor f3938a = new ThreadPoolExecutor(1, 1, 0, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public LocationManager f3939b = (LocationManager) w0.c.f3777a.getSystemService("location");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public j f3940c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ProgramNode f3941d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f3942e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f3943f;

    /* JADX INFO: renamed from: x.b$b, reason: collision with other inner class name */
    public static class RunnableC0055b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f3944a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f3945b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f3946c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f3947d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Location f3948e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ProgramVisitors f3949f;

        public RunnableC0055b(a aVar) {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                PlayHistory playHistory = new PlayHistory();
                playHistory.setUuid(this.f3944a);
                playHistory.setVersion(this.f3945b);
                playHistory.setTimestamp(this.f3946c);
                playHistory.setDuration(this.f3947d);
                Location location = this.f3948e;
                if (location != null) {
                    playHistory.setLat(location.getLatitude());
                    playHistory.setLng(this.f3948e.getLongitude());
                }
                PlayStatsDb.insert(playHistory, this.f3949f);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    public b() {
        Object objNewInstance;
        try {
            objNewInstance = i.class.newInstance();
        } catch (Exception unused) {
            objNewInstance = null;
        }
        this.f3940c = objNewInstance instanceof j ? (j) objNewInstance : null;
    }

    public final synchronized void a(ProgramNode programNode) {
        Location lastKnownLocation;
        if (programNode != null) {
            if (programNode == this.f3941d) {
                int iElapsedRealtime = (int) (SystemClock.elapsedRealtime() - this.f3942e);
                Log.d("PlayerRecorder", "recordProgramEnd: " + programNode.getName() + ", duration: " + iElapsedRealtime);
                RunnableC0055b runnableC0055b = new RunnableC0055b(null);
                runnableC0055b.f3944a = programNode.getUuid();
                runnableC0055b.f3945b = programNode.getVersion();
                runnableC0055b.f3946c = this.f3943f + ((long) TimeZone.getDefault().getOffset(this.f3943f));
                runnableC0055b.f3947d = iElapsedRealtime;
                try {
                    lastKnownLocation = this.f3939b.getLastKnownLocation("gps");
                } catch (Exception unused) {
                    lastKnownLocation = null;
                }
                runnableC0055b.f3948e = lastKnownLocation;
                j jVar = this.f3940c;
                if (jVar != null) {
                    runnableC0055b.f3949f = jVar.b();
                }
                this.f3938a.execute(runnableC0055b);
                this.f3941d = null;
                this.f3942e = 0L;
                this.f3943f = 0L;
                return;
            }
        }
        if (programNode != null) {
            Log.d("PlayerRecorder", "recordProgramEnd: program changed!");
        }
    }
}
