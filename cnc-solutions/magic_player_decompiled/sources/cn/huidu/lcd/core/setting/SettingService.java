package cn.huidu.lcd.core.setting;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.provider.Settings;
import android.util.Log;
import androidx.annotation.Nullable;
import i.d;
import j.r;
import j.x;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import n.m;
import n.o;
import o.e;
import o.f;
import org.greenrobot.eventbus.ThreadMode;
import q.j;
import s.h;

/* JADX INFO: loaded from: classes.dex */
public class SettingService extends Service implements Handler.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public q.a f351a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public q.b f352b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public j f353c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public d f354d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public f f355e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public f f356f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public List<e> f357g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public List<o.d> f358h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public o f359i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f360j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public HandlerThread f361k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Handler f362l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f363m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f364n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f365o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f366p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f367q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f368r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public long f369s;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public long f373w;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f370t = -1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f371u = -1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f372v = -1;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public ContentObserver f374x = new a(new Handler());

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public BroadcastReceiver f375y = new b();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public BroadcastReceiver f376z = new c();

    public class a extends ContentObserver {
        public a(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z3) {
            Log.d("SettingService", "onChange: brightness changed");
            SettingService.this.f362l.removeMessages(5);
            SettingService.this.f362l.sendEmptyMessageDelayed(5, 1000L);
        }
    }

    public class b extends BroadcastReceiver {
        public b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_TYPE", -1) == 3) {
                Log.d("SettingService", "onReceive: volume changed");
                SettingService.this.f362l.removeMessages(6);
                SettingService.this.f362l.sendEmptyMessageDelayed(6, 1000L);
            }
        }
    }

    public class c extends BroadcastReceiver {
        public c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int intExtra;
            if (!"android.net.wifi.WIFI_AP_STATE_CHANGED".equals(intent.getAction()) || (intExtra = intent.getIntExtra("wifi_state", 0)) == 10) {
                return;
            }
            if (intExtra == 11) {
                Log.d("SettingService", "onReceive: +++热点状态：已关闭");
                SettingService.a(SettingService.this, 0);
            } else if (intExtra != 12 && intExtra == 13) {
                Log.d("SettingService", "onReceive: +++热点状态：已开启");
                SettingService.a(SettingService.this, 1);
            }
        }
    }

    public static void a(SettingService settingService, int i4) {
        settingService.f362l.removeMessages(7);
        Message messageObtain = Message.obtain();
        messageObtain.what = 7;
        messageObtain.arg1 = i4;
        settingService.f362l.sendMessageDelayed(messageObtain, 7000L);
    }

    public final int b(f fVar) {
        if (fVar == null) {
            return -1;
        }
        List<o.a> list = fVar.f2839c;
        int iC = c(TimeZone.getDefault());
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        for (o.a aVar : list) {
            int iJ = j(aVar.f2804a);
            if (iJ <= iC && iJ > i5) {
                i4 = Integer.parseInt(aVar.f2806c);
                i5 = iJ;
            } else if (i5 == -1 && iJ > i6) {
                i4 = Integer.parseInt(aVar.f2806c);
                i6 = iJ;
            }
        }
        return i4;
    }

    public final int c(TimeZone timeZone) {
        Calendar calendar = Calendar.getInstance(timeZone);
        int i4 = calendar.get(11);
        return (((i4 * 60) + calendar.get(12)) * 60) + calendar.get(13);
    }

    public final void d() {
        f fVarC = this.f353c.c();
        this.f356f = fVarC;
        this.f364n = (fVarC == null || fVarC.f2837a) ? false : true;
    }

    public final void e() throws Throwable {
        Log.d("SettingService", "loadMachineOnOffConfig: ");
        boolean z3 = this.f366p;
        this.f369s = 0L;
        List<o.d> listD = this.f353c.d();
        this.f358h = listD;
        boolean z4 = false;
        this.f366p = listD != null && listD.size() > 0;
        List<o.d> list = this.f358h;
        if (list != null) {
            if (list.size() <= 0) {
                return;
            }
            Iterator<o.d> it = this.f358h.iterator();
            while (it.hasNext()) {
                if (it.next().f2830k) {
                    z4 = true;
                }
            }
            int iH = h.a.h(this.f358h, z4 ? h.a.p() : h.a.q());
            if (iH <= 0 || iH >= 31536000) {
                iH = 31104000;
            }
            if (iH > 60) {
                cn.huidu.lcd.core.util.a.e(iH);
            }
        }
        if (!z3 || this.f366p) {
            return;
        }
        h.a("SettingService: switch disabled, turn on machine.");
        cn.huidu.lcd.core.util.a.k();
    }

    public final void f() throws Throwable {
        boolean z3 = this.f365o;
        List<e> listE = this.f353c.e();
        this.f357g = listE;
        boolean z4 = listE != null && listE.size() > 0;
        this.f365o = z4;
        if (!z3 || z4) {
            return;
        }
        h.a("SettingService: switch disabled, turn on screen.");
        cn.huidu.lcd.core.util.a.k();
    }

    public final void g() {
        this.f372v = -1;
        m mVar = (m) l.b.c().a(m.class);
        if (!mVar.f2683c) {
            this.f368r = false;
        } else {
            this.f368r = true;
            this.f360j = j(mVar.f2684d);
        }
    }

    public final void h() {
        f fVarF = this.f353c.f();
        this.f355e = fVarF;
        boolean z3 = (fVarF == null || fVarF.f2837a) ? false : true;
        this.f363m = z3;
        if (z3) {
            return;
        }
        this.f370t = 0;
    }

    @org.greenrobot.eventbus.a(threadMode = ThreadMode.BACKGROUND)
    public void handleMessage(r rVar) {
        Log.d("SettingService", "handleMessage: SettingServiceEvent");
        Message messageObtainMessage = this.f362l.obtainMessage();
        messageObtainMessage.what = 4;
        messageObtainMessage.obj = rVar;
        messageObtainMessage.sendToTarget();
    }

    public final void i() {
        o oVar = (o) l.b.c().a(o.class);
        this.f359i = oVar;
        this.f367q = oVar.f2686c && oVar.f2688e == 0;
    }

    public final int j(String str) {
        try {
            String[] strArrSplit = str.split(":");
            int i4 = Integer.parseInt(strArrSplit[0]);
            return (((i4 * 60) + Integer.parseInt(strArrSplit[1])) * 60) + Integer.parseInt(strArrSplit[2]);
        } catch (Exception unused) {
            return -1;
        }
    }

    public final void k() {
        this.f362l.removeMessages(1);
        if (this.f365o || this.f368r || this.f366p) {
            this.f362l.sendEmptyMessageDelayed(1, 1000L);
        }
        this.f362l.removeMessages(2);
        if (this.f363m || this.f364n || this.f367q) {
            this.f362l.sendEmptyMessageDelayed(2, 2000L);
        }
    }

    public final void l(o.d dVar, int i4) {
        int iJ0 = h.a.j0(dVar.f2832m + " " + dVar.f2821b) - h.a.j0(h.a.o());
        if (iJ0 > 0 || iJ0 < -5) {
            return;
        }
        n(i4);
    }

    public final void m(o.d dVar, int i4) {
        int iL0 = h.a.l0(dVar.f2821b) - h.a.l0(new SimpleDateFormat("HH:mm:ss").format(Long.valueOf(System.currentTimeMillis())));
        if (iL0 > 0 || iL0 < -5) {
            return;
        }
        n(i4);
    }

    public final void n(int i4) {
        Log.d("SettingService", "setShutDownTime: duration-->" + i4);
        String strL = h.a.L("ro.product.hd_model");
        if (strL != null && strL.length() != 0 && strL.equals("A40i")) {
            w0.d.c("echo -e \"shutdown\" > /dev/ttyS5");
        }
        if (cn.huidu.lcd.core.util.a.e(i4)) {
            cn.huidu.lcd.core.util.a.h();
        }
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        throw new RuntimeException("Unsupported operate!");
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f351a = new q.a(this);
        this.f352b = new q.b(this);
        this.f353c = new j(this);
        this.f354d = new d(this);
        h.a.q0(this);
        getContentResolver().registerContentObserver(Settings.System.getUriFor("screen_brightness"), true, this.f374x);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.media.VOLUME_CHANGED_ACTION");
        registerReceiver(this.f375y, intentFilter);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("android.net.wifi.WIFI_AP_STATE_CHANGED");
        registerReceiver(this.f376z, intentFilter2);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        h.a.B0(this);
        getContentResolver().unregisterContentObserver(this.f374x);
        unregisterReceiver(this.f375y);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i4, int i5) {
        try {
            HandlerThread handlerThread = this.f361k;
            if (handlerThread == null || !handlerThread.isAlive()) {
                HandlerThread handlerThread2 = new HandlerThread("SettingService");
                this.f361k = handlerThread2;
                handlerThread2.start();
                this.f362l = new Handler(this.f361k.getLooper(), this);
            }
            this.f362l.sendEmptyMessage(3);
            return 1;
        } catch (Exception e4) {
            e4.printStackTrace();
            return 1;
        }
    }

    @org.greenrobot.eventbus.a(threadMode = ThreadMode.BACKGROUND)
    public void handleMessage(x xVar) {
        Log.d("SettingService", "handleMessage: VolumeAdjustmentEvent");
        this.f362l.removeMessages(6);
        this.f362l.sendEmptyMessageDelayed(6, 1000L);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:129:0x02fa  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x04aa  */
    /* JADX WARN: Removed duplicated region for block: B:322:0x04b3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:332:? A[LOOP:1: B:216:0x03f2->B:332:?, LOOP_END, SYNTHETIC] */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean handleMessage(android.os.Message r15) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.huidu.lcd.core.setting.SettingService.handleMessage(android.os.Message):boolean");
    }
}
